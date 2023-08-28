; ModuleID = '../bcout/drivers/usb/core/port.llvm.bc'
source_filename = "drivers/usb/core/port.c"
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
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
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.64, %struct.device* }
%union.anon.64 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, {}*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.usb_port = type { %struct.usb_device*, %struct.device, %struct.usb_dev_state*, %struct.usb_port*, %struct.dev_pm_qos_request*, i32, i32, %struct.mutex, i32, i8, i32, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_dev_state = type opaque
%struct.usb_hub = type { %struct.device*, %struct.usb_device*, %struct.kref, %struct.urb*, [8 x i8]*, %union.anon.65*, %struct.mutex, i32, i32, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], %struct.usb_hub_descriptor*, %struct.usb_tt, i32, i32, i8, [31 x i8], %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.spinlock, %struct.timer_list, %struct.usb_port** }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%union.anon.65 = type { %struct.usb_port_status }
%struct.usb_port_status = type { i16, i16, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.66 }>
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { [4 x i8], [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.69, i64 }
%union.anon.69 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque

@.str = private unnamed_addr constant [9 x i8] c"usb_port\00", align 1
@usb_port_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @usb_port_runtime_suspend, i32 (%struct.device*)* @usb_port_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !0
@usb_port_device_type = dso_local global { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @usb_port_device_release, %struct.dev_pm_ops* @usb_port_pm_ops }, align 8, !dbg !4433
@port_dev_usb3_group = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @port_dev_attr_grp, %struct.attribute_group* @port_dev_usb3_attr_grp, %struct.attribute_group* null], align 16, !dbg !4530
@port_dev_group = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @port_dev_attr_grp, %struct.attribute_group* null], align 16, !dbg !4567
@usb_port_driver = internal global %struct.device_driver { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* @usb_port_shutdown, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, align 8, !dbg !4570
@.str.1 = private unnamed_addr constant [10 x i8] c"%s-port%d\00", align 1
@usb_hub_create_port_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4435
@.str.2 = private unnamed_addr constant [23 x i8] c"&port_dev->status_lock\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to expose pm_qos_no_poweroff\0A\00", align 1
@usb_port_block_power_off = internal global i32 0, align 4, !dbg !4528
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@port_dev_attr_grp = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @port_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4533
@port_dev_usb3_attr_grp = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @port_dev_usb3_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4560
@port_dev_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_connect_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_location, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_quirks, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_over_current_count, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4535
@dev_attr_connect_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @connect_type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4540
@dev_attr_location = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @location_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4554
@dev_attr_quirks = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @quirks_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @quirks_store }, align 8, !dbg !4556
@dev_attr_over_current_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @over_current_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4558
@.str.5 = private unnamed_addr constant [13 x i8] c"connect_type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hardwired\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"not used\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"over_current_count\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@port_dev_usb3_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_usb3_lpm_permit, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4562
@dev_attr_usb3_lpm_permit = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @usb3_lpm_permit_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @usb3_lpm_permit_store }, align 8, !dbg !4565
@.str.17 = private unnamed_addr constant [16 x i8] c"usb3_lpm_permit\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"u1_u2\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"u1\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"u2\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@link_peers_report.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !4572
@.str.23 = private unnamed_addr constant [48 x i8] c"\014usb: port power management may be unreliable\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"drivers/usb/core/port.c\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"%s and %s are not peers?\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_port_device_release(%struct.device* %dev) #0 !dbg !4582 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4587, metadata !DIExpression()), !dbg !4589
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4589
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4589
  store i8* %1, i8** %__mptr, align 8, !dbg !4589
  br label %do.body, !dbg !4589

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4590

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4589
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4589
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !4589
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !4590
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !4589
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !4586
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4592
  %req = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 4, !dbg !4593
  %6 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %req, align 8, !dbg !4593
  %7 = bitcast %struct.dev_pm_qos_request* %6 to i8*, !dbg !4592
  call void @kfree(i8* %7) #7, !dbg !4594
  %8 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4595
  %9 = bitcast %struct.usb_port* %8 to i8*, !dbg !4595
  call void @kfree(i8* %9) #7, !dbg !4596
  ret void, !dbg !4597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_hub_create_port_device(%struct.usb_hub* %hub, i32 %port1) #0 !dbg !4437 {
entry:
  %retval = alloca i32, align 4
  %hub.addr = alloca %struct.usb_hub*, align 8
  %port1.addr = alloca i32, align 4
  %port_dev = alloca %struct.usb_port*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %retval2 = alloca i32, align 4
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !4602, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !4604, metadata !DIExpression()), !dbg !4605
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4606
  %hdev1 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %0, i32 0, i32 1, !dbg !4607
  %1 = load %struct.usb_device*, %struct.usb_device** %hdev1, align 8, !dbg !4607
  store %struct.usb_device* %1, %struct.usb_device** %hdev, align 8, !dbg !4605
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !4608, metadata !DIExpression()), !dbg !4609
  %call = call i8* @kzalloc(i64 776, i32 3264) #7, !dbg !4610
  %2 = bitcast i8* %call to %struct.usb_port*, !dbg !4610
  store %struct.usb_port* %2, %struct.usb_port** %port_dev, align 8, !dbg !4611
  %3 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4612
  %tobool = icmp ne %struct.usb_port* %3, null, !dbg !4612
  br i1 %tobool, label %if.end, label %if.then, !dbg !4614

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

if.end:                                           ; preds = %entry
  %call3 = call i8* @kzalloc(i64 72, i32 3264) #7, !dbg !4616
  %4 = bitcast i8* %call3 to %struct.dev_pm_qos_request*, !dbg !4616
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4617
  %req = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 4, !dbg !4618
  store %struct.dev_pm_qos_request* %4, %struct.dev_pm_qos_request** %req, align 8, !dbg !4619
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4620
  %req4 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 4, !dbg !4622
  %7 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %req4, align 8, !dbg !4622
  %tobool5 = icmp ne %struct.dev_pm_qos_request* %7, null, !dbg !4620
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4623

if.then6:                                         ; preds = %if.end
  %8 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4624
  %9 = bitcast %struct.usb_port* %8 to i8*, !dbg !4624
  call void @kfree(i8* %9) #7, !dbg !4626
  store i32 -12, i32* %retval, align 4, !dbg !4627
  br label %return, !dbg !4627

if.end7:                                          ; preds = %if.end
  %10 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4628
  %11 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4629
  %ports = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %11, i32 0, i32 27, !dbg !4630
  %12 = load %struct.usb_port**, %struct.usb_port*** %ports, align 8, !dbg !4630
  %13 = load i32, i32* %port1.addr, align 4, !dbg !4631
  %sub = sub i32 %13, 1, !dbg !4632
  %idxprom = sext i32 %sub to i64, !dbg !4629
  %arrayidx = getelementptr %struct.usb_port*, %struct.usb_port** %12, i64 %idxprom, !dbg !4629
  store %struct.usb_port* %10, %struct.usb_port** %arrayidx, align 8, !dbg !4633
  %14 = load i32, i32* %port1.addr, align 4, !dbg !4634
  %conv = trunc i32 %14 to i8, !dbg !4634
  %15 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4635
  %portnum = getelementptr inbounds %struct.usb_port, %struct.usb_port* %15, i32 0, i32 9, !dbg !4636
  store i8 %conv, i8* %portnum, align 4, !dbg !4637
  %16 = load i32, i32* %port1.addr, align 4, !dbg !4638
  %conv8 = sext i32 %16 to i64, !dbg !4638
  %17 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4639
  %power_bits = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %17, i32 0, i32 13, !dbg !4640
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %power_bits, i64 0, i64 0, !dbg !4639
  call void @set_bit(i64 %conv8, i64* %arraydecay) #7, !dbg !4641
  %18 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4642
  %intfdev = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %18, i32 0, i32 0, !dbg !4643
  %19 = load %struct.device*, %struct.device** %intfdev, align 8, !dbg !4643
  %20 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4644
  %dev = getelementptr inbounds %struct.usb_port, %struct.usb_port* %20, i32 0, i32 1, !dbg !4645
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4646
  store %struct.device* %19, %struct.device** %parent, align 8, !dbg !4647
  %21 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4648
  %call9 = call i32 @hub_is_superspeed(%struct.usb_device* %21) #7, !dbg !4650
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4650
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !4651

if.then11:                                        ; preds = %if.end7
  %22 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4652
  %usb3_lpm_u1_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %22, i32 0, i32 11, !dbg !4654
  %bf.load = load i8, i8* %usb3_lpm_u1_permit, align 4, !dbg !4655
  %bf.clear = and i8 %bf.load, -3, !dbg !4655
  %bf.set = or i8 %bf.clear, 2, !dbg !4655
  store i8 %bf.set, i8* %usb3_lpm_u1_permit, align 4, !dbg !4655
  %23 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4656
  %usb3_lpm_u2_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %23, i32 0, i32 11, !dbg !4657
  %bf.load12 = load i8, i8* %usb3_lpm_u2_permit, align 4, !dbg !4658
  %bf.clear13 = and i8 %bf.load12, -5, !dbg !4658
  %bf.set14 = or i8 %bf.clear13, 4, !dbg !4658
  store i8 %bf.set14, i8* %usb3_lpm_u2_permit, align 4, !dbg !4658
  %24 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4659
  %dev15 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %24, i32 0, i32 1, !dbg !4660
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 30, !dbg !4661
  store %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @port_dev_usb3_group, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !4662
  br label %if.end18, !dbg !4663

if.else:                                          ; preds = %if.end7
  %25 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4664
  %dev16 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %25, i32 0, i32 1, !dbg !4665
  %groups17 = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 30, !dbg !4666
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @port_dev_group, i64 0, i64 0), %struct.attribute_group*** %groups17, align 8, !dbg !4667
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %26 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4668
  %dev19 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 1, !dbg !4669
  %type = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 4, !dbg !4670
  store %struct.device_type* bitcast ({ i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }* @usb_port_device_type to %struct.device_type*), %struct.device_type** %type, align 8, !dbg !4671
  %27 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4672
  %dev20 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %27, i32 0, i32 1, !dbg !4673
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev20, i32 0, i32 6, !dbg !4674
  store %struct.device_driver* @usb_port_driver, %struct.device_driver** %driver, align 8, !dbg !4675
  %28 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4676
  %hdev21 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %28, i32 0, i32 1, !dbg !4678
  %29 = load %struct.usb_device*, %struct.usb_device** %hdev21, align 8, !dbg !4678
  %call22 = call i32 @hub_is_superspeed(%struct.usb_device* %29) #7, !dbg !4679
  %tobool23 = icmp ne i32 %call22, 0, !dbg !4679
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !4680

if.then24:                                        ; preds = %if.end18
  %30 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4681
  %is_superspeed = getelementptr inbounds %struct.usb_port, %struct.usb_port* %30, i32 0, i32 11, !dbg !4682
  %bf.load25 = load i8, i8* %is_superspeed, align 4, !dbg !4683
  %bf.clear26 = and i8 %bf.load25, -2, !dbg !4683
  %bf.set27 = or i8 %bf.clear26, 1, !dbg !4683
  store i8 %bf.set27, i8* %is_superspeed, align 4, !dbg !4683
  br label %if.end28, !dbg !4681

if.end28:                                         ; preds = %if.then24, %if.end18
  %31 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4684
  %dev29 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %31, i32 0, i32 1, !dbg !4685
  %32 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4686
  %hdev30 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %32, i32 0, i32 1, !dbg !4687
  %33 = load %struct.usb_device*, %struct.usb_device** %hdev30, align 8, !dbg !4687
  %dev31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 14, !dbg !4688
  %call32 = call i8* @dev_name(%struct.device* %dev31) #7, !dbg !4689
  %34 = load i32, i32* %port1.addr, align 4, !dbg !4690
  %call33 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %call32, i32 %34) #7, !dbg !4691
  br label %do.body, !dbg !4692

do.body:                                          ; preds = %if.end28
  %35 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4693
  %status_lock = getelementptr inbounds %struct.usb_port, %struct.usb_port* %35, i32 0, i32 7, !dbg !4693
  call void @__mutex_init(%struct.mutex* %status_lock, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @usb_hub_create_port_device.__key) #7, !dbg !4693
  br label %do.end, !dbg !4693

do.end:                                           ; preds = %do.body
  %36 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4695
  %dev34 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %36, i32 0, i32 1, !dbg !4696
  %call35 = call i32 @device_register(%struct.device* %dev34) #7, !dbg !4697
  store i32 %call35, i32* %retval2, align 4, !dbg !4698
  %37 = load i32, i32* %retval2, align 4, !dbg !4699
  %tobool36 = icmp ne i32 %37, 0, !dbg !4699
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !4701

if.then37:                                        ; preds = %do.end
  %38 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4702
  %dev38 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %38, i32 0, i32 1, !dbg !4704
  call void @put_device(%struct.device* %dev38) #7, !dbg !4705
  %39 = load i32, i32* %retval2, align 4, !dbg !4706
  store i32 %39, i32* %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

if.end39:                                         ; preds = %do.end
  %40 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4708
  %dev40 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %40, i32 0, i32 1, !dbg !4709
  %41 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4710
  %req41 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %41, i32 0, i32 4, !dbg !4711
  %42 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %req41, align 8, !dbg !4711
  %call42 = call i32 @dev_pm_qos_add_request(%struct.device* %dev40, %struct.dev_pm_qos_request* %42, i32 5, i32 1) #7, !dbg !4712
  store i32 %call42, i32* %retval2, align 4, !dbg !4713
  %43 = load i32, i32* %retval2, align 4, !dbg !4714
  %cmp = icmp slt i32 %43, 0, !dbg !4716
  br i1 %cmp, label %if.then44, label %if.end46, !dbg !4717

if.then44:                                        ; preds = %if.end39
  %44 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4718
  %dev45 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %44, i32 0, i32 1, !dbg !4720
  call void @device_unregister(%struct.device* %dev45) #7, !dbg !4721
  %45 = load i32, i32* %retval2, align 4, !dbg !4722
  store i32 %45, i32* %retval, align 4, !dbg !4723
  br label %return, !dbg !4723

if.end46:                                         ; preds = %if.end39
  %46 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4724
  %47 = load i32, i32* %port1.addr, align 4, !dbg !4725
  call void @find_and_link_peer(%struct.usb_hub* %46, i32 %47) #7, !dbg !4726
  %48 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4727
  %dev47 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i32 0, i32 1, !dbg !4728
  %call48 = call i32 @pm_runtime_set_active(%struct.device* %dev47) #7, !dbg !4729
  %49 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4730
  %dev49 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %49, i32 0, i32 1, !dbg !4731
  call void @pm_runtime_get_noresume(%struct.device* %dev49) #7, !dbg !4732
  %50 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4733
  %dev50 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %50, i32 0, i32 1, !dbg !4734
  call void @pm_runtime_enable(%struct.device* %dev50) #7, !dbg !4735
  %51 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4736
  %dev51 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %51, i32 0, i32 1, !dbg !4737
  call void @device_enable_async_suspend(%struct.device* %dev51) #7, !dbg !4738
  %52 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !4739
  %call52 = call zeroext i1 @hub_is_port_power_switchable(%struct.usb_hub* %52) #7, !dbg !4741
  br i1 %call52, label %if.end54, label %if.then53, !dbg !4742

if.then53:                                        ; preds = %if.end46
  store i32 0, i32* %retval, align 4, !dbg !4743
  br label %return, !dbg !4743

if.end54:                                         ; preds = %if.end46
  %53 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4744
  %dev55 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %53, i32 0, i32 1, !dbg !4745
  %call56 = call i32 @dev_pm_qos_expose_flags(%struct.device* %dev55, i32 1) #7, !dbg !4746
  store i32 %call56, i32* %retval2, align 4, !dbg !4747
  %54 = load i32, i32* %retval2, align 4, !dbg !4748
  %cmp57 = icmp slt i32 %54, 0, !dbg !4750
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !4751

if.then59:                                        ; preds = %if.end54
  %55 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4752
  %dev60 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %55, i32 0, i32 1, !dbg !4752
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4752
  store i32 0, i32* %retval, align 4, !dbg !4754
  br label %return, !dbg !4754

if.end61:                                         ; preds = %if.end54
  %56 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4755
  %req62 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %56, i32 0, i32 4, !dbg !4756
  %57 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %req62, align 8, !dbg !4756
  %call63 = call i32 @dev_pm_qos_remove_request(%struct.dev_pm_qos_request* %57) #7, !dbg !4757
  store i32 %call63, i32* %retval2, align 4, !dbg !4758
  %58 = load i32, i32* %retval2, align 4, !dbg !4759
  %cmp64 = icmp sge i32 %58, 0, !dbg !4761
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !4762

if.then66:                                        ; preds = %if.end61
  %59 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4763
  %req67 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %59, i32 0, i32 4, !dbg !4765
  %60 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %req67, align 8, !dbg !4765
  %61 = bitcast %struct.dev_pm_qos_request* %60 to i8*, !dbg !4763
  call void @kfree(i8* %61) #7, !dbg !4766
  %62 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !4767
  %req68 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %62, i32 0, i32 4, !dbg !4768
  store %struct.dev_pm_qos_request* null, %struct.dev_pm_qos_request** %req68, align 8, !dbg !4769
  br label %if.end69, !dbg !4770

if.end69:                                         ; preds = %if.then66, %if.end61
  store i32 0, i32* %retval, align 4, !dbg !4771
  br label %return, !dbg !4771

return:                                           ; preds = %if.end69, %if.then59, %if.then53, %if.then44, %if.then37, %if.then6, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !4772
  ret i32 %63, !dbg !4772
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4773 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4776, metadata !DIExpression()), !dbg !4780
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4786, metadata !DIExpression()), !dbg !4787
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4788, metadata !DIExpression()), !dbg !4789
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4790, metadata !DIExpression()), !dbg !4791
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4792, metadata !DIExpression()), !dbg !4796
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4798, metadata !DIExpression()), !dbg !4802
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4804, metadata !DIExpression()), !dbg !4808
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4813, metadata !DIExpression()), !dbg !4814
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4815, metadata !DIExpression()), !dbg !4816
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4817, metadata !DIExpression()), !dbg !4818
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4819, metadata !DIExpression()), !dbg !4820
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4821, metadata !DIExpression()), !dbg !4822
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4823, metadata !DIExpression()), !dbg !4824
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4825, metadata !DIExpression()), !dbg !4826
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4827, metadata !DIExpression()), !dbg !4828
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  %0 = load i64, i64* %size.addr, align 8, !dbg !4833
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4834
  %or = or i32 %1, 256, !dbg !4835
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4836
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4837
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4838

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4839
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4840
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4841

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4842
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4843
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4844
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4845
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4822
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4846
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4847
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4848
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4849
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4850
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4851
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4852
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4852
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4852
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4852
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4852
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4853
  br label %kmalloc.exit, !dbg !4853

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4854
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4855
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4855
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4857

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4858
  br label %kmalloc_index.exit.i, !dbg !4858

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4859
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4861
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4862

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4863
  br label %kmalloc_index.exit.i, !dbg !4863

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4864
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4866
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4867

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4869
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4870

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4874
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4875

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4876
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4877
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4878

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4879
  br label %kmalloc_index.exit.i, !dbg !4879

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4880
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4882
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4883

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4884
  br label %kmalloc_index.exit.i, !dbg !4884

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4885
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4887
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4888

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4889
  br label %kmalloc_index.exit.i, !dbg !4889

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4890
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4892
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4893

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4894
  br label %kmalloc_index.exit.i, !dbg !4894

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4895
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4897
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4898

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4899
  br label %kmalloc_index.exit.i, !dbg !4899

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4900
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4902
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4903

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4904
  br label %kmalloc_index.exit.i, !dbg !4904

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4905
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4907
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4908

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4909
  br label %kmalloc_index.exit.i, !dbg !4909

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4910
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4912
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4913

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4914
  br label %kmalloc_index.exit.i, !dbg !4914

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4917
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4918

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4919
  br label %kmalloc_index.exit.i, !dbg !4919

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4920
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4922
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4923

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4924
  br label %kmalloc_index.exit.i, !dbg !4924

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4925
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4927
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4928

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4929
  br label %kmalloc_index.exit.i, !dbg !4929

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4930
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4932
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4933

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4934
  br label %kmalloc_index.exit.i, !dbg !4934

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4935
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4937
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4938

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4939
  br label %kmalloc_index.exit.i, !dbg !4939

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4942
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4943

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4944
  br label %kmalloc_index.exit.i, !dbg !4944

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4945
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4947
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4948

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4949
  br label %kmalloc_index.exit.i, !dbg !4949

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4950
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4952
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4953

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4954
  br label %kmalloc_index.exit.i, !dbg !4954

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4955
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4957
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4958

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4959
  br label %kmalloc_index.exit.i, !dbg !4959

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4960
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4962
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4963

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4964
  br label %kmalloc_index.exit.i, !dbg !4964

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4965
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4967
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4968

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4969
  br label %kmalloc_index.exit.i, !dbg !4969

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4970
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4972
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4973

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4974
  br label %kmalloc_index.exit.i, !dbg !4974

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4975
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4977
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4978

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4979
  br label %kmalloc_index.exit.i, !dbg !4979

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4980
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4982
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4983

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4984
  br label %kmalloc_index.exit.i, !dbg !4984

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4985
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4987
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4988

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4989
  br label %kmalloc_index.exit.i, !dbg !4989

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4990
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4992
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4993

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4994
  br label %kmalloc_index.exit.i, !dbg !4994

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4995
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4997
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4998

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4999
  br label %kmalloc_index.exit.i, !dbg !4999

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5000, !srcloc !5003
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !5004, !srcloc !5007
  unreachable, !dbg !5008

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5009
  store i32 %45, i32* %index.i, align 4, !dbg !5010
  %46 = load i32, i32* %index.i, align 4, !dbg !5011
  %tobool.i = icmp ne i32 %46, 0, !dbg !5011
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5013

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5014
  br label %kmalloc.exit, !dbg !5014

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5015
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5016
  %and.i.i = and i32 %48, 17, !dbg !5016
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5016
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5016
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5016
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5016
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5018

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5019
  br label %kmalloc_type.exit.i, !dbg !5019

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5020
  %and2.i.i = and i32 %49, 1, !dbg !5021
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5020
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5020
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5020
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5022
  br label %kmalloc_type.exit.i, !dbg !5022

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5023
  %idxprom.i = zext i32 %51 to i64, !dbg !5024
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5024
  %52 = load i32, i32* %index.i, align 4, !dbg !5025
  %idxprom6.i = zext i32 %52 to i64, !dbg !5024
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5024
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5024
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5026
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5027
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5028
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5029
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !5030
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5030
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5030
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5030
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5030
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4791
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5031
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5032
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5033
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5034
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !5035
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5036
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5037
  store i8* %62, i8** %retval.i, align 8, !dbg !5038
  br label %kmalloc.exit, !dbg !5038

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5039
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5040
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !5041
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5041
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5041
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5041
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5041
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5042
  br label %kmalloc.exit, !dbg !5042

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5043
  ret i8* %65, !dbg !5044
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5045 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5051, metadata !DIExpression()), !dbg !5054
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5056, metadata !DIExpression()), !dbg !5057
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5058, metadata !DIExpression()), !dbg !5066
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5068, metadata !DIExpression()), !dbg !5069
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5074
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5075
  %div = sdiv i64 %1, 64, !dbg !5075
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5076
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5074
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5077
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5078
  %conv.i = trunc i64 %4 to i32, !dbg !5078
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5079
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5080
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5080
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5080
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5081
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5082
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5083
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !5085
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5086

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5087
  %12 = bitcast i64* %11 to i8*, !dbg !5087
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5087
  %shr.i = ashr i64 %13, 3, !dbg !5087
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5087
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5089
  %and.i = and i64 %14, 7, !dbg !5089
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5089
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5089
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !5090, !srcloc !5091
  br label %arch_set_bit.exit, !dbg !5092

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5093
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5095
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !5096, !srcloc !5097
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hub_is_superspeed(%struct.usb_device* %hdev) #0 !dbg !5099 {
entry:
  %hdev.addr = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %hdev, %struct.usb_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  %0 = load %struct.usb_device*, %struct.usb_device** %hdev.addr, align 8, !dbg !5104
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 15, !dbg !5105
  %bDeviceProtocol = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 5, !dbg !5106
  %1 = load i8, i8* %bDeviceProtocol, align 2, !dbg !5106
  %conv = zext i8 %1 to i32, !dbg !5104
  %cmp = icmp eq i32 %conv, 3, !dbg !5107
  %conv1 = zext i1 %cmp to i32, !dbg !5107
  ret i32 %conv1, !dbg !5108
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5109 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5114
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5116
  %1 = load i8*, i8** %init_name, align 8, !dbg !5116
  %tobool = icmp ne i8* %1, null, !dbg !5114
  br i1 %tobool, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5118
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5119
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5119
  store i8* %3, i8** %retval, align 8, !dbg !5120
  br label %return, !dbg !5120

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5121
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5122
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5123
  store i8* %call, i8** %retval, align 8, !dbg !5124
  br label %return, !dbg !5124

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5125
  ret i8* %5, !dbg !5125
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_add_request(%struct.device*, %struct.dev_pm_qos_request*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @find_and_link_peer(%struct.usb_hub* %hub, i32 %port1) #0 !dbg !5126 {
entry:
  %hub.addr = alloca %struct.usb_hub*, align 8
  %port1.addr = alloca i32, align 4
  %port_dev = alloca %struct.usb_port*, align 8
  %peer = alloca %struct.usb_port*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %peer_hdev = alloca %struct.usb_device*, align 8
  %peer_hub = alloca %struct.usb_hub*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %peer_hcd = alloca %struct.usb_hcd*, align 8
  %upstream = alloca %struct.usb_port*, align 8
  %parent8 = alloca %struct.usb_device*, align 8
  %parent_hub = alloca %struct.usb_hub*, align 8
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5135
  %ports = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %0, i32 0, i32 27, !dbg !5136
  %1 = load %struct.usb_port**, %struct.usb_port*** %ports, align 8, !dbg !5136
  %2 = load i32, i32* %port1.addr, align 4, !dbg !5137
  %sub = sub i32 %2, 1, !dbg !5138
  %idxprom = sext i32 %sub to i64, !dbg !5135
  %arrayidx = getelementptr %struct.usb_port*, %struct.usb_port** %1, i64 %idxprom, !dbg !5135
  %3 = load %struct.usb_port*, %struct.usb_port** %arrayidx, align 8, !dbg !5135
  store %struct.usb_port* %3, %struct.usb_port** %port_dev, align 8, !dbg !5134
  call void @llvm.dbg.declare(metadata %struct.usb_port** %peer, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5141, metadata !DIExpression()), !dbg !5142
  %4 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5143
  %hdev1 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %4, i32 0, i32 1, !dbg !5144
  %5 = load %struct.usb_device*, %struct.usb_device** %hdev1, align 8, !dbg !5144
  store %struct.usb_device* %5, %struct.usb_device** %hdev, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata %struct.usb_device** %peer_hdev, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %peer_hub, metadata !5147, metadata !DIExpression()), !dbg !5148
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5149
  %location = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 6, !dbg !5151
  %7 = load i32, i32* %location, align 4, !dbg !5151
  %tobool = icmp ne i32 %7, 0, !dbg !5149
  br i1 %tobool, label %if.then, label %if.else, !dbg !5152

if.then:                                          ; preds = %entry
  %8 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5153
  %9 = bitcast %struct.usb_port* %8 to i8*, !dbg !5153
  %call = call i32 @usb_for_each_dev(i8* %9, i32 (%struct.usb_device*, i8*)* @match_location) #7, !dbg !5155
  br label %if.end41, !dbg !5156

if.else:                                          ; preds = %entry
  %10 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5157
  %parent = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 11, !dbg !5159
  %11 = load %struct.usb_device*, %struct.usb_device** %parent, align 8, !dbg !5159
  %tobool2 = icmp ne %struct.usb_device* %11, null, !dbg !5157
  br i1 %tobool2, label %if.else7, label %if.then3, !dbg !5160

if.then3:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5161, metadata !DIExpression()), !dbg !5163
  %12 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5164
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 12, !dbg !5165
  %13 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5165
  %call4 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %13) #7, !dbg !5166
  store %struct.usb_hcd* %call4, %struct.usb_hcd** %hcd, align 8, !dbg !5163
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %peer_hcd, metadata !5167, metadata !DIExpression()), !dbg !5168
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5169
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 24, !dbg !5170
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !5170
  store %struct.usb_hcd* %15, %struct.usb_hcd** %peer_hcd, align 8, !dbg !5168
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %peer_hcd, align 8, !dbg !5171
  %tobool5 = icmp ne %struct.usb_hcd* %16, null, !dbg !5171
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !5173

if.then6:                                         ; preds = %if.then3
  br label %if.end41, !dbg !5174

if.end:                                           ; preds = %if.then3
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %peer_hcd, align 8, !dbg !5175
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0, !dbg !5176
  %root_hub = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 11, !dbg !5177
  %18 = load %struct.usb_device*, %struct.usb_device** %root_hub, align 8, !dbg !5177
  store %struct.usb_device* %18, %struct.usb_device** %peer_hdev, align 8, !dbg !5178
  br label %if.end24, !dbg !5179

if.else7:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.usb_port** %upstream, metadata !5180, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata %struct.usb_device** %parent8, metadata !5183, metadata !DIExpression()), !dbg !5184
  %19 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5185
  %parent9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 11, !dbg !5186
  %20 = load %struct.usb_device*, %struct.usb_device** %parent9, align 8, !dbg !5186
  store %struct.usb_device* %20, %struct.usb_device** %parent8, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %parent_hub, metadata !5187, metadata !DIExpression()), !dbg !5188
  %21 = load %struct.usb_device*, %struct.usb_device** %parent8, align 8, !dbg !5189
  %call10 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %21) #7, !dbg !5190
  store %struct.usb_hub* %call10, %struct.usb_hub** %parent_hub, align 8, !dbg !5188
  %22 = load %struct.usb_hub*, %struct.usb_hub** %parent_hub, align 8, !dbg !5191
  %tobool11 = icmp ne %struct.usb_hub* %22, null, !dbg !5191
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5193

if.then12:                                        ; preds = %if.else7
  br label %if.end41, !dbg !5194

if.end13:                                         ; preds = %if.else7
  %23 = load %struct.usb_hub*, %struct.usb_hub** %parent_hub, align 8, !dbg !5195
  %ports14 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %23, i32 0, i32 27, !dbg !5196
  %24 = load %struct.usb_port**, %struct.usb_port*** %ports14, align 8, !dbg !5196
  %25 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5197
  %portnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 24, !dbg !5198
  %26 = load i8, i8* %portnum, align 2, !dbg !5198
  %conv = zext i8 %26 to i32, !dbg !5197
  %sub15 = sub i32 %conv, 1, !dbg !5199
  %idxprom16 = sext i32 %sub15 to i64, !dbg !5195
  %arrayidx17 = getelementptr %struct.usb_port*, %struct.usb_port** %24, i64 %idxprom16, !dbg !5195
  %27 = load %struct.usb_port*, %struct.usb_port** %arrayidx17, align 8, !dbg !5195
  store %struct.usb_port* %27, %struct.usb_port** %upstream, align 8, !dbg !5200
  %28 = load %struct.usb_port*, %struct.usb_port** %upstream, align 8, !dbg !5201
  %tobool18 = icmp ne %struct.usb_port* %28, null, !dbg !5201
  br i1 %tobool18, label %lor.lhs.false, label %if.then21, !dbg !5203

lor.lhs.false:                                    ; preds = %if.end13
  %29 = load %struct.usb_port*, %struct.usb_port** %upstream, align 8, !dbg !5204
  %peer19 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %29, i32 0, i32 3, !dbg !5205
  %30 = load %struct.usb_port*, %struct.usb_port** %peer19, align 8, !dbg !5205
  %tobool20 = icmp ne %struct.usb_port* %30, null, !dbg !5204
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !5206

if.then21:                                        ; preds = %lor.lhs.false, %if.end13
  br label %if.end41, !dbg !5207

if.end22:                                         ; preds = %lor.lhs.false
  %31 = load %struct.usb_port*, %struct.usb_port** %upstream, align 8, !dbg !5208
  %peer23 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %31, i32 0, i32 3, !dbg !5209
  %32 = load %struct.usb_port*, %struct.usb_port** %peer23, align 8, !dbg !5209
  %child = getelementptr inbounds %struct.usb_port, %struct.usb_port* %32, i32 0, i32 0, !dbg !5210
  %33 = load %struct.usb_device*, %struct.usb_device** %child, align 8, !dbg !5210
  store %struct.usb_device* %33, %struct.usb_device** %peer_hdev, align 8, !dbg !5211
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %34 = load %struct.usb_device*, %struct.usb_device** %peer_hdev, align 8, !dbg !5212
  %call26 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %34) #7, !dbg !5213
  store %struct.usb_hub* %call26, %struct.usb_hub** %peer_hub, align 8, !dbg !5214
  %35 = load %struct.usb_hub*, %struct.usb_hub** %peer_hub, align 8, !dbg !5215
  %tobool27 = icmp ne %struct.usb_hub* %35, null, !dbg !5215
  br i1 %tobool27, label %lor.lhs.false28, label %if.then30, !dbg !5217

lor.lhs.false28:                                  ; preds = %if.end25
  %36 = load i32, i32* %port1.addr, align 4, !dbg !5218
  %37 = load %struct.usb_device*, %struct.usb_device** %peer_hdev, align 8, !dbg !5219
  %maxchild = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 35, !dbg !5220
  %38 = load i32, i32* %maxchild, align 8, !dbg !5220
  %cmp = icmp sgt i32 %36, %38, !dbg !5221
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !5222

if.then30:                                        ; preds = %lor.lhs.false28, %if.end25
  br label %if.end41, !dbg !5223

if.end31:                                         ; preds = %lor.lhs.false28
  %39 = load %struct.usb_hub*, %struct.usb_hub** %peer_hub, align 8, !dbg !5224
  %ports32 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %39, i32 0, i32 27, !dbg !5225
  %40 = load %struct.usb_port**, %struct.usb_port*** %ports32, align 8, !dbg !5225
  %41 = load i32, i32* %port1.addr, align 4, !dbg !5226
  %sub33 = sub i32 %41, 1, !dbg !5227
  %idxprom34 = sext i32 %sub33 to i64, !dbg !5224
  %arrayidx35 = getelementptr %struct.usb_port*, %struct.usb_port** %40, i64 %idxprom34, !dbg !5224
  %42 = load %struct.usb_port*, %struct.usb_port** %arrayidx35, align 8, !dbg !5224
  store %struct.usb_port* %42, %struct.usb_port** %peer, align 8, !dbg !5228
  %43 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5229
  %tobool36 = icmp ne %struct.usb_port* %43, null, !dbg !5229
  br i1 %tobool36, label %land.lhs.true, label %if.end41, !dbg !5231

land.lhs.true:                                    ; preds = %if.end31
  %44 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5232
  %location37 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %44, i32 0, i32 6, !dbg !5233
  %45 = load i32, i32* %location37, align 4, !dbg !5233
  %cmp38 = icmp eq i32 %45, 0, !dbg !5234
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5235

if.then40:                                        ; preds = %land.lhs.true
  %46 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5236
  %47 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5237
  call void @link_peers_report(%struct.usb_port* %46, %struct.usb_port* %47) #7, !dbg !5238
  br label %if.end41, !dbg !5238

if.end41:                                         ; preds = %if.then, %if.then6, %if.then12, %if.then21, %if.then30, %if.then40, %land.lhs.true, %if.end31
  ret void, !dbg !5239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #0 !dbg !5240 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5244
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #7, !dbg !5245
  ret i32 %call, !dbg !5246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #0 !dbg !5247 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5248, metadata !DIExpression()), !dbg !5254
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5259, metadata !DIExpression()), !dbg !5261
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5263, metadata !DIExpression()), !dbg !5264
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5265, metadata !DIExpression()), !dbg !5266
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5269
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5270
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !5271
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5272
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5272
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5273
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5274
  %conv.i.i = trunc i64 %4 to i32, !dbg !5274
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #11, !dbg !5275
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5276
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5276
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !5276
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5277
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5278
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5279
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !5280, !srcloc !5281
  ret void, !dbg !5282
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_enable_async_suspend(%struct.device* %dev) #0 !dbg !5283 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5286
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5288
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !5289
  %bf.load = load i16, i16* %is_prepared, align 4, !dbg !5289
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !5289
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5289
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !5289
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !5290

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5291
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !5292
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 1, !dbg !5293
  %bf.load2 = load i16, i16* %async_suspend, align 4, !dbg !5294
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !5294
  %bf.set = or i16 %bf.clear3, 2, !dbg !5294
  store i16 %bf.set, i16* %async_suspend, align 4, !dbg !5294
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @hub_is_port_power_switchable(%struct.usb_hub* %hub) #0 !dbg !5296 {
entry:
  %retval = alloca i1, align 1
  %hub.addr = alloca %struct.usb_hub*, align 8
  %hcs = alloca i16, align 2
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !5299, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.declare(metadata i16* %hcs, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5303
  %tobool = icmp ne %struct.usb_hub* %0, null, !dbg !5303
  br i1 %tobool, label %if.end, label %if.then, !dbg !5305

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5306
  br label %return, !dbg !5306

if.end:                                           ; preds = %entry
  %1 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5307
  %descriptor = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %1, i32 0, i32 16, !dbg !5308
  %2 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %descriptor, align 8, !dbg !5308
  %wHubCharacteristics = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %2, i32 0, i32 3, !dbg !5309
  %3 = load i16, i16* %wHubCharacteristics, align 1, !dbg !5309
  store i16 %3, i16* %hcs, align 2, !dbg !5310
  %4 = load i16, i16* %hcs, align 2, !dbg !5311
  %conv = zext i16 %4 to i32, !dbg !5311
  %and = and i32 %conv, 3, !dbg !5312
  %cmp = icmp slt i32 %and, 2, !dbg !5313
  store i1 %cmp, i1* %retval, align 1, !dbg !5314
  br label %return, !dbg !5314

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !5315
  ret i1 %5, !dbg !5315
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_expose_flags(%struct.device*, i32) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_remove_request(%struct.dev_pm_qos_request*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_hub_remove_port_device(%struct.usb_hub* %hub, i32 %port1) #0 !dbg !5316 {
entry:
  %hub.addr = alloca %struct.usb_hub*, align 8
  %port1.addr = alloca i32, align 4
  %port_dev = alloca %struct.usb_port*, align 8
  %peer = alloca %struct.usb_port*, align 8
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5321, metadata !DIExpression()), !dbg !5322
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5323
  %ports = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %0, i32 0, i32 27, !dbg !5324
  %1 = load %struct.usb_port**, %struct.usb_port*** %ports, align 8, !dbg !5324
  %2 = load i32, i32* %port1.addr, align 4, !dbg !5325
  %sub = sub i32 %2, 1, !dbg !5326
  %idxprom = sext i32 %sub to i64, !dbg !5323
  %arrayidx = getelementptr %struct.usb_port*, %struct.usb_port** %1, i64 %idxprom, !dbg !5323
  %3 = load %struct.usb_port*, %struct.usb_port** %arrayidx, align 8, !dbg !5323
  store %struct.usb_port* %3, %struct.usb_port** %port_dev, align 8, !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.usb_port** %peer, metadata !5327, metadata !DIExpression()), !dbg !5328
  %4 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5329
  %peer1 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %4, i32 0, i32 3, !dbg !5330
  %5 = load %struct.usb_port*, %struct.usb_port** %peer1, align 8, !dbg !5330
  store %struct.usb_port* %5, %struct.usb_port** %peer, align 8, !dbg !5331
  %6 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5332
  %tobool = icmp ne %struct.usb_port* %6, null, !dbg !5332
  br i1 %tobool, label %if.then, label %if.end, !dbg !5334

if.then:                                          ; preds = %entry
  %7 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5335
  %8 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5336
  call void @unlink_peers(%struct.usb_port* %7, %struct.usb_port* %8) #7, !dbg !5337
  br label %if.end, !dbg !5337

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5338
  %dev = getelementptr inbounds %struct.usb_port, %struct.usb_port* %9, i32 0, i32 1, !dbg !5339
  call void @device_unregister(%struct.device* %dev) #7, !dbg !5340
  ret void, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unlink_peers(%struct.usb_port* %left, %struct.usb_port* %right) #0 !dbg !5342 {
entry:
  %left.addr = alloca %struct.usb_port*, align 8
  %right.addr = alloca %struct.usb_port*, align 8
  %ss_port = alloca %struct.usb_port*, align 8
  %hs_port = alloca %struct.usb_port*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.usb_port* %left, %struct.usb_port** %left.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %left.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  store %struct.usb_port* %right, %struct.usb_port** %right.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %right.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata %struct.usb_port** %ss_port, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.usb_port** %hs_port, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5351, metadata !DIExpression()), !dbg !5353
  %0 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5353
  %peer = getelementptr inbounds %struct.usb_port, %struct.usb_port* %0, i32 0, i32 3, !dbg !5353
  %1 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5353
  %2 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5353
  %cmp = icmp ne %struct.usb_port* %1, %2, !dbg !5353
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5353

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5353
  %peer1 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %3, i32 0, i32 3, !dbg !5353
  %4 = load %struct.usb_port*, %struct.usb_port** %peer1, align 8, !dbg !5353
  %5 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5353
  %cmp2 = icmp ne %struct.usb_port* %4, %5, !dbg !5353
  br label %lor.end, !dbg !5353

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !5353
  %lnot3 = xor i1 %lnot, true, !dbg !5353
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5353
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5353
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5354
  %tobool = icmp ne i32 %7, 0, !dbg !5354
  %lnot4 = xor i1 %tobool, true, !dbg !5354
  %lnot6 = xor i1 %lnot4, true, !dbg !5354
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5354
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5354
  %tobool8 = icmp ne i64 %conv, 0, !dbg !5354
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5354

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5356

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5358

do.end:                                           ; preds = %do.body9
  %8 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5356
  %dev = getelementptr inbounds %struct.usb_port, %struct.usb_port* %8, i32 0, i32 1, !dbg !5356
  %call = call i8* @dev_name(%struct.device* %dev) #7, !dbg !5356
  %9 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5356
  %dev10 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %9, i32 0, i32 1, !dbg !5356
  %call11 = call i8* @dev_name(%struct.device* %dev10) #7, !dbg !5356
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* %call, i8* %call11) #7, !dbg !5356
  br label %do.body12, !dbg !5356

do.body12:                                        ; preds = %do.end
  br label %do.body13, !dbg !5360

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5362

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !5360

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 411, i32 2313, i64 12) #9, !dbg !5364, !srcloc !5366
  br label %do.end16, !dbg !5364

do.end16:                                         ; preds = %do.body15
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #9, !dbg !5367, !srcloc !5369
  br label %do.body17, !dbg !5360

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5370

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !5360

do.end19:                                         ; preds = %do.end18
  br label %do.body20, !dbg !5356

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5372

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !5356

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !5356

if.end:                                           ; preds = %do.end22, %lor.end
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !5353
  %tobool23 = icmp ne i32 %10, 0, !dbg !5353
  %lnot24 = xor i1 %tobool23, true, !dbg !5353
  %lnot26 = xor i1 %lnot24, true, !dbg !5353
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5353
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !5353
  store i64 %conv28, i64* %tmp, align 8, !dbg !5354
  %11 = load i64, i64* %tmp, align 8, !dbg !5353
  %12 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5374
  %is_superspeed = getelementptr inbounds %struct.usb_port, %struct.usb_port* %12, i32 0, i32 11, !dbg !5376
  %bf.load = load i8, i8* %is_superspeed, align 4, !dbg !5376
  %bf.clear = and i8 %bf.load, 1, !dbg !5376
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5376
  %tobool29 = icmp ne i32 %bf.cast, 0, !dbg !5374
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !5377

if.then30:                                        ; preds = %if.end
  %13 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5378
  store %struct.usb_port* %13, %struct.usb_port** %ss_port, align 8, !dbg !5380
  %14 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5381
  store %struct.usb_port* %14, %struct.usb_port** %hs_port, align 8, !dbg !5382
  br label %if.end31, !dbg !5383

if.else:                                          ; preds = %if.end
  %15 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5384
  store %struct.usb_port* %15, %struct.usb_port** %ss_port, align 8, !dbg !5386
  %16 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5387
  store %struct.usb_port* %16, %struct.usb_port** %hs_port, align 8, !dbg !5388
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %17 = load %struct.usb_port*, %struct.usb_port** %hs_port, align 8, !dbg !5389
  %dev32 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %17, i32 0, i32 1, !dbg !5390
  %call33 = call i32 @pm_runtime_get_sync(%struct.device* %dev32) #7, !dbg !5391
  %18 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5392
  %dev34 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %18, i32 0, i32 1, !dbg !5393
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev34, i32 0, i32 0, !dbg !5394
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5395
  %19 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5396
  %peer35 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %19, i32 0, i32 3, !dbg !5397
  store %struct.usb_port* null, %struct.usb_port** %peer35, align 8, !dbg !5398
  %20 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !5399
  %dev36 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %20, i32 0, i32 1, !dbg !5400
  %kobj37 = getelementptr inbounds %struct.device, %struct.device* %dev36, i32 0, i32 0, !dbg !5401
  call void @sysfs_remove_link(%struct.kobject* %kobj37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5402
  %21 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !5403
  %peer38 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 3, !dbg !5404
  store %struct.usb_port* null, %struct.usb_port** %peer38, align 8, !dbg !5405
  %22 = load %struct.usb_port*, %struct.usb_port** %ss_port, align 8, !dbg !5406
  %dev39 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %22, i32 0, i32 1, !dbg !5407
  %call40 = call i32 @pm_runtime_put(%struct.device* %dev39) #7, !dbg !5408
  %23 = load %struct.usb_port*, %struct.usb_port** %hs_port, align 8, !dbg !5409
  %dev41 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %23, i32 0, i32 1, !dbg !5410
  %call42 = call i32 @pm_runtime_put(%struct.device* %dev41) #7, !dbg !5411
  ret void, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_port_runtime_suspend(%struct.device* %dev) #0 !dbg !5413 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.usb_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.usb_interface*, align 8
  %hub = alloca %struct.usb_hub*, align 8
  %peer = alloca %struct.usb_port*, align 8
  %port1 = alloca i32, align 4
  %retval14 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5418, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5420
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5420
  store i8* %1, i8** %__mptr, align 8, !dbg !5420
  br label %do.body, !dbg !5420

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5420
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5420
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5420
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5421
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5420
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5417
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5425, metadata !DIExpression()), !dbg !5427
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5427
  %parent = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1, !dbg !5427
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5427
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5427
  %7 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !5427
  %8 = bitcast %struct.device* %7 to i8*, !dbg !5427
  store i8* %8, i8** %__mptr1, align 8, !dbg !5427
  br label %do.body3, !dbg !5427

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5428

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5427
  %add.ptr6 = getelementptr i8, i8* %9, i64 -160, !dbg !5427
  %10 = bitcast i8* %add.ptr6 to %struct.usb_device*, !dbg !5427
  store %struct.usb_device* %10, %struct.usb_device** %tmp5, align 8, !dbg !5428
  %11 = load %struct.usb_device*, %struct.usb_device** %tmp5, align 8, !dbg !5427
  store %struct.usb_device* %11, %struct.usb_device** %hdev, align 8, !dbg !5424
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5430, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5432, metadata !DIExpression()), !dbg !5434
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5434
  %parent8 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1, !dbg !5434
  %13 = load %struct.device*, %struct.device** %parent8, align 8, !dbg !5434
  %14 = bitcast %struct.device* %13 to i8*, !dbg !5434
  store i8* %14, i8** %__mptr7, align 8, !dbg !5434
  br label %do.body9, !dbg !5434

do.body9:                                         ; preds = %do.end4
  br label %do.end10, !dbg !5435

do.end10:                                         ; preds = %do.body9
  %15 = load i8*, i8** %__mptr7, align 8, !dbg !5434
  %add.ptr12 = getelementptr i8, i8* %15, i64 -48, !dbg !5434
  %16 = bitcast i8* %add.ptr12 to %struct.usb_interface*, !dbg !5434
  store %struct.usb_interface* %16, %struct.usb_interface** %tmp11, align 8, !dbg !5435
  %17 = load %struct.usb_interface*, %struct.usb_interface** %tmp11, align 8, !dbg !5434
  store %struct.usb_interface* %17, %struct.usb_interface** %intf, align 8, !dbg !5431
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub, metadata !5437, metadata !DIExpression()), !dbg !5438
  %18 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5439
  %call = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %18) #7, !dbg !5440
  store %struct.usb_hub* %call, %struct.usb_hub** %hub, align 8, !dbg !5438
  call void @llvm.dbg.declare(metadata %struct.usb_port** %peer, metadata !5441, metadata !DIExpression()), !dbg !5442
  %19 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5443
  %peer13 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %19, i32 0, i32 3, !dbg !5444
  %20 = load %struct.usb_port*, %struct.usb_port** %peer13, align 8, !dbg !5444
  store %struct.usb_port* %20, %struct.usb_port** %peer, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i32* %port1, metadata !5445, metadata !DIExpression()), !dbg !5446
  %21 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5447
  %portnum = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 9, !dbg !5448
  %22 = load i8, i8* %portnum, align 4, !dbg !5448
  %conv = zext i8 %22 to i32, !dbg !5447
  store i32 %conv, i32* %port1, align 4, !dbg !5446
  call void @llvm.dbg.declare(metadata i32* %retval14, metadata !5449, metadata !DIExpression()), !dbg !5450
  %23 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5451
  %tobool = icmp ne %struct.usb_hub* %23, null, !dbg !5451
  br i1 %tobool, label %if.end, label %if.then, !dbg !5453

if.then:                                          ; preds = %do.end10
  store i32 -22, i32* %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

if.end:                                           ; preds = %do.end10
  %24 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5455
  %in_reset = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %24, i32 0, i32 20, !dbg !5457
  %bf.load = load i8, i8* %in_reset, align 8, !dbg !5457
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5457
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5457
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5457
  %tobool15 = icmp ne i32 %bf.cast, 0, !dbg !5455
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5458

if.then16:                                        ; preds = %if.end
  store i32 -16, i32* %retval, align 4, !dbg !5459
  br label %return, !dbg !5459

if.end17:                                         ; preds = %if.end
  %25 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5460
  %dev18 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %25, i32 0, i32 1, !dbg !5462
  %call19 = call i32 @dev_pm_qos_flags(%struct.device* %dev18, i32 1) #7, !dbg !5463
  %cmp = icmp eq i32 %call19, 2, !dbg !5464
  br i1 %cmp, label %if.then21, label %if.end22, !dbg !5465

if.then21:                                        ; preds = %if.end17
  store i32 -11, i32* %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

if.end22:                                         ; preds = %if.end17
  %26 = load i32, i32* @usb_port_block_power_off, align 4, !dbg !5467
  %tobool23 = icmp ne i32 %26, 0, !dbg !5467
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5469

if.then24:                                        ; preds = %if.end22
  store i32 -16, i32* %retval, align 4, !dbg !5470
  br label %return, !dbg !5470

if.end25:                                         ; preds = %if.end22
  %27 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5471
  %call26 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %27) #7, !dbg !5472
  store i32 %call26, i32* %retval14, align 4, !dbg !5473
  %28 = load i32, i32* %retval14, align 4, !dbg !5474
  %cmp27 = icmp slt i32 %28, 0, !dbg !5476
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5477

if.then29:                                        ; preds = %if.end25
  %29 = load i32, i32* %retval14, align 4, !dbg !5478
  store i32 %29, i32* %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

if.end30:                                         ; preds = %if.end25
  %30 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5480
  %31 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5481
  %32 = load i32, i32* %port1, align 4, !dbg !5482
  %call31 = call i32 @usb_hub_set_port_power(%struct.usb_device* %30, %struct.usb_hub* %31, i32 %32, i1 zeroext false) #7, !dbg !5483
  store i32 %call31, i32* %retval14, align 4, !dbg !5484
  %33 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5485
  %34 = load i32, i32* %port1, align 4, !dbg !5486
  %call32 = call i32 @usb_clear_port_feature(%struct.usb_device* %33, i32 %34, i32 16) #7, !dbg !5487
  %35 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5488
  %is_superspeed = getelementptr inbounds %struct.usb_port, %struct.usb_port* %35, i32 0, i32 11, !dbg !5490
  %bf.load33 = load i8, i8* %is_superspeed, align 4, !dbg !5490
  %bf.clear34 = and i8 %bf.load33, 1, !dbg !5490
  %bf.cast35 = zext i8 %bf.clear34 to i32, !dbg !5490
  %tobool36 = icmp ne i32 %bf.cast35, 0, !dbg !5488
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !5491

if.then37:                                        ; preds = %if.end30
  %36 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5492
  %37 = load i32, i32* %port1, align 4, !dbg !5493
  %call38 = call i32 @usb_clear_port_feature(%struct.usb_device* %36, i32 %37, i32 17) #7, !dbg !5494
  br label %if.end39, !dbg !5494

if.end39:                                         ; preds = %if.then37, %if.end30
  %38 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5495
  call void @usb_autopm_put_interface(%struct.usb_interface* %38) #7, !dbg !5496
  %39 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5497
  %is_superspeed40 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %39, i32 0, i32 11, !dbg !5499
  %bf.load41 = load i8, i8* %is_superspeed40, align 4, !dbg !5499
  %bf.clear42 = and i8 %bf.load41, 1, !dbg !5499
  %bf.cast43 = zext i8 %bf.clear42 to i32, !dbg !5499
  %tobool44 = icmp ne i32 %bf.cast43, 0, !dbg !5497
  br i1 %tobool44, label %if.end49, label %land.lhs.true, !dbg !5500

land.lhs.true:                                    ; preds = %if.end39
  %40 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5501
  %tobool45 = icmp ne %struct.usb_port* %40, null, !dbg !5501
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !5502

if.then46:                                        ; preds = %land.lhs.true
  %41 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5503
  %dev47 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %41, i32 0, i32 1, !dbg !5504
  %call48 = call i32 @pm_runtime_put(%struct.device* %dev47) #7, !dbg !5505
  br label %if.end49, !dbg !5505

if.end49:                                         ; preds = %if.then46, %land.lhs.true, %if.end39
  %42 = load i32, i32* %retval14, align 4, !dbg !5506
  store i32 %42, i32* %retval, align 4, !dbg !5507
  br label %return, !dbg !5507

return:                                           ; preds = %if.end49, %if.then29, %if.then24, %if.then21, %if.then16, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5508
  ret i32 %43, !dbg !5508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_port_runtime_resume(%struct.device* %dev) #0 !dbg !5509 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.usb_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.usb_interface*, align 8
  %hub = alloca %struct.usb_hub*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %peer = alloca %struct.usb_port*, align 8
  %port1 = alloca i32, align 4
  %retval14 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5512, metadata !DIExpression()), !dbg !5513
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5514, metadata !DIExpression()), !dbg !5516
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5516
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5516
  store i8* %1, i8** %__mptr, align 8, !dbg !5516
  br label %do.body, !dbg !5516

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5517

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5516
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5516
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5516
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5517
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5516
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5513
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5521, metadata !DIExpression()), !dbg !5523
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5523
  %parent = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1, !dbg !5523
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5523
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5523
  %7 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !5523
  %8 = bitcast %struct.device* %7 to i8*, !dbg !5523
  store i8* %8, i8** %__mptr1, align 8, !dbg !5523
  br label %do.body3, !dbg !5523

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5524

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5523
  %add.ptr6 = getelementptr i8, i8* %9, i64 -160, !dbg !5523
  %10 = bitcast i8* %add.ptr6 to %struct.usb_device*, !dbg !5523
  store %struct.usb_device* %10, %struct.usb_device** %tmp5, align 8, !dbg !5524
  %11 = load %struct.usb_device*, %struct.usb_device** %tmp5, align 8, !dbg !5523
  store %struct.usb_device* %11, %struct.usb_device** %hdev, align 8, !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5526, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5528, metadata !DIExpression()), !dbg !5530
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5530
  %parent8 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1, !dbg !5530
  %13 = load %struct.device*, %struct.device** %parent8, align 8, !dbg !5530
  %14 = bitcast %struct.device* %13 to i8*, !dbg !5530
  store i8* %14, i8** %__mptr7, align 8, !dbg !5530
  br label %do.body9, !dbg !5530

do.body9:                                         ; preds = %do.end4
  br label %do.end10, !dbg !5531

do.end10:                                         ; preds = %do.body9
  %15 = load i8*, i8** %__mptr7, align 8, !dbg !5530
  %add.ptr12 = getelementptr i8, i8* %15, i64 -48, !dbg !5530
  %16 = bitcast i8* %add.ptr12 to %struct.usb_interface*, !dbg !5530
  store %struct.usb_interface* %16, %struct.usb_interface** %tmp11, align 8, !dbg !5531
  %17 = load %struct.usb_interface*, %struct.usb_interface** %tmp11, align 8, !dbg !5530
  store %struct.usb_interface* %17, %struct.usb_interface** %intf, align 8, !dbg !5527
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub, metadata !5533, metadata !DIExpression()), !dbg !5534
  %18 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5535
  %call = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %18) #7, !dbg !5536
  store %struct.usb_hub* %call, %struct.usb_hub** %hub, align 8, !dbg !5534
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5537, metadata !DIExpression()), !dbg !5538
  %19 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5539
  %child = getelementptr inbounds %struct.usb_port, %struct.usb_port* %19, i32 0, i32 0, !dbg !5540
  %20 = load %struct.usb_device*, %struct.usb_device** %child, align 8, !dbg !5540
  store %struct.usb_device* %20, %struct.usb_device** %udev, align 8, !dbg !5538
  call void @llvm.dbg.declare(metadata %struct.usb_port** %peer, metadata !5541, metadata !DIExpression()), !dbg !5542
  %21 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5543
  %peer13 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 3, !dbg !5544
  %22 = load %struct.usb_port*, %struct.usb_port** %peer13, align 8, !dbg !5544
  store %struct.usb_port* %22, %struct.usb_port** %peer, align 8, !dbg !5542
  call void @llvm.dbg.declare(metadata i32* %port1, metadata !5545, metadata !DIExpression()), !dbg !5546
  %23 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5547
  %portnum = getelementptr inbounds %struct.usb_port, %struct.usb_port* %23, i32 0, i32 9, !dbg !5548
  %24 = load i8, i8* %portnum, align 4, !dbg !5548
  %conv = zext i8 %24 to i32, !dbg !5547
  store i32 %conv, i32* %port1, align 4, !dbg !5546
  call void @llvm.dbg.declare(metadata i32* %retval14, metadata !5549, metadata !DIExpression()), !dbg !5550
  %25 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5551
  %tobool = icmp ne %struct.usb_hub* %25, null, !dbg !5551
  br i1 %tobool, label %if.end, label %if.then, !dbg !5553

if.then:                                          ; preds = %do.end10
  store i32 -22, i32* %retval, align 4, !dbg !5554
  br label %return, !dbg !5554

if.end:                                           ; preds = %do.end10
  %26 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5555
  %in_reset = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 20, !dbg !5557
  %bf.load = load i8, i8* %in_reset, align 8, !dbg !5557
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5557
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5557
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5557
  %tobool15 = icmp ne i32 %bf.cast, 0, !dbg !5555
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5558

if.then16:                                        ; preds = %if.end
  %27 = load i32, i32* %port1, align 4, !dbg !5559
  %conv17 = sext i32 %27 to i64, !dbg !5559
  %28 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5561
  %power_bits = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %28, i32 0, i32 13, !dbg !5562
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %power_bits, i64 0, i64 0, !dbg !5561
  call void @set_bit(i64 %conv17, i64* %arraydecay) #7, !dbg !5563
  store i32 0, i32* %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

if.end18:                                         ; preds = %if.end
  %29 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5565
  %is_superspeed = getelementptr inbounds %struct.usb_port, %struct.usb_port* %29, i32 0, i32 11, !dbg !5567
  %bf.load19 = load i8, i8* %is_superspeed, align 4, !dbg !5567
  %bf.clear20 = and i8 %bf.load19, 1, !dbg !5567
  %bf.cast21 = zext i8 %bf.clear20 to i32, !dbg !5567
  %tobool22 = icmp ne i32 %bf.cast21, 0, !dbg !5565
  br i1 %tobool22, label %if.end27, label %land.lhs.true, !dbg !5568

land.lhs.true:                                    ; preds = %if.end18
  %30 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5569
  %tobool23 = icmp ne %struct.usb_port* %30, null, !dbg !5569
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !5570

if.then24:                                        ; preds = %land.lhs.true
  %31 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !5571
  %dev25 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %31, i32 0, i32 1, !dbg !5572
  %call26 = call i32 @pm_runtime_get_sync(%struct.device* %dev25) #7, !dbg !5573
  br label %if.end27, !dbg !5573

if.end27:                                         ; preds = %if.then24, %land.lhs.true, %if.end18
  %32 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5574
  %call28 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %32) #7, !dbg !5575
  store i32 %call28, i32* %retval14, align 4, !dbg !5576
  %33 = load i32, i32* %retval14, align 4, !dbg !5577
  %cmp = icmp slt i32 %33, 0, !dbg !5579
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !5580

if.then30:                                        ; preds = %if.end27
  %34 = load i32, i32* %retval14, align 4, !dbg !5581
  store i32 %34, i32* %retval, align 4, !dbg !5582
  br label %return, !dbg !5582

if.end31:                                         ; preds = %if.end27
  %35 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5583
  %36 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5584
  %37 = load i32, i32* %port1, align 4, !dbg !5585
  %call32 = call i32 @usb_hub_set_port_power(%struct.usb_device* %35, %struct.usb_hub* %36, i32 %37, i1 zeroext true) #7, !dbg !5586
  store i32 %call32, i32* %retval14, align 4, !dbg !5587
  %38 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5588
  %call33 = call i32 @hub_power_on_good_delay(%struct.usb_hub* %38) #7, !dbg !5589
  call void @msleep(i32 %call33) #7, !dbg !5590
  %39 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5591
  %tobool34 = icmp ne %struct.usb_device* %39, null, !dbg !5591
  br i1 %tobool34, label %land.lhs.true35, label %if.end57, !dbg !5593

land.lhs.true35:                                  ; preds = %if.end31
  %40 = load i32, i32* %retval14, align 4, !dbg !5594
  %tobool36 = icmp ne i32 %40, 0, !dbg !5594
  br i1 %tobool36, label %if.end57, label %if.then37, !dbg !5595

if.then37:                                        ; preds = %land.lhs.true35
  %41 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5596
  %42 = load i32, i32* %port1, align 4, !dbg !5599
  %call38 = call i32 @hub_port_debounce_be_connected(%struct.usb_hub* %41, i32 %42) #7, !dbg !5600
  %cmp39 = icmp slt i32 %call38, 0, !dbg !5601
  br i1 %cmp39, label %if.then41, label %if.end48, !dbg !5602

if.then41:                                        ; preds = %if.then37
  %43 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5603
  %call42 = call i32 @hub_is_superspeed(%struct.usb_device* %43) #7, !dbg !5606
  %tobool43 = icmp ne i32 %call42, 0, !dbg !5606
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5607

if.then44:                                        ; preds = %if.then41
  %44 = load i32, i32* %port1, align 4, !dbg !5608
  %conv45 = sext i32 %44 to i64, !dbg !5608
  %45 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5609
  %warm_reset_bits = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %45, i32 0, i32 15, !dbg !5610
  %arraydecay46 = getelementptr inbounds [1 x i64], [1 x i64]* %warm_reset_bits, i64 0, i64 0, !dbg !5609
  call void @set_bit(i64 %conv45, i64* %arraydecay46) #7, !dbg !5611
  br label %if.end47, !dbg !5611

if.end47:                                         ; preds = %if.then44, %if.then41
  br label %if.end48, !dbg !5612

if.end48:                                         ; preds = %if.end47, %if.then37
  %46 = load i32, i32* %port1, align 4, !dbg !5613
  %conv49 = sext i32 %46 to i64, !dbg !5613
  %47 = load %struct.usb_hub*, %struct.usb_hub** %hub, align 8, !dbg !5615
  %child_usage_bits = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %47, i32 0, i32 14, !dbg !5616
  %arraydecay50 = getelementptr inbounds [1 x i64], [1 x i64]* %child_usage_bits, i64 0, i64 0, !dbg !5615
  %call51 = call zeroext i1 @test_and_set_bit(i64 %conv49, i64* %arraydecay50) #7, !dbg !5617
  br i1 %call51, label %if.end56, label %if.then52, !dbg !5618

if.then52:                                        ; preds = %if.end48
  %48 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5619
  %dev53 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i32 0, i32 1, !dbg !5621
  call void @pm_runtime_get_noresume(%struct.device* %dev53) #7, !dbg !5622
  %49 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5623
  %dev54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 14, !dbg !5624
  %call55 = call i32 @pm_request_resume(%struct.device* %dev54) #7, !dbg !5625
  br label %if.end56, !dbg !5626

if.end56:                                         ; preds = %if.then52, %if.end48
  br label %if.end57, !dbg !5627

if.end57:                                         ; preds = %if.end56, %land.lhs.true35, %if.end31
  %50 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5628
  call void @usb_autopm_put_interface(%struct.usb_interface* %50) #7, !dbg !5629
  %51 = load i32, i32* %retval14, align 4, !dbg !5630
  store i32 %51, i32* %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

return:                                           ; preds = %if.end57, %if.then30, %if.then16, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !5632
  ret i32 %52, !dbg !5632
}

; Function Attrs: noredzone
declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_flags(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_hub_set_port_power(%struct.usb_device*, %struct.usb_hub*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_clear_port_feature(%struct.usb_device*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !5633 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5636
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #7, !dbg !5637
  ret i32 %call, !dbg !5638
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !5639 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5642
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #7, !dbg !5643
  ret i32 %call, !dbg !5644
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hub_power_on_good_delay(%struct.usb_hub* %hub) #0 !dbg !5645 {
entry:
  %hub.addr = alloca %struct.usb_hub*, align 8
  %delay = alloca i32, align 4
  %__UNIQUE_ID___x221 = alloca i32, align 4
  %__UNIQUE_ID___y222 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  call void @llvm.dbg.declare(metadata i32* %delay, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5652
  %descriptor = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %0, i32 0, i32 16, !dbg !5653
  %1 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %descriptor, align 8, !dbg !5653
  %bPwrOn2PwrGood = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %1, i32 0, i32 4, !dbg !5654
  %2 = load i8, i8* %bPwrOn2PwrGood, align 1, !dbg !5654
  %conv = zext i8 %2 to i32, !dbg !5652
  %mul = mul i32 %conv, 2, !dbg !5655
  store i32 %mul, i32* %delay, align 4, !dbg !5651
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x221, metadata !5656, metadata !DIExpression()), !dbg !5658
  %3 = load i32, i32* %delay, align 4, !dbg !5658
  store i32 %3, i32* %__UNIQUE_ID___x221, align 4, !dbg !5658
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y222, metadata !5659, metadata !DIExpression()), !dbg !5658
  store i32 100, i32* %__UNIQUE_ID___y222, align 4, !dbg !5658
  %4 = load i32, i32* %__UNIQUE_ID___x221, align 4, !dbg !5658
  %5 = load i32, i32* %__UNIQUE_ID___y222, align 4, !dbg !5658
  %cmp = icmp ugt i32 %4, %5, !dbg !5658
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5658

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___x221, align 4, !dbg !5658
  br label %cond.end, !dbg !5658

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %__UNIQUE_ID___y222, align 4, !dbg !5658
  br label %cond.end, !dbg !5658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5658
  store i32 %cond, i32* %tmp, align 4, !dbg !5658
  %8 = load i32, i32* %tmp, align 4, !dbg !5658
  ret i32 %8, !dbg !5660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hub_port_debounce_be_connected(%struct.usb_hub* %hub, i32 %port1) #0 !dbg !5661 {
entry:
  %hub.addr = alloca %struct.usb_hub*, align 8
  %port1.addr = alloca i32, align 4
  store %struct.usb_hub* %hub, %struct.usb_hub** %hub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %hub.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load %struct.usb_hub*, %struct.usb_hub** %hub.addr, align 8, !dbg !5666
  %1 = load i32, i32* %port1.addr, align 4, !dbg !5667
  %call = call i32 @hub_port_debounce(%struct.usb_hub* %0, i32 %1, i1 zeroext true) #7, !dbg !5668
  ret i32 %call, !dbg !5669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !5670 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5673, metadata !DIExpression()), !dbg !5675
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5677, metadata !DIExpression()), !dbg !5678
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5679, metadata !DIExpression()), !dbg !5681
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5259, metadata !DIExpression()), !dbg !5682
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5263, metadata !DIExpression()), !dbg !5684
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5689
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5690
  %div = sdiv i64 %1, 64, !dbg !5690
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5691
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5689
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5692
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5693
  %conv.i = trunc i64 %4 to i32, !dbg !5693
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5694
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5695
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5695
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !5695
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5696
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5697
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5681
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5681
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #9, !dbg !5681, !srcloc !5698
  store i8 %11, i8* %c.i, align 1, !dbg !5681
  %12 = load i8, i8* %c.i, align 1, !dbg !5681
  %tobool.i = trunc i8 %12 to i1, !dbg !5681
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5681
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5681
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5681
  %tobool1.i = trunc i8 %13 to i1, !dbg !5681
  ret i1 %tobool1.i, !dbg !5699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_resume(%struct.device* %dev) #0 !dbg !5700 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5703
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 1) #7, !dbg !5704
  ret i32 %call, !dbg !5705
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @hub_port_debounce(%struct.usb_hub*, i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5706 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5712, metadata !DIExpression()), !dbg !5713
  ret i1 true, !dbg !5714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5715 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  ret void, !dbg !5725
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5726 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5730, metadata !DIExpression()), !dbg !5734
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5736, metadata !DIExpression()), !dbg !5737
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  %0 = load i64, i64* %size.addr, align 8, !dbg !5740
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5742
  br i1 %1, label %if.then, label %if.end447, !dbg !5743

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5744
  %tobool = icmp ne i64 %2, 0, !dbg !5744
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5747

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5748
  br label %return, !dbg !5748

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5749
  %cmp = icmp ult i64 %3, 4096, !dbg !5751
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5752

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5753
  br label %return, !dbg !5753

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub = sub i64 %4, 1, !dbg !5754
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5754
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5754

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub4 = sub i64 %6, 1, !dbg !5754
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5754
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5754

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub6 = sub i64 %8, 1, !dbg !5754
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5754
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5754

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5754

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub9 = sub i64 %9, 1, !dbg !5754
  %and = and i64 %sub9, -9223372036854775808, !dbg !5754
  %tobool10 = icmp ne i64 %and, 0, !dbg !5754
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5754

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5754

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub13 = sub i64 %10, 1, !dbg !5754
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5754
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5754
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5754

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5754

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub18 = sub i64 %11, 1, !dbg !5754
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5754
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5754
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5754

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5754

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub23 = sub i64 %12, 1, !dbg !5754
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5754
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5754
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5754

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5754

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub28 = sub i64 %13, 1, !dbg !5754
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5754
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5754
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5754

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5754

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub33 = sub i64 %14, 1, !dbg !5754
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5754
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5754
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5754

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5754

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub38 = sub i64 %15, 1, !dbg !5754
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5754
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5754
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5754

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5754

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub43 = sub i64 %16, 1, !dbg !5754
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5754
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5754
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5754

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5754

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub48 = sub i64 %17, 1, !dbg !5754
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5754
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5754
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5754

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5754

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub53 = sub i64 %18, 1, !dbg !5754
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5754
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5754
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5754

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5754

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub58 = sub i64 %19, 1, !dbg !5754
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5754
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5754
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5754

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5754

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub63 = sub i64 %20, 1, !dbg !5754
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5754
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5754
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5754

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5754

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub68 = sub i64 %21, 1, !dbg !5754
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5754
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5754
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5754

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5754

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub73 = sub i64 %22, 1, !dbg !5754
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5754
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5754
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5754

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5754

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub78 = sub i64 %23, 1, !dbg !5754
  %and79 = and i64 %sub78, 562949953421312, !dbg !5754
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5754
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5754

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5754

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub83 = sub i64 %24, 1, !dbg !5754
  %and84 = and i64 %sub83, 281474976710656, !dbg !5754
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5754
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5754

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5754

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub88 = sub i64 %25, 1, !dbg !5754
  %and89 = and i64 %sub88, 140737488355328, !dbg !5754
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5754
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5754

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5754

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub93 = sub i64 %26, 1, !dbg !5754
  %and94 = and i64 %sub93, 70368744177664, !dbg !5754
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5754
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5754

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5754

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub98 = sub i64 %27, 1, !dbg !5754
  %and99 = and i64 %sub98, 35184372088832, !dbg !5754
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5754
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5754

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5754

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub103 = sub i64 %28, 1, !dbg !5754
  %and104 = and i64 %sub103, 17592186044416, !dbg !5754
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5754
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5754

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5754

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub108 = sub i64 %29, 1, !dbg !5754
  %and109 = and i64 %sub108, 8796093022208, !dbg !5754
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5754
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5754

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5754

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub113 = sub i64 %30, 1, !dbg !5754
  %and114 = and i64 %sub113, 4398046511104, !dbg !5754
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5754
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5754

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5754

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub118 = sub i64 %31, 1, !dbg !5754
  %and119 = and i64 %sub118, 2199023255552, !dbg !5754
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5754
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5754

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5754

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub123 = sub i64 %32, 1, !dbg !5754
  %and124 = and i64 %sub123, 1099511627776, !dbg !5754
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5754
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5754

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5754

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub128 = sub i64 %33, 1, !dbg !5754
  %and129 = and i64 %sub128, 549755813888, !dbg !5754
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5754
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5754

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5754

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub133 = sub i64 %34, 1, !dbg !5754
  %and134 = and i64 %sub133, 274877906944, !dbg !5754
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5754
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5754

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5754

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub138 = sub i64 %35, 1, !dbg !5754
  %and139 = and i64 %sub138, 137438953472, !dbg !5754
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5754
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5754

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5754

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub143 = sub i64 %36, 1, !dbg !5754
  %and144 = and i64 %sub143, 68719476736, !dbg !5754
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5754
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5754

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5754

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub148 = sub i64 %37, 1, !dbg !5754
  %and149 = and i64 %sub148, 34359738368, !dbg !5754
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5754
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5754

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5754

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub153 = sub i64 %38, 1, !dbg !5754
  %and154 = and i64 %sub153, 17179869184, !dbg !5754
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5754
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5754

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5754

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub158 = sub i64 %39, 1, !dbg !5754
  %and159 = and i64 %sub158, 8589934592, !dbg !5754
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5754
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5754

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5754

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub163 = sub i64 %40, 1, !dbg !5754
  %and164 = and i64 %sub163, 4294967296, !dbg !5754
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5754
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5754

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5754

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub168 = sub i64 %41, 1, !dbg !5754
  %and169 = and i64 %sub168, 2147483648, !dbg !5754
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5754
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5754

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5754

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub173 = sub i64 %42, 1, !dbg !5754
  %and174 = and i64 %sub173, 1073741824, !dbg !5754
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5754
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5754

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5754

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub178 = sub i64 %43, 1, !dbg !5754
  %and179 = and i64 %sub178, 536870912, !dbg !5754
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5754
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5754

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5754

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub183 = sub i64 %44, 1, !dbg !5754
  %and184 = and i64 %sub183, 268435456, !dbg !5754
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5754
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5754

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5754

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub188 = sub i64 %45, 1, !dbg !5754
  %and189 = and i64 %sub188, 134217728, !dbg !5754
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5754
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5754

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5754

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub193 = sub i64 %46, 1, !dbg !5754
  %and194 = and i64 %sub193, 67108864, !dbg !5754
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5754
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5754

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5754

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub198 = sub i64 %47, 1, !dbg !5754
  %and199 = and i64 %sub198, 33554432, !dbg !5754
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5754
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5754

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5754

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub203 = sub i64 %48, 1, !dbg !5754
  %and204 = and i64 %sub203, 16777216, !dbg !5754
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5754
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5754

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5754

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub208 = sub i64 %49, 1, !dbg !5754
  %and209 = and i64 %sub208, 8388608, !dbg !5754
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5754
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5754

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5754

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub213 = sub i64 %50, 1, !dbg !5754
  %and214 = and i64 %sub213, 4194304, !dbg !5754
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5754
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5754

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5754

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub218 = sub i64 %51, 1, !dbg !5754
  %and219 = and i64 %sub218, 2097152, !dbg !5754
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5754
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5754

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5754

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub223 = sub i64 %52, 1, !dbg !5754
  %and224 = and i64 %sub223, 1048576, !dbg !5754
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5754
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5754

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5754

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub228 = sub i64 %53, 1, !dbg !5754
  %and229 = and i64 %sub228, 524288, !dbg !5754
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5754
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5754

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5754

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub233 = sub i64 %54, 1, !dbg !5754
  %and234 = and i64 %sub233, 262144, !dbg !5754
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5754
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5754

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5754

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub238 = sub i64 %55, 1, !dbg !5754
  %and239 = and i64 %sub238, 131072, !dbg !5754
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5754
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5754

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5754

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub243 = sub i64 %56, 1, !dbg !5754
  %and244 = and i64 %sub243, 65536, !dbg !5754
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5754
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5754

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5754

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub248 = sub i64 %57, 1, !dbg !5754
  %and249 = and i64 %sub248, 32768, !dbg !5754
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5754
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5754

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5754

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub253 = sub i64 %58, 1, !dbg !5754
  %and254 = and i64 %sub253, 16384, !dbg !5754
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5754
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5754

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5754

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub258 = sub i64 %59, 1, !dbg !5754
  %and259 = and i64 %sub258, 8192, !dbg !5754
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5754
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5754

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5754

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub263 = sub i64 %60, 1, !dbg !5754
  %and264 = and i64 %sub263, 4096, !dbg !5754
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5754
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5754

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5754

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub268 = sub i64 %61, 1, !dbg !5754
  %and269 = and i64 %sub268, 2048, !dbg !5754
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5754
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5754

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5754

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub273 = sub i64 %62, 1, !dbg !5754
  %and274 = and i64 %sub273, 1024, !dbg !5754
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5754
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5754

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5754

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub278 = sub i64 %63, 1, !dbg !5754
  %and279 = and i64 %sub278, 512, !dbg !5754
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5754
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5754

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5754

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub283 = sub i64 %64, 1, !dbg !5754
  %and284 = and i64 %sub283, 256, !dbg !5754
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5754
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5754

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5754

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub288 = sub i64 %65, 1, !dbg !5754
  %and289 = and i64 %sub288, 128, !dbg !5754
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5754
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5754

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5754

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub293 = sub i64 %66, 1, !dbg !5754
  %and294 = and i64 %sub293, 64, !dbg !5754
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5754
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5754

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5754

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub298 = sub i64 %67, 1, !dbg !5754
  %and299 = and i64 %sub298, 32, !dbg !5754
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5754
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5754

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5754

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub303 = sub i64 %68, 1, !dbg !5754
  %and304 = and i64 %sub303, 16, !dbg !5754
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5754
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5754

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5754

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub308 = sub i64 %69, 1, !dbg !5754
  %and309 = and i64 %sub308, 8, !dbg !5754
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5754
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5754

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5754

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub313 = sub i64 %70, 1, !dbg !5754
  %and314 = and i64 %sub313, 4, !dbg !5754
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5754
  %71 = zext i1 %tobool315 to i64, !dbg !5754
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5754
  br label %cond.end, !dbg !5754

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5754
  br label %cond.end317, !dbg !5754

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5754
  br label %cond.end319, !dbg !5754

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5754
  br label %cond.end321, !dbg !5754

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5754
  br label %cond.end323, !dbg !5754

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5754
  br label %cond.end325, !dbg !5754

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5754
  br label %cond.end327, !dbg !5754

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5754
  br label %cond.end329, !dbg !5754

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5754
  br label %cond.end331, !dbg !5754

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5754
  br label %cond.end333, !dbg !5754

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5754
  br label %cond.end335, !dbg !5754

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5754
  br label %cond.end337, !dbg !5754

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5754
  br label %cond.end339, !dbg !5754

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5754
  br label %cond.end341, !dbg !5754

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5754
  br label %cond.end343, !dbg !5754

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5754
  br label %cond.end345, !dbg !5754

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5754
  br label %cond.end347, !dbg !5754

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5754
  br label %cond.end349, !dbg !5754

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5754
  br label %cond.end351, !dbg !5754

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5754
  br label %cond.end353, !dbg !5754

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5754
  br label %cond.end355, !dbg !5754

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5754
  br label %cond.end357, !dbg !5754

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5754
  br label %cond.end359, !dbg !5754

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5754
  br label %cond.end361, !dbg !5754

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5754
  br label %cond.end363, !dbg !5754

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5754
  br label %cond.end365, !dbg !5754

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5754
  br label %cond.end367, !dbg !5754

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5754
  br label %cond.end369, !dbg !5754

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5754
  br label %cond.end371, !dbg !5754

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5754
  br label %cond.end373, !dbg !5754

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5754
  br label %cond.end375, !dbg !5754

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5754
  br label %cond.end377, !dbg !5754

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5754
  br label %cond.end379, !dbg !5754

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5754
  br label %cond.end381, !dbg !5754

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5754
  br label %cond.end383, !dbg !5754

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5754
  br label %cond.end385, !dbg !5754

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5754
  br label %cond.end387, !dbg !5754

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5754
  br label %cond.end389, !dbg !5754

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5754
  br label %cond.end391, !dbg !5754

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5754
  br label %cond.end393, !dbg !5754

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5754
  br label %cond.end395, !dbg !5754

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5754
  br label %cond.end397, !dbg !5754

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5754
  br label %cond.end399, !dbg !5754

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5754
  br label %cond.end401, !dbg !5754

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5754
  br label %cond.end403, !dbg !5754

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5754
  br label %cond.end405, !dbg !5754

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5754
  br label %cond.end407, !dbg !5754

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5754
  br label %cond.end409, !dbg !5754

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5754
  br label %cond.end411, !dbg !5754

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5754
  br label %cond.end413, !dbg !5754

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5754
  br label %cond.end415, !dbg !5754

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5754
  br label %cond.end417, !dbg !5754

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5754
  br label %cond.end419, !dbg !5754

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5754
  br label %cond.end421, !dbg !5754

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5754
  br label %cond.end423, !dbg !5754

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5754
  br label %cond.end425, !dbg !5754

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5754
  br label %cond.end427, !dbg !5754

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5754
  br label %cond.end429, !dbg !5754

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5754
  br label %cond.end431, !dbg !5754

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5754
  br label %cond.end433, !dbg !5754

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5754
  br label %cond.end435, !dbg !5754

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5754
  br label %cond.end437, !dbg !5754

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5754
  br label %cond.end440, !dbg !5754

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5754

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5754
  br label %cond.end444, !dbg !5754

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5754
  %sub443 = sub i64 %72, 1, !dbg !5754
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5754
  br label %cond.end444, !dbg !5754

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5754
  %sub446 = sub i32 %cond445, 12, !dbg !5755
  %add = add i32 %sub446, 1, !dbg !5756
  store i32 %add, i32* %retval, align 4, !dbg !5757
  br label %return, !dbg !5757

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5758
  %dec = add i64 %73, -1, !dbg !5758
  store i64 %dec, i64* %size.addr, align 8, !dbg !5758
  %74 = load i64, i64* %size.addr, align 8, !dbg !5759
  %shr = lshr i64 %74, 12, !dbg !5759
  store i64 %shr, i64* %size.addr, align 8, !dbg !5759
  %75 = load i64, i64* %size.addr, align 8, !dbg !5760
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5737
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5761
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5762
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5761, !srcloc !5763
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5761
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5764
  %add.i = add i32 %79, 1, !dbg !5765
  store i32 %add.i, i32* %retval, align 4, !dbg !5766
  br label %return, !dbg !5766

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5767
  ret i32 %80, !dbg !5767
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5768 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5730, metadata !DIExpression()), !dbg !5772
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5736, metadata !DIExpression()), !dbg !5774
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  %0 = load i64, i64* %n.addr, align 8, !dbg !5777
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5774
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5778
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5779
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5778, !srcloc !5763
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5778
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5780
  %add.i = add i32 %4, 1, !dbg !5781
  %sub = sub i32 %add.i, 1, !dbg !5782
  ret i32 %sub, !dbg !5783
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5784 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5796
  ret i8* %0, !dbg !5797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @connect_type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5798 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %result = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5805, metadata !DIExpression()), !dbg !5806
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5807, metadata !DIExpression()), !dbg !5809
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5809
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5809
  store i8* %1, i8** %__mptr, align 8, !dbg !5809
  br label %do.body, !dbg !5809

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5810

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5809
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5809
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5809
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5810
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5809
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5806
  call void @llvm.dbg.declare(metadata i8** %result, metadata !5812, metadata !DIExpression()), !dbg !5813
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5814
  %connect_type = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 5, !dbg !5815
  %6 = load i32, i32* %connect_type, align 8, !dbg !5815
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ], !dbg !5816

sw.bb:                                            ; preds = %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %result, align 8, !dbg !5817
  br label %sw.epilog, !dbg !5819

sw.bb1:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %result, align 8, !dbg !5820
  br label %sw.epilog, !dbg !5821

sw.bb2:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %result, align 8, !dbg !5822
  br label %sw.epilog, !dbg !5823

sw.default:                                       ; preds = %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %result, align 8, !dbg !5824
  br label %sw.epilog, !dbg !5825

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5826
  %8 = load i8*, i8** %result, align 8, !dbg !5827
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %8) #7, !dbg !5828
  %conv = sext i32 %call to i64, !dbg !5828
  ret i64 %conv, !dbg !5829
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @location_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5830 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5837, metadata !DIExpression()), !dbg !5838
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5839, metadata !DIExpression()), !dbg !5841
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5841
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5841
  store i8* %1, i8** %__mptr, align 8, !dbg !5841
  br label %do.body, !dbg !5841

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5842

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5841
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5841
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5841
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5842
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5841
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5838
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5844
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5845
  %location = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 6, !dbg !5846
  %7 = load i32, i32* %location, align 4, !dbg !5846
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %7) #7, !dbg !5847
  %conv = sext i32 %call to i64, !dbg !5847
  ret i64 %conv, !dbg !5848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @quirks_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5849 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5856, metadata !DIExpression()), !dbg !5857
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5858, metadata !DIExpression()), !dbg !5860
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5860
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5860
  store i8* %1, i8** %__mptr, align 8, !dbg !5860
  br label %do.body, !dbg !5860

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5861

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5860
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5860
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5860
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5861
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5860
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5857
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5863
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5864
  %quirks = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 10, !dbg !5865
  %7 = load i32, i32* %quirks, align 8, !dbg !5865
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %7) #7, !dbg !5866
  %conv = sext i32 %call to i64, !dbg !5866
  ret i64 %conv, !dbg !5867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @quirks_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5868 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5877, metadata !DIExpression()), !dbg !5878
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5879, metadata !DIExpression()), !dbg !5881
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5881
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5881
  store i8* %1, i8** %__mptr, align 8, !dbg !5881
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5882

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5881
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5881
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5881
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5882
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5881
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5878
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5884, metadata !DIExpression()), !dbg !5885
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5886
  %call = call i32 @kstrtou32(i8* %5, i32 16, i32* %value) #7, !dbg !5888
  %tobool = icmp ne i32 %call, 0, !dbg !5888
  br i1 %tobool, label %if.then, label %if.end, !dbg !5889

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !5890
  br label %return, !dbg !5890

if.end:                                           ; preds = %do.end
  %6 = load i32, i32* %value, align 4, !dbg !5891
  %7 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5892
  %quirks = getelementptr inbounds %struct.usb_port, %struct.usb_port* %7, i32 0, i32 10, !dbg !5893
  store i32 %6, i32* %quirks, align 8, !dbg !5894
  %8 = load i64, i64* %count.addr, align 8, !dbg !5895
  store i64 %8, i64* %retval, align 8, !dbg !5896
  br label %return, !dbg !5896

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !5897
  ret i64 %9, !dbg !5897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtou32(i8* %s, i32 %base, i32* %res) #0 !dbg !5898 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5908
  %1 = load i32, i32* %base.addr, align 4, !dbg !5909
  %2 = load i32*, i32** %res.addr, align 8, !dbg !5910
  %call = call i32 @kstrtouint(i8* %0, i32 %1, i32* %2) #7, !dbg !5911
  ret i32 %call, !dbg !5912
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @over_current_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5913 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5914, metadata !DIExpression()), !dbg !5915
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5920, metadata !DIExpression()), !dbg !5921
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5922, metadata !DIExpression()), !dbg !5924
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5924
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5924
  store i8* %1, i8** %__mptr, align 8, !dbg !5924
  br label %do.body, !dbg !5924

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5925

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5924
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5924
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5924
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5925
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5924
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5921
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5927
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5928
  %over_current_count = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 8, !dbg !5929
  %7 = load i32, i32* %over_current_count, align 8, !dbg !5929
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %7) #7, !dbg !5930
  %conv = sext i32 %call to i64, !dbg !5930
  ret i64 %conv, !dbg !5931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb3_lpm_permit_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5932 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %p = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5939, metadata !DIExpression()), !dbg !5940
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5941, metadata !DIExpression()), !dbg !5943
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5943
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5943
  store i8* %1, i8** %__mptr, align 8, !dbg !5943
  br label %do.body, !dbg !5943

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5944

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5943
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5943
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5943
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5944
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5943
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5940
  call void @llvm.dbg.declare(metadata i8** %p, metadata !5946, metadata !DIExpression()), !dbg !5947
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5948
  %usb3_lpm_u1_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 11, !dbg !5950
  %bf.load = load i8, i8* %usb3_lpm_u1_permit, align 4, !dbg !5950
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5950
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5950
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5950
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5948
  br i1 %tobool, label %if.then, label %if.else7, !dbg !5951

if.then:                                          ; preds = %do.end
  %6 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5952
  %usb3_lpm_u2_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 11, !dbg !5955
  %bf.load1 = load i8, i8* %usb3_lpm_u2_permit, align 4, !dbg !5955
  %bf.lshr2 = lshr i8 %bf.load1, 2, !dbg !5955
  %bf.clear3 = and i8 %bf.lshr2, 1, !dbg !5955
  %bf.cast4 = zext i8 %bf.clear3 to i32, !dbg !5955
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5952
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5956

if.then6:                                         ; preds = %if.then
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %p, align 8, !dbg !5957
  br label %if.end, !dbg !5958

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %p, align 8, !dbg !5959
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end17, !dbg !5960

if.else7:                                         ; preds = %do.end
  %7 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5961
  %usb3_lpm_u2_permit8 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %7, i32 0, i32 11, !dbg !5964
  %bf.load9 = load i8, i8* %usb3_lpm_u2_permit8, align 4, !dbg !5964
  %bf.lshr10 = lshr i8 %bf.load9, 2, !dbg !5964
  %bf.clear11 = and i8 %bf.lshr10, 1, !dbg !5964
  %bf.cast12 = zext i8 %bf.clear11 to i32, !dbg !5964
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !5961
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !5965

if.then14:                                        ; preds = %if.else7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %p, align 8, !dbg !5966
  br label %if.end16, !dbg !5967

if.else15:                                        ; preds = %if.else7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8** %p, align 8, !dbg !5968
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5969
  %9 = load i8*, i8** %p, align 8, !dbg !5970
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %9) #7, !dbg !5971
  %conv = sext i32 %call to i64, !dbg !5971
  ret i64 %conv, !dbg !5972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb3_lpm_permit_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5973 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !5982, metadata !DIExpression()), !dbg !5983
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5984, metadata !DIExpression()), !dbg !5986
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5986
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5986
  store i8* %1, i8** %__mptr, align 8, !dbg !5986
  br label %do.body, !dbg !5986

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5987

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5986
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !5986
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !5986
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !5987
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !5986
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !5983
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5989, metadata !DIExpression()), !dbg !5990
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5991
  %child = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 0, !dbg !5992
  %6 = load %struct.usb_device*, %struct.usb_device** %child, align 8, !dbg !5992
  store %struct.usb_device* %6, %struct.usb_device** %udev, align 8, !dbg !5990
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5993, metadata !DIExpression()), !dbg !5994
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5995
  %call = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !5997
  %tobool = icmp ne i32 %call, 0, !dbg !5997
  br i1 %tobool, label %if.else, label %if.then, !dbg !5998

if.then:                                          ; preds = %do.end
  %8 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !5999
  %usb3_lpm_u1_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %8, i32 0, i32 11, !dbg !6001
  %bf.load = load i8, i8* %usb3_lpm_u1_permit, align 4, !dbg !6002
  %bf.clear = and i8 %bf.load, -3, !dbg !6002
  %bf.set = or i8 %bf.clear, 2, !dbg !6002
  store i8 %bf.set, i8* %usb3_lpm_u1_permit, align 4, !dbg !6002
  %9 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6003
  %usb3_lpm_u2_permit = getelementptr inbounds %struct.usb_port, %struct.usb_port* %9, i32 0, i32 11, !dbg !6004
  %bf.load1 = load i8, i8* %usb3_lpm_u2_permit, align 4, !dbg !6005
  %bf.clear2 = and i8 %bf.load1, -5, !dbg !6005
  %bf.set3 = or i8 %bf.clear2, 4, !dbg !6005
  store i8 %bf.set3, i8* %usb3_lpm_u2_permit, align 4, !dbg !6005
  br label %if.end38, !dbg !6006

if.else:                                          ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !6007
  %call4 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 2) #7, !dbg !6009
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6009
  br i1 %tobool5, label %if.else14, label %if.then6, !dbg !6010

if.then6:                                         ; preds = %if.else
  %11 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6011
  %usb3_lpm_u1_permit7 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %11, i32 0, i32 11, !dbg !6013
  %bf.load8 = load i8, i8* %usb3_lpm_u1_permit7, align 4, !dbg !6014
  %bf.clear9 = and i8 %bf.load8, -3, !dbg !6014
  %bf.set10 = or i8 %bf.clear9, 2, !dbg !6014
  store i8 %bf.set10, i8* %usb3_lpm_u1_permit7, align 4, !dbg !6014
  %12 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6015
  %usb3_lpm_u2_permit11 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %12, i32 0, i32 11, !dbg !6016
  %bf.load12 = load i8, i8* %usb3_lpm_u2_permit11, align 4, !dbg !6017
  %bf.clear13 = and i8 %bf.load12, -5, !dbg !6017
  store i8 %bf.clear13, i8* %usb3_lpm_u2_permit11, align 4, !dbg !6017
  br label %if.end37, !dbg !6018

if.else14:                                        ; preds = %if.else
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !6019
  %call15 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 2) #7, !dbg !6021
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6021
  br i1 %tobool16, label %if.else25, label %if.then17, !dbg !6022

if.then17:                                        ; preds = %if.else14
  %14 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6023
  %usb3_lpm_u1_permit18 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %14, i32 0, i32 11, !dbg !6025
  %bf.load19 = load i8, i8* %usb3_lpm_u1_permit18, align 4, !dbg !6026
  %bf.clear20 = and i8 %bf.load19, -3, !dbg !6026
  store i8 %bf.clear20, i8* %usb3_lpm_u1_permit18, align 4, !dbg !6026
  %15 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6027
  %usb3_lpm_u2_permit21 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %15, i32 0, i32 11, !dbg !6028
  %bf.load22 = load i8, i8* %usb3_lpm_u2_permit21, align 4, !dbg !6029
  %bf.clear23 = and i8 %bf.load22, -5, !dbg !6029
  %bf.set24 = or i8 %bf.clear23, 4, !dbg !6029
  store i8 %bf.set24, i8* %usb3_lpm_u2_permit21, align 4, !dbg !6029
  br label %if.end36, !dbg !6030

if.else25:                                        ; preds = %if.else14
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !6031
  %call26 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 1) #7, !dbg !6033
  %tobool27 = icmp ne i32 %call26, 0, !dbg !6033
  br i1 %tobool27, label %if.else35, label %if.then28, !dbg !6034

if.then28:                                        ; preds = %if.else25
  %17 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6035
  %usb3_lpm_u1_permit29 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %17, i32 0, i32 11, !dbg !6037
  %bf.load30 = load i8, i8* %usb3_lpm_u1_permit29, align 4, !dbg !6038
  %bf.clear31 = and i8 %bf.load30, -3, !dbg !6038
  store i8 %bf.clear31, i8* %usb3_lpm_u1_permit29, align 4, !dbg !6038
  %18 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6039
  %usb3_lpm_u2_permit32 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %18, i32 0, i32 11, !dbg !6040
  %bf.load33 = load i8, i8* %usb3_lpm_u2_permit32, align 4, !dbg !6041
  %bf.clear34 = and i8 %bf.load33, -5, !dbg !6041
  store i8 %bf.clear34, i8* %usb3_lpm_u2_permit32, align 4, !dbg !6041
  br label %if.end, !dbg !6042

if.else35:                                        ; preds = %if.else25
  store i64 -22, i64* %retval, align 8, !dbg !6043
  br label %return, !dbg !6043

if.end:                                           ; preds = %if.then28
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then17
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then6
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %19 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6044
  %tobool39 = icmp ne %struct.usb_device* %19, null, !dbg !6044
  br i1 %tobool39, label %if.then40, label %if.end52, !dbg !6046

if.then40:                                        ; preds = %if.end38
  %20 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6047
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 12, !dbg !6049
  %21 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !6049
  %call41 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %21) #7, !dbg !6050
  store %struct.usb_hcd* %call41, %struct.usb_hcd** %hcd, align 8, !dbg !6051
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6052
  %tobool42 = icmp ne %struct.usb_hcd* %22, null, !dbg !6052
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !6054

if.then43:                                        ; preds = %if.then40
  store i64 -22, i64* %retval, align 8, !dbg !6055
  br label %return, !dbg !6055

if.end44:                                         ; preds = %if.then40
  %23 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6056
  %dev45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 14, !dbg !6056
  call void @device_lock(%struct.device* %dev45) #7, !dbg !6056
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6057
  %bandwidth_mutex = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 23, !dbg !6058
  %25 = load %struct.mutex*, %struct.mutex** %bandwidth_mutex, align 8, !dbg !6058
  call void @mutex_lock(%struct.mutex* %25) #7, !dbg !6059
  %26 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6060
  %call46 = call i32 @usb_disable_lpm(%struct.usb_device* %26) #7, !dbg !6062
  %tobool47 = icmp ne i32 %call46, 0, !dbg !6062
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !6063

if.then48:                                        ; preds = %if.end44
  %27 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6064
  call void @usb_enable_lpm(%struct.usb_device* %27) #7, !dbg !6065
  br label %if.end49, !dbg !6065

if.end49:                                         ; preds = %if.then48, %if.end44
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6066
  %bandwidth_mutex50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 23, !dbg !6067
  %29 = load %struct.mutex*, %struct.mutex** %bandwidth_mutex50, align 8, !dbg !6067
  call void @mutex_unlock(%struct.mutex* %29) #7, !dbg !6068
  %30 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6069
  %dev51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 14, !dbg !6069
  call void @device_unlock(%struct.device* %dev51) #7, !dbg !6069
  br label %if.end52, !dbg !6070

if.end52:                                         ; preds = %if.end49, %if.end38
  %31 = load i64, i64* %count.addr, align 8, !dbg !6071
  store i64 %31, i64* %retval, align 8, !dbg !6072
  br label %return, !dbg !6072

return:                                           ; preds = %if.end52, %if.then43, %if.else35
  %32 = load i64, i64* %retval, align 8, !dbg !6073
  ret i64 %32, !dbg !6073
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %bus) #0 !dbg !6074 {
entry:
  %bus.addr = alloca %struct.usb_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_hcd*, align 8
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6079, metadata !DIExpression()), !dbg !6081
  %0 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !6081
  %1 = bitcast %struct.usb_bus* %0 to i8*, !dbg !6081
  store i8* %1, i8** %__mptr, align 8, !dbg !6081
  br label %do.body, !dbg !6081

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6081
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6081
  %3 = bitcast i8* %add.ptr to %struct.usb_hcd*, !dbg !6081
  store %struct.usb_hcd* %3, %struct.usb_hcd** %tmp, align 8, !dbg !6082
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %tmp, align 8, !dbg !6081
  ret %struct.usb_hcd* %4, !dbg !6084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !6085 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6088
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !6089
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !6090
  ret void, !dbg !6091
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_disable_lpm(%struct.usb_device*) #2

; Function Attrs: noredzone
declare dso_local void @usb_enable_lpm(%struct.usb_device*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !6092 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6095
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !6096
  call void @mutex_unlock(%struct.mutex* %mutex) #7, !dbg !6097
  ret void, !dbg !6098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_port_shutdown(%struct.device* %dev) #0 !dbg !6099 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_port*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !6102, metadata !DIExpression()), !dbg !6103
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6104, metadata !DIExpression()), !dbg !6106
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6106
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6106
  store i8* %1, i8** %__mptr, align 8, !dbg !6106
  br label %do.body, !dbg !6106

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6107

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6106
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !6106
  %3 = bitcast i8* %add.ptr to %struct.usb_port*, !dbg !6106
  store %struct.usb_port* %3, %struct.usb_port** %tmp, align 8, !dbg !6107
  %4 = load %struct.usb_port*, %struct.usb_port** %tmp, align 8, !dbg !6106
  store %struct.usb_port* %4, %struct.usb_port** %port_dev, align 8, !dbg !6103
  %5 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6109
  %child = getelementptr inbounds %struct.usb_port, %struct.usb_port* %5, i32 0, i32 0, !dbg !6111
  %6 = load %struct.usb_device*, %struct.usb_device** %child, align 8, !dbg !6111
  %tobool = icmp ne %struct.usb_device* %6, null, !dbg !6109
  br i1 %tobool, label %if.then, label %if.end, !dbg !6112

if.then:                                          ; preds = %do.end
  %7 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6113
  %child1 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %7, i32 0, i32 0, !dbg !6114
  %8 = load %struct.usb_device*, %struct.usb_device** %child1, align 8, !dbg !6114
  %call = call i32 @usb_disable_usb2_hardware_lpm(%struct.usb_device* %8) #7, !dbg !6115
  br label %if.end, !dbg !6115

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !6116
}

; Function Attrs: noredzone
declare dso_local i32 @usb_disable_usb2_hardware_lpm(%struct.usb_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6117 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6124
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6125
  %1 = load i8*, i8** %name, align 8, !dbg !6125
  ret i8* %1, !dbg !6126
}

; Function Attrs: noredzone
declare dso_local i32 @usb_for_each_dev(i8*, i32 (%struct.usb_device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @match_location(%struct.usb_device* %peer_hdev, i8* %p) #0 !dbg !6127 {
entry:
  %retval = alloca i32, align 4
  %peer_hdev.addr = alloca %struct.usb_device*, align 8
  %p.addr = alloca i8*, align 8
  %port1 = alloca i32, align 4
  %hcd = alloca %struct.usb_hcd*, align 8
  %peer_hcd = alloca %struct.usb_hcd*, align 8
  %port_dev = alloca %struct.usb_port*, align 8
  %peer = alloca %struct.usb_port*, align 8
  %peer_hub = alloca %struct.usb_hub*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %peer_hdev, %struct.usb_device** %peer_hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %peer_hdev.addr, metadata !6130, metadata !DIExpression()), !dbg !6131
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6132, metadata !DIExpression()), !dbg !6133
  call void @llvm.dbg.declare(metadata i32* %port1, metadata !6134, metadata !DIExpression()), !dbg !6135
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !6136, metadata !DIExpression()), !dbg !6137
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %peer_hcd, metadata !6138, metadata !DIExpression()), !dbg !6139
  call void @llvm.dbg.declare(metadata %struct.usb_port** %port_dev, metadata !6140, metadata !DIExpression()), !dbg !6141
  %0 = load i8*, i8** %p.addr, align 8, !dbg !6142
  %1 = bitcast i8* %0 to %struct.usb_port*, !dbg !6142
  store %struct.usb_port* %1, %struct.usb_port** %port_dev, align 8, !dbg !6141
  call void @llvm.dbg.declare(metadata %struct.usb_port** %peer, metadata !6143, metadata !DIExpression()), !dbg !6144
  call void @llvm.dbg.declare(metadata %struct.usb_hub** %peer_hub, metadata !6145, metadata !DIExpression()), !dbg !6146
  %2 = load %struct.usb_device*, %struct.usb_device** %peer_hdev.addr, align 8, !dbg !6147
  %call = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %2) #7, !dbg !6148
  store %struct.usb_hub* %call, %struct.usb_hub** %peer_hub, align 8, !dbg !6146
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !6149, metadata !DIExpression()), !dbg !6150
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6151, metadata !DIExpression()), !dbg !6153
  %3 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6153
  %dev = getelementptr inbounds %struct.usb_port, %struct.usb_port* %3, i32 0, i32 1, !dbg !6153
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !6153
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !6153
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 1, !dbg !6153
  %5 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !6153
  %6 = bitcast %struct.device* %5 to i8*, !dbg !6153
  store i8* %6, i8** %__mptr, align 8, !dbg !6153
  br label %do.body, !dbg !6153

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6154

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !6153
  %add.ptr = getelementptr i8, i8* %7, i64 -160, !dbg !6153
  %8 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !6153
  store %struct.usb_device* %8, %struct.usb_device** %tmp, align 8, !dbg !6154
  %9 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !6153
  store %struct.usb_device* %9, %struct.usb_device** %hdev, align 8, !dbg !6150
  %10 = load %struct.usb_hub*, %struct.usb_hub** %peer_hub, align 8, !dbg !6156
  %tobool = icmp ne %struct.usb_hub* %10, null, !dbg !6156
  br i1 %tobool, label %if.end, label %if.then, !dbg !6158

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !6159
  br label %return, !dbg !6159

if.end:                                           ; preds = %do.end
  %11 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !6160
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 12, !dbg !6161
  %12 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !6161
  %call2 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %12) #7, !dbg !6162
  store %struct.usb_hcd* %call2, %struct.usb_hcd** %hcd, align 8, !dbg !6163
  %13 = load %struct.usb_device*, %struct.usb_device** %peer_hdev.addr, align 8, !dbg !6164
  %bus3 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 12, !dbg !6165
  %14 = load %struct.usb_bus*, %struct.usb_bus** %bus3, align 8, !dbg !6165
  %call4 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %14) #7, !dbg !6166
  store %struct.usb_hcd* %call4, %struct.usb_hcd** %peer_hcd, align 8, !dbg !6167
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %peer_hcd, align 8, !dbg !6168
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6170
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 24, !dbg !6171
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6171
  %cmp = icmp ne %struct.usb_hcd* %15, %17, !dbg !6172
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6173

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6174
  br label %return, !dbg !6174

if.end6:                                          ; preds = %if.end
  store i32 1, i32* %port1, align 4, !dbg !6175
  br label %for.cond, !dbg !6177

for.cond:                                         ; preds = %for.inc, %if.end6
  %18 = load i32, i32* %port1, align 4, !dbg !6178
  %19 = load %struct.usb_device*, %struct.usb_device** %peer_hdev.addr, align 8, !dbg !6180
  %maxchild = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 35, !dbg !6181
  %20 = load i32, i32* %maxchild, align 8, !dbg !6181
  %cmp7 = icmp sle i32 %18, %20, !dbg !6182
  br i1 %cmp7, label %for.body, label %for.end, !dbg !6183

for.body:                                         ; preds = %for.cond
  %21 = load %struct.usb_hub*, %struct.usb_hub** %peer_hub, align 8, !dbg !6184
  %ports = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 27, !dbg !6186
  %22 = load %struct.usb_port**, %struct.usb_port*** %ports, align 8, !dbg !6186
  %23 = load i32, i32* %port1, align 4, !dbg !6187
  %sub = sub i32 %23, 1, !dbg !6188
  %idxprom = sext i32 %sub to i64, !dbg !6184
  %arrayidx = getelementptr %struct.usb_port*, %struct.usb_port** %22, i64 %idxprom, !dbg !6184
  %24 = load %struct.usb_port*, %struct.usb_port** %arrayidx, align 8, !dbg !6184
  store %struct.usb_port* %24, %struct.usb_port** %peer, align 8, !dbg !6189
  %25 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !6190
  %tobool8 = icmp ne %struct.usb_port* %25, null, !dbg !6190
  br i1 %tobool8, label %land.lhs.true, label %if.end12, !dbg !6192

land.lhs.true:                                    ; preds = %for.body
  %26 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !6193
  %location = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 6, !dbg !6194
  %27 = load i32, i32* %location, align 4, !dbg !6194
  %28 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6195
  %location9 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %28, i32 0, i32 6, !dbg !6196
  %29 = load i32, i32* %location9, align 4, !dbg !6196
  %cmp10 = icmp eq i32 %27, %29, !dbg !6197
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !6198

if.then11:                                        ; preds = %land.lhs.true
  %30 = load %struct.usb_port*, %struct.usb_port** %port_dev, align 8, !dbg !6199
  %31 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !6201
  call void @link_peers_report(%struct.usb_port* %30, %struct.usb_port* %31) #7, !dbg !6202
  store i32 1, i32* %retval, align 4, !dbg !6203
  br label %return, !dbg !6203

if.end12:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !6204

for.inc:                                          ; preds = %if.end12
  %32 = load i32, i32* %port1, align 4, !dbg !6205
  %inc = add i32 %32, 1, !dbg !6205
  store i32 %inc, i32* %port1, align 4, !dbg !6205
  br label %for.cond, !dbg !6206, !llvm.loop !6207

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6209
  br label %return, !dbg !6209

return:                                           ; preds = %for.end, %if.then11, %if.then5, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !6210
  ret i32 %33, !dbg !6210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @link_peers_report(%struct.usb_port* %left, %struct.usb_port* %right) #0 !dbg !4574 {
entry:
  %left.addr = alloca %struct.usb_port*, align 8
  %right.addr = alloca %struct.usb_port*, align 8
  %rc = alloca i32, align 4
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  store %struct.usb_port* %left, %struct.usb_port** %left.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %left.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  store %struct.usb_port* %right, %struct.usb_port** %right.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %right.addr, metadata !6213, metadata !DIExpression()), !dbg !6214
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6215, metadata !DIExpression()), !dbg !6216
  %0 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6217
  %1 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6218
  %call = call i32 @link_peers(%struct.usb_port* %0, %struct.usb_port* %1) #7, !dbg !6219
  store i32 %call, i32* %rc, align 4, !dbg !6220
  %2 = load i32, i32* %rc, align 4, !dbg !6221
  %cmp = icmp eq i32 %2, 0, !dbg !6223
  br i1 %cmp, label %if.then, label %if.else, !dbg !6224

if.then:                                          ; preds = %entry
  br label %if.end7, !dbg !6225

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !6227, metadata !DIExpression()), !dbg !6230
  %3 = load i8, i8* @link_peers_report.__print_once, align 1, !dbg !6230
  %tobool = trunc i8 %3 to i1, !dbg !6230
  %lnot = xor i1 %tobool, true, !dbg !6230
  %frombool = zext i1 %lnot to i8, !dbg !6230
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !6230
  %4 = load i8, i8* @link_peers_report.__print_once, align 1, !dbg !6231
  %tobool1 = trunc i8 %4 to i1, !dbg !6231
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !6230

if.then2:                                         ; preds = %if.else
  store i8 1, i8* @link_peers_report.__print_once, align 1, !dbg !6233
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !6233
  br label %if.end, !dbg !6233

if.end:                                           ; preds = %if.then2, %if.else
  %5 = load i8, i8* %__ret_print_once, align 1, !dbg !6230
  %tobool4 = trunc i8 %5 to i1, !dbg !6230
  %lnot5 = xor i1 %tobool4, true, !dbg !6230
  %lnot6 = xor i1 %lnot5, true, !dbg !6230
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6230
  %conv = sext i32 %lnot.ext to i64, !dbg !6230
  store i64 %conv, i64* %tmp, align 8, !dbg !6231
  %6 = load i64, i64* %tmp, align 8, !dbg !6230
  store i32 1, i32* @usb_port_block_power_off, align 4, !dbg !6235
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !6236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @link_peers(%struct.usb_port* %left, %struct.usb_port* %right) #0 !dbg !6237 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct.usb_port*, align 8
  %right.addr = alloca %struct.usb_port*, align 8
  %ss_port = alloca %struct.usb_port*, align 8
  %hs_port = alloca %struct.usb_port*, align 8
  %rc = alloca i32, align 4
  %lpeer = alloca %struct.usb_port*, align 8
  %rpeer = alloca %struct.usb_port*, align 8
  %method = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  %__ret_warn_on62 = alloca i32, align 4
  %tmp91 = alloca i64, align 8
  store %struct.usb_port* %left, %struct.usb_port** %left.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %left.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  store %struct.usb_port* %right, %struct.usb_port** %right.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_port** %right.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  call void @llvm.dbg.declare(metadata %struct.usb_port** %ss_port, metadata !6244, metadata !DIExpression()), !dbg !6245
  call void @llvm.dbg.declare(metadata %struct.usb_port** %hs_port, metadata !6246, metadata !DIExpression()), !dbg !6247
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6248, metadata !DIExpression()), !dbg !6249
  %0 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6250
  %peer = getelementptr inbounds %struct.usb_port, %struct.usb_port* %0, i32 0, i32 3, !dbg !6252
  %1 = load %struct.usb_port*, %struct.usb_port** %peer, align 8, !dbg !6252
  %2 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6253
  %cmp = icmp eq %struct.usb_port* %1, %2, !dbg !6254
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6255

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6256
  %peer1 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %3, i32 0, i32 3, !dbg !6257
  %4 = load %struct.usb_port*, %struct.usb_port** %peer1, align 8, !dbg !6257
  %5 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6258
  %cmp2 = icmp eq %struct.usb_port* %4, %5, !dbg !6259
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6260

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !6261
  br label %return, !dbg !6261

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6262
  %peer3 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %6, i32 0, i32 3, !dbg !6264
  %7 = load %struct.usb_port*, %struct.usb_port** %peer3, align 8, !dbg !6264
  %tobool = icmp ne %struct.usb_port* %7, null, !dbg !6262
  br i1 %tobool, label %if.then6, label %lor.lhs.false, !dbg !6265

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6266
  %peer4 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %8, i32 0, i32 3, !dbg !6267
  %9 = load %struct.usb_port*, %struct.usb_port** %peer4, align 8, !dbg !6267
  %tobool5 = icmp ne %struct.usb_port* %9, null, !dbg !6266
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !6268

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.declare(metadata %struct.usb_port** %lpeer, metadata !6269, metadata !DIExpression()), !dbg !6271
  %10 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6272
  %peer7 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %10, i32 0, i32 3, !dbg !6273
  %11 = load %struct.usb_port*, %struct.usb_port** %peer7, align 8, !dbg !6273
  store %struct.usb_port* %11, %struct.usb_port** %lpeer, align 8, !dbg !6271
  call void @llvm.dbg.declare(metadata %struct.usb_port** %rpeer, metadata !6274, metadata !DIExpression()), !dbg !6275
  %12 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6276
  %peer8 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %12, i32 0, i32 3, !dbg !6277
  %13 = load %struct.usb_port*, %struct.usb_port** %peer8, align 8, !dbg !6277
  store %struct.usb_port* %13, %struct.usb_port** %rpeer, align 8, !dbg !6275
  call void @llvm.dbg.declare(metadata i8** %method, metadata !6278, metadata !DIExpression()), !dbg !6279
  %14 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6280
  %location = getelementptr inbounds %struct.usb_port, %struct.usb_port* %14, i32 0, i32 6, !dbg !6282
  %15 = load i32, i32* %location, align 4, !dbg !6282
  %tobool9 = icmp ne i32 %15, 0, !dbg !6280
  br i1 %tobool9, label %land.lhs.true10, label %if.else, !dbg !6283

land.lhs.true10:                                  ; preds = %if.then6
  %16 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6284
  %location11 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %16, i32 0, i32 6, !dbg !6285
  %17 = load i32, i32* %location11, align 4, !dbg !6285
  %18 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6286
  %location12 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %18, i32 0, i32 6, !dbg !6287
  %19 = load i32, i32* %location12, align 4, !dbg !6287
  %cmp13 = icmp eq i32 %17, %19, !dbg !6288
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !6289

if.then14:                                        ; preds = %land.lhs.true10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %method, align 8, !dbg !6290
  br label %if.end15, !dbg !6291

if.else:                                          ; preds = %land.lhs.true10, %if.then6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %method, align 8, !dbg !6292
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  store i32 0, i32* %tmp, align 4, !dbg !6293
  %20 = load i32, i32* %tmp, align 4, !dbg !6296
  store i32 -16, i32* %retval, align 4, !dbg !6297
  br label %return, !dbg !6297

if.end16:                                         ; preds = %lor.lhs.false
  %21 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6298
  %dev = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 1, !dbg !6299
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !6300
  %22 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6301
  %dev17 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %22, i32 0, i32 1, !dbg !6302
  %kobj18 = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 0, !dbg !6303
  %call = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !6304
  store i32 %call, i32* %rc, align 4, !dbg !6305
  %23 = load i32, i32* %rc, align 4, !dbg !6306
  %tobool19 = icmp ne i32 %23, 0, !dbg !6306
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6308

if.then20:                                        ; preds = %if.end16
  %24 = load i32, i32* %rc, align 4, !dbg !6309
  store i32 %24, i32* %retval, align 4, !dbg !6310
  br label %return, !dbg !6310

if.end21:                                         ; preds = %if.end16
  %25 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6311
  %dev22 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %25, i32 0, i32 1, !dbg !6312
  %kobj23 = getelementptr inbounds %struct.device, %struct.device* %dev22, i32 0, i32 0, !dbg !6313
  %26 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6314
  %dev24 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 1, !dbg !6315
  %kobj25 = getelementptr inbounds %struct.device, %struct.device* %dev24, i32 0, i32 0, !dbg !6316
  %call26 = call i32 @sysfs_create_link(%struct.kobject* %kobj23, %struct.kobject* %kobj25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !6317
  store i32 %call26, i32* %rc, align 4, !dbg !6318
  %27 = load i32, i32* %rc, align 4, !dbg !6319
  %tobool27 = icmp ne i32 %27, 0, !dbg !6319
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !6321

if.then28:                                        ; preds = %if.end21
  %28 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6322
  %dev29 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %28, i32 0, i32 1, !dbg !6324
  %kobj30 = getelementptr inbounds %struct.device, %struct.device* %dev29, i32 0, i32 0, !dbg !6325
  call void @sysfs_remove_link(%struct.kobject* %kobj30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !6326
  %29 = load i32, i32* %rc, align 4, !dbg !6327
  store i32 %29, i32* %retval, align 4, !dbg !6328
  br label %return, !dbg !6328

if.end31:                                         ; preds = %if.end21
  %30 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6329
  %is_superspeed = getelementptr inbounds %struct.usb_port, %struct.usb_port* %30, i32 0, i32 11, !dbg !6331
  %bf.load = load i8, i8* %is_superspeed, align 4, !dbg !6331
  %bf.clear = and i8 %bf.load, 1, !dbg !6331
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6331
  %tobool32 = icmp ne i32 %bf.cast, 0, !dbg !6329
  br i1 %tobool32, label %if.then33, label %if.else61, !dbg !6332

if.then33:                                        ; preds = %if.end31
  %31 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6333
  store %struct.usb_port* %31, %struct.usb_port** %ss_port, align 8, !dbg !6335
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6336, metadata !DIExpression()), !dbg !6338
  %32 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6338
  %is_superspeed34 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %32, i32 0, i32 11, !dbg !6338
  %bf.load35 = load i8, i8* %is_superspeed34, align 4, !dbg !6338
  %bf.clear36 = and i8 %bf.load35, 1, !dbg !6338
  %bf.cast37 = zext i8 %bf.clear36 to i32, !dbg !6338
  %tobool38 = icmp ne i32 %bf.cast37, 0, !dbg !6338
  %lnot = xor i1 %tobool38, true, !dbg !6338
  %lnot39 = xor i1 %lnot, true, !dbg !6338
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !6338
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6338
  %33 = load i32, i32* %__ret_warn_on, align 4, !dbg !6339
  %tobool40 = icmp ne i32 %33, 0, !dbg !6339
  %lnot41 = xor i1 %tobool40, true, !dbg !6339
  %lnot43 = xor i1 %lnot41, true, !dbg !6339
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !6339
  %conv = sext i32 %lnot.ext44 to i64, !dbg !6339
  %tobool45 = icmp ne i64 %conv, 0, !dbg !6339
  br i1 %tobool45, label %if.then46, label %if.end53, !dbg !6338

if.then46:                                        ; preds = %if.then33
  br label %do.body, !dbg !6339

do.body:                                          ; preds = %if.then46
  br label %do.body47, !dbg !6341

do.body47:                                        ; preds = %do.body
  br label %do.end, !dbg !6343

do.end:                                           ; preds = %do.body47
  br label %do.body48, !dbg !6341

do.body48:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 364, i32 2305, i64 12) #9, !dbg !6345, !srcloc !6347
  br label %do.end49, !dbg !6345

do.end49:                                         ; preds = %do.body48
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #9, !dbg !6348, !srcloc !6350
  br label %do.body50, !dbg !6341

do.body50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !6351

do.end51:                                         ; preds = %do.body50
  br label %do.end52, !dbg !6341

do.end52:                                         ; preds = %do.end51
  br label %if.end53, !dbg !6341

if.end53:                                         ; preds = %do.end52, %if.then33
  %34 = load i32, i32* %__ret_warn_on, align 4, !dbg !6338
  %tobool55 = icmp ne i32 %34, 0, !dbg !6338
  %lnot56 = xor i1 %tobool55, true, !dbg !6338
  %lnot58 = xor i1 %lnot56, true, !dbg !6338
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !6338
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !6338
  store i64 %conv60, i64* %tmp54, align 8, !dbg !6339
  %35 = load i64, i64* %tmp54, align 8, !dbg !6338
  %36 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6353
  store %struct.usb_port* %36, %struct.usb_port** %hs_port, align 8, !dbg !6354
  br label %if.end98, !dbg !6355

if.else61:                                        ; preds = %if.end31
  %37 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6356
  store %struct.usb_port* %37, %struct.usb_port** %ss_port, align 8, !dbg !6358
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on62, metadata !6359, metadata !DIExpression()), !dbg !6361
  %38 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6361
  %is_superspeed63 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %38, i32 0, i32 11, !dbg !6361
  %bf.load64 = load i8, i8* %is_superspeed63, align 4, !dbg !6361
  %bf.clear65 = and i8 %bf.load64, 1, !dbg !6361
  %bf.cast66 = zext i8 %bf.clear65 to i32, !dbg !6361
  %tobool67 = icmp ne i32 %bf.cast66, 0, !dbg !6361
  %lnot68 = xor i1 %tobool67, true, !dbg !6361
  %lnot70 = xor i1 %lnot68, true, !dbg !6361
  %lnot72 = xor i1 %lnot70, true, !dbg !6361
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !6361
  store i32 %lnot.ext73, i32* %__ret_warn_on62, align 4, !dbg !6361
  %39 = load i32, i32* %__ret_warn_on62, align 4, !dbg !6362
  %tobool74 = icmp ne i32 %39, 0, !dbg !6362
  %lnot75 = xor i1 %tobool74, true, !dbg !6362
  %lnot77 = xor i1 %lnot75, true, !dbg !6362
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !6362
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !6362
  %tobool80 = icmp ne i64 %conv79, 0, !dbg !6362
  br i1 %tobool80, label %if.then81, label %if.end90, !dbg !6361

if.then81:                                        ; preds = %if.else61
  br label %do.body82, !dbg !6362

do.body82:                                        ; preds = %if.then81
  br label %do.body83, !dbg !6364

do.body83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !6366

do.end84:                                         ; preds = %do.body83
  br label %do.body85, !dbg !6364

do.body85:                                        ; preds = %do.end84
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 368, i32 2305, i64 12) #9, !dbg !6368, !srcloc !6370
  br label %do.end86, !dbg !6368

do.end86:                                         ; preds = %do.body85
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #9, !dbg !6371, !srcloc !6373
  br label %do.body87, !dbg !6364

do.body87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !6374

do.end88:                                         ; preds = %do.body87
  br label %do.end89, !dbg !6364

do.end89:                                         ; preds = %do.end88
  br label %if.end90, !dbg !6364

if.end90:                                         ; preds = %do.end89, %if.else61
  %40 = load i32, i32* %__ret_warn_on62, align 4, !dbg !6361
  %tobool92 = icmp ne i32 %40, 0, !dbg !6361
  %lnot93 = xor i1 %tobool92, true, !dbg !6361
  %lnot95 = xor i1 %lnot93, true, !dbg !6361
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !6361
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !6361
  store i64 %conv97, i64* %tmp91, align 8, !dbg !6362
  %41 = load i64, i64* %tmp91, align 8, !dbg !6361
  %42 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6376
  store %struct.usb_port* %42, %struct.usb_port** %hs_port, align 8, !dbg !6377
  br label %if.end98

if.end98:                                         ; preds = %if.end90, %if.end53
  %43 = load %struct.usb_port*, %struct.usb_port** %hs_port, align 8, !dbg !6378
  %dev99 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %43, i32 0, i32 1, !dbg !6379
  %call100 = call i32 @pm_runtime_get_sync(%struct.device* %dev99) #7, !dbg !6380
  %44 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6381
  %45 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6382
  %peer101 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %45, i32 0, i32 3, !dbg !6383
  store %struct.usb_port* %44, %struct.usb_port** %peer101, align 8, !dbg !6384
  %46 = load %struct.usb_port*, %struct.usb_port** %left.addr, align 8, !dbg !6385
  %47 = load %struct.usb_port*, %struct.usb_port** %right.addr, align 8, !dbg !6386
  %peer102 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %47, i32 0, i32 3, !dbg !6387
  store %struct.usb_port* %46, %struct.usb_port** %peer102, align 8, !dbg !6388
  %48 = load %struct.usb_port*, %struct.usb_port** %ss_port, align 8, !dbg !6389
  %dev103 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i32 0, i32 1, !dbg !6390
  %call104 = call i32 @pm_runtime_get_sync(%struct.device* %dev103) #7, !dbg !6391
  %49 = load %struct.usb_port*, %struct.usb_port** %hs_port, align 8, !dbg !6392
  %dev105 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %49, i32 0, i32 1, !dbg !6393
  %call106 = call i32 @pm_runtime_put(%struct.device* %dev105) #7, !dbg !6394
  store i32 0, i32* %retval, align 4, !dbg !6395
  br label %return, !dbg !6395

return:                                           ; preds = %if.end98, %if.then28, %if.then20, %if.end15, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !6396
  ret i32 %50, !dbg !6396
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

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
!llvm.module.flags = !{!4577, !4578, !4579, !4580}
!llvm.ident = !{!4581}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usb_port_pm_ops", scope: !2, file: !3, line: 302, type: !3280, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !4432, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/port.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !66, !74, !80, !86, !93, !97, !111, !123, !132, !139, !144, !150, !157, !162, !169, !175, !181}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !31, line: 54, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !37, line: 296, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !81, line: 41, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !81, line: 99, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!92 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !81, line: 80, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !98, line: 76, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!100 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!107 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!108 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !112, line: 1156, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!121 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !112, line: 1146, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!128 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!129 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !133, line: 96, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !133, line: 476, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_port_connect_type", file: !133, line: 482, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "USB_PORT_CONNECT_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_PORT_CONNECT_TYPE_HOT_PLUG", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "USB_PORT_CONNECT_TYPE_HARD_WIRED", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "USB_PORT_NOT_USED", value: 3, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_flags_status", file: !81, line: 19, baseType: !151, size: 32, elements: !152)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "PM_QOS_FLAGS_UNDEFINED", value: -1)
!154 = !DIEnumerator(name: "PM_QOS_FLAGS_NONE", value: 0)
!155 = !DIEnumerator(name: "PM_QOS_FLAGS_SOME", value: 1)
!156 = !DIEnumerator(name: "PM_QOS_FLAGS_ALL", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !163, line: 305, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!166 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !170, line: 11, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !112, line: 1181, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !182, line: 75, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!187 = !{!188, !190, !191, !196, !4045, !4170, !4172, !4173, !897, !3905}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 148, baseType: !7)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_port", file: !193, line: 93, size: 6208, elements: !194)
!193 = !DIFile(filename: "drivers/usb/core/hub.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !4153, !4154, !4157, !4158, !4159, !4160, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !192, file: !193, line: 94, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !133, line: 631, size: 10624, elements: !198)
!198 = !{!199, !200, !205, !210, !211, !212, !213, !214, !265, !266, !270, !271, !3894, !3935, !3936, !3953, !4014, !4096, !4097, !4099, !4100, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4135, !4136, !4137, !4142, !4149, !4150, !4151, !4152}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !197, file: !133, line: 632, baseType: !151, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !197, file: !133, line: 633, baseType: !201, size: 128, offset: 32)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !203)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!203 = !{!204}
!204 = !DISubrange(count: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !197, file: !133, line: 634, baseType: !206, size: 32, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !207, line: 21, baseType: !208)
!207 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !209, line: 27, baseType: !7)
!209 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !133, line: 635, baseType: !111, size: 32, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !197, file: !133, line: 636, baseType: !123, size: 32, offset: 224)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !197, file: !133, line: 637, baseType: !7, size: 32, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !197, file: !133, line: 638, baseType: !7, size: 32, offset: 288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !197, file: !133, line: 640, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !182, line: 554, size: 576, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !238, !244}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !216, file: !182, line: 555, baseType: !196, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !216, file: !182, line: 556, baseType: !151, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !216, file: !182, line: 557, baseType: !7, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !216, file: !182, line: 558, baseType: !190, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !216, file: !182, line: 561, baseType: !223, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !224, line: 83, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !224, line: 71, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !224, line: 72, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !224, line: 72, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !228, file: !224, line: 73, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !224, line: 20, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !224, line: 21, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !235, line: 25, baseType: !236)
!235 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 25, elements: !237)
!237 = !{}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !216, file: !182, line: 562, baseType: !239, size: 128, offset: 192)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 178, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !189, line: 179, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !189, line: 179, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !216, file: !182, line: 563, baseType: !245, size: 256, offset: 320)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !246, line: 102, size: 256, elements: !247)
!246 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !258, !259}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !245, file: !246, line: 103, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !250, line: 13, baseType: !251)
!250 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 175, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 173, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !189, line: 174, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !207, line: 22, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !209, line: 30, baseType: !257)
!257 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !245, file: !246, line: 104, baseType: !239, size: 128, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !245, file: !246, line: 105, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !246, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !197, file: !133, line: 641, baseType: !151, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !197, file: !133, line: 643, baseType: !267, size: 64, offset: 416)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 2)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !133, line: 645, baseType: !196, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !197, file: !133, line: 646, baseType: !272, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !133, line: 424, size: 960, elements: !274)
!274 = !{!275, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3888, !3889, !3890, !3891, !3892, !3893}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !273, file: !133, line: 425, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !278)
!278 = !{!279, !3253, !3254, !3257, !3258, !3309, !3400, !3401, !3402, !3403, !3404, !3413, !3590, !3603, !3798, !3799, !3803, !3805, !3806, !3807, !3811, !3817, !3818, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3859, !3860, !3861, !3864, !3867, !3868, !3869, !3870}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !277, file: !60, line: 462, baseType: !280, size: 512)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !281, line: 64, size: 512, elements: !282)
!281 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !286, !287, !289, !334, !3104, !3243, !3248, !3249, !3250, !3251, !3252}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !281, line: 65, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !280, file: !281, line: 66, baseType: !239, size: 128, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !280, file: !281, line: 67, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !280, file: !281, line: 68, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !281, line: 192, size: 704, elements: !292)
!292 = !{!293, !294, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !291, file: !281, line: 193, baseType: !239, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !291, file: !281, line: 194, baseType: !223, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !281, line: 195, baseType: !280, size: 512, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !291, file: !281, line: 196, baseType: !297, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !281, line: 156, size: 192, elements: !300)
!300 = !{!301, !306, !311}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !299, file: !281, line: 157, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!151, !290, !288}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !281, line: 158, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!284, !290, !288}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !299, file: !281, line: 159, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!151, !290, !288, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !281, line: 148, size: 20736, elements: !318)
!318 = !{!319, !324, !328, !329, !333}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !317, file: !281, line: 149, baseType: !320, size: 192)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 192, elements: !322)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!322 = !{!323}
!323 = !DISubrange(count: 3)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !317, file: !281, line: 150, baseType: !325, size: 4096, offset: 192)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 4096, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !317, file: !281, line: 151, baseType: !151, size: 32, offset: 4288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !317, file: !281, line: 152, baseType: !330, size: 16384, offset: 4320)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16384, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !317, file: !281, line: 153, baseType: !151, size: 32, offset: 20704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !280, file: !281, line: 69, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !281, line: 138, size: 448, elements: !337)
!337 = !{!338, !342, !372, !374, !3066, !3094, !3098}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !336, file: !281, line: 139, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !288}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !336, file: !281, line: 140, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !346, line: 230, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !364}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !345, file: !346, line: 231, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !288, !357, !321}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 60, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !354, line: 73, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !354, line: 15, baseType: !356)
!356 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !346, line: 30, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !346, line: 31, baseType: !284, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !358, file: !346, line: 32, baseType: !362, size: 16, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 19, baseType: !363)
!363 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !345, file: !346, line: 232, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!352, !288, !357, !284, !368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 55, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !354, line: 72, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !354, line: 16, baseType: !371)
!371 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !336, file: !281, line: 141, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !336, file: !281, line: 142, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !346, line: 84, size: 320, elements: !379)
!379 = !{!380, !381, !385, !3063, !3064}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !346, line: 85, baseType: !284, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !378, file: !346, line: 86, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!362, !288, !357, !151}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !378, file: !346, line: 88, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!362, !288, !389, !151}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !346, line: 168, size: 448, elements: !391)
!391 = !{!392, !393, !394, !395, !3058, !3059}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !390, file: !346, line: 169, baseType: !358, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !346, line: 170, baseType: !368, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !390, file: !346, line: 171, baseType: !190, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !390, file: !346, line: 172, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!352, !399, !288, !389, !321, !574, !368}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !401)
!401 = !{!402, !420, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3041, !3042, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !400, file: !37, line: 920, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !37, line: 917, size: 128, elements: !404)
!404 = !{!405, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !403, file: !37, line: 918, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !407, line: 58, size: 64, elements: !408)
!407 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !407, line: 59, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !403, file: !37, line: 919, baseType: !412, size: 128, align: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 216, size: 128, align: 64, elements: !413)
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !189, line: 217, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !412, file: !189, line: 218, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !415}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !400, file: !37, line: 921, baseType: !421, size: 128, offset: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !422, line: 8, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !421, file: !422, line: 9, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !427, line: 18, flags: DIFlagFwdDecl)
!427 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !421, file: !422, line: 10, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !427, line: 89, size: 1536, elements: !431)
!431 = !{!432, !433, !443, !451, !452, !471, !2991, !2993, !3005, !3006, !3007, !3008, !3009, !3015, !3016, !3017}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !430, file: !427, line: 91, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !430, file: !427, line: 92, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !435, line: 277, baseType: !436)
!435 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !435, line: 277, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !436, file: !435, line: 277, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !435, line: 70, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !435, line: 65, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !440, file: !435, line: 66, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !430, file: !427, line: 93, baseType: !444, size: 128, offset: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !445, line: 38, size: 128, elements: !446)
!445 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !445, line: 39, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !444, file: !445, line: 39, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !430, file: !427, line: 94, baseType: !429, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !430, file: !427, line: 95, baseType: !453, size: 128, offset: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !427, line: 47, size: 128, elements: !454)
!454 = !{!455, !467}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !427, line: 48, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !427, line: 48, size: 64, elements: !457)
!457 = !{!458, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !427, line: 49, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !427, line: 49, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !459, file: !427, line: 50, baseType: !206, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !459, file: !427, line: 50, baseType: !206, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !456, file: !427, line: 52, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !207, line: 23, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !209, line: 31, baseType: !466)
!466 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !427, line: 54, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !430, file: !427, line: 96, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !474)
!474 = !{!475, !476, !477, !485, !492, !493, !639, !2702, !2703, !2704, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2967, !2975, !2976, !2977, !2987, !2988, !2989, !2990}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !473, file: !37, line: 611, baseType: !362, size: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !473, file: !37, line: 612, baseType: !363, size: 16, offset: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !473, file: !37, line: 613, baseType: !478, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !479, line: 23, baseType: !480)
!479 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 21, size: 32, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !480, file: !479, line: 22, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 32, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !354, line: 49, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !473, file: !37, line: 614, baseType: !486, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !479, line: 28, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 26, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !487, file: !479, line: 27, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 33, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !354, line: 50, baseType: !7)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !473, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !473, file: !37, line: 622, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !497)
!497 = !{!498, !502, !515, !519, !525, !529, !535, !539, !543, !547, !551, !552, !558, !562, !586, !615, !619, !625, !630, !634, !635}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !496, file: !37, line: 1865, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!429, !472, !429, !7}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !496, file: !37, line: 1866, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!284, !429, !472, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !508, line: 10, size: 128, elements: !509)
!508 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!509 = !{!510, !514}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !507, file: !508, line: 11, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !190}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !507, file: !508, line: 12, baseType: !190, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !496, file: !37, line: 1867, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!151, !472, !151}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !496, file: !37, line: 1868, baseType: !520, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !472, !151}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !496, file: !37, line: 1870, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!151, !429, !321, !151}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !496, file: !37, line: 1872, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!151, !472, !429, !362, !533}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 30, baseType: !534)
!534 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !496, file: !37, line: 1873, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!151, !429, !472, !429}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !496, file: !37, line: 1874, baseType: !540, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!151, !472, !429}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !496, file: !37, line: 1875, baseType: !544, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!151, !472, !429, !284}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !496, file: !37, line: 1876, baseType: !548, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!151, !472, !429, !362}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !496, file: !37, line: 1877, baseType: !540, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !496, file: !37, line: 1878, baseType: !553, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!151, !472, !429, !362, !556}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 16, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 13, baseType: !206)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !496, file: !37, line: 1879, baseType: !559, size: 64, offset: 768)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!151, !472, !429, !472, !429, !7}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !496, file: !37, line: 1881, baseType: !563, size: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!151, !429, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !576, !583, !584, !585}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !567, file: !37, line: 220, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !567, file: !37, line: 221, baseType: !362, size: 16, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !567, file: !37, line: 222, baseType: !478, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !567, file: !37, line: 223, baseType: !486, size: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !567, file: !37, line: 224, baseType: !574, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 46, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !354, line: 88, baseType: !257)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !567, file: !37, line: 225, baseType: !577, size: 128, offset: 192)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !578, line: 13, size: 128, elements: !579)
!578 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !577, file: !578, line: 14, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !578, line: 8, baseType: !256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !577, file: !578, line: 15, baseType: !356, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !567, file: !37, line: 226, baseType: !577, size: 128, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !567, file: !37, line: 227, baseType: !577, size: 128, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !567, file: !37, line: 234, baseType: !399, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !496, file: !37, line: 1882, baseType: !587, size: 64, offset: 896)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!151, !590, !592, !206, !7}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !594, line: 22, size: 1152, elements: !595)
!594 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!595 = !{!596, !597, !598, !599, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !593, file: !594, line: 23, baseType: !206, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !593, file: !594, line: 24, baseType: !362, size: 16, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !593, file: !594, line: 25, baseType: !7, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !593, file: !594, line: 26, baseType: !600, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 104, baseType: !206)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !593, file: !594, line: 27, baseType: !464, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !593, file: !594, line: 28, baseType: !464, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !593, file: !594, line: 37, baseType: !464, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !593, file: !594, line: 38, baseType: !556, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !593, file: !594, line: 39, baseType: !556, size: 32, offset: 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !593, file: !594, line: 40, baseType: !478, size: 32, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !593, file: !594, line: 41, baseType: !486, size: 32, offset: 416)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !594, line: 42, baseType: !574, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !593, file: !594, line: 43, baseType: !577, size: 128, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !593, file: !594, line: 44, baseType: !577, size: 128, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !593, file: !594, line: 45, baseType: !577, size: 128, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !593, file: !594, line: 46, baseType: !577, size: 128, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !593, file: !594, line: 47, baseType: !464, size: 64, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !593, file: !594, line: 48, baseType: !464, size: 64, offset: 1088)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !496, file: !37, line: 1883, baseType: !616, size: 64, offset: 960)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!352, !429, !321, !368}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !496, file: !37, line: 1884, baseType: !620, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!151, !472, !623, !464, !464}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !496, file: !37, line: 1886, baseType: !626, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!151, !472, !629, !151}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !496, file: !37, line: 1887, baseType: !631, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!151, !472, !429, !399, !7, !362}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !496, file: !37, line: 1890, baseType: !548, size: 64, offset: 1216)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !496, file: !37, line: 1891, baseType: !636, size: 64, offset: 1280)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!151, !472, !523, !151}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !473, file: !37, line: 623, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !698, !2309, !2391, !2474, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2490, !2494, !2495, !2498, !2499, !2502, !2503, !2504, !2545, !2572, !2573, !2574, !2575, !2576, !2577, !2580, !2582, !2589, !2590, !2592, !2593, !2594, !2653, !2654, !2669, !2670, !2671, !2672, !2673, !2676, !2677, !2678, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !641, file: !37, line: 1417, baseType: !239, size: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !641, file: !37, line: 1418, baseType: !556, size: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !641, file: !37, line: 1419, baseType: !470, size: 8, offset: 160)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !641, file: !37, line: 1420, baseType: !371, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !641, file: !37, line: 1421, baseType: !574, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !641, file: !37, line: 1422, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !651)
!651 = !{!652, !653, !654, !661, !665, !669, !673, !677, !678, !688, !691, !692, !693, !695, !696, !697}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !650, file: !37, line: 2229, baseType: !284, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !650, file: !37, line: 2230, baseType: !151, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !650, file: !37, line: 2238, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!151, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !660, line: 28, flags: DIFlagFwdDecl)
!660 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!661 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !650, file: !37, line: 2239, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !650, file: !37, line: 2240, baseType: !666, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!429, !649, !151, !284, !190}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !650, file: !37, line: 2242, baseType: !670, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !640}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !650, file: !37, line: 2243, baseType: !674, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !676, line: 76, flags: DIFlagFwdDecl)
!676 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !37, line: 2244, baseType: !649, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !650, file: !37, line: 2245, baseType: !679, size: 64, offset: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 182, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !679, file: !189, line: 183, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 186, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !189, line: 187, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !683, file: !189, line: 187, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !650, file: !37, line: 2247, baseType: !689, offset: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !690, line: 187, elements: !237)
!690 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !650, file: !37, line: 2248, baseType: !689, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !650, file: !37, line: 2249, baseType: !689, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !650, file: !37, line: 2250, baseType: !694, offset: 576)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, elements: !322)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !650, file: !37, line: 2252, baseType: !689, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !650, file: !37, line: 2253, baseType: !689, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !650, file: !37, line: 2254, baseType: !689, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !641, file: !37, line: 1423, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !702)
!702 = !{!703, !707, !711, !712, !716, !722, !726, !727, !728, !732, !736, !737, !738, !739, !745, !750, !751, !758, !759, !760, !761, !2293, !2308}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !701, file: !37, line: 1936, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!472, !640}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !701, file: !37, line: 1937, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !472}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !701, file: !37, line: 1938, baseType: !708, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !701, file: !37, line: 1940, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !472, !151}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !701, file: !37, line: 1941, baseType: !717, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!151, !472, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !701, file: !37, line: 1942, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!151, !472}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !701, file: !37, line: 1943, baseType: !708, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !701, file: !37, line: 1944, baseType: !670, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !701, file: !37, line: 1945, baseType: !729, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!151, !640, !151}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !701, file: !37, line: 1946, baseType: !733, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!151, !640}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !701, file: !37, line: 1947, baseType: !733, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !701, file: !37, line: 1948, baseType: !733, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !701, file: !37, line: 1949, baseType: !733, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !701, file: !37, line: 1950, baseType: !740, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!151, !429, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !701, file: !37, line: 1951, baseType: !746, size: 64, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!151, !640, !749, !321}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !701, file: !37, line: 1952, baseType: !670, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !701, file: !37, line: 1954, baseType: !752, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!151, !755, !429}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !757, line: 539, flags: DIFlagFwdDecl)
!757 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !701, file: !37, line: 1955, baseType: !752, size: 64, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !701, file: !37, line: 1956, baseType: !752, size: 64, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !701, file: !37, line: 1957, baseType: !752, size: 64, offset: 1216)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !701, file: !37, line: 1963, baseType: !762, size: 64, offset: 1280)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!151, !640, !765, !188}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !767, line: 68, size: 512, align: 128, elements: !768)
!767 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !770, !2285, !2292}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !767, line: 69, baseType: !371, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !767, line: 77, baseType: !771, size: 320, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !767, line: 77, size: 320, elements: !772)
!772 = !{!773, !953, !958, !986, !994, !1000, !2277, !2284}
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 78, baseType: !774, size: 320)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 78, size: 320, elements: !775)
!775 = !{!776, !777, !951, !952}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !774, file: !767, line: 84, baseType: !239, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !774, file: !767, line: 86, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !780)
!780 = !{!781, !782, !789, !790, !795, !810, !819, !820, !821, !822, !944, !945, !948, !949, !950}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !779, file: !37, line: 452, baseType: !472, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !779, file: !37, line: 453, baseType: !783, size: 128, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !784, line: 292, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !783, file: !784, line: 293, baseType: !223)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !783, file: !784, line: 295, baseType: !188, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !783, file: !784, line: 296, baseType: !190, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !779, file: !37, line: 454, baseType: !188, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !779, file: !37, line: 455, baseType: !791, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 168, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 166, size: 32, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !792, file: !189, line: 167, baseType: !151, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !779, file: !37, line: 460, baseType: !796, size: 128, offset: 256)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !797, line: 125, size: 128, elements: !798)
!797 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !796, file: !797, line: 126, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !797, line: 31, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !800, file: !797, line: 32, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !797, line: 24, size: 192, align: 64, elements: !805)
!805 = !{!806, !807, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !804, file: !797, line: 25, baseType: !371, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !804, file: !797, line: 26, baseType: !803, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !804, file: !797, line: 27, baseType: !803, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !796, file: !797, line: 127, baseType: !803, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !779, file: !37, line: 461, baseType: !811, size: 256, offset: 384)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !812, line: 35, size: 256, elements: !813)
!812 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815, !816, !818}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !811, file: !812, line: 36, baseType: !249, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !811, file: !812, line: 42, baseType: !249, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !811, file: !812, line: 46, baseType: !817, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !224, line: 29, baseType: !231)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !811, file: !812, line: 47, baseType: !239, size: 128, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !779, file: !37, line: 462, baseType: !371, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !779, file: !37, line: 463, baseType: !371, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !779, file: !37, line: 464, baseType: !371, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !779, file: !37, line: 465, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !826)
!826 = !{!827, !831, !835, !839, !843, !847, !853, !859, !863, !868, !872, !876, !880, !908, !912, !918, !919, !920, !924, !929, !933, !940}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !825, file: !37, line: 368, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!151, !765, !720}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !825, file: !37, line: 369, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!151, !399, !765}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !825, file: !37, line: 372, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!151, !778, !720}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !825, file: !37, line: 375, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!151, !765}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !825, file: !37, line: 381, baseType: !844, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!151, !399, !778, !242, !7}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !825, file: !37, line: 383, baseType: !848, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !825, file: !37, line: 385, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!151, !399, !778, !574, !7, !7, !857, !858}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !825, file: !37, line: 388, baseType: !860, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!151, !399, !778, !574, !7, !7, !765, !190}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !825, file: !37, line: 393, baseType: !864, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!867, !778, !867}
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 125, baseType: !464)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !825, file: !37, line: 394, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !765, !7, !7}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !825, file: !37, line: 395, baseType: !873, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!151, !765, !188}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !825, file: !37, line: 396, baseType: !877, size: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !765}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !825, file: !37, line: 397, baseType: !881, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!352, !884, !906}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !886)
!886 = !{!887, !888, !889, !893, !894, !895, !898, !899}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !885, file: !37, line: 321, baseType: !399, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !885, file: !37, line: 326, baseType: !574, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !885, file: !37, line: 327, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !884, !356, !356}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !885, file: !37, line: 328, baseType: !190, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !885, file: !37, line: 329, baseType: !151, size: 32, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !885, file: !37, line: 330, baseType: !896, size: 16, offset: 288)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !207, line: 19, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !209, line: 24, baseType: !363)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !885, file: !37, line: 331, baseType: !896, size: 16, offset: 304)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !37, line: 332, baseType: !900, size: 64, offset: 320)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !37, line: 332, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !900, file: !37, line: 333, baseType: !7, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !900, file: !37, line: 334, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !825, file: !37, line: 402, baseType: !909, size: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!151, !778, !765, !765, !12}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !825, file: !37, line: 404, baseType: !913, size: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!533, !765, !916}
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !917, line: 305, baseType: !7)
!917 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!918 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !825, file: !37, line: 405, baseType: !877, size: 64, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !825, file: !37, line: 406, baseType: !840, size: 64, offset: 1024)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !825, file: !37, line: 407, baseType: !921, size: 64, offset: 1088)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!151, !765, !371, !371}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !825, file: !37, line: 409, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !765, !928, !928}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !825, file: !37, line: 410, baseType: !930, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!151, !778, !765}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !825, file: !37, line: 413, baseType: !934, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!151, !937, !399, !939}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !825, file: !37, line: 415, baseType: !941, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !399}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !37, line: 466, baseType: !371, size: 64, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !779, file: !37, line: 467, baseType: !946, size: 32, offset: 960)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !947, line: 8, baseType: !206)
!947 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !779, file: !37, line: 468, baseType: !223, offset: 992)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !779, file: !37, line: 469, baseType: !239, size: 128, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !779, file: !37, line: 470, baseType: !190, size: 64, offset: 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !774, file: !767, line: 87, baseType: !371, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !774, file: !767, line: 94, baseType: !371, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 96, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 96, size: 64, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !954, file: !767, line: 101, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !189, line: 143, baseType: !464)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 103, baseType: !959, size: 320)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 103, size: 320, elements: !960)
!960 = !{!961, !971, !974, !975}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !767, line: 104, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !767, line: 104, size: 128, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !962, file: !767, line: 105, baseType: !239, size: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !767, line: 106, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !767, line: 106, size: 128, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !966, file: !767, line: 107, baseType: !765, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !966, file: !767, line: 109, baseType: !151, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !966, file: !767, line: 110, baseType: !151, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !959, file: !767, line: 117, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !767, line: 117, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !959, file: !767, line: 119, baseType: !190, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !767, line: 120, baseType: !976, size: 64, offset: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !767, line: 120, size: 64, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !976, file: !767, line: 121, baseType: !190, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !976, file: !767, line: 122, baseType: !371, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !767, line: 123, baseType: !981, size: 32)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !767, line: 123, size: 32, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !981, file: !767, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !981, file: !767, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !981, file: !767, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 130, baseType: !987, size: 192)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 130, size: 192, elements: !988)
!988 = !{!989, !990, !991, !992, !993}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !987, file: !767, line: 131, baseType: !371, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !987, file: !767, line: 134, baseType: !470, size: 8, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !987, file: !767, line: 135, baseType: !470, size: 8, offset: 72)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !987, file: !767, line: 136, baseType: !791, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !987, file: !767, line: 137, baseType: !7, size: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 139, baseType: !995, size: 256)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 139, size: 256, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !995, file: !767, line: 140, baseType: !371, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !995, file: !767, line: 141, baseType: !791, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !995, file: !767, line: 143, baseType: !239, size: 128, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 145, baseType: !1001, size: 256)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 145, size: 256, elements: !1002)
!1002 = !{!1003, !1004, !1006, !1007, !2276}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1001, file: !767, line: 146, baseType: !371, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1001, file: !767, line: 147, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !757, line: 509, baseType: !765)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1001, file: !767, line: 148, baseType: !371, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !767, line: 149, baseType: !1008, size: 64, offset: 192)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !767, line: 149, size: 64, elements: !1009)
!1009 = !{!1010, !2275}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1008, file: !767, line: 150, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !767, line: 388, size: 7296, elements: !1013)
!1013 = !{!1014, !2271}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !767, line: 389, baseType: !1015, size: 7296)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !767, line: 389, size: 7296, elements: !1016)
!1016 = !{!1017, !1055, !1056, !1057, !1061, !1062, !1063, !1064, !1065, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1106, !1114, !1117, !1163, !1164, !2255, !2256, !2259, !2260, !2261, !2264, !2265, !2266, !2269, !2270}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1015, file: !767, line: 390, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !767, line: 305, size: 1472, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1035, !1036, !1041, !1042, !1045, !1049, !1050, !1051, !1052, !1053}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1019, file: !767, line: 308, baseType: !371, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1019, file: !767, line: 309, baseType: !371, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1019, file: !767, line: 313, baseType: !1018, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1019, file: !767, line: 313, baseType: !1018, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1019, file: !767, line: 315, baseType: !804, size: 192, align: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1019, file: !767, line: 323, baseType: !371, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1019, file: !767, line: 327, baseType: !1011, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1019, file: !767, line: 333, baseType: !1029, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !757, line: 284, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !757, line: 284, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1030, file: !757, line: 284, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1034, line: 19, baseType: !371)
!1034 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1019, file: !767, line: 334, baseType: !371, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1019, file: !767, line: 343, baseType: !1037, size: 256, offset: 704)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !767, line: 340, size: 256, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1037, file: !767, line: 341, baseType: !804, size: 192, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1037, file: !767, line: 342, baseType: !371, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1019, file: !767, line: 351, baseType: !239, size: 128, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1019, file: !767, line: 353, baseType: !1043, size: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !767, line: 353, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1019, file: !767, line: 356, baseType: !1046, size: 64, offset: 1152)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !767, line: 356, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1019, file: !767, line: 359, baseType: !371, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1019, file: !767, line: 361, baseType: !399, size: 64, offset: 1280)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1019, file: !767, line: 362, baseType: !190, size: 64, offset: 1344)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1019, file: !767, line: 365, baseType: !249, size: 64, offset: 1408)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1019, file: !767, line: 373, baseType: !1054, offset: 1472)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !767, line: 296, elements: !237)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1015, file: !767, line: 391, baseType: !800, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1015, file: !767, line: 392, baseType: !464, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1015, file: !767, line: 394, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!371, !399, !371, !371, !371, !371}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1015, file: !767, line: 398, baseType: !371, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1015, file: !767, line: 399, baseType: !371, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1015, file: !767, line: 405, baseType: !371, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1015, file: !767, line: 406, baseType: !371, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1015, file: !767, line: 407, baseType: !1066, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !757, line: 286, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 286, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1068, file: !757, line: 286, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1034, line: 18, baseType: !371)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1015, file: !767, line: 416, baseType: !791, size: 32, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1015, file: !767, line: 428, baseType: !791, size: 32, offset: 608)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1015, file: !767, line: 437, baseType: !791, size: 32, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1015, file: !767, line: 447, baseType: !791, size: 32, offset: 672)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1015, file: !767, line: 450, baseType: !249, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1015, file: !767, line: 452, baseType: !151, size: 32, offset: 768)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1015, file: !767, line: 454, baseType: !223, offset: 800)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1015, file: !767, line: 457, baseType: !811, size: 256, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1015, file: !767, line: 459, baseType: !239, size: 128, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1015, file: !767, line: 466, baseType: !371, size: 64, offset: 1216)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1015, file: !767, line: 467, baseType: !371, size: 64, offset: 1280)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1015, file: !767, line: 469, baseType: !371, size: 64, offset: 1344)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1015, file: !767, line: 470, baseType: !371, size: 64, offset: 1408)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1015, file: !767, line: 471, baseType: !251, size: 64, offset: 1472)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1015, file: !767, line: 472, baseType: !371, size: 64, offset: 1536)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1015, file: !767, line: 473, baseType: !371, size: 64, offset: 1600)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1015, file: !767, line: 474, baseType: !371, size: 64, offset: 1664)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1015, file: !767, line: 475, baseType: !371, size: 64, offset: 1728)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1015, file: !767, line: 477, baseType: !223, offset: 1792)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1015, file: !767, line: 478, baseType: !371, size: 64, offset: 1792)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1015, file: !767, line: 478, baseType: !371, size: 64, offset: 1856)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1015, file: !767, line: 478, baseType: !371, size: 64, offset: 1920)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1015, file: !767, line: 478, baseType: !371, size: 64, offset: 1984)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1015, file: !767, line: 479, baseType: !371, size: 64, offset: 2048)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1015, file: !767, line: 479, baseType: !371, size: 64, offset: 2112)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1015, file: !767, line: 479, baseType: !371, size: 64, offset: 2176)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1015, file: !767, line: 480, baseType: !371, size: 64, offset: 2240)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1015, file: !767, line: 480, baseType: !371, size: 64, offset: 2304)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1015, file: !767, line: 480, baseType: !371, size: 64, offset: 2368)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1015, file: !767, line: 480, baseType: !371, size: 64, offset: 2432)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1015, file: !767, line: 482, baseType: !1103, size: 2816, offset: 2496)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2816, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 44)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1015, file: !767, line: 488, baseType: !1107, size: 256, offset: 5312)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1108, line: 60, size: 256, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1107, file: !1108, line: 61, baseType: !1111, size: 256)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 4)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1015, file: !767, line: 490, baseType: !1115, size: 64, offset: 5568)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !767, line: 490, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1015, file: !767, line: 493, baseType: !1118, size: 896, offset: 5632)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1119, line: 53, baseType: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 13, size: 896, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1128, !1129, !1136, !1137, !1157, !1158, !1159}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1120, file: !1119, line: 18, baseType: !464, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1120, file: !1119, line: 28, baseType: !251, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1120, file: !1119, line: 31, baseType: !811, size: 256, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1120, file: !1119, line: 32, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1119, line: 32, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1120, file: !1119, line: 37, baseType: !363, size: 16, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1120, file: !1119, line: 40, baseType: !1130, size: 192, offset: 512)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1131, line: 53, size: 192, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1130, file: !1131, line: 54, baseType: !249, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1130, file: !1131, line: 55, baseType: !223, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1130, file: !1131, line: 59, baseType: !239, size: 128, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1120, file: !1119, line: 41, baseType: !190, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1120, file: !1119, line: 42, baseType: !1138, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1141, line: 13, size: 896, elements: !1142)
!1141 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1140, file: !1141, line: 14, baseType: !190, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 15, baseType: !371, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1140, file: !1141, line: 17, baseType: !371, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1140, file: !1141, line: 17, baseType: !371, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1140, file: !1141, line: 19, baseType: !356, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1140, file: !1141, line: 21, baseType: !356, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1140, file: !1141, line: 22, baseType: !356, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1140, file: !1141, line: 23, baseType: !356, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1140, file: !1141, line: 24, baseType: !356, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1140, file: !1141, line: 25, baseType: !356, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1140, file: !1141, line: 26, baseType: !356, size: 64, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1140, file: !1141, line: 27, baseType: !356, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1140, file: !1141, line: 28, baseType: !356, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1140, file: !1141, line: 29, baseType: !356, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1120, file: !1119, line: 44, baseType: !791, size: 32, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1120, file: !1119, line: 50, baseType: !896, size: 16, offset: 864)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1120, file: !1119, line: 51, baseType: !1160, size: 16, offset: 880)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !207, line: 18, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !209, line: 23, baseType: !1162)
!1162 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !767, line: 495, baseType: !371, size: 64, offset: 6528)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1015, file: !767, line: 497, baseType: !1165, size: 64, offset: 6592)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !767, line: 381, size: 384, elements: !1167)
!1167 = !{!1168, !1169, !2254}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1166, file: !767, line: 382, baseType: !791, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1166, file: !767, line: 383, baseType: !1170, size: 128, offset: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !767, line: 376, size: 128, elements: !1171)
!1171 = !{!1172, !2252}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1170, file: !767, line: 377, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1175, line: 640, size: 48640, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1183, !1185, !1186, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1221, !1232, !1317, !1318, !1319, !1330, !1331, !1333, !1334, !1335, !1336, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1415, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1453, !1455, !1456, !1457, !1469, !1470, !1471, !1472, !1473, !1474, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1498, !1503, !1685, !1686, !1687, !1688, !1689, !1692, !1695, !1698, !1701, !1704, !1805, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1851, !1852, !1853, !1854, !1855, !1860, !1861, !1862, !1865, !1866, !1869, !1872, !1875, !1878, !1910, !1913, !1914, !1993, !1994, !1997, !1998, !2001, !2002, !2003, !2007, !2008, !2009, !2022, !2023, !2024, !2034, !2039, !2042, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1174, file: !1175, line: 646, baseType: !1178, size: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1179, line: 56, size: 128, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !1179, line: 57, baseType: !371, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1178, file: !1179, line: 58, baseType: !206, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1174, file: !1175, line: 649, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !356)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1174, file: !1175, line: 657, baseType: !190, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1174, file: !1175, line: 658, baseType: !1187, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1188, line: 113, baseType: !1189)
!1188 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1188, line: 111, size: 32, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1189, file: !1188, line: 112, baseType: !791, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !1175, line: 660, baseType: !7, size: 32, offset: 288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1174, file: !1175, line: 661, baseType: !7, size: 32, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1174, file: !1175, line: 684, baseType: !151, size: 32, offset: 352)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1174, file: !1175, line: 686, baseType: !151, size: 32, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1174, file: !1175, line: 687, baseType: !151, size: 32, offset: 416)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1174, file: !1175, line: 688, baseType: !151, size: 32, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1174, file: !1175, line: 689, baseType: !7, size: 32, offset: 480)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1174, file: !1175, line: 691, baseType: !1200, size: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1175, line: 691, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1174, file: !1175, line: 692, baseType: !1204, size: 832, offset: 576)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1175, line: 451, size: 832, elements: !1205)
!1205 = !{!1206, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1204, file: !1175, line: 453, baseType: !1207, size: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1175, line: 325, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1207, file: !1175, line: 326, baseType: !371, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1207, file: !1175, line: 327, baseType: !206, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1204, file: !1175, line: 454, baseType: !804, size: 192, align: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1204, file: !1175, line: 455, baseType: !239, size: 128, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1204, file: !1175, line: 456, baseType: !7, size: 32, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1204, file: !1175, line: 458, baseType: !464, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1204, file: !1175, line: 459, baseType: !464, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1204, file: !1175, line: 460, baseType: !464, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1204, file: !1175, line: 461, baseType: !464, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1204, file: !1175, line: 463, baseType: !464, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1204, file: !1175, line: 465, baseType: !1220, offset: 832)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1175, line: 415, elements: !237)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1174, file: !1175, line: 693, baseType: !1222, size: 384, offset: 1408)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1175, line: 489, size: 384, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1222, file: !1175, line: 490, baseType: !239, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1222, file: !1175, line: 491, baseType: !371, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1222, file: !1175, line: 492, baseType: !371, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1222, file: !1175, line: 493, baseType: !7, size: 32, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1222, file: !1175, line: 494, baseType: !363, size: 16, offset: 288)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1222, file: !1175, line: 495, baseType: !363, size: 16, offset: 304)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1222, file: !1175, line: 497, baseType: !1231, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1174, file: !1175, line: 697, baseType: !1233, size: 1792, offset: 1792)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1175, line: 507, size: 1792, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1314, !1315}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1233, file: !1175, line: 508, baseType: !804, size: 192, align: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1233, file: !1175, line: 515, baseType: !464, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1233, file: !1175, line: 516, baseType: !464, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1233, file: !1175, line: 517, baseType: !464, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1233, file: !1175, line: 518, baseType: !464, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1233, file: !1175, line: 519, baseType: !464, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1233, file: !1175, line: 526, baseType: !255, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1233, file: !1175, line: 527, baseType: !464, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !1175, line: 528, baseType: !7, size: 32, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1233, file: !1175, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1233, file: !1175, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1233, file: !1175, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1233, file: !1175, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1233, file: !1175, line: 563, baseType: !1249, size: 512, offset: 704)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1250)
!1250 = !{!1251, !1259, !1260, !1265, !1308, !1311, !1312, !1313}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1249, file: !20, line: 119, baseType: !1252, size: 256)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1253, line: 9, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1252, file: !1253, line: 10, baseType: !804, size: 192, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1252, file: !1253, line: 11, baseType: !1257, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1258, line: 29, baseType: !255)
!1258 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1249, file: !20, line: 120, baseType: !1257, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1249, file: !20, line: 121, baseType: !1261, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!19, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1249, file: !20, line: 122, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1268)
!1268 = !{!1269, !1289, !1290, !1293, !1298, !1299, !1303, !1307}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1267, file: !20, line: 160, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1271, file: !20, line: 215, baseType: !817)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1271, file: !20, line: 216, baseType: !7, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1271, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1271, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1271, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1271, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1271, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1271, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1271, file: !20, line: 233, baseType: !1257, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1271, file: !20, line: 234, baseType: !1264, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1271, file: !20, line: 235, baseType: !1257, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1271, file: !20, line: 236, baseType: !1264, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1271, file: !20, line: 237, baseType: !1286, size: 4096, offset: 512)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1267, size: 4096, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 8)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1267, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1267, file: !20, line: 162, baseType: !1291, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 27, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !354, line: 96, baseType: !151)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1267, file: !20, line: 163, baseType: !1294, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !435, line: 276, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !435, line: 276, size: 32, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1295, file: !435, line: 276, baseType: !439, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1267, file: !20, line: 164, baseType: !1264, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1267, file: !20, line: 165, baseType: !1300, size: 128, offset: 256)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1253, line: 14, size: 128, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1300, file: !1253, line: 15, baseType: !796, size: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1267, file: !20, line: 166, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1257}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1267, file: !20, line: 167, baseType: !1257, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1249, file: !20, line: 123, baseType: !1309, size: 8, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !207, line: 17, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !209, line: 21, baseType: !470)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1249, file: !20, line: 124, baseType: !1309, size: 8, offset: 456)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1249, file: !20, line: 125, baseType: !1309, size: 8, offset: 464)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1249, file: !20, line: 126, baseType: !1309, size: 8, offset: 472)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1233, file: !1175, line: 572, baseType: !1249, size: 512, offset: 1216)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1233, file: !1175, line: 580, baseType: !1316, size: 64, offset: 1728)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1174, file: !1175, line: 721, baseType: !7, size: 32, offset: 3584)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1174, file: !1175, line: 722, baseType: !151, size: 32, offset: 3616)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1174, file: !1175, line: 723, baseType: !1320, size: 64, offset: 3648)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1323, line: 17, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1323, line: 17, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1324, file: !1323, line: 17, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 1)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1174, file: !1175, line: 724, baseType: !1322, size: 64, offset: 3712)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1174, file: !1175, line: 749, baseType: !1332, offset: 3776)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1175, line: 290, elements: !237)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1174, file: !1175, line: 751, baseType: !239, size: 128, offset: 3776)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1174, file: !1175, line: 757, baseType: !1011, size: 64, offset: 3904)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1174, file: !1175, line: 758, baseType: !1011, size: 64, offset: 3968)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1174, file: !1175, line: 761, baseType: !1337, size: 320, offset: 4032)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1108, line: 34, size: 320, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1337, file: !1108, line: 35, baseType: !464, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1337, file: !1108, line: 36, baseType: !1341, size: 256, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 256, elements: !1112)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1174, file: !1175, line: 766, baseType: !151, size: 32, offset: 4352)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1174, file: !1175, line: 767, baseType: !151, size: 32, offset: 4384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1174, file: !1175, line: 768, baseType: !151, size: 32, offset: 4416)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1174, file: !1175, line: 770, baseType: !151, size: 32, offset: 4448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1174, file: !1175, line: 772, baseType: !371, size: 64, offset: 4480)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1174, file: !1175, line: 775, baseType: !7, size: 32, offset: 4544)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1174, file: !1175, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1174, file: !1175, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1174, file: !1175, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1174, file: !1175, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1174, file: !1175, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1174, file: !1175, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1174, file: !1175, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1174, file: !1175, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1174, file: !1175, line: 831, baseType: !371, size: 64, offset: 4672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1174, file: !1175, line: 833, baseType: !1358, size: 384, offset: 4736)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1359)
!1359 = !{!1360, !1365}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1358, file: !25, line: 26, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!356, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !25, line: 27, baseType: !1366, size: 320, offset: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1358, file: !25, line: 27, size: 320, elements: !1367)
!1367 = !{!1368, !1378, !1405}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1366, file: !25, line: 36, baseType: !1369, size: 320)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !25, line: 29, size: 320, elements: !1370)
!1370 = !{!1371, !1373, !1374, !1375, !1376, !1377}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1369, file: !25, line: 30, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1369, file: !25, line: 31, baseType: !206, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1369, file: !25, line: 32, baseType: !206, size: 32, offset: 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1369, file: !25, line: 33, baseType: !206, size: 32, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1369, file: !25, line: 34, baseType: !464, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1369, file: !25, line: 35, baseType: !1372, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1366, file: !25, line: 46, baseType: !1379, size: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !25, line: 38, size: 192, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1404}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1379, file: !25, line: 39, baseType: !1291, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1379, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !25, line: 41, baseType: !1384, size: 64, offset: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1379, file: !25, line: 41, size: 64, elements: !1385)
!1385 = !{!1386, !1394}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1384, file: !25, line: 42, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1389, line: 7, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !{!1391, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1388, file: !1389, line: 8, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !354, line: 93, baseType: !257)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1388, file: !1389, line: 9, baseType: !257, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1384, file: !25, line: 43, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1397, line: 7, size: 64, elements: !1398)
!1397 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1403}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1396, file: !1397, line: 8, baseType: !1400, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1397, line: 5, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !207, line: 20, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !209, line: 26, baseType: !151)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1396, file: !1397, line: 9, baseType: !1401, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1379, file: !25, line: 45, baseType: !464, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1366, file: !25, line: 54, baseType: !1406, size: 256)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !25, line: 48, size: 256, elements: !1407)
!1407 = !{!1408, !1411, !1412, !1413, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1406, file: !25, line: 49, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1406, file: !25, line: 50, baseType: !151, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1406, file: !25, line: 51, baseType: !151, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1406, file: !25, line: 52, baseType: !371, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1406, file: !25, line: 53, baseType: !371, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1174, file: !1175, line: 835, baseType: !1416, size: 32, offset: 5120)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 22, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !354, line: 28, baseType: !151)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1174, file: !1175, line: 836, baseType: !1416, size: 32, offset: 5152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1174, file: !1175, line: 840, baseType: !371, size: 64, offset: 5184)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1174, file: !1175, line: 849, baseType: !1173, size: 64, offset: 5248)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1174, file: !1175, line: 852, baseType: !1173, size: 64, offset: 5312)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1174, file: !1175, line: 857, baseType: !239, size: 128, offset: 5376)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1174, file: !1175, line: 858, baseType: !239, size: 128, offset: 5504)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1174, file: !1175, line: 859, baseType: !1173, size: 64, offset: 5632)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1174, file: !1175, line: 867, baseType: !239, size: 128, offset: 5696)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1174, file: !1175, line: 868, baseType: !239, size: 128, offset: 5824)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1174, file: !1175, line: 871, baseType: !1428, size: 64, offset: 5952)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1436, !1437, !1444, !1445}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !46, line: 61, baseType: !1187, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1429, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !46, line: 63, baseType: !223, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1429, file: !46, line: 65, baseType: !1435, size: 256, offset: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !1112)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1429, file: !46, line: 66, baseType: !679, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1429, file: !46, line: 68, baseType: !1438, size: 128, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1439, line: 40, baseType: !1440)
!1439 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1439, line: 36, size: 128, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1439, line: 37, baseType: !223)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1440, file: !1439, line: 38, baseType: !239, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1429, file: !46, line: 69, baseType: !412, size: 128, align: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1429, file: !46, line: 70, baseType: !1446, size: 128, offset: 640)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 128, elements: !1328)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1447, file: !46, line: 55, baseType: !151, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1447, file: !46, line: 56, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1174, file: !1175, line: 872, baseType: !1454, size: 512, offset: 6016)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 512, elements: !1112)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1174, file: !1175, line: 873, baseType: !239, size: 128, offset: 6528)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1174, file: !1175, line: 874, baseType: !239, size: 128, offset: 6656)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1174, file: !1175, line: 876, baseType: !1458, size: 64, offset: 6784)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1460, line: 26, size: 192, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1459, file: !1460, line: 27, baseType: !7, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1459, file: !1460, line: 28, baseType: !1464, size: 128, offset: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1465, line: 43, size: 128, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1464, file: !1465, line: 44, baseType: !817)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1464, file: !1465, line: 45, baseType: !239, size: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1174, file: !1175, line: 879, baseType: !749, size: 64, offset: 6848)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1174, file: !1175, line: 882, baseType: !749, size: 64, offset: 6912)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1174, file: !1175, line: 884, baseType: !464, size: 64, offset: 6976)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1174, file: !1175, line: 885, baseType: !464, size: 64, offset: 7040)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1174, file: !1175, line: 890, baseType: !464, size: 64, offset: 7104)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1174, file: !1175, line: 891, baseType: !1475, size: 128, offset: 7168)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1175, line: 242, size: 128, elements: !1476)
!1476 = !{!1477, !1478, !1479}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1475, file: !1175, line: 244, baseType: !464, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1475, file: !1175, line: 245, baseType: !464, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !1175, line: 246, baseType: !817, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1174, file: !1175, line: 900, baseType: !371, size: 64, offset: 7296)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1174, file: !1175, line: 901, baseType: !371, size: 64, offset: 7360)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1174, file: !1175, line: 904, baseType: !464, size: 64, offset: 7424)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1174, file: !1175, line: 907, baseType: !464, size: 64, offset: 7488)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1174, file: !1175, line: 910, baseType: !371, size: 64, offset: 7552)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1174, file: !1175, line: 911, baseType: !371, size: 64, offset: 7616)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1174, file: !1175, line: 914, baseType: !1487, size: 640, offset: 7680)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1488, line: 123, size: 640, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1496, !1497}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1487, file: !1488, line: 124, baseType: !1491, size: 576)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 576, elements: !322)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1488, line: 108, size: 192, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1492, file: !1488, line: 109, baseType: !464, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1492, file: !1488, line: 110, baseType: !1300, size: 128, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1487, file: !1488, line: 125, baseType: !7, size: 32, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1487, file: !1488, line: 126, baseType: !7, size: 32, offset: 608)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1174, file: !1175, line: 917, baseType: !1499, size: 192, offset: 8320)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1488, line: 134, size: 192, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1499, file: !1488, line: 135, baseType: !412, size: 128, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1499, file: !1488, line: 136, baseType: !7, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1174, file: !1175, line: 923, baseType: !1504, size: 64, offset: 8512)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1507, line: 111, size: 1280, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1526, !1527, !1528, !1529, !1530, !1531, !1638, !1639, !1640, !1641, !1667, !1670, !1680}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1506, file: !1507, line: 112, baseType: !791, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1506, file: !1507, line: 120, baseType: !478, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1506, file: !1507, line: 121, baseType: !486, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1506, file: !1507, line: 122, baseType: !478, size: 32, offset: 96)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1506, file: !1507, line: 123, baseType: !486, size: 32, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1506, file: !1507, line: 124, baseType: !478, size: 32, offset: 160)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1506, file: !1507, line: 125, baseType: !486, size: 32, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1506, file: !1507, line: 126, baseType: !478, size: 32, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1506, file: !1507, line: 127, baseType: !486, size: 32, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1506, file: !1507, line: 128, baseType: !7, size: 32, offset: 288)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1506, file: !1507, line: 129, baseType: !1520, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1521, line: 26, baseType: !1522)
!1521 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1521, line: 24, size: 64, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1522, file: !1521, line: 25, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !268)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1506, file: !1507, line: 130, baseType: !1520, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1506, file: !1507, line: 131, baseType: !1520, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1506, file: !1507, line: 132, baseType: !1520, size: 64, offset: 512)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1506, file: !1507, line: 133, baseType: !1520, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1506, file: !1507, line: 135, baseType: !470, size: 8, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1506, file: !1507, line: 137, baseType: !1532, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1534, line: 189, size: 1664, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1540, !1545, !1546, !1549, !1550, !1555, !1556, !1557, !1558, !1560, !1561, !1562, !1563, !1564, !1602, !1623}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1533, file: !1534, line: 190, baseType: !1187, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1533, file: !1534, line: 191, baseType: !1538, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1534, line: 28, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 98, baseType: !1401)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 192, baseType: !1541, size: 192, offset: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 192, size: 192, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1541, file: !1534, line: 193, baseType: !239, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1541, file: !1534, line: 194, baseType: !804, size: 192, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1533, file: !1534, line: 199, baseType: !811, size: 256, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1533, file: !1534, line: 200, baseType: !1547, size: 64, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1534, line: 200, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1533, file: !1534, line: 201, baseType: !190, size: 64, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 202, baseType: !1551, size: 64, offset: 640)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 202, size: 64, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1551, file: !1534, line: 203, baseType: !581, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1551, file: !1534, line: 204, baseType: !581, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1533, file: !1534, line: 206, baseType: !581, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1533, file: !1534, line: 207, baseType: !478, size: 32, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1533, file: !1534, line: 208, baseType: !486, size: 32, offset: 800)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1533, file: !1534, line: 209, baseType: !1559, size: 32, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1534, line: 31, baseType: !600)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1533, file: !1534, line: 210, baseType: !363, size: 16, offset: 864)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1533, file: !1534, line: 211, baseType: !363, size: 16, offset: 880)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1533, file: !1534, line: 215, baseType: !1162, size: 16, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1533, file: !1534, line: 222, baseType: !371, size: 64, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 239, baseType: !1565, size: 320, offset: 1024)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 239, size: 320, elements: !1566)
!1566 = !{!1567, !1594}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1565, file: !1534, line: 240, baseType: !1568, size: 320)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1534, line: 108, size: 320, elements: !1569)
!1569 = !{!1570, !1571, !1583, !1586, !1593}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1568, file: !1534, line: 110, baseType: !371, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1534, line: 111, baseType: !1572, size: 64, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !1534, line: 111, size: 64, elements: !1573)
!1573 = !{!1574, !1582}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1534, line: 112, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1534, line: 112, size: 64, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1575, file: !1534, line: 114, baseType: !896, size: 16)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1575, file: !1534, line: 115, baseType: !1579, size: 48, offset: 16)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: 6)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1572, file: !1534, line: 121, baseType: !371, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1568, file: !1534, line: 123, baseType: !1584, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1534, line: 96, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1568, file: !1534, line: 124, baseType: !1587, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1534, line: 102, size: 192, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1588, file: !1534, line: 103, baseType: !412, size: 128, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1588, file: !1534, line: 104, baseType: !1187, size: 32, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1588, file: !1534, line: 105, baseType: !533, size: 8, offset: 160)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1568, file: !1534, line: 125, baseType: !284, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !1534, line: 241, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1565, file: !1534, line: 241, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1595, file: !1534, line: 242, baseType: !371, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1595, file: !1534, line: 243, baseType: !371, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1595, file: !1534, line: 244, baseType: !1584, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1595, file: !1534, line: 245, baseType: !1587, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1595, file: !1534, line: 246, baseType: !321, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 254, baseType: !1603, size: 256, offset: 1344)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 254, size: 256, elements: !1604)
!1604 = !{!1605, !1611}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1603, file: !1534, line: 255, baseType: !1606, size: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1534, line: 128, size: 256, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1606, file: !1534, line: 129, baseType: !190, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1606, file: !1534, line: 130, baseType: !1610, size: 256)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !1112)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1534, line: 256, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !1534, line: 256, size: 256, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1612, file: !1534, line: 258, baseType: !239, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1612, file: !1534, line: 259, baseType: !1616, size: 128, offset: 128)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1617, line: 22, size: 128, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !{!1619, !1622}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1616, file: !1617, line: 23, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1617, line: 23, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1616, file: !1617, line: 24, baseType: !371, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1533, file: !1534, line: 274, baseType: !1624, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1534, line: 170, size: 192, elements: !1626)
!1626 = !{!1627, !1636, !1637}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1625, file: !1534, line: 171, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1534, line: 165, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!151, !1532, !1632, !1634, !1532}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1625, file: !1534, line: 172, baseType: !1532, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1625, file: !1534, line: 173, baseType: !1584, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1506, file: !1507, line: 138, baseType: !1532, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1506, file: !1507, line: 139, baseType: !1532, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1506, file: !1507, line: 140, baseType: !1532, size: 64, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1506, file: !1507, line: 145, baseType: !1642, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1644, line: 13, size: 896, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1643, file: !1644, line: 14, baseType: !1187, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1643, file: !1644, line: 15, baseType: !791, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1643, file: !1644, line: 16, baseType: !791, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1643, file: !1644, line: 21, baseType: !249, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1643, file: !1644, line: 27, baseType: !371, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1643, file: !1644, line: 28, baseType: !371, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1643, file: !1644, line: 29, baseType: !249, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1643, file: !1644, line: 32, baseType: !683, size: 128, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1643, file: !1644, line: 33, baseType: !478, size: 32, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1643, file: !1644, line: 37, baseType: !249, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1643, file: !1644, line: 44, baseType: !1657, size: 256, offset: 640)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1658, line: 15, size: 256, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1657, file: !1658, line: 16, baseType: !817)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1657, file: !1658, line: 18, baseType: !151, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1657, file: !1658, line: 19, baseType: !151, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1657, file: !1658, line: 20, baseType: !151, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1657, file: !1658, line: 21, baseType: !151, size: 32, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1657, file: !1658, line: 22, baseType: !371, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1657, file: !1658, line: 23, baseType: !371, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1506, file: !1507, line: 146, baseType: !1668, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !767, line: 516, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1506, file: !1507, line: 147, baseType: !1671, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1507, line: 25, size: 64, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1672, file: !1507, line: 26, baseType: !791, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1672, file: !1507, line: 27, baseType: !151, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1672, file: !1507, line: 28, baseType: !1677, offset: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, elements: !1678)
!1678 = !{!1679}
!1679 = !DISubrange(count: 0)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !1507, line: 149, baseType: !1681, size: 128, offset: 1152)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1506, file: !1507, line: 149, size: 128, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1681, file: !1507, line: 150, baseType: !151, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1681, file: !1507, line: 151, baseType: !412, size: 128, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1174, file: !1175, line: 926, baseType: !1504, size: 64, offset: 8576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1174, file: !1175, line: 929, baseType: !1504, size: 64, offset: 8640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1174, file: !1175, line: 933, baseType: !1532, size: 64, offset: 8704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1174, file: !1175, line: 943, baseType: !201, size: 128, offset: 8768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1174, file: !1175, line: 945, baseType: !1690, size: 64, offset: 8896)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1175, line: 49, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1174, file: !1175, line: 956, baseType: !1693, size: 64, offset: 8960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1175, line: 45, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1174, file: !1175, line: 959, baseType: !1696, size: 64, offset: 9024)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1175, line: 959, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1174, file: !1175, line: 962, baseType: !1699, size: 64, offset: 9088)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1175, line: 66, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1174, file: !1175, line: 966, baseType: !1702, size: 64, offset: 9152)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1175, line: 50, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1174, file: !1175, line: 969, baseType: !1705, size: 64, offset: 9216)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1707, line: 82, size: 7296, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1744, !1753, !1754, !1756, !1757, !1758, !1761, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1791, !1792, !1799, !1800, !1801, !1802, !1803, !1804}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1706, file: !1707, line: 83, baseType: !1187, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1706, file: !1707, line: 84, baseType: !791, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1706, file: !1707, line: 85, baseType: !151, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1706, file: !1707, line: 86, baseType: !239, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1706, file: !1707, line: 88, baseType: !1438, size: 128, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1706, file: !1707, line: 91, baseType: !1173, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1706, file: !1707, line: 94, baseType: !1716, size: 192, offset: 448)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1717, line: 30, size: 192, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1716, file: !1717, line: 31, baseType: !239, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1716, file: !1717, line: 32, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1722, line: 25, baseType: !1723)
!1722 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 23, size: 64, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1723, file: !1722, line: 24, baseType: !1327, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1706, file: !1707, line: 97, baseType: !679, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1706, file: !1707, line: 100, baseType: !151, size: 32, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1706, file: !1707, line: 106, baseType: !151, size: 32, offset: 736)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1706, file: !1707, line: 107, baseType: !1173, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1706, file: !1707, line: 110, baseType: !151, size: 32, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 111, baseType: !7, size: 32, offset: 864)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1706, file: !1707, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1706, file: !1707, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1706, file: !1707, line: 128, baseType: !151, size: 32, offset: 928)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1706, file: !1707, line: 129, baseType: !239, size: 128, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1706, file: !1707, line: 132, baseType: !1249, size: 512, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1706, file: !1707, line: 133, baseType: !1257, size: 64, offset: 1600)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1706, file: !1707, line: 140, baseType: !1739, size: 256, offset: 1664)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 256, elements: !268)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1707, line: 38, size: 128, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1740, file: !1707, line: 39, baseType: !464, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1740, file: !1707, line: 40, baseType: !464, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1706, file: !1707, line: 146, baseType: !1745, size: 192, offset: 1920)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1707, line: 66, size: 192, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1745, file: !1707, line: 67, baseType: !1748, size: 192)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1707, line: 47, size: 192, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1748, file: !1707, line: 48, baseType: !251, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1748, file: !1707, line: 49, baseType: !251, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1748, file: !1707, line: 50, baseType: !251, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1706, file: !1707, line: 150, baseType: !1487, size: 640, offset: 2112)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1706, file: !1707, line: 153, baseType: !1755, size: 256, offset: 2752)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 256, elements: !1112)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1706, file: !1707, line: 159, baseType: !1428, size: 64, offset: 3008)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1706, file: !1707, line: 162, baseType: !151, size: 32, offset: 3072)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1706, file: !1707, line: 164, baseType: !1759, size: 64, offset: 3136)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1707, line: 164, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1706, file: !1707, line: 175, baseType: !1762, size: 32, offset: 3200)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !435, line: 805, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 798, size: 32, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1763, file: !435, line: 803, baseType: !434, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !435, line: 804, baseType: !223, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1706, file: !1707, line: 176, baseType: !464, size: 64, offset: 3264)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1706, file: !1707, line: 176, baseType: !464, size: 64, offset: 3328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1706, file: !1707, line: 176, baseType: !464, size: 64, offset: 3392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1706, file: !1707, line: 176, baseType: !464, size: 64, offset: 3456)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1706, file: !1707, line: 177, baseType: !464, size: 64, offset: 3520)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1706, file: !1707, line: 178, baseType: !464, size: 64, offset: 3584)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1706, file: !1707, line: 179, baseType: !1475, size: 128, offset: 3648)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1706, file: !1707, line: 180, baseType: !371, size: 64, offset: 3776)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1706, file: !1707, line: 180, baseType: !371, size: 64, offset: 3840)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1706, file: !1707, line: 180, baseType: !371, size: 64, offset: 3904)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1706, file: !1707, line: 180, baseType: !371, size: 64, offset: 3968)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1706, file: !1707, line: 181, baseType: !371, size: 64, offset: 4032)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1706, file: !1707, line: 181, baseType: !371, size: 64, offset: 4096)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1706, file: !1707, line: 181, baseType: !371, size: 64, offset: 4160)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1706, file: !1707, line: 181, baseType: !371, size: 64, offset: 4224)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1706, file: !1707, line: 182, baseType: !371, size: 64, offset: 4288)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1706, file: !1707, line: 182, baseType: !371, size: 64, offset: 4352)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1706, file: !1707, line: 182, baseType: !371, size: 64, offset: 4416)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1706, file: !1707, line: 182, baseType: !371, size: 64, offset: 4480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1706, file: !1707, line: 183, baseType: !371, size: 64, offset: 4544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1706, file: !1707, line: 183, baseType: !371, size: 64, offset: 4608)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1706, file: !1707, line: 184, baseType: !1789, offset: 4672)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1790, line: 12, elements: !237)
!1790 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1706, file: !1707, line: 192, baseType: !466, size: 64, offset: 4672)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1706, file: !1707, line: 203, baseType: !1793, size: 2048, offset: 4736)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 2048, elements: !203)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1795, line: 43, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1794, file: !1795, line: 44, baseType: !370, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1794, file: !1795, line: 45, baseType: !370, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1706, file: !1707, line: 220, baseType: !533, size: 8, offset: 6784)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1706, file: !1707, line: 221, baseType: !1162, size: 16, offset: 6800)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1706, file: !1707, line: 222, baseType: !1162, size: 16, offset: 6816)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1706, file: !1707, line: 224, baseType: !1011, size: 64, offset: 6848)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1706, file: !1707, line: 227, baseType: !1130, size: 192, offset: 6912)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1706, file: !1707, line: 233, baseType: !1130, size: 192, offset: 7104)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1174, file: !1175, line: 970, baseType: !1806, size: 64, offset: 9280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1707, line: 20, size: 16576, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1807, file: !1707, line: 21, baseType: !223)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1807, file: !1707, line: 22, baseType: !1187, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1807, file: !1707, line: 23, baseType: !1438, size: 128, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1807, file: !1707, line: 24, baseType: !1813, size: 16384, offset: 192)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 16384, elements: !326)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1717, line: 49, size: 256, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1814, file: !1717, line: 50, baseType: !1817, size: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1717, line: 35, size: 256, elements: !1818)
!1818 = !{!1819, !1826, !1827, !1833}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1817, file: !1717, line: 37, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1821, line: 19, baseType: !1822)
!1821 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1821, line: 18, baseType: !1824)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !151}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1817, file: !1717, line: 38, baseType: !371, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1817, file: !1717, line: 44, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1821, line: 22, baseType: !1829)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1821, line: 21, baseType: !1831)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1817, file: !1717, line: 46, baseType: !1721, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1174, file: !1175, line: 971, baseType: !1721, size: 64, offset: 9344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1174, file: !1175, line: 972, baseType: !1721, size: 64, offset: 9408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1174, file: !1175, line: 974, baseType: !1721, size: 64, offset: 9472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1174, file: !1175, line: 975, baseType: !1716, size: 192, offset: 9536)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1174, file: !1175, line: 976, baseType: !371, size: 64, offset: 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1174, file: !1175, line: 977, baseType: !368, size: 64, offset: 9792)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1174, file: !1175, line: 978, baseType: !7, size: 32, offset: 9856)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1174, file: !1175, line: 980, baseType: !415, size: 64, offset: 9920)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1174, file: !1175, line: 989, baseType: !1843, size: 128, offset: 9984)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1844, line: 35, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1843, file: !1844, line: 36, baseType: !151, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1843, file: !1844, line: 37, baseType: !791, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1843, file: !1844, line: 38, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1844, line: 23, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1174, file: !1175, line: 992, baseType: !464, size: 64, offset: 10112)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1174, file: !1175, line: 993, baseType: !464, size: 64, offset: 10176)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1174, file: !1175, line: 996, baseType: !223, offset: 10240)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1174, file: !1175, line: 999, baseType: !817, offset: 10240)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1174, file: !1175, line: 1001, baseType: !1856, size: 64, offset: 10240)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1175, line: 636, size: 64, elements: !1857)
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1856, file: !1175, line: 637, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1174, file: !1175, line: 1005, baseType: !796, size: 128, offset: 10304)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1174, file: !1175, line: 1007, baseType: !1173, size: 64, offset: 10432)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1174, file: !1175, line: 1009, baseType: !1863, size: 64, offset: 10496)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1175, line: 1009, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1174, file: !1175, line: 1043, baseType: !190, size: 64, offset: 10560)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1174, file: !1175, line: 1046, baseType: !1867, size: 64, offset: 10624)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1175, line: 41, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1174, file: !1175, line: 1050, baseType: !1870, size: 64, offset: 10688)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1175, line: 42, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1174, file: !1175, line: 1054, baseType: !1873, size: 64, offset: 10752)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1175, line: 55, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1174, file: !1175, line: 1056, baseType: !1876, size: 64, offset: 10816)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1175, line: 40, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1174, file: !1175, line: 1058, baseType: !1879, size: 64, offset: 10880)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1881, line: 99, size: 704, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1908, !1909}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1880, file: !1881, line: 100, baseType: !249, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1880, file: !1881, line: 101, baseType: !791, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1880, file: !1881, line: 102, baseType: !791, size: 32, offset: 96)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1880, file: !1881, line: 105, baseType: !223, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1880, file: !1881, line: 107, baseType: !363, size: 16, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1880, file: !1881, line: 109, baseType: !783, size: 128, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1880, file: !1881, line: 110, baseType: !1890, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1881, line: 73, size: 448, elements: !1892)
!1892 = !{!1893, !1896, !1897, !1902, !1907}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1891, file: !1881, line: 74, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1881, line: 74, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1891, file: !1881, line: 75, baseType: !1879, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1881, line: 83, baseType: !1898, size: 128, offset: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1881, line: 83, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1898, file: !1881, line: 84, baseType: !239, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1898, file: !1881, line: 85, baseType: !972, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1881, line: 87, baseType: !1903, size: 128, offset: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1881, line: 87, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1903, file: !1881, line: 88, baseType: !683, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1903, file: !1881, line: 89, baseType: !412, size: 128, align: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !1881, line: 92, baseType: !7, size: 32, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1880, file: !1881, line: 111, baseType: !679, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1880, file: !1881, line: 113, baseType: !245, size: 256, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1174, file: !1175, line: 1061, baseType: !1911, size: 64, offset: 10944)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1175, line: 43, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1174, file: !1175, line: 1064, baseType: !371, size: 64, offset: 11008)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1174, file: !1175, line: 1065, baseType: !1915, size: 64, offset: 11072)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1717, line: 14, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1717, line: 12, size: 384, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1717, line: 13, baseType: !1920, size: 384)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1717, line: 13, size: 384, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1920, file: !1717, line: 13, baseType: !151, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1920, file: !1717, line: 13, baseType: !151, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1920, file: !1717, line: 13, baseType: !151, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1920, file: !1717, line: 13, baseType: !1926, size: 256, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1927, line: 32, size: 256, elements: !1928)
!1927 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1934, !1947, !1953, !1962, !1982, !1987}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1926, file: !1927, line: 37, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 34, size: 64, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1930, file: !1927, line: 35, baseType: !1417, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1930, file: !1927, line: 36, baseType: !484, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1926, file: !1927, line: 45, baseType: !1935, size: 192)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 40, size: 192, elements: !1936)
!1936 = !{!1937, !1939, !1940, !1946}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1935, file: !1927, line: 41, baseType: !1938, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !354, line: 95, baseType: !151)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1935, file: !1927, line: 42, baseType: !151, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1935, file: !1927, line: 43, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1927, line: 11, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1927, line: 8, size: 64, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1942, file: !1927, line: 9, baseType: !151, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1942, file: !1927, line: 10, baseType: !190, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1935, file: !1927, line: 44, baseType: !151, size: 32, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1926, file: !1927, line: 52, baseType: !1948, size: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 48, size: 128, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1948, file: !1927, line: 49, baseType: !1417, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1948, file: !1927, line: 50, baseType: !484, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1948, file: !1927, line: 51, baseType: !1941, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1926, file: !1927, line: 61, baseType: !1954, size: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 55, size: 256, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1954, file: !1927, line: 56, baseType: !1417, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1954, file: !1927, line: 57, baseType: !484, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1954, file: !1927, line: 58, baseType: !151, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1954, file: !1927, line: 59, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !354, line: 94, baseType: !355)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1954, file: !1927, line: 60, baseType: !1960, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1926, file: !1927, line: 95, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 64, size: 256, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1963, file: !1927, line: 65, baseType: !190, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !1927, line: 77, baseType: !1967, size: 192, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1963, file: !1927, line: 77, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1977}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1967, file: !1927, line: 82, baseType: !1162, size: 16)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1967, file: !1927, line: 88, baseType: !1971, size: 192)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1927, line: 84, size: 192, elements: !1972)
!1972 = !{!1973, !1975, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1971, file: !1927, line: 85, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1287)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1971, file: !1927, line: 86, baseType: !190, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1971, file: !1927, line: 87, baseType: !190, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1967, file: !1927, line: 93, baseType: !1978, size: 96)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1927, line: 90, size: 96, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1978, file: !1927, line: 91, baseType: !1974, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1978, file: !1927, line: 92, baseType: !208, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1926, file: !1927, line: 101, baseType: !1983, size: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 98, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1983, file: !1927, line: 99, baseType: !356, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1983, file: !1927, line: 100, baseType: !151, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1926, file: !1927, line: 108, baseType: !1988, size: 128)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 104, size: 128, elements: !1989)
!1989 = !{!1990, !1991, !1992}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1988, file: !1927, line: 105, baseType: !190, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1988, file: !1927, line: 106, baseType: !151, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1988, file: !1927, line: 107, baseType: !7, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1174, file: !1175, line: 1067, baseType: !1789, offset: 11136)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1174, file: !1175, line: 1099, baseType: !1995, size: 64, offset: 11136)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1175, line: 56, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1174, file: !1175, line: 1103, baseType: !239, size: 128, offset: 11200)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1174, file: !1175, line: 1104, baseType: !1999, size: 64, offset: 11328)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1175, line: 46, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1174, file: !1175, line: 1105, baseType: !1130, size: 192, offset: 11392)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1174, file: !1175, line: 1106, baseType: !7, size: 32, offset: 11584)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1174, file: !1175, line: 1109, baseType: !2004, size: 128, offset: 11648)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 128, elements: !268)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1175, line: 51, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1174, file: !1175, line: 1110, baseType: !1130, size: 192, offset: 11776)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1174, file: !1175, line: 1111, baseType: !239, size: 128, offset: 11968)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1174, file: !1175, line: 1173, baseType: !2010, size: 64, offset: 12096)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2012, line: 62, size: 256, align: 256, elements: !2013)
!2012 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2015, !2016, !2021}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2011, file: !2012, line: 75, baseType: !208, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2011, file: !2012, line: 90, baseType: !208, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2011, file: !2012, line: 124, baseType: !2017, size: 64, offset: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2011, file: !2012, line: 109, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2017, file: !2012, line: 110, baseType: !465, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2017, file: !2012, line: 112, baseType: !465, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2011, file: !2012, line: 144, baseType: !208, size: 32, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1174, file: !1175, line: 1174, baseType: !206, size: 32, offset: 12160)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1174, file: !1175, line: 1179, baseType: !371, size: 64, offset: 12224)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1174, file: !1175, line: 1182, baseType: !2025, size: 128, offset: 12288)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1108, line: 76, size: 128, elements: !2026)
!2026 = !{!2027, !2032, !2033}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2025, file: !1108, line: 85, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2029, line: 7, size: 64, elements: !2030)
!2029 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2028, file: !2029, line: 12, baseType: !1324, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2025, file: !1108, line: 88, baseType: !533, size: 8, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2025, file: !1108, line: 95, baseType: !533, size: 8, offset: 72)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1175, line: 1184, baseType: !2035, size: 128, offset: 12416)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1175, line: 1184, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2035, file: !1175, line: 1185, baseType: !1187, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2035, file: !1175, line: 1186, baseType: !412, size: 128, align: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1174, file: !1175, line: 1190, baseType: !2040, size: 64, offset: 12544)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1175, line: 53, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1174, file: !1175, line: 1192, baseType: !2043, size: 128, offset: 12608)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1108, line: 64, size: 128, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2043, file: !1108, line: 65, baseType: !765, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2043, file: !1108, line: 67, baseType: !208, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !1108, line: 68, baseType: !208, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1174, file: !1175, line: 1206, baseType: !151, size: 32, offset: 12736)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1174, file: !1175, line: 1207, baseType: !151, size: 32, offset: 12768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1174, file: !1175, line: 1209, baseType: !371, size: 64, offset: 12800)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1174, file: !1175, line: 1219, baseType: !464, size: 64, offset: 12864)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1174, file: !1175, line: 1220, baseType: !464, size: 64, offset: 12928)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1174, file: !1175, line: 1317, baseType: !151, size: 32, offset: 12992)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1174, file: !1175, line: 1319, baseType: !1173, size: 64, offset: 13056)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1174, file: !1175, line: 1322, baseType: !2056, size: 64, offset: 13120)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2058, line: 56, size: 512, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2068}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2057, file: !2058, line: 57, baseType: !2056, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2057, file: !2058, line: 58, baseType: !190, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2057, file: !2058, line: 59, baseType: !371, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !2058, line: 60, baseType: !371, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2057, file: !2058, line: 61, baseType: !857, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2057, file: !2058, line: 62, baseType: !7, size: 32, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2057, file: !2058, line: 63, baseType: !2067, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !189, line: 153, baseType: !464)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2057, file: !2058, line: 64, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1174, file: !1175, line: 1326, baseType: !1187, size: 32, offset: 13184)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1174, file: !1175, line: 1342, baseType: !190, size: 64, offset: 13248)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1174, file: !1175, line: 1343, baseType: !465, size: 64, offset: 13312)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1174, file: !1175, line: 1344, baseType: !464, size: 64, offset: 13376)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1174, file: !1175, line: 1345, baseType: !465, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1174, file: !1175, line: 1346, baseType: !465, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1174, file: !1175, line: 1347, baseType: !465, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1174, file: !1175, line: 1348, baseType: !412, size: 128, align: 64, offset: 13504)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1174, file: !1175, line: 1358, baseType: !2080, size: 34816, offset: 13824)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2081, line: 485, size: 34816, elements: !2082)
!2081 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2112, !2113, !2114, !2115, !2116, !2117, !2120, !2121, !2122}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2080, file: !2081, line: 487, baseType: !2084, size: 192)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 192, elements: !322)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2086, line: 16, size: 64, elements: !2087)
!2086 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2085, file: !2086, line: 17, baseType: !896, size: 16)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2085, file: !2086, line: 18, baseType: !896, size: 16, offset: 16)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2085, file: !2086, line: 19, baseType: !896, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2085, file: !2086, line: 19, baseType: !896, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2085, file: !2086, line: 19, baseType: !896, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2085, file: !2086, line: 19, baseType: !896, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2085, file: !2086, line: 19, baseType: !896, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2085, file: !2086, line: 20, baseType: !896, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2085, file: !2086, line: 20, baseType: !896, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2085, file: !2086, line: 20, baseType: !896, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2085, file: !2086, line: 20, baseType: !896, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2085, file: !2086, line: 20, baseType: !896, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2085, file: !2086, line: 20, baseType: !896, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2080, file: !2081, line: 491, baseType: !371, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2080, file: !2081, line: 495, baseType: !363, size: 16, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2080, file: !2081, line: 496, baseType: !363, size: 16, offset: 272)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2080, file: !2081, line: 497, baseType: !363, size: 16, offset: 288)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2080, file: !2081, line: 498, baseType: !363, size: 16, offset: 304)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2080, file: !2081, line: 502, baseType: !371, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2080, file: !2081, line: 503, baseType: !371, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2080, file: !2081, line: 514, baseType: !2109, size: 256, offset: 448)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 256, elements: !1112)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2081, line: 483, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2080, file: !2081, line: 516, baseType: !371, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2080, file: !2081, line: 518, baseType: !371, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2080, file: !2081, line: 520, baseType: !371, size: 64, offset: 832)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2080, file: !2081, line: 521, baseType: !371, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2080, file: !2081, line: 522, baseType: !371, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2080, file: !2081, line: 528, baseType: !2118, size: 64, offset: 1024)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2081, line: 10, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2080, file: !2081, line: 535, baseType: !371, size: 64, offset: 1088)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2080, file: !2081, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2080, file: !2081, line: 540, baseType: !2123, size: 33280, offset: 1536)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2124, line: 317, size: 33280, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2123, file: !2124, line: 330, baseType: !7, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2123, file: !2124, line: 337, baseType: !371, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2123, file: !2124, line: 348, baseType: !2129, size: 32768, offset: 512)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2124, line: 304, size: 32768, elements: !2130)
!2130 = !{!2131, !2146, !2185, !2235, !2248}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2129, file: !2124, line: 305, baseType: !2132, size: 896)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2124, line: 12, size: 896, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2132, file: !2124, line: 13, baseType: !206, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2132, file: !2124, line: 14, baseType: !206, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2132, file: !2124, line: 15, baseType: !206, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2132, file: !2124, line: 16, baseType: !206, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2132, file: !2124, line: 17, baseType: !206, size: 32, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2132, file: !2124, line: 18, baseType: !206, size: 32, offset: 160)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2132, file: !2124, line: 19, baseType: !206, size: 32, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2132, file: !2124, line: 22, baseType: !2142, size: 640, offset: 224)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 640, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 20)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2132, file: !2124, line: 25, baseType: !206, size: 32, offset: 864)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2129, file: !2124, line: 306, baseType: !2147, size: 4096, align: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2124, line: 34, size: 4096, align: 128, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2168, !2169, !2170, !2174, !2176, !2180}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2147, file: !2124, line: 35, baseType: !896, size: 16)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2147, file: !2124, line: 36, baseType: !896, size: 16, offset: 16)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2147, file: !2124, line: 37, baseType: !896, size: 16, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2147, file: !2124, line: 38, baseType: !896, size: 16, offset: 48)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2124, line: 39, baseType: !2154, size: 128, offset: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2124, line: 39, size: 128, elements: !2155)
!2155 = !{!2156, !2161}
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2124, line: 40, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !2124, line: 40, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2157, file: !2124, line: 41, baseType: !464, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2157, file: !2124, line: 42, baseType: !464, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2124, line: 44, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !2124, line: 44, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2162, file: !2124, line: 45, baseType: !206, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2162, file: !2124, line: 46, baseType: !206, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2162, file: !2124, line: 47, baseType: !206, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2162, file: !2124, line: 48, baseType: !206, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2147, file: !2124, line: 51, baseType: !206, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2147, file: !2124, line: 52, baseType: !206, size: 32, offset: 224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2147, file: !2124, line: 55, baseType: !2171, size: 1024, offset: 256)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2147, file: !2124, line: 58, baseType: !2175, size: 2048, offset: 1280)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !326)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2147, file: !2124, line: 60, baseType: !2177, size: 384, offset: 3328)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 12)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2124, line: 62, baseType: !2181, size: 384, offset: 3712)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2124, line: 62, size: 384, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2181, file: !2124, line: 63, baseType: !2177, size: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2181, file: !2124, line: 64, baseType: !2177, size: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2129, file: !2124, line: 307, baseType: !2186, size: 1088)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2124, line: 79, size: 1088, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2234}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2186, file: !2124, line: 80, baseType: !206, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2186, file: !2124, line: 81, baseType: !206, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2186, file: !2124, line: 82, baseType: !206, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2186, file: !2124, line: 83, baseType: !206, size: 32, offset: 96)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2186, file: !2124, line: 84, baseType: !206, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2186, file: !2124, line: 85, baseType: !206, size: 32, offset: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2186, file: !2124, line: 86, baseType: !206, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2186, file: !2124, line: 88, baseType: !2142, size: 640, offset: 224)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2186, file: !2124, line: 89, baseType: !1309, size: 8, offset: 864)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2186, file: !2124, line: 90, baseType: !1309, size: 8, offset: 872)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2186, file: !2124, line: 91, baseType: !1309, size: 8, offset: 880)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2186, file: !2124, line: 92, baseType: !1309, size: 8, offset: 888)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2186, file: !2124, line: 93, baseType: !1309, size: 8, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2186, file: !2124, line: 94, baseType: !1309, size: 8, offset: 904)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2186, file: !2124, line: 95, baseType: !2203, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2205, line: 11, size: 128, elements: !2206)
!2205 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2204, file: !2205, line: 12, baseType: !356, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2204, file: !2205, line: 13, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2211, line: 56, size: 1344, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2210, file: !2211, line: 61, baseType: !371, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2210, file: !2211, line: 62, baseType: !371, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2210, file: !2211, line: 63, baseType: !371, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2210, file: !2211, line: 64, baseType: !371, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2210, file: !2211, line: 65, baseType: !371, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2210, file: !2211, line: 66, baseType: !371, size: 64, offset: 320)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2210, file: !2211, line: 68, baseType: !371, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2210, file: !2211, line: 69, baseType: !371, size: 64, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2210, file: !2211, line: 70, baseType: !371, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2210, file: !2211, line: 71, baseType: !371, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2210, file: !2211, line: 72, baseType: !371, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2210, file: !2211, line: 73, baseType: !371, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2210, file: !2211, line: 74, baseType: !371, size: 64, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2210, file: !2211, line: 75, baseType: !371, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2210, file: !2211, line: 76, baseType: !371, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2210, file: !2211, line: 81, baseType: !371, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2210, file: !2211, line: 83, baseType: !371, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2210, file: !2211, line: 84, baseType: !371, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2211, line: 85, baseType: !371, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2210, file: !2211, line: 86, baseType: !371, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2210, file: !2211, line: 87, baseType: !371, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2186, file: !2124, line: 96, baseType: !206, size: 32, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2129, file: !2124, line: 308, baseType: !2236, size: 4608, align: 512)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2124, line: 289, size: 4608, align: 512, elements: !2237)
!2237 = !{!2238, !2239, !2246}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2236, file: !2124, line: 290, baseType: !2147, size: 4096, align: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2236, file: !2124, line: 291, baseType: !2240, size: 512, offset: 4096)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2124, line: 268, size: 512, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2240, file: !2124, line: 269, baseType: !464, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2240, file: !2124, line: 270, baseType: !464, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2240, file: !2124, line: 271, baseType: !2245, size: 384, offset: 128)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1580)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2236, file: !2124, line: 292, baseType: !2247, offset: 4608)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, elements: !1678)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2129, file: !2124, line: 309, baseType: !2249, size: 32768)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 32768, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 4096)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1170, file: !767, line: 378, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1166, file: !767, line: 384, baseType: !1459, size: 192, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1015, file: !767, line: 500, baseType: !223, offset: 6656)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1015, file: !767, line: 501, baseType: !2257, size: 64, offset: 6656)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !767, line: 387, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1015, file: !767, line: 516, baseType: !1668, size: 64, offset: 6720)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1015, file: !767, line: 519, baseType: !399, size: 64, offset: 6784)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1015, file: !767, line: 521, baseType: !2262, size: 64, offset: 6848)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !767, line: 521, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1015, file: !767, line: 545, baseType: !791, size: 32, offset: 6912)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1015, file: !767, line: 548, baseType: !533, size: 8, offset: 6944)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1015, file: !767, line: 550, baseType: !2267, offset: 6952)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2268, line: 142, elements: !237)
!2268 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1015, file: !767, line: 554, baseType: !245, size: 256, offset: 6976)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1015, file: !767, line: 557, baseType: !206, size: 32, offset: 7232)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1012, file: !767, line: 565, baseType: !2272, offset: 7296)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, elements: !2273)
!2273 = !{!2274}
!2274 = !DISubrange(count: -1)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1008, file: !767, line: 151, baseType: !791, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1001, file: !767, line: 156, baseType: !223, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !767, line: 159, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !767, line: 159, size: 128, elements: !2279)
!2279 = !{!2280, !2283}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2278, file: !767, line: 161, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !767, line: 161, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2278, file: !767, line: 162, baseType: !190, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !771, file: !767, line: 176, baseType: !412, size: 128, align: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !767, line: 179, baseType: !2286, size: 32, offset: 384)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !767, line: 179, size: 32, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2286, file: !767, line: 184, baseType: !791, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2286, file: !767, line: 192, baseType: !7, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2286, file: !767, line: 194, baseType: !7, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2286, file: !767, line: 195, baseType: !151, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !766, file: !767, line: 199, baseType: !791, size: 32, offset: 416)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !701, file: !37, line: 1964, baseType: !2294, size: 64, offset: 1344)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!356, !640, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2299, line: 12, size: 256, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2300 = !{!2301, !2302, !2303, !2304, !2305}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2298, file: !2299, line: 13, baseType: !188, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2298, file: !2299, line: 16, baseType: !151, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2298, file: !2299, line: 23, baseType: !371, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2298, file: !2299, line: 30, baseType: !371, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2298, file: !2299, line: 33, baseType: !2306, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !767, line: 27, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !701, file: !37, line: 1966, baseType: !2294, size: 64, offset: 1408)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !641, file: !37, line: 1424, baseType: !2310, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2313)
!2313 = !{!2314, !2360, !2364, !2368, !2369, !2370, !2371, !2372, !2377, !2382, !2386}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2312, file: !31, line: 323, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!151, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2345, !2346, !2347}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2319, file: !31, line: 295, baseType: !683, size: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2319, file: !31, line: 296, baseType: !239, size: 128, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2319, file: !31, line: 297, baseType: !239, size: 128, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2319, file: !31, line: 298, baseType: !239, size: 128, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2319, file: !31, line: 299, baseType: !1130, size: 192, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2319, file: !31, line: 300, baseType: !223, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2319, file: !31, line: 301, baseType: !791, size: 32, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2319, file: !31, line: 302, baseType: !640, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2319, file: !31, line: 303, baseType: !2330, size: 64, offset: 832)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2331)
!2331 = !{!2332, !2344}
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2330, file: !31, line: 69, baseType: !2333, size: 32)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2330, file: !31, line: 69, size: 32, elements: !2334)
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2333, file: !31, line: 70, baseType: !478, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2333, file: !31, line: 71, baseType: !486, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2333, file: !31, line: 72, baseType: !2338, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2339, line: 24, baseType: !2340)
!2339 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2339, line: 22, size: 32, elements: !2341)
!2341 = !{!2342}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2340, file: !2339, line: 23, baseType: !2343, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2339, line: 20, baseType: !484)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2330, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2319, file: !31, line: 304, baseType: !574, size: 64, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2319, file: !31, line: 305, baseType: !371, size: 64, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2319, file: !31, line: 306, baseType: !2348, size: 576, offset: 1024)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2349)
!2349 = !{!2350, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2348, file: !31, line: 206, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !257)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2348, file: !31, line: 207, baseType: !2351, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2348, file: !31, line: 208, baseType: !2351, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2348, file: !31, line: 209, baseType: !2351, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2348, file: !31, line: 210, baseType: !2351, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2348, file: !31, line: 211, baseType: !2351, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2348, file: !31, line: 212, baseType: !2351, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2348, file: !31, line: 213, baseType: !581, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2348, file: !31, line: 214, baseType: !581, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2312, file: !31, line: 324, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!2318, !640, !151}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2312, file: !31, line: 325, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2318}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2312, file: !31, line: 326, baseType: !2315, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2312, file: !31, line: 327, baseType: !2315, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2312, file: !31, line: 328, baseType: !2315, size: 64, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2312, file: !31, line: 329, baseType: !729, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2312, file: !31, line: 332, baseType: !2373, size: 64, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2376, !472}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2312, file: !31, line: 333, baseType: !2378, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!151, !472, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2312, file: !31, line: 335, baseType: !2383, size: 64, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!151, !472, !2376}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2312, file: !31, line: 337, baseType: !2387, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!151, !640, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !641, file: !37, line: 1425, baseType: !2392, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2395)
!2395 = !{!2396, !2400, !2401, !2405, !2406, !2407, !2422, !2445, !2449, !2450, !2473}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2394, file: !31, line: 429, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!151, !640, !151, !151, !590}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2394, file: !31, line: 430, baseType: !729, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2394, file: !31, line: 431, baseType: !2402, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!151, !640, !7}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2394, file: !31, line: 432, baseType: !2402, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2394, file: !31, line: 433, baseType: !729, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2394, file: !31, line: 434, baseType: !2408, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!151, !640, !151, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2412, file: !31, line: 416, baseType: !151, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2412, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2412, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2412, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2412, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2412, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2412, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2412, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2394, file: !31, line: 435, baseType: !2423, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!151, !640, !2330, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2427, file: !31, line: 344, baseType: !151, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2427, file: !31, line: 345, baseType: !464, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2427, file: !31, line: 346, baseType: !464, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2427, file: !31, line: 347, baseType: !464, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2427, file: !31, line: 348, baseType: !464, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2427, file: !31, line: 349, baseType: !464, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2427, file: !31, line: 350, baseType: !464, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2427, file: !31, line: 351, baseType: !255, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2427, file: !31, line: 353, baseType: !255, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2427, file: !31, line: 354, baseType: !151, size: 32, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2427, file: !31, line: 355, baseType: !151, size: 32, offset: 608)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2427, file: !31, line: 356, baseType: !464, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2427, file: !31, line: 357, baseType: !464, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2427, file: !31, line: 358, baseType: !464, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2427, file: !31, line: 359, baseType: !255, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2427, file: !31, line: 360, baseType: !151, size: 32, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2394, file: !31, line: 436, baseType: !2446, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!151, !640, !2390, !2426}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2394, file: !31, line: 438, baseType: !2423, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2394, file: !31, line: 439, baseType: !2451, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!151, !640, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2455, file: !31, line: 410, baseType: !7, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2455, file: !31, line: 411, baseType: !2459, size: 1344, offset: 64)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, size: 1344, elements: !322)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2472}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2460, file: !31, line: 396, baseType: !7, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2460, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2460, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2460, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2460, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2460, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2460, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2460, file: !31, line: 404, baseType: !466, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2460, file: !31, line: 405, baseType: !2471, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 126, baseType: !464)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2460, file: !31, line: 406, baseType: !2471, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2394, file: !31, line: 440, baseType: !2402, size: 64, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !641, file: !37, line: 1426, baseType: !2475, size: 64, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2477)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !641, file: !37, line: 1427, baseType: !371, size: 64, offset: 640)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !641, file: !37, line: 1428, baseType: !371, size: 64, offset: 704)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !641, file: !37, line: 1429, baseType: !371, size: 64, offset: 768)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !641, file: !37, line: 1430, baseType: !429, size: 64, offset: 832)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !641, file: !37, line: 1431, baseType: !811, size: 256, offset: 896)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !641, file: !37, line: 1432, baseType: !151, size: 32, offset: 1152)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !641, file: !37, line: 1433, baseType: !791, size: 32, offset: 1184)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !641, file: !37, line: 1437, baseType: !2486, size: 64, offset: 1216)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !641, file: !37, line: 1449, baseType: !2491, size: 64, offset: 1280)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !445, line: 34, size: 64, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2491, file: !445, line: 35, baseType: !448, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !641, file: !37, line: 1450, baseType: !239, size: 128, offset: 1344)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !641, file: !37, line: 1451, baseType: !2496, size: 64, offset: 1472)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !641, file: !37, line: 1452, baseType: !1876, size: 64, offset: 1536)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !641, file: !37, line: 1453, baseType: !2500, size: 64, offset: 1600)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !641, file: !37, line: 1454, baseType: !683, size: 128, offset: 1664)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !641, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !641, file: !37, line: 1456, baseType: !2505, size: 2432, offset: 1856)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2511, !2543}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2505, file: !31, line: 519, baseType: !7, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2505, file: !31, line: 520, baseType: !811, size: 256, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2505, file: !31, line: 521, baseType: !2510, size: 192, offset: 320)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, elements: !322)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2505, file: !31, line: 522, baseType: !2512, size: 1728, offset: 512)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2513, size: 1728, elements: !322)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2514)
!2514 = !{!2515, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2513, file: !31, line: 223, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2518)
!2518 = !{!2519, !2520, !2533, !2534}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2517, file: !31, line: 444, baseType: !151, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2517, file: !31, line: 445, baseType: !2521, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2523, file: !31, line: 311, baseType: !729, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2523, file: !31, line: 312, baseType: !729, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2523, file: !31, line: 313, baseType: !729, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2523, file: !31, line: 314, baseType: !729, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2523, file: !31, line: 315, baseType: !2315, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2523, file: !31, line: 316, baseType: !2315, size: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2523, file: !31, line: 317, baseType: !2315, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2523, file: !31, line: 318, baseType: !2387, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2517, file: !31, line: 446, baseType: !674, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2517, file: !31, line: 447, baseType: !2516, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2513, file: !31, line: 224, baseType: !151, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2513, file: !31, line: 226, baseType: !239, size: 128, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2513, file: !31, line: 227, baseType: !371, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2513, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2513, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2513, file: !31, line: 230, baseType: !2351, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2513, file: !31, line: 231, baseType: !2351, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2513, file: !31, line: 232, baseType: !190, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2505, file: !31, line: 523, baseType: !2544, size: 192, offset: 2240)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2521, size: 192, elements: !322)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !641, file: !37, line: 1458, baseType: !2546, size: 2112, offset: 4288)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2547)
!2547 = !{!2548, !2549, !2550}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2546, file: !37, line: 1411, baseType: !151, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2546, file: !37, line: 1412, baseType: !1438, size: 128, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2546, file: !37, line: 1413, baseType: !2551, size: 1920, offset: 192)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 1920, elements: !322)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2553, line: 12, size: 640, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2554 = !{!2555, !2563, !2565, !2570, !2571}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2552, file: !2553, line: 13, baseType: !2556, size: 320)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2557, line: 17, size: 320, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2556, file: !2557, line: 18, baseType: !151, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2556, file: !2557, line: 19, baseType: !151, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2556, file: !2557, line: 20, baseType: !1438, size: 128, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2556, file: !2557, line: 22, baseType: !412, size: 128, align: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2552, file: !2553, line: 14, baseType: !2564, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2552, file: !2553, line: 15, baseType: !2566, size: 64, offset: 384)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2567, line: 16, size: 64, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2568 = !{!2569}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2566, file: !2567, line: 17, baseType: !1173, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2552, file: !2553, line: 16, baseType: !1438, size: 128, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2552, file: !2553, line: 17, baseType: !791, size: 32, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !641, file: !37, line: 1465, baseType: !190, size: 64, offset: 6400)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !641, file: !37, line: 1468, baseType: !206, size: 32, offset: 6464)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !641, file: !37, line: 1470, baseType: !581, size: 64, offset: 6528)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !641, file: !37, line: 1471, baseType: !581, size: 64, offset: 6592)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !641, file: !37, line: 1473, baseType: !208, size: 32, offset: 6656)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !641, file: !37, line: 1474, baseType: !2578, size: 64, offset: 6720)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !641, file: !37, line: 1477, baseType: !2581, size: 256, offset: 6784)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !2172)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !641, file: !37, line: 1478, baseType: !2583, size: 128, offset: 7040)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2584, line: 18, baseType: !2585)
!2584 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2584, line: 16, size: 128, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2585, file: !2584, line: 17, baseType: !2588, size: 128)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 128, elements: !203)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !641, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !641, file: !37, line: 1481, baseType: !2591, size: 32, offset: 7200)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 150, baseType: !7)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !641, file: !37, line: 1487, baseType: !1130, size: 192, offset: 7232)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !641, file: !37, line: 1493, baseType: !284, size: 64, offset: 7424)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !641, file: !37, line: 1495, baseType: !2595, size: 64, offset: 7488)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !427, line: 135, size: 1024, align: 512, elements: !2598)
!2598 = !{!2599, !2603, !2604, !2611, !2617, !2621, !2625, !2629, !2630, !2634, !2638, !2643, !2647}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2597, file: !427, line: 136, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!151, !429, !7}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2597, file: !427, line: 137, baseType: !2600, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2597, file: !427, line: 138, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!151, !2608, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2597, file: !427, line: 139, baseType: !2612, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!151, !2608, !7, !284, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2597, file: !427, line: 141, baseType: !2618, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!151, !2608}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2597, file: !427, line: 142, baseType: !2622, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!151, !429}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2597, file: !427, line: 143, baseType: !2626, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !429}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2597, file: !427, line: 144, baseType: !2626, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2597, file: !427, line: 145, baseType: !2631, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !429, !472}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2597, file: !427, line: 146, baseType: !2635, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!321, !429, !321, !151}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2597, file: !427, line: 147, baseType: !2639, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!425, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2597, file: !427, line: 148, baseType: !2644, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!151, !590, !533}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2597, file: !427, line: 149, baseType: !2648, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!429, !429, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !641, file: !37, line: 1500, baseType: !151, size: 32, offset: 7552)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !641, file: !37, line: 1502, baseType: !2655, size: 448, offset: 7616)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2299, line: 60, size: 448, elements: !2656)
!2656 = !{!2657, !2662, !2663, !2664, !2665, !2666, !2667}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2655, file: !2299, line: 61, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!371, !2661, !2297}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2655, file: !2299, line: 63, baseType: !2658, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2655, file: !2299, line: 66, baseType: !356, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2655, file: !2299, line: 67, baseType: !151, size: 32, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !2299, line: 68, baseType: !7, size: 32, offset: 224)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2655, file: !2299, line: 71, baseType: !239, size: 128, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2655, file: !2299, line: 77, baseType: !2668, size: 64, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !641, file: !37, line: 1505, baseType: !249, size: 64, offset: 8064)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !641, file: !37, line: 1508, baseType: !249, size: 64, offset: 8128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !641, file: !37, line: 1511, baseType: !151, size: 32, offset: 8192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !641, file: !37, line: 1514, baseType: !946, size: 32, offset: 8224)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !641, file: !37, line: 1517, baseType: !2674, size: 64, offset: 8256)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !246, line: 18, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !641, file: !37, line: 1518, baseType: !679, size: 64, offset: 8320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !641, file: !37, line: 1525, baseType: !1668, size: 64, offset: 8384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !641, file: !37, line: 1532, baseType: !2679, size: 64, offset: 8448)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2680, line: 52, size: 64, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2679, file: !2680, line: 53, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2680, line: 40, size: 256, elements: !2685)
!2685 = !{!2686, !2687, !2692}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2684, file: !2680, line: 42, baseType: !223)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2684, file: !2680, line: 44, baseType: !2688, size: 192)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2680, line: 28, size: 192, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2688, file: !2680, line: 29, baseType: !239, size: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2688, file: !2680, line: 31, baseType: !356, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2684, file: !2680, line: 49, baseType: !356, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !641, file: !37, line: 1533, baseType: !2679, size: 64, offset: 8512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !641, file: !37, line: 1534, baseType: !412, size: 128, align: 64, offset: 8576)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !641, file: !37, line: 1535, baseType: !245, size: 256, offset: 8704)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !641, file: !37, line: 1537, baseType: !1130, size: 192, offset: 8960)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !641, file: !37, line: 1542, baseType: !151, size: 32, offset: 9152)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !641, file: !37, line: 1545, baseType: !223, offset: 9184)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !641, file: !37, line: 1546, baseType: !239, size: 128, offset: 9216)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !641, file: !37, line: 1548, baseType: !223, offset: 9344)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !641, file: !37, line: 1549, baseType: !239, size: 128, offset: 9344)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !473, file: !37, line: 624, baseType: !778, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !473, file: !37, line: 631, baseType: !371, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !37, line: 639, baseType: !2705, size: 32, offset: 384)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !37, line: 639, size: 32, elements: !2706)
!2706 = !{!2707, !2709}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2705, file: !37, line: 640, baseType: !2708, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2705, file: !37, line: 641, baseType: !7, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !473, file: !37, line: 643, baseType: !556, size: 32, offset: 416)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !473, file: !37, line: 644, baseType: !574, size: 64, offset: 448)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !473, file: !37, line: 645, baseType: !577, size: 128, offset: 512)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !473, file: !37, line: 646, baseType: !577, size: 128, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !473, file: !37, line: 647, baseType: !577, size: 128, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !473, file: !37, line: 648, baseType: !223, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !473, file: !37, line: 649, baseType: !363, size: 16, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !473, file: !37, line: 650, baseType: !1309, size: 8, offset: 912)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !473, file: !37, line: 651, baseType: !1309, size: 8, offset: 920)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !473, file: !37, line: 652, baseType: !2471, size: 64, offset: 960)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !473, file: !37, line: 659, baseType: !371, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !473, file: !37, line: 660, baseType: !811, size: 256, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !473, file: !37, line: 662, baseType: !371, size: 64, offset: 1344)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !473, file: !37, line: 663, baseType: !371, size: 64, offset: 1408)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !473, file: !37, line: 665, baseType: !683, size: 128, offset: 1472)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !473, file: !37, line: 666, baseType: !239, size: 128, offset: 1600)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !473, file: !37, line: 675, baseType: !239, size: 128, offset: 1728)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !473, file: !37, line: 676, baseType: !239, size: 128, offset: 1856)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !473, file: !37, line: 677, baseType: !239, size: 128, offset: 1984)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !37, line: 678, baseType: !2730, size: 128, offset: 2112)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !37, line: 678, size: 128, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2730, file: !37, line: 679, baseType: !679, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2730, file: !37, line: 680, baseType: !412, size: 128, align: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !473, file: !37, line: 682, baseType: !251, size: 64, offset: 2240)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !473, file: !37, line: 683, baseType: !251, size: 64, offset: 2304)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !473, file: !37, line: 684, baseType: !791, size: 32, offset: 2368)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !473, file: !37, line: 685, baseType: !791, size: 32, offset: 2400)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !473, file: !37, line: 686, baseType: !791, size: 32, offset: 2432)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !473, file: !37, line: 688, baseType: !791, size: 32, offset: 2464)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !37, line: 690, baseType: !2741, size: 64, offset: 2496)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !37, line: 690, size: 64, elements: !2742)
!2742 = !{!2743, !2966}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2741, file: !37, line: 691, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2747)
!2747 = !{!2748, !2749, !2753, !2758, !2762, !2763, !2764, !2768, !2781, !2782, !2790, !2794, !2795, !2799, !2800, !2804, !2809, !2810, !2814, !2818, !2926, !2930, !2931, !2935, !2936, !2940, !2944, !2949, !2953, !2957, !2961, !2965}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2746, file: !37, line: 1823, baseType: !674, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2746, file: !37, line: 1824, baseType: !2750, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!574, !399, !574, !151}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2746, file: !37, line: 1825, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!352, !399, !321, !368, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2746, file: !37, line: 1826, baseType: !2759, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!352, !399, !284, !368, !2757}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2746, file: !37, line: 1827, baseType: !881, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2746, file: !37, line: 1828, baseType: !881, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2746, file: !37, line: 1829, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!151, !884, !533}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2746, file: !37, line: 1830, baseType: !2769, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!151, !399, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2774)
!2774 = !{!2775, !2780}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2773, file: !37, line: 1777, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!151, !2772, !284, !151, !574, !464, !7}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2773, file: !37, line: 1778, baseType: !574, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2746, file: !37, line: 1831, baseType: !2769, size: 64, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2746, file: !37, line: 1832, baseType: !2783, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!2786, !399, !2788}
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2787, line: 52, baseType: !7)
!2787 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !660, line: 27, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2746, file: !37, line: 1833, baseType: !2791, size: 64, offset: 640)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!356, !399, !7, !371}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2746, file: !37, line: 1834, baseType: !2791, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2746, file: !37, line: 1835, baseType: !2796, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!151, !399, !1018}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2746, file: !37, line: 1836, baseType: !371, size: 64, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2746, file: !37, line: 1837, baseType: !2801, size: 64, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!151, !472, !399}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2746, file: !37, line: 1838, baseType: !2805, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!151, !399, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !190)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2746, file: !37, line: 1839, baseType: !2801, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2746, file: !37, line: 1840, baseType: !2811, size: 64, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!151, !399, !574, !574, !151}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2746, file: !37, line: 1841, baseType: !2815, size: 64, offset: 1152)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!151, !151, !399, !151}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2746, file: !37, line: 1842, baseType: !2819, size: 64, offset: 1216)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!151, !399, !151, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2856, !2857, !2858, !2871, !2902}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2823, file: !37, line: 1063, baseType: !2822, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2823, file: !37, line: 1064, baseType: !239, size: 128, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2823, file: !37, line: 1065, baseType: !683, size: 128, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2823, file: !37, line: 1066, baseType: !239, size: 128, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2823, file: !37, line: 1069, baseType: !239, size: 128, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2823, file: !37, line: 1072, baseType: !2808, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2823, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2823, file: !37, line: 1074, baseType: !470, size: 8, offset: 672)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2823, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2823, file: !37, line: 1076, baseType: !151, size: 32, offset: 736)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2823, file: !37, line: 1077, baseType: !1438, size: 128, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2823, file: !37, line: 1078, baseType: !399, size: 64, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2823, file: !37, line: 1079, baseType: !574, size: 64, offset: 960)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2823, file: !37, line: 1080, baseType: !574, size: 64, offset: 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2823, file: !37, line: 1082, baseType: !2840, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2842)
!2842 = !{!2843, !2851, !2852, !2853, !2854, !2855}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2841, file: !37, line: 1315, baseType: !2844)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2845, line: 20, baseType: !2846)
!2845 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2845, line: 11, elements: !2847)
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2846, file: !2845, line: 12, baseType: !2849)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !235, line: 33, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 31, elements: !237)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2841, file: !37, line: 1316, baseType: !151, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2841, file: !37, line: 1317, baseType: !151, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2841, file: !37, line: 1318, baseType: !2840, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2841, file: !37, line: 1319, baseType: !399, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2841, file: !37, line: 1320, baseType: !412, size: 128, align: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2823, file: !37, line: 1084, baseType: !371, size: 64, offset: 1152)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2823, file: !37, line: 1085, baseType: !371, size: 64, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2823, file: !37, line: 1087, baseType: !2859, size: 64, offset: 1280)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2862)
!2862 = !{!2863, !2867}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2861, file: !37, line: 1012, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2822, !2822}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2861, file: !37, line: 1013, baseType: !2868, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2822}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2823, file: !37, line: 1088, baseType: !2872, size: 64, offset: 1344)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2874)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2875)
!2875 = !{!2876, !2880, !2884, !2885, !2889, !2893, !2897, !2901}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2874, file: !37, line: 1017, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!2808, !2808}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2874, file: !37, line: 1018, baseType: !2881, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2808}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2874, file: !37, line: 1019, baseType: !2868, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2874, file: !37, line: 1020, baseType: !2886, size: 64, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!151, !2822, !151}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2874, file: !37, line: 1021, baseType: !2890, size: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!533, !2822}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2874, file: !37, line: 1022, baseType: !2894, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!151, !2822, !151, !242}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2874, file: !37, line: 1023, baseType: !2898, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2822, !858}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2874, file: !37, line: 1024, baseType: !2890, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2823, file: !37, line: 1097, baseType: !2903, size: 256, offset: 1408)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2823, file: !37, line: 1089, size: 256, elements: !2904)
!2904 = !{!2905, !2914, !2920}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2903, file: !37, line: 1090, baseType: !2906, size: 256)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2907, line: 10, size: 256, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2908 = !{!2909, !2910, !2913}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2906, file: !2907, line: 11, baseType: !206, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2906, file: !2907, line: 12, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2907, line: 5, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2906, file: !2907, line: 13, baseType: !239, size: 128, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2903, file: !37, line: 1091, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2907, line: 17, size: 64, elements: !2916)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2915, file: !2907, line: 18, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2907, line: 16, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2903, file: !37, line: 1096, baseType: !2921, size: 192)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !37, line: 1092, size: 192, elements: !2922)
!2922 = !{!2923, !2924, !2925}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2921, file: !37, line: 1093, baseType: !239, size: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2921, file: !37, line: 1094, baseType: !151, size: 32, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2921, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2746, file: !37, line: 1843, baseType: !2927, size: 64, offset: 1280)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!352, !399, !765, !151, !368, !2757, !151}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2746, file: !37, line: 1844, baseType: !1058, size: 64, offset: 1344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2746, file: !37, line: 1845, baseType: !2932, size: 64, offset: 1408)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!151, !151}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2746, file: !37, line: 1846, baseType: !2819, size: 64, offset: 1472)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2746, file: !37, line: 1847, baseType: !2937, size: 64, offset: 1536)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!352, !2040, !399, !2757, !368, !7}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2746, file: !37, line: 1848, baseType: !2941, size: 64, offset: 1600)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!352, !399, !2757, !2040, !368, !7}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2746, file: !37, line: 1849, baseType: !2945, size: 64, offset: 1664)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!151, !399, !356, !2948, !858}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2746, file: !37, line: 1850, baseType: !2950, size: 64, offset: 1728)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!356, !399, !151, !574, !574}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2746, file: !37, line: 1852, baseType: !2954, size: 64, offset: 1792)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !755, !399}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2746, file: !37, line: 1856, baseType: !2958, size: 64, offset: 1856)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!352, !399, !574, !399, !574, !368, !7}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2746, file: !37, line: 1858, baseType: !2962, size: 64, offset: 1920)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!574, !399, !574, !399, !574, !574, !7}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2746, file: !37, line: 1861, baseType: !2811, size: 64, offset: 1984)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2741, file: !37, line: 692, baseType: !708, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !473, file: !37, line: 694, baseType: !2968, size: 64, offset: 2560)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2969, file: !37, line: 1101, baseType: !223)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2969, file: !37, line: 1102, baseType: !239, size: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2969, file: !37, line: 1103, baseType: !239, size: 128, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2969, file: !37, line: 1104, baseType: !239, size: 128, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !473, file: !37, line: 695, baseType: !779, size: 1216, align: 64, offset: 2624)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !473, file: !37, line: 696, baseType: !239, size: 128, offset: 3840)
!2977 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !37, line: 697, baseType: !2978, size: 64, offset: 3968)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !37, line: 697, size: 64, elements: !2979)
!2979 = !{!2980, !2981, !2982, !2985, !2986}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2978, file: !37, line: 698, baseType: !2040, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2978, file: !37, line: 699, baseType: !2496, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2978, file: !37, line: 700, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2978, file: !37, line: 701, baseType: !321, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2978, file: !37, line: 702, baseType: !7, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !473, file: !37, line: 705, baseType: !208, size: 32, offset: 4032)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !473, file: !37, line: 708, baseType: !208, size: 32, offset: 4064)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !473, file: !37, line: 709, baseType: !2578, size: 64, offset: 4096)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !473, file: !37, line: 720, baseType: !190, size: 64, offset: 4160)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !430, file: !427, line: 98, baseType: !2992, size: 256, offset: 448)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !2172)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !430, file: !427, line: 101, baseType: !2994, size: 32, offset: 704)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2995, line: 25, size: 32, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2994, file: !2995, line: 26, baseType: !2998, size: 32)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2994, file: !2995, line: 26, size: 32, elements: !2999)
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !2995, line: 30, baseType: !3001, size: 32)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2995, line: 30, size: 32, elements: !3002)
!3002 = !{!3003, !3004}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3001, file: !2995, line: 31, baseType: !223)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3001, file: !2995, line: 32, baseType: !151, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !430, file: !427, line: 102, baseType: !2595, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !430, file: !427, line: 103, baseType: !640, size: 64, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !430, file: !427, line: 104, baseType: !371, size: 64, offset: 896)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !430, file: !427, line: 105, baseType: !190, size: 64, offset: 960)
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !427, line: 107, baseType: !3010, size: 128, offset: 1024)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !427, line: 107, size: 128, elements: !3011)
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3010, file: !427, line: 108, baseType: !239, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3010, file: !427, line: 109, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !430, file: !427, line: 111, baseType: !239, size: 128, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !430, file: !427, line: 112, baseType: !239, size: 128, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !430, file: !427, line: 120, baseType: !3018, size: 128, offset: 1408)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !427, line: 116, size: 128, elements: !3019)
!3019 = !{!3020, !3021, !3022}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3018, file: !427, line: 117, baseType: !683, size: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3018, file: !427, line: 118, baseType: !444, size: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3018, file: !427, line: 119, baseType: !412, size: 128, align: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !400, file: !37, line: 922, baseType: !472, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !400, file: !37, line: 923, baseType: !2744, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !400, file: !37, line: 929, baseType: !223, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !400, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !400, file: !37, line: 931, baseType: !249, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !400, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !400, file: !37, line: 933, baseType: !2591, size: 32, offset: 544)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !400, file: !37, line: 934, baseType: !1130, size: 192, offset: 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !400, file: !37, line: 935, baseType: !574, size: 64, offset: 768)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !400, file: !37, line: 936, baseType: !3033, size: 192, offset: 832)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !37, line: 886, baseType: !2844)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3033, file: !37, line: 887, baseType: !1428, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3033, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3033, file: !37, line: 889, baseType: !478, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3033, file: !37, line: 889, baseType: !478, size: 32, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3033, file: !37, line: 890, baseType: !151, size: 32, offset: 160)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !400, file: !37, line: 937, baseType: !1504, size: 64, offset: 1024)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !400, file: !37, line: 938, baseType: !3043, size: 256, offset: 1088)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3043, file: !37, line: 897, baseType: !371, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3043, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3043, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3043, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3043, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3043, file: !37, line: 904, baseType: !574, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !400, file: !37, line: 940, baseType: !464, size: 64, offset: 1344)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !400, file: !37, line: 945, baseType: !190, size: 64, offset: 1408)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !400, file: !37, line: 949, baseType: !239, size: 128, offset: 1472)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !400, file: !37, line: 950, baseType: !239, size: 128, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !400, file: !37, line: 952, baseType: !778, size: 64, offset: 1728)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !400, file: !37, line: 953, baseType: !946, size: 32, offset: 1792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !400, file: !37, line: 954, baseType: !946, size: 32, offset: 1824)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !390, file: !346, line: 174, baseType: !396, size: 64, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !390, file: !346, line: 176, baseType: !3060, size: 64, offset: 384)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!151, !399, !288, !389, !1018}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !378, file: !346, line: 90, baseType: !373, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !378, file: !346, line: 91, baseType: !3065, size: 64, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !336, file: !281, line: 143, baseType: !3067, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!3070, !288}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3073)
!3073 = !{!3074, !3075, !3079, !3083, !3089, !3093}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3072, file: !6, line: 40, baseType: !5, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3072, file: !6, line: 41, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!533}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3072, file: !6, line: 42, baseType: !3080, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!190}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3072, file: !6, line: 43, baseType: !3084, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!2069, !3087}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3072, file: !6, line: 44, baseType: !3090, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!2069}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3072, file: !6, line: 45, baseType: !511, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !336, file: !281, line: 144, baseType: !3095, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!2069, !288}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !336, file: !281, line: 145, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !288, !3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !280, file: !281, line: 70, baseType: !3105, size: 64, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !660, line: 123, size: 1024, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3236, !3237, !3238, !3239, !3240}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3106, file: !660, line: 124, baseType: !791, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3106, file: !660, line: 125, baseType: !791, size: 32, offset: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3106, file: !660, line: 135, baseType: !3105, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3106, file: !660, line: 136, baseType: !284, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3106, file: !660, line: 138, baseType: !804, size: 192, align: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3106, file: !660, line: 140, baseType: !2069, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3106, file: !660, line: 141, baseType: !7, size: 32, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !660, line: 142, baseType: !3116, size: 256, offset: 512)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3106, file: !660, line: 142, size: 256, elements: !3117)
!3117 = !{!3118, !3164, !3168}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3116, file: !660, line: 143, baseType: !3119, size: 192)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !660, line: 91, size: 192, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3119, file: !660, line: 92, baseType: !371, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3119, file: !660, line: 94, baseType: !800, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3119, file: !660, line: 100, baseType: !3124, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !660, line: 180, size: 704, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3136, !3137, !3138, !3162, !3163}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3125, file: !660, line: 182, baseType: !3105, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3125, file: !660, line: 183, baseType: !7, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3125, file: !660, line: 186, baseType: !3130, size: 192, offset: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3131, line: 19, size: 192, elements: !3132)
!3131 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3130, file: !3131, line: 20, baseType: !783, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3130, file: !3131, line: 21, baseType: !7, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3130, file: !3131, line: 22, baseType: !7, size: 32, offset: 160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3125, file: !660, line: 187, baseType: !206, size: 32, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3125, file: !660, line: 188, baseType: !206, size: 32, offset: 352)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3125, file: !660, line: 189, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !660, line: 168, size: 320, elements: !3141)
!3141 = !{!3142, !3146, !3150, !3154, !3158}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3140, file: !660, line: 169, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!151, !755, !3124}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3140, file: !660, line: 171, baseType: !3147, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!151, !3105, !284, !362}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3140, file: !660, line: 173, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!151, !3105}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3140, file: !660, line: 174, baseType: !3155, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!151, !3105, !3105, !284}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3140, file: !660, line: 176, baseType: !3159, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!151, !755, !3105, !3124}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3125, file: !660, line: 192, baseType: !239, size: 128, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3125, file: !660, line: 194, baseType: !1438, size: 128, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3116, file: !660, line: 144, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !660, line: 103, size: 64, elements: !3166)
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3165, file: !660, line: 104, baseType: !3105, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3116, file: !660, line: 145, baseType: !3169, size: 256)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !660, line: 107, size: 256, elements: !3170)
!3170 = !{!3171, !3231, !3234, !3235}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3169, file: !660, line: 108, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !660, line: 217, size: 768, elements: !3175)
!3175 = !{!3176, !3196, !3200, !3204, !3208, !3212, !3216, !3220, !3221, !3222, !3223, !3227}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3174, file: !660, line: 222, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!151, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !660, line: 197, size: 1088, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3181, file: !660, line: 199, baseType: !3105, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3181, file: !660, line: 200, baseType: !399, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3181, file: !660, line: 201, baseType: !755, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3181, file: !660, line: 202, baseType: !190, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3181, file: !660, line: 205, baseType: !1130, size: 192, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3181, file: !660, line: 206, baseType: !1130, size: 192, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3181, file: !660, line: 207, baseType: !151, size: 32, offset: 640)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3181, file: !660, line: 208, baseType: !239, size: 128, offset: 704)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3181, file: !660, line: 209, baseType: !321, size: 64, offset: 832)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3181, file: !660, line: 211, baseType: !368, size: 64, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3181, file: !660, line: 212, baseType: !533, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3181, file: !660, line: 213, baseType: !533, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3181, file: !660, line: 214, baseType: !1046, size: 64, offset: 1024)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3174, file: !660, line: 223, baseType: !3197, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3180}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3174, file: !660, line: 236, baseType: !3201, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!151, !755, !190}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3174, file: !660, line: 238, baseType: !3205, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!190, !755, !2757}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3174, file: !660, line: 239, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!190, !755, !190, !2757}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3174, file: !660, line: 240, baseType: !3213, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !755, !190}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3174, file: !660, line: 242, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!352, !3180, !321, !368, !574}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3174, file: !660, line: 252, baseType: !368, size: 64, offset: 448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3174, file: !660, line: 259, baseType: !533, size: 8, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3174, file: !660, line: 260, baseType: !3217, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3174, file: !660, line: 263, baseType: !3224, size: 64, offset: 640)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2786, !3180, !2788}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3174, file: !660, line: 266, baseType: !3228, size: 64, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!151, !3180, !1018}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3169, file: !660, line: 109, baseType: !3232, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !660, line: 31, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3169, file: !660, line: 110, baseType: !574, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3169, file: !660, line: 111, baseType: !3105, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3106, file: !660, line: 148, baseType: !190, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3106, file: !660, line: 154, baseType: !464, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !660, line: 156, baseType: !363, size: 16, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3106, file: !660, line: 157, baseType: !362, size: 16, offset: 912)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3106, file: !660, line: 158, baseType: !3241, size: 64, offset: 960)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !660, line: 32, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !280, file: !281, line: 71, baseType: !3244, size: 32, offset: 448)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3245, line: 19, size: 32, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3244, file: !3245, line: 20, baseType: !1187, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !280, file: !281, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !280, file: !281, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !280, file: !281, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !280, file: !281, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !280, file: !281, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !277, file: !60, line: 463, baseType: !276, size: 64, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !277, file: !60, line: 465, baseType: !3255, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !277, file: !60, line: 467, baseType: !284, size: 64, offset: 640)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !277, file: !60, line: 468, baseType: !3259, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3269, !3274, !3278}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3261, file: !60, line: 88, baseType: !284, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3261, file: !60, line: 89, baseType: !375, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3261, file: !60, line: 90, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!151, !276, !316}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3261, file: !60, line: 91, baseType: !3270, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!321, !276, !3273, !3102, !3103}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3261, file: !60, line: 93, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !276}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3261, file: !60, line: 95, baseType: !3279, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3282)
!3282 = !{!3283, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3281, file: !67, line: 279, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!151, !276}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3281, file: !67, line: 280, baseType: !3275, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3281, file: !67, line: 281, baseType: !3284, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3281, file: !67, line: 282, baseType: !3284, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3281, file: !67, line: 283, baseType: !3284, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3281, file: !67, line: 284, baseType: !3284, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3281, file: !67, line: 285, baseType: !3284, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3281, file: !67, line: 286, baseType: !3284, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3281, file: !67, line: 287, baseType: !3284, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3281, file: !67, line: 288, baseType: !3284, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3281, file: !67, line: 289, baseType: !3284, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3281, file: !67, line: 290, baseType: !3284, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3281, file: !67, line: 291, baseType: !3284, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3281, file: !67, line: 292, baseType: !3284, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3281, file: !67, line: 293, baseType: !3284, size: 64, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3281, file: !67, line: 294, baseType: !3284, size: 64, offset: 960)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3281, file: !67, line: 295, baseType: !3284, size: 64, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3281, file: !67, line: 296, baseType: !3284, size: 64, offset: 1088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3281, file: !67, line: 297, baseType: !3284, size: 64, offset: 1152)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3281, file: !67, line: 298, baseType: !3284, size: 64, offset: 1216)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3281, file: !67, line: 299, baseType: !3284, size: 64, offset: 1280)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3281, file: !67, line: 300, baseType: !3284, size: 64, offset: 1344)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3281, file: !67, line: 301, baseType: !3284, size: 64, offset: 1408)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !277, file: !60, line: 470, baseType: !3310, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3312, line: 82, size: 1408, elements: !3313)
!3312 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3395, !3398, !3399}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3311, file: !3312, line: 83, baseType: !284, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3311, file: !3312, line: 84, baseType: !284, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3311, file: !3312, line: 85, baseType: !276, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3311, file: !3312, line: 86, baseType: !375, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3311, file: !3312, line: 87, baseType: !375, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3311, file: !3312, line: 88, baseType: !375, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3311, file: !3312, line: 90, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!151, !276, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3346, !3359, !3360, !3361, !3362, !3363, !3371, !3372, !3373, !3374, !3375, !3376}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3325, file: !54, line: 96, baseType: !284, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3325, file: !54, line: 97, baseType: !3310, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3325, file: !54, line: 99, baseType: !674, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3325, file: !54, line: 100, baseType: !284, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3325, file: !54, line: 102, baseType: !533, size: 8, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3325, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3325, file: !54, line: 105, baseType: !3334, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3337, line: 262, size: 1600, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3338 = !{!3339, !3340, !3341, !3345}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3336, file: !3337, line: 263, baseType: !2581, size: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3336, file: !3337, line: 264, baseType: !2581, size: 256, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3336, file: !3337, line: 265, baseType: !3342, size: 1024, offset: 512)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !3343)
!3343 = !{!3344}
!3344 = !DISubrange(count: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3336, file: !3337, line: 266, baseType: !2069, size: 64, offset: 1536)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3325, file: !54, line: 106, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3337, line: 210, size: 256, elements: !3350)
!3350 = !{!3351, !3355, !3357, !3358}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3349, file: !3337, line: 211, baseType: !3352, size: 72)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 72, elements: !3353)
!3353 = !{!3354}
!3354 = !DISubrange(count: 9)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3349, file: !3337, line: 212, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3337, line: 14, baseType: !371)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3349, file: !3337, line: 213, baseType: !208, size: 32, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3349, file: !3337, line: 214, baseType: !208, size: 32, offset: 224)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3325, file: !54, line: 108, baseType: !3284, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3325, file: !54, line: 109, baseType: !3275, size: 64, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3325, file: !54, line: 110, baseType: !3284, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3325, file: !54, line: 111, baseType: !3275, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3325, file: !54, line: 112, baseType: !3364, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!151, !276, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3368)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3369)
!3369 = !{!3370}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3368, file: !67, line: 51, baseType: !151, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3325, file: !54, line: 113, baseType: !3284, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3325, file: !54, line: 114, baseType: !375, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3325, file: !54, line: 115, baseType: !375, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3325, file: !54, line: 117, baseType: !3279, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3325, file: !54, line: 118, baseType: !3275, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3325, file: !54, line: 120, baseType: !3377, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3311, file: !3312, line: 91, baseType: !3266, size: 64, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3311, file: !3312, line: 92, baseType: !3284, size: 64, offset: 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3311, file: !3312, line: 93, baseType: !3275, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3311, file: !3312, line: 94, baseType: !3284, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3311, file: !3312, line: 95, baseType: !3275, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3311, file: !3312, line: 97, baseType: !3284, size: 64, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3311, file: !3312, line: 98, baseType: !3284, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3311, file: !3312, line: 100, baseType: !3364, size: 64, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3311, file: !3312, line: 101, baseType: !3284, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3311, file: !3312, line: 103, baseType: !3284, size: 64, offset: 1024)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3311, file: !3312, line: 105, baseType: !3284, size: 64, offset: 1088)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3311, file: !3312, line: 107, baseType: !3279, size: 64, offset: 1152)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3311, file: !3312, line: 109, baseType: !3392, size: 64, offset: 1216)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3394)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3312, line: 109, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3311, file: !3312, line: 111, baseType: !3396, size: 64, offset: 1280)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3312, line: 111, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3311, file: !3312, line: 112, baseType: !689, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3311, file: !3312, line: 114, baseType: !533, size: 8, offset: 1344)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !277, file: !60, line: 471, baseType: !3324, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !277, file: !60, line: 473, baseType: !190, size: 64, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !277, file: !60, line: 475, baseType: !190, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !277, file: !60, line: 480, baseType: !1130, size: 192, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !277, file: !60, line: 484, baseType: !3405, size: 576, offset: 1216)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3405, file: !60, line: 362, baseType: !239, size: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3405, file: !60, line: 363, baseType: !239, size: 128, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3405, file: !60, line: 364, baseType: !239, size: 128, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3405, file: !60, line: 365, baseType: !239, size: 128, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3405, file: !60, line: 366, baseType: !533, size: 8, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3405, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !277, file: !60, line: 485, baseType: !3414, size: 2304, offset: 1792)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3511, !3515}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3414, file: !67, line: 566, baseType: !3367, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3414, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3414, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3414, file: !67, line: 569, baseType: !533, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3414, file: !67, line: 570, baseType: !533, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3414, file: !67, line: 571, baseType: !533, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3414, file: !67, line: 572, baseType: !533, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3414, file: !67, line: 573, baseType: !533, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3414, file: !67, line: 574, baseType: !533, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3414, file: !67, line: 575, baseType: !533, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3414, file: !67, line: 576, baseType: !533, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3414, file: !67, line: 577, baseType: !206, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3414, file: !67, line: 578, baseType: !223, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !67, line: 580, baseType: !239, size: 128, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3414, file: !67, line: 581, baseType: !1459, size: 192, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3414, file: !67, line: 582, baseType: !3432, size: 64, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3434, line: 43, size: 1472, elements: !3435)
!3434 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3443, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3433, file: !3434, line: 44, baseType: !284, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3433, file: !3434, line: 45, baseType: !151, size: 32, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3433, file: !3434, line: 46, baseType: !239, size: 128, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3433, file: !3434, line: 47, baseType: !223, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3433, file: !3434, line: 48, baseType: !3441, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3433, file: !3434, line: 49, baseType: !3444, size: 320, offset: 320)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3445, line: 11, size: 320, elements: !3446)
!3445 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448, !3449, !3454}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3444, file: !3445, line: 16, baseType: !683, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3444, file: !3445, line: 17, baseType: !371, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3444, file: !3445, line: 18, baseType: !3450, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 19, baseType: !206, size: 32, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3433, file: !3434, line: 50, baseType: !371, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3433, file: !3434, line: 51, baseType: !1257, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3433, file: !3434, line: 52, baseType: !1257, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3433, file: !3434, line: 53, baseType: !1257, size: 64, offset: 832)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3433, file: !3434, line: 54, baseType: !1257, size: 64, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3433, file: !3434, line: 55, baseType: !1257, size: 64, offset: 960)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3433, file: !3434, line: 56, baseType: !371, size: 64, offset: 1024)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3433, file: !3434, line: 57, baseType: !371, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3433, file: !3434, line: 58, baseType: !371, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3433, file: !3434, line: 59, baseType: !371, size: 64, offset: 1216)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3433, file: !3434, line: 60, baseType: !371, size: 64, offset: 1280)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3433, file: !3434, line: 61, baseType: !276, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3433, file: !3434, line: 62, baseType: !533, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3433, file: !3434, line: 63, baseType: !533, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3414, file: !67, line: 583, baseType: !533, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3414, file: !67, line: 584, baseType: !533, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3414, file: !67, line: 585, baseType: !533, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3414, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3414, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3414, file: !67, line: 592, baseType: !1249, size: 512, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3414, file: !67, line: 593, baseType: !464, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3414, file: !67, line: 594, baseType: !245, size: 256, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3414, file: !67, line: 595, baseType: !1438, size: 128, offset: 1408)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3414, file: !67, line: 596, baseType: !3441, size: 64, offset: 1536)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3414, file: !67, line: 597, baseType: !791, size: 32, offset: 1600)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3414, file: !67, line: 598, baseType: !791, size: 32, offset: 1632)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3414, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3414, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3414, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3414, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3414, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3414, file: !67, line: 604, baseType: !533, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3414, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3414, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3414, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3414, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3414, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3414, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3414, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3414, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3414, file: !67, line: 613, baseType: !151, size: 32, offset: 1792)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3414, file: !67, line: 614, baseType: !151, size: 32, offset: 1824)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3414, file: !67, line: 615, baseType: !464, size: 64, offset: 1856)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3414, file: !67, line: 616, baseType: !464, size: 64, offset: 1920)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3414, file: !67, line: 617, baseType: !464, size: 64, offset: 1984)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3414, file: !67, line: 618, baseType: !464, size: 64, offset: 2048)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3414, file: !67, line: 620, baseType: !3502, size: 64, offset: 2112)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3503, file: !67, line: 537, baseType: !223)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3503, file: !67, line: 538, baseType: !7, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3503, file: !67, line: 540, baseType: !239, size: 128, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3503, file: !67, line: 543, baseType: !3509, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3414, file: !67, line: 621, baseType: !3512, size: 64, offset: 2176)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !276, !1401}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3414, file: !67, line: 622, baseType: !3516, size: 64, offset: 2240)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !81, line: 117, size: 2304, elements: !3518)
!3518 = !{!3519, !3548, !3549, !3556, !3561, !3588, !3589}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !3517, file: !81, line: 118, baseType: !3520, size: 320)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !81, line: 52, size: 320, elements: !3521)
!3521 = !{!3522, !3527, !3528, !3529, !3530, !3531}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3520, file: !81, line: 53, baseType: !3523, size: 128)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !3524, line: 79, size: 128, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3523, file: !3524, line: 80, baseType: !239, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !3520, file: !81, line: 54, baseType: !1401, size: 32, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !3520, file: !81, line: 55, baseType: !1401, size: 32, offset: 160)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !3520, file: !81, line: 56, baseType: !1401, size: 32, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3520, file: !81, line: 57, baseType: !80, size: 32, offset: 224)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !3520, file: !81, line: 58, baseType: !3532, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !3534, line: 65, size: 320, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3533, file: !3534, line: 66, baseType: !811, size: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3533, file: !3534, line: 67, baseType: !3538, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3534, line: 54, size: 192, elements: !3540)
!3540 = !{!3541, !3546, !3547}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3539, file: !3534, line: 55, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3534, line: 51, baseType: !3543)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!151, !3538, !371, !190}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3539, file: !3534, line: 56, baseType: !3538, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3539, file: !3534, line: 57, baseType: !151, size: 32, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !3517, file: !81, line: 119, baseType: !3520, size: 320, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3517, file: !81, line: 120, baseType: !3550, size: 1280, offset: 640)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !81, line: 85, size: 1280, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3550, file: !81, line: 86, baseType: !3520, size: 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !3550, file: !81, line: 87, baseType: !3533, size: 320, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3550, file: !81, line: 88, baseType: !3520, size: 320, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !3550, file: !81, line: 89, baseType: !3533, size: 320, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3517, file: !81, line: 121, baseType: !3557, size: 192, offset: 1920)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !81, line: 71, size: 192, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3557, file: !81, line: 72, baseType: !239, size: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !3557, file: !81, line: 73, baseType: !1401, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !3517, file: !81, line: 122, baseType: !3562, size: 64, offset: 2112)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !81, line: 107, size: 576, elements: !3564)
!3564 = !{!3565, !3566, !3587}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3563, file: !81, line: 108, baseType: !86, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3563, file: !81, line: 113, baseType: !3567, size: 448, offset: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !81, line: 109, size: 448, elements: !3568)
!3568 = !{!3569, !3575, !3580}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3567, file: !81, line: 110, baseType: !3570, size: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3524, line: 83, size: 320, elements: !3571)
!3571 = !{!3572, !3573, !3574}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3570, file: !3524, line: 84, baseType: !151, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3570, file: !3524, line: 85, baseType: !239, size: 128, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3570, file: !3524, line: 86, baseType: !239, size: 128, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !3567, file: !81, line: 111, baseType: !3576, size: 192)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !81, line: 66, size: 192, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3576, file: !81, line: 67, baseType: !239, size: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3576, file: !81, line: 68, baseType: !1401, size: 32, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3567, file: !81, line: 112, baseType: !3581, size: 448)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !81, line: 92, size: 448, elements: !3582)
!3582 = !{!3583, !3584, !3585}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3581, file: !81, line: 93, baseType: !93, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3581, file: !81, line: 94, baseType: !3570, size: 320, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3581, file: !81, line: 95, baseType: !3586, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3563, file: !81, line: 114, baseType: !276, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !3517, file: !81, line: 123, baseType: !3562, size: 64, offset: 2176)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !3517, file: !81, line: 124, baseType: !3562, size: 64, offset: 2240)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !277, file: !60, line: 486, baseType: !3591, size: 64, offset: 4096)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3600, !3601, !3602}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3592, file: !67, line: 643, baseType: !3281, size: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3592, file: !67, line: 644, baseType: !3284, size: 64, offset: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3592, file: !67, line: 645, baseType: !3597, size: 64, offset: 1536)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !276, !533}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3592, file: !67, line: 646, baseType: !3284, size: 64, offset: 1600)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3592, file: !67, line: 647, baseType: !3275, size: 64, offset: 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3592, file: !67, line: 648, baseType: !3275, size: 64, offset: 1728)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !277, file: !60, line: 493, baseType: !3604, size: 64, offset: 4160)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !98, line: 162, size: 1088, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3782, !3783, !3784, !3785, !3786, !3787, !3790, !3791, !3792, !3793, !3794, !3795, !3796}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3605, file: !98, line: 163, baseType: !239, size: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3605, file: !98, line: 164, baseType: !284, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3605, file: !98, line: 165, baseType: !3610, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !98, line: 105, size: 640, elements: !3613)
!3613 = !{!3614, !3732, !3743, !3748, !3752, !3759, !3763, !3767, !3774, !3778}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3612, file: !98, line: 106, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!151, !3604, !3618, !97}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3620, line: 51, size: 1344, elements: !3621)
!3620 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3621 = !{!3622, !3623, !3625, !3626, !3716, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3619, file: !3620, line: 52, baseType: !284, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3619, file: !3620, line: 53, baseType: !3624, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3620, line: 28, baseType: !206)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3619, file: !3620, line: 54, baseType: !284, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3619, file: !3620, line: 55, baseType: !3627, size: 192, offset: 192)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3628, line: 17, size: 192, elements: !3629)
!3628 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3629 = !{!3630, !3632, !3715}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3627, file: !3628, line: 18, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3627, file: !3628, line: 19, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3635)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3628, line: 110, size: 1152, elements: !3636)
!3636 = !{!3637, !3641, !3645, !3651, !3657, !3661, !3665, !3670, !3674, !3675, !3679, !3683, !3687, !3698, !3699, !3700, !3701, !3711}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3635, file: !3628, line: 111, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!3631, !3631}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3635, file: !3628, line: 112, baseType: !3642, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3631}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3635, file: !3628, line: 113, baseType: !3646, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!533, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3635, file: !3628, line: 114, baseType: !3652, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!2069, !3649, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3635, file: !3628, line: 116, baseType: !3658, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!533, !3649, !284}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3635, file: !3628, line: 118, baseType: !3662, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!151, !3649, !284, !7, !190, !368}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3635, file: !3628, line: 123, baseType: !3666, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!151, !3649, !284, !3669, !368}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3635, file: !3628, line: 126, baseType: !3671, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!284, !3649}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3635, file: !3628, line: 127, baseType: !3671, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3635, file: !3628, line: 128, baseType: !3676, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3631, !3649}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3635, file: !3628, line: 130, baseType: !3680, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!3631, !3649, !3631}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3635, file: !3628, line: 133, baseType: !3684, size: 64, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!3631, !3649, !284}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3635, file: !3628, line: 135, baseType: !3688, size: 64, offset: 768)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!151, !3649, !284, !284, !7, !7, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3628, line: 43, size: 640, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3692, file: !3628, line: 44, baseType: !3631, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3692, file: !3628, line: 45, baseType: !7, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3692, file: !3628, line: 46, baseType: !3697, size: 512, offset: 128)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !1287)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3635, file: !3628, line: 140, baseType: !3680, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3635, file: !3628, line: 143, baseType: !3676, size: 64, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3635, file: !3628, line: 145, baseType: !3638, size: 64, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3635, file: !3628, line: 146, baseType: !3702, size: 64, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!151, !3649, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3628, line: 29, size: 128, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3706, file: !3628, line: 30, baseType: !7, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3706, file: !3628, line: 31, baseType: !7, size: 32, offset: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3706, file: !3628, line: 32, baseType: !3649, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3635, file: !3628, line: 148, baseType: !3712, size: 64, offset: 1088)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!151, !3649, !276}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3627, file: !3628, line: 20, baseType: !276, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3619, file: !3620, line: 57, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3620, line: 31, size: 704, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3718, file: !3620, line: 32, baseType: !321, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3718, file: !3620, line: 33, baseType: !151, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3718, file: !3620, line: 34, baseType: !190, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3718, file: !3620, line: 35, baseType: !3717, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3718, file: !3620, line: 43, baseType: !390, size: 448, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3619, file: !3620, line: 58, baseType: !3717, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3619, file: !3620, line: 59, baseType: !3618, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3619, file: !3620, line: 60, baseType: !3618, size: 64, offset: 576)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3619, file: !3620, line: 61, baseType: !3618, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3619, file: !3620, line: 63, baseType: !280, size: 512, offset: 704)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3619, file: !3620, line: 65, baseType: !371, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3619, file: !3620, line: 66, baseType: !190, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3612, file: !98, line: 108, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!151, !3604, !3736, !97}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !98, line: 63, size: 640, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3737, file: !98, line: 64, baseType: !3631, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3737, file: !98, line: 65, baseType: !151, size: 32, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3737, file: !98, line: 66, baseType: !3742, size: 512, offset: 96)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 512, elements: !203)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3612, file: !98, line: 110, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!151, !3604, !7, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !189, line: 164, baseType: !371)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3612, file: !98, line: 111, baseType: !3749, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3604, !7}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3612, file: !98, line: 112, baseType: !3753, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!151, !3604, !3618, !3756, !7, !3758, !2564}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3612, file: !98, line: 117, baseType: !3760, size: 64, offset: 320)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!151, !3604, !7, !7, !190}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3612, file: !98, line: 119, baseType: !3764, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3604, !7, !7}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3612, file: !98, line: 121, baseType: !3768, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!151, !3604, !3771, !533}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3773, line: 11, flags: DIFlagFwdDecl)
!3773 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3612, file: !98, line: 122, baseType: !3775, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3604, !3771}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3612, file: !98, line: 123, baseType: !3779, size: 64, offset: 576)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!151, !3604, !3736, !3758, !2564}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3605, file: !98, line: 166, baseType: !190, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3605, file: !98, line: 167, baseType: !7, size: 32, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3605, file: !98, line: 168, baseType: !7, size: 32, offset: 352)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3605, file: !98, line: 171, baseType: !3631, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3605, file: !98, line: 172, baseType: !97, size: 32, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3605, file: !98, line: 173, baseType: !3788, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !98, line: 134, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3605, file: !98, line: 175, baseType: !3604, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3605, file: !98, line: 182, baseType: !3747, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3605, file: !98, line: 183, baseType: !7, size: 32, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3605, file: !98, line: 184, baseType: !7, size: 32, offset: 736)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3605, file: !98, line: 185, baseType: !783, size: 128, offset: 768)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3605, file: !98, line: 186, baseType: !1130, size: 192, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3605, file: !98, line: 187, baseType: !3797, offset: 1088)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2273)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !277, file: !60, line: 499, baseType: !239, size: 128, offset: 4224)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !277, file: !60, line: 502, baseType: !3800, size: 64, offset: 4352)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !277, file: !60, line: 504, baseType: !3804, size: 64, offset: 4416)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !277, file: !60, line: 505, baseType: !464, size: 64, offset: 4480)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !277, file: !60, line: 510, baseType: !464, size: 64, offset: 4544)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !277, file: !60, line: 511, baseType: !3808, size: 64, offset: 4608)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !277, file: !60, line: 513, baseType: !3812, size: 64, offset: 4672)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3813, file: !60, line: 293, baseType: !7, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3813, file: !60, line: 294, baseType: !371, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !277, file: !60, line: 515, baseType: !239, size: 128, offset: 4736)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !277, file: !60, line: 526, baseType: !3819, offset: 4864)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3820, line: 5, elements: !237)
!3820 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !277, file: !60, line: 528, baseType: !3618, size: 64, offset: 4864)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !277, file: !60, line: 529, baseType: !3631, size: 64, offset: 4928)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !277, file: !60, line: 534, baseType: !556, size: 32, offset: 4992)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !277, file: !60, line: 535, baseType: !206, size: 32, offset: 5024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !277, file: !60, line: 537, baseType: !223, offset: 5056)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !277, file: !60, line: 538, baseType: !239, size: 128, offset: 5056)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !277, file: !60, line: 540, baseType: !3828, size: 64, offset: 5184)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3830, line: 54, size: 960, elements: !3831)
!3830 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837, !3838, !3842, !3846, !3847, !3848, !3849, !3853, !3857, !3858}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3829, file: !3830, line: 55, baseType: !284, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3829, file: !3830, line: 56, baseType: !674, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3829, file: !3830, line: 58, baseType: !375, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3829, file: !3830, line: 59, baseType: !375, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3829, file: !3830, line: 60, baseType: !288, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3829, file: !3830, line: 62, baseType: !3266, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3829, file: !3830, line: 63, baseType: !3839, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!321, !276, !3273}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3829, file: !3830, line: 65, baseType: !3843, size: 64, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3828}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3829, file: !3830, line: 66, baseType: !3275, size: 64, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3829, file: !3830, line: 68, baseType: !3284, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3829, file: !3830, line: 70, baseType: !3070, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3829, file: !3830, line: 71, baseType: !3850, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!2069, !276}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3829, file: !3830, line: 73, baseType: !3854, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !276, !3102, !3103}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3829, file: !3830, line: 75, baseType: !3279, size: 64, offset: 832)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3829, file: !3830, line: 77, baseType: !3396, size: 64, offset: 896)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !277, file: !60, line: 541, baseType: !375, size: 64, offset: 5248)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !277, file: !60, line: 543, baseType: !3275, size: 64, offset: 5312)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !277, file: !60, line: 544, baseType: !3862, size: 64, offset: 5376)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !277, file: !60, line: 545, baseType: !3865, size: 64, offset: 5440)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !277, file: !60, line: 547, baseType: !533, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !277, file: !60, line: 548, baseType: !533, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !277, file: !60, line: 549, baseType: !533, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !277, file: !60, line: 550, baseType: !533, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !273, file: !133, line: 426, baseType: !276, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !273, file: !133, line: 427, baseType: !151, size: 32, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !273, file: !133, line: 428, baseType: !284, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !273, file: !133, line: 429, baseType: !1309, size: 8, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !273, file: !133, line: 433, baseType: !1309, size: 8, offset: 264)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !273, file: !133, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !273, file: !133, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !273, file: !133, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !273, file: !133, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !273, file: !133, line: 442, baseType: !7, size: 32, offset: 288)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !273, file: !133, line: 444, baseType: !151, size: 32, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !273, file: !133, line: 446, baseType: !1130, size: 192, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !273, file: !133, line: 448, baseType: !3884, size: 128, offset: 576)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !133, line: 417, size: 128, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3884, file: !133, line: 418, baseType: !3887, size: 128)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !268)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !273, file: !133, line: 449, baseType: !196, size: 64, offset: 704)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !273, file: !133, line: 450, baseType: !272, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !273, file: !133, line: 452, baseType: !151, size: 32, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !273, file: !133, line: 459, baseType: !151, size: 32, offset: 864)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !273, file: !133, line: 460, baseType: !151, size: 32, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !273, file: !133, line: 462, baseType: !7, size: 32, offset: 928)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !197, file: !133, line: 647, baseType: !3895, size: 640, offset: 640)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !133, line: 67, size: 640, elements: !3896)
!3896 = !{!3897, !3909, !3917, !3925, !3926, !3927, !3930, !3932, !3933, !3934}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3895, file: !133, line: 68, baseType: !3898, size: 72)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !112, line: 407, size: 72, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3906, !3907, !3908}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3898, file: !112, line: 408, baseType: !1310, size: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3898, file: !112, line: 409, baseType: !1310, size: 8, offset: 8)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3898, file: !112, line: 411, baseType: !1310, size: 8, offset: 16)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3898, file: !112, line: 412, baseType: !1310, size: 8, offset: 24)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3898, file: !112, line: 413, baseType: !3905, size: 16, offset: 32)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2787, line: 29, baseType: !897)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3898, file: !112, line: 414, baseType: !1310, size: 8, offset: 48)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3898, file: !112, line: 418, baseType: !1310, size: 8, offset: 56)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3898, file: !112, line: 419, baseType: !1310, size: 8, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3895, file: !133, line: 69, baseType: !3910, size: 48, offset: 72)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !112, line: 689, size: 48, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3910, file: !112, line: 690, baseType: !1310, size: 8)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3910, file: !112, line: 691, baseType: !1310, size: 8, offset: 8)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3910, file: !112, line: 693, baseType: !1310, size: 8, offset: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3910, file: !112, line: 694, baseType: !1310, size: 8, offset: 24)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3910, file: !112, line: 695, baseType: !3905, size: 16, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3895, file: !133, line: 70, baseType: !3918, size: 64, offset: 120)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !112, line: 677, size: 64, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3918, file: !112, line: 678, baseType: !1310, size: 8)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3918, file: !112, line: 679, baseType: !1310, size: 8, offset: 8)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3918, file: !112, line: 680, baseType: !3905, size: 16, offset: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3918, file: !112, line: 681, baseType: !3924, size: 32, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2787, line: 31, baseType: !208)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3895, file: !133, line: 71, baseType: !239, size: 128, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3895, file: !133, line: 72, baseType: !190, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3895, file: !133, line: 73, baseType: !3928, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !133, line: 48, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3895, file: !133, line: 75, baseType: !3931, size: 64, offset: 448)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3895, file: !133, line: 76, baseType: !151, size: 32, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3895, file: !133, line: 77, baseType: !151, size: 32, offset: 544)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3895, file: !133, line: 78, baseType: !151, size: 32, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !197, file: !133, line: 649, baseType: !277, size: 5568, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !197, file: !133, line: 651, baseType: !3937, size: 144, offset: 6848)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !112, line: 289, size: 144, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3937, file: !112, line: 290, baseType: !1310, size: 8)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3937, file: !112, line: 291, baseType: !1310, size: 8, offset: 8)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3937, file: !112, line: 293, baseType: !3905, size: 16, offset: 16)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3937, file: !112, line: 294, baseType: !1310, size: 8, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3937, file: !112, line: 295, baseType: !1310, size: 8, offset: 40)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3937, file: !112, line: 296, baseType: !1310, size: 8, offset: 48)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3937, file: !112, line: 297, baseType: !1310, size: 8, offset: 56)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3937, file: !112, line: 298, baseType: !3905, size: 16, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3937, file: !112, line: 299, baseType: !3905, size: 16, offset: 80)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3937, file: !112, line: 300, baseType: !3905, size: 16, offset: 96)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3937, file: !112, line: 301, baseType: !1310, size: 8, offset: 112)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3937, file: !112, line: 302, baseType: !1310, size: 8, offset: 120)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3937, file: !112, line: 303, baseType: !1310, size: 8, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3937, file: !112, line: 304, baseType: !1310, size: 8, offset: 136)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !197, file: !133, line: 652, baseType: !3954, size: 64, offset: 7040)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !133, line: 396, size: 384, elements: !3956)
!3956 = !{!3957, !3965, !3973, !3985, !3998, !4007}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3955, file: !133, line: 397, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !112, line: 844, size: 40, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3959, file: !112, line: 845, baseType: !1310, size: 8)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3959, file: !112, line: 846, baseType: !1310, size: 8, offset: 8)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3959, file: !112, line: 848, baseType: !3905, size: 16, offset: 16)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3959, file: !112, line: 849, baseType: !1310, size: 8, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3955, file: !133, line: 400, baseType: !3966, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !112, line: 895, size: 56, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3967, file: !112, line: 896, baseType: !1310, size: 8)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3967, file: !112, line: 897, baseType: !1310, size: 8, offset: 8)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3967, file: !112, line: 898, baseType: !1310, size: 8, offset: 16)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3967, file: !112, line: 899, baseType: !3924, size: 32, offset: 24)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3955, file: !133, line: 401, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !112, line: 917, size: 80, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3975, file: !112, line: 918, baseType: !1310, size: 8)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3975, file: !112, line: 919, baseType: !1310, size: 8, offset: 8)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3975, file: !112, line: 920, baseType: !1310, size: 8, offset: 16)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3975, file: !112, line: 921, baseType: !1310, size: 8, offset: 24)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3975, file: !112, line: 923, baseType: !3905, size: 16, offset: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3975, file: !112, line: 928, baseType: !1310, size: 8, offset: 48)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3975, file: !112, line: 929, baseType: !1310, size: 8, offset: 56)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3975, file: !112, line: 930, baseType: !3905, size: 16, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3955, file: !133, line: 402, baseType: !3986, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !112, line: 955, size: 128, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3987, file: !112, line: 956, baseType: !1310, size: 8)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3987, file: !112, line: 957, baseType: !1310, size: 8, offset: 8)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3987, file: !112, line: 958, baseType: !1310, size: 8, offset: 16)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3987, file: !112, line: 959, baseType: !1310, size: 8, offset: 24)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3987, file: !112, line: 960, baseType: !3924, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3987, file: !112, line: 963, baseType: !3905, size: 16, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3987, file: !112, line: 967, baseType: !3905, size: 16, offset: 80)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3987, file: !112, line: 968, baseType: !3997, size: 32, offset: 96)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3924, size: 32, elements: !1328)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3955, file: !133, line: 403, baseType: !3999, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !112, line: 940, size: 160, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4000, file: !112, line: 941, baseType: !1310, size: 8)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4000, file: !112, line: 942, baseType: !1310, size: 8, offset: 8)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4000, file: !112, line: 943, baseType: !1310, size: 8, offset: 16)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4000, file: !112, line: 944, baseType: !1310, size: 8, offset: 24)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4000, file: !112, line: 945, baseType: !2588, size: 128, offset: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3955, file: !133, line: 404, baseType: !4008, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !112, line: 1080, size: 24, elements: !4010)
!4010 = !{!4011, !4012, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4009, file: !112, line: 1081, baseType: !1310, size: 8)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4009, file: !112, line: 1082, baseType: !1310, size: 8, offset: 8)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4009, file: !112, line: 1083, baseType: !1310, size: 8, offset: 16)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !197, file: !133, line: 653, baseType: !4015, size: 64, offset: 7104)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !133, line: 374, size: 5440, elements: !4017)
!4017 = !{!4018, !4029, !4030, !4043, !4085, !4094, !4095}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4016, file: !133, line: 375, baseType: !4019, size: 72)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !112, line: 349, size: 72, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4019, file: !112, line: 350, baseType: !1310, size: 8)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4019, file: !112, line: 351, baseType: !1310, size: 8, offset: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4019, file: !112, line: 353, baseType: !3905, size: 16, offset: 16)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4019, file: !112, line: 354, baseType: !1310, size: 8, offset: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4019, file: !112, line: 355, baseType: !1310, size: 8, offset: 40)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4019, file: !112, line: 356, baseType: !1310, size: 8, offset: 48)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4019, file: !112, line: 357, baseType: !1310, size: 8, offset: 56)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4019, file: !112, line: 358, baseType: !1310, size: 8, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4016, file: !133, line: 377, baseType: !321, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4016, file: !133, line: 381, baseType: !4031, size: 1024, offset: 192)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4032, size: 1024, elements: !203)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !112, line: 783, size: 64, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4033, file: !112, line: 784, baseType: !1310, size: 8)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4033, file: !112, line: 785, baseType: !1310, size: 8, offset: 8)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4033, file: !112, line: 787, baseType: !1310, size: 8, offset: 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4033, file: !112, line: 788, baseType: !1310, size: 8, offset: 24)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4033, file: !112, line: 789, baseType: !1310, size: 8, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4033, file: !112, line: 790, baseType: !1310, size: 8, offset: 40)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4033, file: !112, line: 791, baseType: !1310, size: 8, offset: 48)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4033, file: !112, line: 792, baseType: !1310, size: 8, offset: 56)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4016, file: !133, line: 385, baseType: !4044, size: 2048, offset: 1216)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4045, size: 2048, elements: !2172)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !133, line: 232, size: 6272, elements: !4047)
!4047 = !{!4048, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4046, file: !133, line: 235, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !133, line: 82, size: 320, elements: !4051)
!4051 = !{!4052, !4064, !4065, !4066, !4068}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4050, file: !133, line: 83, baseType: !4053, size: 72)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !112, line: 389, size: 72, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4053, file: !112, line: 390, baseType: !1310, size: 8)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4053, file: !112, line: 391, baseType: !1310, size: 8, offset: 8)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4053, file: !112, line: 393, baseType: !1310, size: 8, offset: 16)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4053, file: !112, line: 394, baseType: !1310, size: 8, offset: 24)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4053, file: !112, line: 395, baseType: !1310, size: 8, offset: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4053, file: !112, line: 396, baseType: !1310, size: 8, offset: 40)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4053, file: !112, line: 397, baseType: !1310, size: 8, offset: 48)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4053, file: !112, line: 398, baseType: !1310, size: 8, offset: 56)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4053, file: !112, line: 399, baseType: !1310, size: 8, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4050, file: !133, line: 85, baseType: !151, size: 32, offset: 96)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4050, file: !133, line: 86, baseType: !3931, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4050, file: !133, line: 91, baseType: !4067, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4050, file: !133, line: 93, baseType: !321, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4046, file: !133, line: 237, baseType: !4049, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4046, file: !133, line: 239, baseType: !7, size: 32, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4046, file: !133, line: 243, baseType: !4032, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4046, file: !133, line: 245, baseType: !151, size: 32, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4046, file: !133, line: 247, baseType: !132, size: 32, offset: 288)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4046, file: !133, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4046, file: !133, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4046, file: !133, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4046, file: !133, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4046, file: !133, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4046, file: !133, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4046, file: !133, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4046, file: !133, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4046, file: !133, line: 257, baseType: !277, size: 5568, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4046, file: !133, line: 258, baseType: !276, size: 64, offset: 5952)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4046, file: !133, line: 259, baseType: !245, size: 256, offset: 6016)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4016, file: !133, line: 389, baseType: !4086, size: 2048, offset: 3264)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 2048, elements: !2172)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !133, line: 322, size: 64, elements: !4089)
!4089 = !{!4090, !4091, !4092}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4088, file: !133, line: 323, baseType: !7, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4088, file: !133, line: 324, baseType: !3244, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4088, file: !133, line: 328, baseType: !4093, offset: 64)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4050, elements: !2273)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4016, file: !133, line: 391, baseType: !3931, size: 64, offset: 5312)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4016, file: !133, line: 392, baseType: !151, size: 32, offset: 5376)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !197, file: !133, line: 655, baseType: !4015, size: 64, offset: 7168)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !197, file: !133, line: 656, baseType: !4098, size: 1024, offset: 7232)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4067, size: 1024, elements: !203)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !197, file: !133, line: 657, baseType: !4098, size: 1024, offset: 8256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !197, file: !133, line: 659, baseType: !4101, size: 64, offset: 9280)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !197, file: !133, line: 661, baseType: !363, size: 16, offset: 9344)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !197, file: !133, line: 662, baseType: !1309, size: 8, offset: 9360)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !197, file: !133, line: 663, baseType: !1309, size: 8, offset: 9368)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !197, file: !133, line: 664, baseType: !1309, size: 8, offset: 9376)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !197, file: !133, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !197, file: !133, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !197, file: !133, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !197, file: !133, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !197, file: !133, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !197, file: !133, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !197, file: !133, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !197, file: !133, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !197, file: !133, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !197, file: !133, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !197, file: !133, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !197, file: !133, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !197, file: !133, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !197, file: !133, line: 679, baseType: !151, size: 32, offset: 9408)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !197, file: !133, line: 682, baseType: !321, size: 64, offset: 9472)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !197, file: !133, line: 683, baseType: !321, size: 64, offset: 9536)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !197, file: !133, line: 684, baseType: !321, size: 64, offset: 9600)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !197, file: !133, line: 686, baseType: !239, size: 128, offset: 9664)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !197, file: !133, line: 688, baseType: !151, size: 32, offset: 9792)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !197, file: !133, line: 690, baseType: !206, size: 32, offset: 9824)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !197, file: !133, line: 691, baseType: !791, size: 32, offset: 9856)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !197, file: !133, line: 693, baseType: !371, size: 64, offset: 9920)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !197, file: !133, line: 696, baseType: !371, size: 64, offset: 9984)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !197, file: !133, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !197, file: !133, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !197, file: !133, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !197, file: !133, line: 702, baseType: !4133, size: 64, offset: 10112)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !133, line: 28, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !197, file: !133, line: 703, baseType: !151, size: 32, offset: 10176)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !197, file: !133, line: 704, baseType: !139, size: 32, offset: 10208)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !197, file: !133, line: 705, baseType: !4138, size: 64, offset: 10240)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !133, line: 502, size: 64, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4138, file: !133, line: 506, baseType: !7, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4138, file: !133, line: 512, baseType: !151, size: 32, offset: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !197, file: !133, line: 706, baseType: !4143, size: 128, offset: 10304)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !133, line: 522, size: 128, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4143, file: !133, line: 529, baseType: !7, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4143, file: !133, line: 535, baseType: !7, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4143, file: !133, line: 545, baseType: !7, size: 32, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4143, file: !133, line: 551, baseType: !151, size: 32, offset: 96)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !197, file: !133, line: 707, baseType: !4143, size: 128, offset: 10432)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !197, file: !133, line: 708, baseType: !7, size: 32, offset: 10560)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !197, file: !133, line: 710, baseType: !896, size: 16, offset: 10592)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !197, file: !133, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !192, file: !193, line: 95, baseType: !277, size: 5568, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "port_owner", scope: !192, file: !193, line: 96, baseType: !4155, size: 64, offset: 5632)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dev_state", file: !133, line: 470, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !192, file: !193, line: 97, baseType: !191, size: 64, offset: 5696)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !192, file: !193, line: 98, baseType: !3562, size: 64, offset: 5760)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "connect_type", scope: !192, file: !193, line: 99, baseType: !144, size: 32, offset: 5824)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !192, file: !193, line: 100, baseType: !4161, size: 32, offset: 5856)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_port_location_t", file: !4162, line: 204, baseType: !206)
!4162 = !DIFile(filename: "drivers/usb/core/usb.h", directory: "/home/lizy2001/genbc/linux")
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "status_lock", scope: !192, file: !193, line: 101, baseType: !1130, size: 192, offset: 5888)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "over_current_count", scope: !192, file: !193, line: 102, baseType: !206, size: 32, offset: 6080)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !192, file: !193, line: 103, baseType: !1309, size: 8, offset: 6112)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !192, file: !193, line: 104, baseType: !206, size: 32, offset: 6144)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "is_superspeed", scope: !192, file: !193, line: 105, baseType: !7, size: 1, offset: 6176, flags: DIFlagBitField, extraData: i64 6176)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_permit", scope: !192, file: !193, line: 106, baseType: !7, size: 1, offset: 6177, flags: DIFlagBitField, extraData: i64 6176)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_permit", scope: !192, file: !193, line: 107, baseType: !7, size: 1, offset: 6178, flags: DIFlagBitField, extraData: i64 6176)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !202)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !182, line: 81, size: 4672, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4184, !4185, !4240, !4241, !4242, !4363, !4366, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4387, !4388, !4389, !4417, !4418, !4420, !4421, !4422, !4423, !4427, !4428, !4431}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4174, file: !182, line: 86, baseType: !273, size: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4174, file: !182, line: 87, baseType: !3244, size: 32, offset: 960)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4174, file: !182, line: 89, baseType: !284, size: 64, offset: 1024)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4174, file: !182, line: 90, baseType: !151, size: 32, offset: 1088)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4174, file: !182, line: 94, baseType: !4181, size: 192, offset: 1120)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 192, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 24)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !4174, file: !182, line: 96, baseType: !3444, size: 320, offset: 1344)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !4174, file: !182, line: 97, baseType: !4186, size: 64, offset: 1664)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !133, line: 1561, size: 1472, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4232}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4187, file: !133, line: 1563, baseType: !3244, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4187, file: !133, line: 1564, baseType: !151, size: 32, offset: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4187, file: !133, line: 1565, baseType: !190, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4187, file: !133, line: 1566, baseType: !791, size: 32, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4187, file: !133, line: 1567, baseType: !791, size: 32, offset: 160)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4187, file: !133, line: 1570, baseType: !239, size: 128, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4187, file: !133, line: 1572, baseType: !239, size: 128, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4187, file: !133, line: 1573, baseType: !4197, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !133, line: 1360, size: 320, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4198, file: !133, line: 1361, baseType: !239, size: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4198, file: !133, line: 1362, baseType: !1438, size: 128, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4198, file: !133, line: 1363, baseType: !223, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4198, file: !133, line: 1364, baseType: !791, size: 32, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4198, file: !133, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4187, file: !133, line: 1574, baseType: !196, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4187, file: !133, line: 1575, baseType: !4067, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4187, file: !133, line: 1576, baseType: !7, size: 32, offset: 640)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4187, file: !133, line: 1577, baseType: !7, size: 32, offset: 672)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4187, file: !133, line: 1578, baseType: !151, size: 32, offset: 704)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4187, file: !133, line: 1579, baseType: !7, size: 32, offset: 736)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4187, file: !133, line: 1580, baseType: !190, size: 64, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4187, file: !133, line: 1581, baseType: !957, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4187, file: !133, line: 1582, baseType: !4214, size: 64, offset: 896)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !133, line: 1582, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4187, file: !133, line: 1583, baseType: !151, size: 32, offset: 960)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4187, file: !133, line: 1584, baseType: !151, size: 32, offset: 992)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4187, file: !133, line: 1585, baseType: !206, size: 32, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4187, file: !133, line: 1586, baseType: !206, size: 32, offset: 1056)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4187, file: !133, line: 1587, baseType: !3931, size: 64, offset: 1088)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4187, file: !133, line: 1588, baseType: !957, size: 64, offset: 1152)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4187, file: !133, line: 1589, baseType: !151, size: 32, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4187, file: !133, line: 1590, baseType: !151, size: 32, offset: 1248)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4187, file: !133, line: 1591, baseType: !151, size: 32, offset: 1280)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4187, file: !133, line: 1593, baseType: !151, size: 32, offset: 1312)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4187, file: !133, line: 1594, baseType: !190, size: 64, offset: 1344)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4187, file: !133, line: 1595, baseType: !4228, size: 64, offset: 1408)
!4228 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !133, line: 1376, baseType: !4229)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4186}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4187, file: !133, line: 1596, baseType: !4233, offset: 1472)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4234, elements: !2273)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !133, line: 1351, size: 128, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4234, file: !133, line: 1352, baseType: !7, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4234, file: !133, line: 1353, baseType: !7, size: 32, offset: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4234, file: !133, line: 1354, baseType: !7, size: 32, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4234, file: !133, line: 1355, baseType: !151, size: 32, offset: 96)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !4174, file: !182, line: 99, baseType: !245, size: 256, offset: 1728)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !4174, file: !182, line: 101, baseType: !245, size: 256, offset: 1984)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4174, file: !182, line: 106, baseType: !4243, size: 64, offset: 2240)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !182, line: 249, size: 2880, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250, !4255, !4256, !4260, !4261, !4265, !4266, !4270, !4271, !4272, !4276, !4280, !4281, !4285, !4289, !4290, !4294, !4298, !4299, !4300, !4304, !4308, !4312, !4316, !4317, !4321, !4325, !4330, !4334, !4338, !4339, !4340, !4341, !4342, !4343, !4347, !4348, !4349, !4353, !4357, !4358, !4359}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4245, file: !182, line: 250, baseType: !284, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4245, file: !182, line: 251, baseType: !284, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4245, file: !182, line: 252, baseType: !368, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4245, file: !182, line: 255, baseType: !4251, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!4254, !4173}
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !170, line: 17, baseType: !169)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4245, file: !182, line: 257, baseType: !151, size: 32, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4245, file: !182, line: 271, baseType: !4257, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!151, !4173}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4245, file: !182, line: 272, baseType: !4257, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4245, file: !182, line: 278, baseType: !4262, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!151, !4173, !533}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4245, file: !182, line: 281, baseType: !4262, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4245, file: !182, line: 284, baseType: !4267, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4173}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4245, file: !182, line: 287, baseType: !4267, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4245, file: !182, line: 290, baseType: !4257, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4245, file: !182, line: 293, baseType: !4273, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!151, !4173, !4186, !188}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4245, file: !182, line: 295, baseType: !4277, size: 64, offset: 832)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!151, !4173, !4186, !151}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4245, file: !182, line: 307, baseType: !4273, size: 64, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4245, file: !182, line: 309, baseType: !4282, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4173, !4186}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4245, file: !182, line: 312, baseType: !4286, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4173, !4067}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4245, file: !182, line: 317, baseType: !4286, size: 64, offset: 1088)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4245, file: !182, line: 321, baseType: !4291, size: 64, offset: 1152)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!151, !4173, !321}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4245, file: !182, line: 322, baseType: !4295, size: 64, offset: 1216)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!151, !4173, !896, !896, !896, !321, !896}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4245, file: !182, line: 325, baseType: !4257, size: 64, offset: 1280)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4245, file: !182, line: 326, baseType: !4257, size: 64, offset: 1344)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4245, file: !182, line: 327, baseType: !4301, size: 64, offset: 1408)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!151, !4173, !7}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4245, file: !182, line: 328, baseType: !4305, size: 64, offset: 1472)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!371, !4173}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4245, file: !182, line: 331, baseType: !4309, size: 64, offset: 1536)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !4173, !151}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4245, file: !182, line: 333, baseType: !4313, size: 64, offset: 1600)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!151, !4173, !151}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4245, file: !182, line: 336, baseType: !4286, size: 64, offset: 1664)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4245, file: !182, line: 341, baseType: !4318, size: 64, offset: 1728)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!151, !4173, !196}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4245, file: !182, line: 343, baseType: !4322, size: 64, offset: 1792)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !4173, !196}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4245, file: !182, line: 345, baseType: !4326, size: 64, offset: 1856)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!151, !4173, !196, !4329, !7, !7, !188}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4245, file: !182, line: 351, baseType: !4331, size: 64, offset: 1920)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!151, !4173, !196, !4329, !7, !188}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4245, file: !182, line: 366, baseType: !4335, size: 64, offset: 1984)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!151, !4173, !196, !4067}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4245, file: !182, line: 369, baseType: !4335, size: 64, offset: 2048)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4245, file: !182, line: 376, baseType: !4318, size: 64, offset: 2112)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4245, file: !182, line: 384, baseType: !4322, size: 64, offset: 2176)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4245, file: !182, line: 386, baseType: !4318, size: 64, offset: 2240)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4245, file: !182, line: 388, baseType: !4318, size: 64, offset: 2304)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4245, file: !182, line: 392, baseType: !4344, size: 64, offset: 2368)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!151, !4173, !196, !215, !188}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4245, file: !182, line: 394, baseType: !4318, size: 64, offset: 2432)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4245, file: !182, line: 398, baseType: !4318, size: 64, offset: 2496)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4245, file: !182, line: 399, baseType: !4350, size: 64, offset: 2560)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!151, !4173, !196, !151}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4245, file: !182, line: 402, baseType: !4354, size: 64, offset: 2624)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!151, !4173, !196, !175}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4245, file: !182, line: 407, baseType: !4354, size: 64, offset: 2688)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4245, file: !182, line: 409, baseType: !4313, size: 64, offset: 2752)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4245, file: !182, line: 411, baseType: !4360, size: 64, offset: 2816)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!151, !4173, !151, !533}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !4174, file: !182, line: 112, baseType: !4364, size: 64, offset: 2304)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !182, line: 112, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !4174, file: !182, line: 113, baseType: !4367, size: 64, offset: 2368)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !182, line: 113, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4174, file: !182, line: 119, baseType: !371, size: 64, offset: 2432)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !4174, file: !182, line: 151, baseType: !181, size: 32, offset: 2496)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !4174, file: !182, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !4174, file: !182, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4174, file: !182, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4174, file: !182, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !4174, file: !182, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !4174, file: !182, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !4174, file: !182, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !4174, file: !182, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !4174, file: !182, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !4174, file: !182, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !4174, file: !182, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !4174, file: !182, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4174, file: !182, line: 176, baseType: !7, size: 32, offset: 2560)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4174, file: !182, line: 177, baseType: !190, size: 64, offset: 2624)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !4174, file: !182, line: 178, baseType: !4386, size: 64, offset: 2688)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !189, line: 158, baseType: !2067)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !4174, file: !182, line: 179, baseType: !4386, size: 64, offset: 2752)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !4174, file: !182, line: 180, baseType: !7, size: 32, offset: 2816)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !4174, file: !182, line: 182, baseType: !4390, size: 576, offset: 2880)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !182, line: 67, size: 576, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4416}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4390, file: !182, line: 68, baseType: !533, size: 8)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4390, file: !182, line: 69, baseType: !223, offset: 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4390, file: !182, line: 70, baseType: !239, size: 128, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4390, file: !182, line: 71, baseType: !4396, size: 320, offset: 192)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4397, line: 609, size: 320, elements: !4398)
!4397 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4398 = !{!4399, !4401, !4402, !4403, !4404, !4415}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4396, file: !4397, line: 611, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4396, file: !4397, line: 612, baseType: !371, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4396, file: !4397, line: 613, baseType: !791, size: 32, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4396, file: !4397, line: 614, baseType: !533, size: 8, offset: 160)
!4404 = !DIDerivedType(tag: DW_TAG_member, scope: !4396, file: !4397, line: 615, baseType: !4405, size: 64, offset: 192)
!4405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4396, file: !4397, line: 615, size: 64, elements: !4406)
!4406 = !{!4407, !4411}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4405, file: !4397, line: 616, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !371}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4405, file: !4397, line: 617, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4400}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4396, file: !4397, line: 619, baseType: !371, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4390, file: !182, line: 72, baseType: !4067, size: 64, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !4174, file: !182, line: 183, baseType: !4390, size: 576, offset: 3456)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !4174, file: !182, line: 196, baseType: !4419, size: 64, offset: 4032)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !4174, file: !182, line: 197, baseType: !4419, size: 64, offset: 4096)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !4174, file: !182, line: 198, baseType: !4173, size: 64, offset: 4160)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !4174, file: !182, line: 199, baseType: !4173, size: 64, offset: 4224)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4174, file: !182, line: 203, baseType: !4424, size: 256, offset: 4288)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 256, elements: !1112)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !182, line: 203, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4174, file: !182, line: 205, baseType: !151, size: 32, offset: 4544)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !4174, file: !182, line: 220, baseType: !4429, size: 64, offset: 4608)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !182, line: 220, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !4174, file: !182, line: 231, baseType: !2272, align: 64, offset: 4672)
!4432 = !{!4433, !4435, !0, !4528, !4530, !4533, !4535, !4540, !4554, !4556, !4558, !4560, !4562, !4565, !4567, !4570, !4572}
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(name: "usb_port_device_type", scope: !2, file: !3, line: 309, type: !3261, isLocal: false, isDefinition: true)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(name: "__key", scope: !4437, file: !3, line: 563, type: !689, isLocal: true, isDefinition: true)
!4437 = distinct !DISubprogram(name: "usb_hub_create_port_device", scope: !3, file: !3, line: 531, type: !4438, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!151, !4440, !151}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hub", file: !193, line: 19, size: 4096, elements: !4442)
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4450, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4515, !4522, !4523, !4524, !4525, !4526}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "intfdev", scope: !4441, file: !193, line: 20, baseType: !276, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "hdev", scope: !4441, file: !193, line: 21, baseType: !196, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4441, file: !193, line: 22, baseType: !3244, size: 32, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !4441, file: !193, line: 23, baseType: !4186, size: 64, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4441, file: !193, line: 26, baseType: !4448, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 64, elements: !1287)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4441, file: !193, line: 30, baseType: !4451, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4441, file: !193, line: 27, size: 64, elements: !4453)
!4453 = !{!4454, !4460}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4452, file: !193, line: 28, baseType: !4455, size: 32)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hub_status", file: !4456, line: 224, size: 32, elements: !4457)
!4456 = !DIFile(filename: "./include/uapi/linux/usb/ch11.h", directory: "/home/lizy2001/genbc/linux")
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wHubStatus", scope: !4455, file: !4456, line: 225, baseType: !3905, size: 16)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "wHubChange", scope: !4455, file: !4456, line: 226, baseType: !3905, size: 16, offset: 16)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4452, file: !193, line: 29, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_port_status", file: !4456, line: 115, size: 64, elements: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "wPortStatus", scope: !4461, file: !4456, line: 116, baseType: !3905, size: 16)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "wPortChange", scope: !4461, file: !4456, line: 117, baseType: !3905, size: 16, offset: 16)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dwExtPortStatus", scope: !4461, file: !4456, line: 118, baseType: !3924, size: 32, offset: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "status_mutex", scope: !4441, file: !193, line: 31, baseType: !1130, size: 192, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4441, file: !193, line: 33, baseType: !151, size: 32, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "nerrors", scope: !4441, file: !193, line: 34, baseType: !151, size: 32, offset: 608)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "event_bits", scope: !4441, file: !193, line: 36, baseType: !1327, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "change_bits", scope: !4441, file: !193, line: 37, baseType: !1327, size: 64, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "removed_bits", scope: !4441, file: !193, line: 39, baseType: !1327, size: 64, offset: 768)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_bits", scope: !4441, file: !193, line: 41, baseType: !1327, size: 64, offset: 832)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "power_bits", scope: !4441, file: !193, line: 43, baseType: !1327, size: 64, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "child_usage_bits", scope: !4441, file: !193, line: 44, baseType: !1327, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "warm_reset_bits", scope: !4441, file: !193, line: 46, baseType: !1327, size: 64, offset: 1024)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4441, file: !193, line: 52, baseType: !4477, size: 64, offset: 1088)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hub_descriptor", file: !4456, line: 262, size: 120, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "bDescLength", scope: !4478, file: !4456, line: 263, baseType: !1310, size: 8)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4478, file: !4456, line: 264, baseType: !1310, size: 8, offset: 8)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "bNbrPorts", scope: !4478, file: !4456, line: 265, baseType: !1310, size: 8, offset: 16)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "wHubCharacteristics", scope: !4478, file: !4456, line: 266, baseType: !3905, size: 16, offset: 24)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "bPwrOn2PwrGood", scope: !4478, file: !4456, line: 267, baseType: !1310, size: 8, offset: 40)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "bHubContrCurrent", scope: !4478, file: !4456, line: 268, baseType: !1310, size: 8, offset: 48)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4478, file: !4456, line: 283, baseType: !4487, size: 64, offset: 56)
!4487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4478, file: !4456, line: 271, size: 64, elements: !4488)
!4488 = !{!4489, !4495}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "hs", scope: !4487, file: !4456, line: 276, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4487, file: !4456, line: 272, size: 64, elements: !4491)
!4491 = !{!4492, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRemovable", scope: !4490, file: !4456, line: 274, baseType: !4493, size: 32)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 32, elements: !1112)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "PortPwrCtrlMask", scope: !4490, file: !4456, line: 275, baseType: !4493, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4487, file: !4456, line: 282, baseType: !4496, size: 40)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4487, file: !4456, line: 278, size: 40, elements: !4497)
!4497 = !{!4498, !4499, !4500}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "bHubHdrDecLat", scope: !4496, file: !4456, line: 279, baseType: !1310, size: 8)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "wHubDelay", scope: !4496, file: !4456, line: 280, baseType: !3905, size: 16, offset: 8)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRemovable", scope: !4496, file: !4456, line: 281, baseType: !3905, size: 16, offset: 24)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4441, file: !193, line: 53, baseType: !216, size: 576, offset: 1152)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "mA_per_port", scope: !4441, file: !193, line: 55, baseType: !7, size: 32, offset: 1728)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_enabled_descendants", scope: !4441, file: !193, line: 57, baseType: !7, size: 32, offset: 1760)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "limited_power", scope: !4441, file: !193, line: 60, baseType: !7, size: 1, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "quiescing", scope: !4441, file: !193, line: 61, baseType: !7, size: 1, offset: 1793, flags: DIFlagBitField, extraData: i64 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !4441, file: !193, line: 62, baseType: !7, size: 1, offset: 1794, flags: DIFlagBitField, extraData: i64 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "in_reset", scope: !4441, file: !193, line: 63, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_disable_autosuspend", scope: !4441, file: !193, line: 64, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_check_port_auto_suspend", scope: !4441, file: !193, line: 66, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "has_indicators", scope: !4441, file: !193, line: 68, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "indicator", scope: !4441, file: !193, line: 69, baseType: !4512, size: 248, offset: 1800)
!4512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 248, elements: !4513)
!4513 = !{!4514}
!4514 = !DISubrange(count: 31)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !4441, file: !193, line: 70, baseType: !4516, size: 704, offset: 2048)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !246, line: 115, size: 704, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4521}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4516, file: !246, line: 116, baseType: !245, size: 256)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4516, file: !246, line: 117, baseType: !3444, size: 320, offset: 256)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4516, file: !246, line: 120, baseType: !2674, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4516, file: !246, line: 121, baseType: !151, size: 32, offset: 640)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "init_work", scope: !4441, file: !193, line: 71, baseType: !4516, size: 704, offset: 2752)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4441, file: !193, line: 72, baseType: !245, size: 256, offset: 3456)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "irq_urb_lock", scope: !4441, file: !193, line: 73, baseType: !223, offset: 3712)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "irq_urb_retry", scope: !4441, file: !193, line: 74, baseType: !3444, size: 320, offset: 3712)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4441, file: !193, line: 75, baseType: !4527, size: 64, offset: 4032)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4528 = !DIGlobalVariableExpression(var: !4529, expr: !DIExpression())
!4529 = distinct !DIGlobalVariable(name: "usb_port_block_power_off", scope: !2, file: !3, line: 15, type: !151, isLocal: true, isDefinition: true)
!4530 = !DIGlobalVariableExpression(var: !4531, expr: !DIExpression())
!4531 = distinct !DIGlobalVariable(name: "port_dev_usb3_group", scope: !2, file: !3, line: 176, type: !4532, isLocal: true, isDefinition: true)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 192, elements: !322)
!4533 = !DIGlobalVariableExpression(var: !4534, expr: !DIExpression())
!4534 = distinct !DIGlobalVariable(name: "port_dev_attr_grp", scope: !2, file: !3, line: 158, type: !378, isLocal: true, isDefinition: true)
!4535 = !DIGlobalVariableExpression(var: !4536, expr: !DIExpression())
!4536 = distinct !DIGlobalVariable(name: "port_dev_attrs", scope: !2, file: !3, line: 150, type: !4537, isLocal: true, isDefinition: true)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 320, elements: !4538)
!4538 = !{!4539}
!4539 = !DISubrange(count: 5)
!4540 = !DIGlobalVariableExpression(var: !4541, expr: !DIExpression())
!4541 = distinct !DIGlobalVariable(name: "dev_attr_connect_type", scope: !2, file: !3, line: 51, type: !4542, isLocal: true, isDefinition: true)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !60, line: 99, size: 256, elements: !4543)
!4543 = !{!4544, !4545, !4550}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4542, file: !60, line: 100, baseType: !358, size: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4542, file: !60, line: 101, baseType: !4546, size: 64, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!352, !276, !4549, !321}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4542, file: !60, line: 103, baseType: !4551, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!352, !276, !4549, !284, !368}
!4554 = !DIGlobalVariableExpression(var: !4555, expr: !DIExpression())
!4555 = distinct !DIGlobalVariable(name: "dev_attr_location", scope: !2, file: !3, line: 26, type: !4542, isLocal: true, isDefinition: true)
!4556 = !DIGlobalVariableExpression(var: !4557, expr: !DIExpression())
!4557 = distinct !DIGlobalVariable(name: "dev_attr_quirks", scope: !2, file: !3, line: 82, type: !4542, isLocal: true, isDefinition: true)
!4558 = !DIGlobalVariableExpression(var: !4559, expr: !DIExpression())
!4559 = distinct !DIGlobalVariable(name: "dev_attr_over_current_count", scope: !2, file: !3, line: 60, type: !4542, isLocal: true, isDefinition: true)
!4560 = !DIGlobalVariableExpression(var: !4561, expr: !DIExpression())
!4561 = distinct !DIGlobalVariable(name: "port_dev_usb3_attr_grp", scope: !2, file: !3, line: 172, type: !378, isLocal: true, isDefinition: true)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(name: "port_dev_usb3_attrs", scope: !2, file: !3, line: 167, type: !4564, isLocal: true, isDefinition: true)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 128, elements: !268)
!4565 = !DIGlobalVariableExpression(var: !4566, expr: !DIExpression())
!4566 = distinct !DIGlobalVariable(name: "dev_attr_usb3_lpm_permit", scope: !2, file: !3, line: 148, type: !4542, isLocal: true, isDefinition: true)
!4567 = !DIGlobalVariableExpression(var: !4568, expr: !DIExpression())
!4568 = distinct !DIGlobalVariable(name: "port_dev_group", scope: !2, file: !3, line: 162, type: !4569, isLocal: true, isDefinition: true)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 128, elements: !268)
!4570 = !DIGlobalVariableExpression(var: !4571, expr: !DIExpression())
!4571 = distinct !DIGlobalVariable(name: "usb_port_driver", scope: !2, file: !3, line: 315, type: !3325, isLocal: true, isDefinition: true)
!4572 = !DIGlobalVariableExpression(var: !4573, expr: !DIExpression())
!4573 = distinct !DIGlobalVariable(name: "__print_once", scope: !4574, file: !3, line: 400, type: !533, isLocal: true, isDefinition: true)
!4574 = distinct !DISubprogram(name: "link_peers_report", scope: !3, file: !3, line: 390, type: !4575, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !191, !191}
!4577 = !{i32 7, !"Dwarf Version", i32 4}
!4578 = !{i32 2, !"Debug Info Version", i32 3}
!4579 = !{i32 1, !"wchar_size", i32 2}
!4580 = !{i32 1, !"Code Model", i32 2}
!4581 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4582 = distinct !DISubprogram(name: "usb_port_device_release", scope: !3, file: !3, line: 182, type: !3276, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4583 = !DILocalVariable(name: "dev", arg: 1, scope: !4582, file: !3, line: 182, type: !276)
!4584 = !DILocation(line: 182, column: 52, scope: !4582)
!4585 = !DILocalVariable(name: "port_dev", scope: !4582, file: !3, line: 184, type: !191)
!4586 = !DILocation(line: 184, column: 19, scope: !4582)
!4587 = !DILocalVariable(name: "__mptr", scope: !4588, file: !3, line: 184, type: !190)
!4588 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 184, column: 30)
!4589 = !DILocation(line: 184, column: 30, scope: !4588)
!4590 = !DILocation(line: 184, column: 30, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 184, column: 30)
!4592 = !DILocation(line: 186, column: 8, scope: !4582)
!4593 = !DILocation(line: 186, column: 18, scope: !4582)
!4594 = !DILocation(line: 186, column: 2, scope: !4582)
!4595 = !DILocation(line: 187, column: 8, scope: !4582)
!4596 = !DILocation(line: 187, column: 2, scope: !4582)
!4597 = !DILocation(line: 188, column: 1, scope: !4582)
!4598 = !DILocalVariable(name: "hub", arg: 1, scope: !4437, file: !3, line: 531, type: !4440)
!4599 = !DILocation(line: 531, column: 48, scope: !4437)
!4600 = !DILocalVariable(name: "port1", arg: 2, scope: !4437, file: !3, line: 531, type: !151)
!4601 = !DILocation(line: 531, column: 57, scope: !4437)
!4602 = !DILocalVariable(name: "port_dev", scope: !4437, file: !3, line: 533, type: !191)
!4603 = !DILocation(line: 533, column: 19, scope: !4437)
!4604 = !DILocalVariable(name: "hdev", scope: !4437, file: !3, line: 534, type: !196)
!4605 = !DILocation(line: 534, column: 21, scope: !4437)
!4606 = !DILocation(line: 534, column: 28, scope: !4437)
!4607 = !DILocation(line: 534, column: 33, scope: !4437)
!4608 = !DILocalVariable(name: "retval", scope: !4437, file: !3, line: 535, type: !151)
!4609 = !DILocation(line: 535, column: 6, scope: !4437)
!4610 = !DILocation(line: 537, column: 13, scope: !4437)
!4611 = !DILocation(line: 537, column: 11, scope: !4437)
!4612 = !DILocation(line: 538, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 538, column: 6)
!4614 = !DILocation(line: 538, column: 6, scope: !4437)
!4615 = !DILocation(line: 539, column: 3, scope: !4613)
!4616 = !DILocation(line: 541, column: 18, scope: !4437)
!4617 = !DILocation(line: 541, column: 2, scope: !4437)
!4618 = !DILocation(line: 541, column: 12, scope: !4437)
!4619 = !DILocation(line: 541, column: 16, scope: !4437)
!4620 = !DILocation(line: 542, column: 7, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 542, column: 6)
!4622 = !DILocation(line: 542, column: 17, scope: !4621)
!4623 = !DILocation(line: 542, column: 6, scope: !4437)
!4624 = !DILocation(line: 543, column: 9, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 542, column: 22)
!4626 = !DILocation(line: 543, column: 3, scope: !4625)
!4627 = !DILocation(line: 544, column: 3, scope: !4625)
!4628 = !DILocation(line: 547, column: 26, scope: !4437)
!4629 = !DILocation(line: 547, column: 2, scope: !4437)
!4630 = !DILocation(line: 547, column: 7, scope: !4437)
!4631 = !DILocation(line: 547, column: 13, scope: !4437)
!4632 = !DILocation(line: 547, column: 19, scope: !4437)
!4633 = !DILocation(line: 547, column: 24, scope: !4437)
!4634 = !DILocation(line: 548, column: 22, scope: !4437)
!4635 = !DILocation(line: 548, column: 2, scope: !4437)
!4636 = !DILocation(line: 548, column: 12, scope: !4437)
!4637 = !DILocation(line: 548, column: 20, scope: !4437)
!4638 = !DILocation(line: 549, column: 10, scope: !4437)
!4639 = !DILocation(line: 549, column: 17, scope: !4437)
!4640 = !DILocation(line: 549, column: 22, scope: !4437)
!4641 = !DILocation(line: 549, column: 2, scope: !4437)
!4642 = !DILocation(line: 550, column: 25, scope: !4437)
!4643 = !DILocation(line: 550, column: 30, scope: !4437)
!4644 = !DILocation(line: 550, column: 2, scope: !4437)
!4645 = !DILocation(line: 550, column: 12, scope: !4437)
!4646 = !DILocation(line: 550, column: 16, scope: !4437)
!4647 = !DILocation(line: 550, column: 23, scope: !4437)
!4648 = !DILocation(line: 551, column: 24, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 551, column: 6)
!4650 = !DILocation(line: 551, column: 6, scope: !4649)
!4651 = !DILocation(line: 551, column: 6, scope: !4437)
!4652 = !DILocation(line: 552, column: 3, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 551, column: 31)
!4654 = !DILocation(line: 552, column: 13, scope: !4653)
!4655 = !DILocation(line: 552, column: 32, scope: !4653)
!4656 = !DILocation(line: 553, column: 3, scope: !4653)
!4657 = !DILocation(line: 553, column: 13, scope: !4653)
!4658 = !DILocation(line: 553, column: 32, scope: !4653)
!4659 = !DILocation(line: 554, column: 3, scope: !4653)
!4660 = !DILocation(line: 554, column: 13, scope: !4653)
!4661 = !DILocation(line: 554, column: 17, scope: !4653)
!4662 = !DILocation(line: 554, column: 24, scope: !4653)
!4663 = !DILocation(line: 555, column: 2, scope: !4653)
!4664 = !DILocation(line: 556, column: 3, scope: !4649)
!4665 = !DILocation(line: 556, column: 13, scope: !4649)
!4666 = !DILocation(line: 556, column: 17, scope: !4649)
!4667 = !DILocation(line: 556, column: 24, scope: !4649)
!4668 = !DILocation(line: 557, column: 2, scope: !4437)
!4669 = !DILocation(line: 557, column: 12, scope: !4437)
!4670 = !DILocation(line: 557, column: 16, scope: !4437)
!4671 = !DILocation(line: 557, column: 21, scope: !4437)
!4672 = !DILocation(line: 558, column: 2, scope: !4437)
!4673 = !DILocation(line: 558, column: 12, scope: !4437)
!4674 = !DILocation(line: 558, column: 16, scope: !4437)
!4675 = !DILocation(line: 558, column: 23, scope: !4437)
!4676 = !DILocation(line: 559, column: 24, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 559, column: 6)
!4678 = !DILocation(line: 559, column: 29, scope: !4677)
!4679 = !DILocation(line: 559, column: 6, scope: !4677)
!4680 = !DILocation(line: 559, column: 6, scope: !4437)
!4681 = !DILocation(line: 560, column: 3, scope: !4677)
!4682 = !DILocation(line: 560, column: 13, scope: !4677)
!4683 = !DILocation(line: 560, column: 27, scope: !4677)
!4684 = !DILocation(line: 561, column: 16, scope: !4437)
!4685 = !DILocation(line: 561, column: 26, scope: !4437)
!4686 = !DILocation(line: 561, column: 54, scope: !4437)
!4687 = !DILocation(line: 561, column: 59, scope: !4437)
!4688 = !DILocation(line: 561, column: 65, scope: !4437)
!4689 = !DILocation(line: 561, column: 44, scope: !4437)
!4690 = !DILocation(line: 562, column: 4, scope: !4437)
!4691 = !DILocation(line: 561, column: 2, scope: !4437)
!4692 = !DILocation(line: 563, column: 2, scope: !4437)
!4693 = !DILocation(line: 563, column: 2, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 563, column: 2)
!4695 = !DILocation(line: 564, column: 28, scope: !4437)
!4696 = !DILocation(line: 564, column: 38, scope: !4437)
!4697 = !DILocation(line: 564, column: 11, scope: !4437)
!4698 = !DILocation(line: 564, column: 9, scope: !4437)
!4699 = !DILocation(line: 565, column: 6, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 565, column: 6)
!4701 = !DILocation(line: 565, column: 6, scope: !4437)
!4702 = !DILocation(line: 566, column: 15, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 565, column: 14)
!4704 = !DILocation(line: 566, column: 25, scope: !4703)
!4705 = !DILocation(line: 566, column: 3, scope: !4703)
!4706 = !DILocation(line: 567, column: 10, scope: !4703)
!4707 = !DILocation(line: 567, column: 3, scope: !4703)
!4708 = !DILocation(line: 571, column: 35, scope: !4437)
!4709 = !DILocation(line: 571, column: 45, scope: !4437)
!4710 = !DILocation(line: 571, column: 50, scope: !4437)
!4711 = !DILocation(line: 571, column: 60, scope: !4437)
!4712 = !DILocation(line: 571, column: 11, scope: !4437)
!4713 = !DILocation(line: 571, column: 9, scope: !4437)
!4714 = !DILocation(line: 573, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 573, column: 6)
!4716 = !DILocation(line: 573, column: 13, scope: !4715)
!4717 = !DILocation(line: 573, column: 6, scope: !4437)
!4718 = !DILocation(line: 574, column: 22, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 573, column: 18)
!4720 = !DILocation(line: 574, column: 32, scope: !4719)
!4721 = !DILocation(line: 574, column: 3, scope: !4719)
!4722 = !DILocation(line: 575, column: 10, scope: !4719)
!4723 = !DILocation(line: 575, column: 3, scope: !4719)
!4724 = !DILocation(line: 578, column: 21, scope: !4437)
!4725 = !DILocation(line: 578, column: 26, scope: !4437)
!4726 = !DILocation(line: 578, column: 2, scope: !4437)
!4727 = !DILocation(line: 585, column: 25, scope: !4437)
!4728 = !DILocation(line: 585, column: 35, scope: !4437)
!4729 = !DILocation(line: 585, column: 2, scope: !4437)
!4730 = !DILocation(line: 586, column: 27, scope: !4437)
!4731 = !DILocation(line: 586, column: 37, scope: !4437)
!4732 = !DILocation(line: 586, column: 2, scope: !4437)
!4733 = !DILocation(line: 587, column: 21, scope: !4437)
!4734 = !DILocation(line: 587, column: 31, scope: !4437)
!4735 = !DILocation(line: 587, column: 2, scope: !4437)
!4736 = !DILocation(line: 588, column: 31, scope: !4437)
!4737 = !DILocation(line: 588, column: 41, scope: !4437)
!4738 = !DILocation(line: 588, column: 2, scope: !4437)
!4739 = !DILocation(line: 594, column: 36, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 594, column: 6)
!4741 = !DILocation(line: 594, column: 7, scope: !4740)
!4742 = !DILocation(line: 594, column: 6, scope: !4437)
!4743 = !DILocation(line: 595, column: 3, scope: !4740)
!4744 = !DILocation(line: 598, column: 36, scope: !4437)
!4745 = !DILocation(line: 598, column: 46, scope: !4437)
!4746 = !DILocation(line: 598, column: 11, scope: !4437)
!4747 = !DILocation(line: 598, column: 9, scope: !4437)
!4748 = !DILocation(line: 600, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 600, column: 6)
!4750 = !DILocation(line: 600, column: 13, scope: !4749)
!4751 = !DILocation(line: 600, column: 6, scope: !4437)
!4752 = !DILocation(line: 601, column: 3, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 600, column: 18)
!4754 = !DILocation(line: 602, column: 3, scope: !4753)
!4755 = !DILocation(line: 606, column: 37, scope: !4437)
!4756 = !DILocation(line: 606, column: 47, scope: !4437)
!4757 = !DILocation(line: 606, column: 11, scope: !4437)
!4758 = !DILocation(line: 606, column: 9, scope: !4437)
!4759 = !DILocation(line: 607, column: 6, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 607, column: 6)
!4761 = !DILocation(line: 607, column: 13, scope: !4760)
!4762 = !DILocation(line: 607, column: 6, scope: !4437)
!4763 = !DILocation(line: 608, column: 9, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 607, column: 19)
!4765 = !DILocation(line: 608, column: 19, scope: !4764)
!4766 = !DILocation(line: 608, column: 3, scope: !4764)
!4767 = !DILocation(line: 609, column: 3, scope: !4764)
!4768 = !DILocation(line: 609, column: 13, scope: !4764)
!4769 = !DILocation(line: 609, column: 17, scope: !4764)
!4770 = !DILocation(line: 610, column: 2, scope: !4764)
!4771 = !DILocation(line: 611, column: 2, scope: !4437)
!4772 = !DILocation(line: 612, column: 1, scope: !4437)
!4773 = distinct !DISubprogram(name: "kzalloc", scope: !163, file: !163, line: 662, type: !4774, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!190, !368, !188}
!4776 = !DILocalVariable(name: "s", arg: 1, scope: !4777, file: !163, line: 445, type: !972)
!4777 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !163, file: !163, line: 445, type: !4778, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!190, !972, !188, !368}
!4780 = !DILocation(line: 445, column: 72, scope: !4777, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 552, column: 10, scope: !4782, inlinedAt: !4785)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !163, line: 540, column: 34)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !163, line: 540, column: 6)
!4784 = distinct !DISubprogram(name: "kmalloc", scope: !163, file: !163, line: 538, type: !4774, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4785 = distinct !DILocation(line: 664, column: 9, scope: !4773)
!4786 = !DILocalVariable(name: "flags", arg: 2, scope: !4777, file: !163, line: 446, type: !188)
!4787 = !DILocation(line: 446, column: 9, scope: !4777, inlinedAt: !4781)
!4788 = !DILocalVariable(name: "size", arg: 3, scope: !4777, file: !163, line: 446, type: !368)
!4789 = !DILocation(line: 446, column: 23, scope: !4777, inlinedAt: !4781)
!4790 = !DILocalVariable(name: "ret", scope: !4777, file: !163, line: 448, type: !190)
!4791 = !DILocation(line: 448, column: 8, scope: !4777, inlinedAt: !4781)
!4792 = !DILocalVariable(name: "flags", arg: 1, scope: !4793, file: !163, line: 318, type: !188)
!4793 = distinct !DISubprogram(name: "kmalloc_type", scope: !163, file: !163, line: 318, type: !4794, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!162, !188}
!4796 = !DILocation(line: 318, column: 67, scope: !4793, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 553, column: 20, scope: !4782, inlinedAt: !4785)
!4798 = !DILocalVariable(name: "size", arg: 1, scope: !4799, file: !163, line: 346, type: !368)
!4799 = distinct !DISubprogram(name: "kmalloc_index", scope: !163, file: !163, line: 346, type: !4800, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!7, !368}
!4802 = !DILocation(line: 346, column: 58, scope: !4799, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 547, column: 11, scope: !4782, inlinedAt: !4785)
!4804 = !DILocalVariable(name: "size", arg: 1, scope: !4805, file: !163, line: 472, type: !368)
!4805 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !163, file: !163, line: 472, type: !4806, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!190, !368, !188, !7}
!4808 = !DILocation(line: 472, column: 28, scope: !4805, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 481, column: 9, scope: !4810, inlinedAt: !4811)
!4810 = distinct !DISubprogram(name: "kmalloc_large", scope: !163, file: !163, line: 478, type: !4774, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!4811 = distinct !DILocation(line: 545, column: 11, scope: !4812, inlinedAt: !4785)
!4812 = distinct !DILexicalBlock(scope: !4782, file: !163, line: 544, column: 7)
!4813 = !DILocalVariable(name: "flags", arg: 2, scope: !4805, file: !163, line: 472, type: !188)
!4814 = !DILocation(line: 472, column: 40, scope: !4805, inlinedAt: !4809)
!4815 = !DILocalVariable(name: "order", arg: 3, scope: !4805, file: !163, line: 472, type: !7)
!4816 = !DILocation(line: 472, column: 60, scope: !4805, inlinedAt: !4809)
!4817 = !DILocalVariable(name: "size", arg: 1, scope: !4810, file: !163, line: 478, type: !368)
!4818 = !DILocation(line: 478, column: 51, scope: !4810, inlinedAt: !4811)
!4819 = !DILocalVariable(name: "flags", arg: 2, scope: !4810, file: !163, line: 478, type: !188)
!4820 = !DILocation(line: 478, column: 63, scope: !4810, inlinedAt: !4811)
!4821 = !DILocalVariable(name: "order", scope: !4810, file: !163, line: 480, type: !7)
!4822 = !DILocation(line: 480, column: 15, scope: !4810, inlinedAt: !4811)
!4823 = !DILocalVariable(name: "size", arg: 1, scope: !4784, file: !163, line: 538, type: !368)
!4824 = !DILocation(line: 538, column: 45, scope: !4784, inlinedAt: !4785)
!4825 = !DILocalVariable(name: "flags", arg: 2, scope: !4784, file: !163, line: 538, type: !188)
!4826 = !DILocation(line: 538, column: 57, scope: !4784, inlinedAt: !4785)
!4827 = !DILocalVariable(name: "index", scope: !4782, file: !163, line: 542, type: !7)
!4828 = !DILocation(line: 542, column: 16, scope: !4782, inlinedAt: !4785)
!4829 = !DILocalVariable(name: "size", arg: 1, scope: !4773, file: !163, line: 662, type: !368)
!4830 = !DILocation(line: 662, column: 36, scope: !4773)
!4831 = !DILocalVariable(name: "flags", arg: 2, scope: !4773, file: !163, line: 662, type: !188)
!4832 = !DILocation(line: 662, column: 48, scope: !4773)
!4833 = !DILocation(line: 664, column: 17, scope: !4773)
!4834 = !DILocation(line: 664, column: 23, scope: !4773)
!4835 = !DILocation(line: 664, column: 29, scope: !4773)
!4836 = !DILocation(line: 540, column: 27, scope: !4783, inlinedAt: !4785)
!4837 = !DILocation(line: 540, column: 6, scope: !4783, inlinedAt: !4785)
!4838 = !DILocation(line: 540, column: 6, scope: !4784, inlinedAt: !4785)
!4839 = !DILocation(line: 544, column: 7, scope: !4812, inlinedAt: !4785)
!4840 = !DILocation(line: 544, column: 12, scope: !4812, inlinedAt: !4785)
!4841 = !DILocation(line: 544, column: 7, scope: !4782, inlinedAt: !4785)
!4842 = !DILocation(line: 545, column: 25, scope: !4812, inlinedAt: !4785)
!4843 = !DILocation(line: 545, column: 31, scope: !4812, inlinedAt: !4785)
!4844 = !DILocation(line: 480, column: 33, scope: !4810, inlinedAt: !4811)
!4845 = !DILocation(line: 480, column: 23, scope: !4810, inlinedAt: !4811)
!4846 = !DILocation(line: 481, column: 29, scope: !4810, inlinedAt: !4811)
!4847 = !DILocation(line: 481, column: 35, scope: !4810, inlinedAt: !4811)
!4848 = !DILocation(line: 481, column: 42, scope: !4810, inlinedAt: !4811)
!4849 = !DILocation(line: 474, column: 23, scope: !4805, inlinedAt: !4809)
!4850 = !DILocation(line: 474, column: 29, scope: !4805, inlinedAt: !4809)
!4851 = !DILocation(line: 474, column: 36, scope: !4805, inlinedAt: !4809)
!4852 = !DILocation(line: 474, column: 9, scope: !4805, inlinedAt: !4809)
!4853 = !DILocation(line: 545, column: 4, scope: !4812, inlinedAt: !4785)
!4854 = !DILocation(line: 547, column: 25, scope: !4782, inlinedAt: !4785)
!4855 = !DILocation(line: 348, column: 7, scope: !4856, inlinedAt: !4803)
!4856 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 348, column: 6)
!4857 = !DILocation(line: 348, column: 6, scope: !4799, inlinedAt: !4803)
!4858 = !DILocation(line: 349, column: 3, scope: !4856, inlinedAt: !4803)
!4859 = !DILocation(line: 351, column: 6, scope: !4860, inlinedAt: !4803)
!4860 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 351, column: 6)
!4861 = !DILocation(line: 351, column: 11, scope: !4860, inlinedAt: !4803)
!4862 = !DILocation(line: 351, column: 6, scope: !4799, inlinedAt: !4803)
!4863 = !DILocation(line: 352, column: 3, scope: !4860, inlinedAt: !4803)
!4864 = !DILocation(line: 354, column: 32, scope: !4865, inlinedAt: !4803)
!4865 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 354, column: 6)
!4866 = !DILocation(line: 354, column: 37, scope: !4865, inlinedAt: !4803)
!4867 = !DILocation(line: 354, column: 42, scope: !4865, inlinedAt: !4803)
!4868 = !DILocation(line: 354, column: 45, scope: !4865, inlinedAt: !4803)
!4869 = !DILocation(line: 354, column: 50, scope: !4865, inlinedAt: !4803)
!4870 = !DILocation(line: 354, column: 6, scope: !4799, inlinedAt: !4803)
!4871 = !DILocation(line: 355, column: 3, scope: !4865, inlinedAt: !4803)
!4872 = !DILocation(line: 356, column: 32, scope: !4873, inlinedAt: !4803)
!4873 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 356, column: 6)
!4874 = !DILocation(line: 356, column: 37, scope: !4873, inlinedAt: !4803)
!4875 = !DILocation(line: 356, column: 43, scope: !4873, inlinedAt: !4803)
!4876 = !DILocation(line: 356, column: 46, scope: !4873, inlinedAt: !4803)
!4877 = !DILocation(line: 356, column: 51, scope: !4873, inlinedAt: !4803)
!4878 = !DILocation(line: 356, column: 6, scope: !4799, inlinedAt: !4803)
!4879 = !DILocation(line: 357, column: 3, scope: !4873, inlinedAt: !4803)
!4880 = !DILocation(line: 358, column: 6, scope: !4881, inlinedAt: !4803)
!4881 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 358, column: 6)
!4882 = !DILocation(line: 358, column: 11, scope: !4881, inlinedAt: !4803)
!4883 = !DILocation(line: 358, column: 6, scope: !4799, inlinedAt: !4803)
!4884 = !DILocation(line: 358, column: 26, scope: !4881, inlinedAt: !4803)
!4885 = !DILocation(line: 359, column: 6, scope: !4886, inlinedAt: !4803)
!4886 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 359, column: 6)
!4887 = !DILocation(line: 359, column: 11, scope: !4886, inlinedAt: !4803)
!4888 = !DILocation(line: 359, column: 6, scope: !4799, inlinedAt: !4803)
!4889 = !DILocation(line: 359, column: 26, scope: !4886, inlinedAt: !4803)
!4890 = !DILocation(line: 360, column: 6, scope: !4891, inlinedAt: !4803)
!4891 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 360, column: 6)
!4892 = !DILocation(line: 360, column: 11, scope: !4891, inlinedAt: !4803)
!4893 = !DILocation(line: 360, column: 6, scope: !4799, inlinedAt: !4803)
!4894 = !DILocation(line: 360, column: 26, scope: !4891, inlinedAt: !4803)
!4895 = !DILocation(line: 361, column: 6, scope: !4896, inlinedAt: !4803)
!4896 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 361, column: 6)
!4897 = !DILocation(line: 361, column: 11, scope: !4896, inlinedAt: !4803)
!4898 = !DILocation(line: 361, column: 6, scope: !4799, inlinedAt: !4803)
!4899 = !DILocation(line: 361, column: 26, scope: !4896, inlinedAt: !4803)
!4900 = !DILocation(line: 362, column: 6, scope: !4901, inlinedAt: !4803)
!4901 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 362, column: 6)
!4902 = !DILocation(line: 362, column: 11, scope: !4901, inlinedAt: !4803)
!4903 = !DILocation(line: 362, column: 6, scope: !4799, inlinedAt: !4803)
!4904 = !DILocation(line: 362, column: 26, scope: !4901, inlinedAt: !4803)
!4905 = !DILocation(line: 363, column: 6, scope: !4906, inlinedAt: !4803)
!4906 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 363, column: 6)
!4907 = !DILocation(line: 363, column: 11, scope: !4906, inlinedAt: !4803)
!4908 = !DILocation(line: 363, column: 6, scope: !4799, inlinedAt: !4803)
!4909 = !DILocation(line: 363, column: 26, scope: !4906, inlinedAt: !4803)
!4910 = !DILocation(line: 364, column: 6, scope: !4911, inlinedAt: !4803)
!4911 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 364, column: 6)
!4912 = !DILocation(line: 364, column: 11, scope: !4911, inlinedAt: !4803)
!4913 = !DILocation(line: 364, column: 6, scope: !4799, inlinedAt: !4803)
!4914 = !DILocation(line: 364, column: 26, scope: !4911, inlinedAt: !4803)
!4915 = !DILocation(line: 365, column: 6, scope: !4916, inlinedAt: !4803)
!4916 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 365, column: 6)
!4917 = !DILocation(line: 365, column: 11, scope: !4916, inlinedAt: !4803)
!4918 = !DILocation(line: 365, column: 6, scope: !4799, inlinedAt: !4803)
!4919 = !DILocation(line: 365, column: 26, scope: !4916, inlinedAt: !4803)
!4920 = !DILocation(line: 366, column: 6, scope: !4921, inlinedAt: !4803)
!4921 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 366, column: 6)
!4922 = !DILocation(line: 366, column: 11, scope: !4921, inlinedAt: !4803)
!4923 = !DILocation(line: 366, column: 6, scope: !4799, inlinedAt: !4803)
!4924 = !DILocation(line: 366, column: 26, scope: !4921, inlinedAt: !4803)
!4925 = !DILocation(line: 367, column: 6, scope: !4926, inlinedAt: !4803)
!4926 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 367, column: 6)
!4927 = !DILocation(line: 367, column: 11, scope: !4926, inlinedAt: !4803)
!4928 = !DILocation(line: 367, column: 6, scope: !4799, inlinedAt: !4803)
!4929 = !DILocation(line: 367, column: 26, scope: !4926, inlinedAt: !4803)
!4930 = !DILocation(line: 368, column: 6, scope: !4931, inlinedAt: !4803)
!4931 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 368, column: 6)
!4932 = !DILocation(line: 368, column: 11, scope: !4931, inlinedAt: !4803)
!4933 = !DILocation(line: 368, column: 6, scope: !4799, inlinedAt: !4803)
!4934 = !DILocation(line: 368, column: 26, scope: !4931, inlinedAt: !4803)
!4935 = !DILocation(line: 369, column: 6, scope: !4936, inlinedAt: !4803)
!4936 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 369, column: 6)
!4937 = !DILocation(line: 369, column: 11, scope: !4936, inlinedAt: !4803)
!4938 = !DILocation(line: 369, column: 6, scope: !4799, inlinedAt: !4803)
!4939 = !DILocation(line: 369, column: 26, scope: !4936, inlinedAt: !4803)
!4940 = !DILocation(line: 370, column: 6, scope: !4941, inlinedAt: !4803)
!4941 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 370, column: 6)
!4942 = !DILocation(line: 370, column: 11, scope: !4941, inlinedAt: !4803)
!4943 = !DILocation(line: 370, column: 6, scope: !4799, inlinedAt: !4803)
!4944 = !DILocation(line: 370, column: 26, scope: !4941, inlinedAt: !4803)
!4945 = !DILocation(line: 371, column: 6, scope: !4946, inlinedAt: !4803)
!4946 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 371, column: 6)
!4947 = !DILocation(line: 371, column: 11, scope: !4946, inlinedAt: !4803)
!4948 = !DILocation(line: 371, column: 6, scope: !4799, inlinedAt: !4803)
!4949 = !DILocation(line: 371, column: 26, scope: !4946, inlinedAt: !4803)
!4950 = !DILocation(line: 372, column: 6, scope: !4951, inlinedAt: !4803)
!4951 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 372, column: 6)
!4952 = !DILocation(line: 372, column: 11, scope: !4951, inlinedAt: !4803)
!4953 = !DILocation(line: 372, column: 6, scope: !4799, inlinedAt: !4803)
!4954 = !DILocation(line: 372, column: 26, scope: !4951, inlinedAt: !4803)
!4955 = !DILocation(line: 373, column: 6, scope: !4956, inlinedAt: !4803)
!4956 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 373, column: 6)
!4957 = !DILocation(line: 373, column: 11, scope: !4956, inlinedAt: !4803)
!4958 = !DILocation(line: 373, column: 6, scope: !4799, inlinedAt: !4803)
!4959 = !DILocation(line: 373, column: 26, scope: !4956, inlinedAt: !4803)
!4960 = !DILocation(line: 374, column: 6, scope: !4961, inlinedAt: !4803)
!4961 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 374, column: 6)
!4962 = !DILocation(line: 374, column: 11, scope: !4961, inlinedAt: !4803)
!4963 = !DILocation(line: 374, column: 6, scope: !4799, inlinedAt: !4803)
!4964 = !DILocation(line: 374, column: 26, scope: !4961, inlinedAt: !4803)
!4965 = !DILocation(line: 375, column: 6, scope: !4966, inlinedAt: !4803)
!4966 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 375, column: 6)
!4967 = !DILocation(line: 375, column: 11, scope: !4966, inlinedAt: !4803)
!4968 = !DILocation(line: 375, column: 6, scope: !4799, inlinedAt: !4803)
!4969 = !DILocation(line: 375, column: 27, scope: !4966, inlinedAt: !4803)
!4970 = !DILocation(line: 376, column: 6, scope: !4971, inlinedAt: !4803)
!4971 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 376, column: 6)
!4972 = !DILocation(line: 376, column: 11, scope: !4971, inlinedAt: !4803)
!4973 = !DILocation(line: 376, column: 6, scope: !4799, inlinedAt: !4803)
!4974 = !DILocation(line: 376, column: 32, scope: !4971, inlinedAt: !4803)
!4975 = !DILocation(line: 377, column: 6, scope: !4976, inlinedAt: !4803)
!4976 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 377, column: 6)
!4977 = !DILocation(line: 377, column: 11, scope: !4976, inlinedAt: !4803)
!4978 = !DILocation(line: 377, column: 6, scope: !4799, inlinedAt: !4803)
!4979 = !DILocation(line: 377, column: 32, scope: !4976, inlinedAt: !4803)
!4980 = !DILocation(line: 378, column: 6, scope: !4981, inlinedAt: !4803)
!4981 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 378, column: 6)
!4982 = !DILocation(line: 378, column: 11, scope: !4981, inlinedAt: !4803)
!4983 = !DILocation(line: 378, column: 6, scope: !4799, inlinedAt: !4803)
!4984 = !DILocation(line: 378, column: 32, scope: !4981, inlinedAt: !4803)
!4985 = !DILocation(line: 379, column: 6, scope: !4986, inlinedAt: !4803)
!4986 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 379, column: 6)
!4987 = !DILocation(line: 379, column: 11, scope: !4986, inlinedAt: !4803)
!4988 = !DILocation(line: 379, column: 6, scope: !4799, inlinedAt: !4803)
!4989 = !DILocation(line: 379, column: 33, scope: !4986, inlinedAt: !4803)
!4990 = !DILocation(line: 380, column: 6, scope: !4991, inlinedAt: !4803)
!4991 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 380, column: 6)
!4992 = !DILocation(line: 380, column: 11, scope: !4991, inlinedAt: !4803)
!4993 = !DILocation(line: 380, column: 6, scope: !4799, inlinedAt: !4803)
!4994 = !DILocation(line: 380, column: 33, scope: !4991, inlinedAt: !4803)
!4995 = !DILocation(line: 381, column: 6, scope: !4996, inlinedAt: !4803)
!4996 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 381, column: 6)
!4997 = !DILocation(line: 381, column: 11, scope: !4996, inlinedAt: !4803)
!4998 = !DILocation(line: 381, column: 6, scope: !4799, inlinedAt: !4803)
!4999 = !DILocation(line: 381, column: 33, scope: !4996, inlinedAt: !4803)
!5000 = !DILocation(line: 382, column: 2, scope: !5001, inlinedAt: !4803)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !163, line: 382, column: 2)
!5002 = distinct !DILexicalBlock(scope: !4799, file: !163, line: 382, column: 2)
!5003 = !{i32 -2144639255, i32 -2144639226, i32 -2144639180, i32 -2144639122, i32 -2144639068, i32 -2144639014, i32 -2144638959, i32 -2144638928}
!5004 = !DILocation(line: 382, column: 2, scope: !5005, inlinedAt: !4803)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !163, line: 382, column: 2)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !163, line: 382, column: 2)
!5007 = !{i32 -2144638485, i32 -2144638478, i32 -2144638424, i32 -2144638393, i32 -2144638363}
!5008 = !DILocation(line: 382, column: 2, scope: !5006, inlinedAt: !4803)
!5009 = !DILocation(line: 386, column: 1, scope: !4799, inlinedAt: !4803)
!5010 = !DILocation(line: 547, column: 9, scope: !4782, inlinedAt: !4785)
!5011 = !DILocation(line: 549, column: 8, scope: !5012, inlinedAt: !4785)
!5012 = distinct !DILexicalBlock(scope: !4782, file: !163, line: 549, column: 7)
!5013 = !DILocation(line: 549, column: 7, scope: !4782, inlinedAt: !4785)
!5014 = !DILocation(line: 550, column: 4, scope: !5012, inlinedAt: !4785)
!5015 = !DILocation(line: 553, column: 33, scope: !4782, inlinedAt: !4785)
!5016 = !DILocation(line: 325, column: 6, scope: !5017, inlinedAt: !4797)
!5017 = distinct !DILexicalBlock(scope: !4793, file: !163, line: 325, column: 6)
!5018 = !DILocation(line: 325, column: 6, scope: !4793, inlinedAt: !4797)
!5019 = !DILocation(line: 326, column: 3, scope: !5017, inlinedAt: !4797)
!5020 = !DILocation(line: 332, column: 9, scope: !4793, inlinedAt: !4797)
!5021 = !DILocation(line: 332, column: 15, scope: !4793, inlinedAt: !4797)
!5022 = !DILocation(line: 332, column: 2, scope: !4793, inlinedAt: !4797)
!5023 = !DILocation(line: 336, column: 1, scope: !4793, inlinedAt: !4797)
!5024 = !DILocation(line: 553, column: 5, scope: !4782, inlinedAt: !4785)
!5025 = !DILocation(line: 553, column: 41, scope: !4782, inlinedAt: !4785)
!5026 = !DILocation(line: 554, column: 5, scope: !4782, inlinedAt: !4785)
!5027 = !DILocation(line: 554, column: 12, scope: !4782, inlinedAt: !4785)
!5028 = !DILocation(line: 448, column: 31, scope: !4777, inlinedAt: !4781)
!5029 = !DILocation(line: 448, column: 34, scope: !4777, inlinedAt: !4781)
!5030 = !DILocation(line: 448, column: 14, scope: !4777, inlinedAt: !4781)
!5031 = !DILocation(line: 450, column: 22, scope: !4777, inlinedAt: !4781)
!5032 = !DILocation(line: 450, column: 25, scope: !4777, inlinedAt: !4781)
!5033 = !DILocation(line: 450, column: 30, scope: !4777, inlinedAt: !4781)
!5034 = !DILocation(line: 450, column: 36, scope: !4777, inlinedAt: !4781)
!5035 = !DILocation(line: 450, column: 8, scope: !4777, inlinedAt: !4781)
!5036 = !DILocation(line: 450, column: 6, scope: !4777, inlinedAt: !4781)
!5037 = !DILocation(line: 451, column: 9, scope: !4777, inlinedAt: !4781)
!5038 = !DILocation(line: 552, column: 3, scope: !4782, inlinedAt: !4785)
!5039 = !DILocation(line: 557, column: 19, scope: !4784, inlinedAt: !4785)
!5040 = !DILocation(line: 557, column: 25, scope: !4784, inlinedAt: !4785)
!5041 = !DILocation(line: 557, column: 9, scope: !4784, inlinedAt: !4785)
!5042 = !DILocation(line: 557, column: 2, scope: !4784, inlinedAt: !4785)
!5043 = !DILocation(line: 558, column: 1, scope: !4784, inlinedAt: !4785)
!5044 = !DILocation(line: 664, column: 2, scope: !4773)
!5045 = distinct !DISubprogram(name: "set_bit", scope: !5046, file: !5046, line: 26, type: !5047, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5046 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !356, !5049}
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!5051 = !DILocalVariable(name: "nr", arg: 1, scope: !5052, file: !5053, line: 52, type: !356)
!5052 = distinct !DISubprogram(name: "arch_set_bit", scope: !5053, file: !5053, line: 52, type: !5047, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5053 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5054 = !DILocation(line: 52, column: 19, scope: !5052, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 29, column: 2, scope: !5045)
!5056 = !DILocalVariable(name: "addr", arg: 2, scope: !5052, file: !5053, line: 52, type: !5049)
!5057 = !DILocation(line: 52, column: 47, scope: !5052, inlinedAt: !5055)
!5058 = !DILocalVariable(name: "v", arg: 1, scope: !5059, file: !5060, line: 84, type: !5063)
!5059 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5060, file: !5060, line: 84, type: !5061, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5060 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5061 = !DISubroutineType(types: !5062)
!5062 = !{null, !5063, !368}
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5065)
!5065 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5066 = !DILocation(line: 84, column: 74, scope: !5059, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 28, column: 2, scope: !5045)
!5068 = !DILocalVariable(name: "size", arg: 2, scope: !5059, file: !5060, line: 84, type: !368)
!5069 = !DILocation(line: 84, column: 84, scope: !5059, inlinedAt: !5067)
!5070 = !DILocalVariable(name: "nr", arg: 1, scope: !5045, file: !5046, line: 26, type: !356)
!5071 = !DILocation(line: 26, column: 33, scope: !5045)
!5072 = !DILocalVariable(name: "addr", arg: 2, scope: !5045, file: !5046, line: 26, type: !5049)
!5073 = !DILocation(line: 26, column: 61, scope: !5045)
!5074 = !DILocation(line: 28, column: 26, scope: !5045)
!5075 = !DILocation(line: 28, column: 33, scope: !5045)
!5076 = !DILocation(line: 28, column: 31, scope: !5045)
!5077 = !DILocation(line: 86, column: 20, scope: !5059, inlinedAt: !5067)
!5078 = !DILocation(line: 86, column: 23, scope: !5059, inlinedAt: !5067)
!5079 = !DILocation(line: 86, column: 2, scope: !5059, inlinedAt: !5067)
!5080 = !DILocation(line: 87, column: 2, scope: !5059, inlinedAt: !5067)
!5081 = !DILocation(line: 29, column: 15, scope: !5045)
!5082 = !DILocation(line: 29, column: 19, scope: !5045)
!5083 = !DILocation(line: 54, column: 27, scope: !5084, inlinedAt: !5055)
!5084 = distinct !DILexicalBlock(scope: !5052, file: !5053, line: 54, column: 6)
!5085 = !DILocation(line: 54, column: 6, scope: !5084, inlinedAt: !5055)
!5086 = !DILocation(line: 54, column: 6, scope: !5052, inlinedAt: !5055)
!5087 = !DILocation(line: 56, column: 6, scope: !5088, inlinedAt: !5055)
!5088 = distinct !DILexicalBlock(scope: !5084, file: !5053, line: 54, column: 32)
!5089 = !DILocation(line: 57, column: 12, scope: !5088, inlinedAt: !5055)
!5090 = !DILocation(line: 55, column: 3, scope: !5088, inlinedAt: !5055)
!5091 = !{i32 -2147136164}
!5092 = !DILocation(line: 59, column: 2, scope: !5088, inlinedAt: !5055)
!5093 = !DILocation(line: 61, column: 8, scope: !5094, inlinedAt: !5055)
!5094 = distinct !DILexicalBlock(scope: !5084, file: !5053, line: 59, column: 9)
!5095 = !DILocation(line: 61, column: 32, scope: !5094, inlinedAt: !5055)
!5096 = !DILocation(line: 60, column: 3, scope: !5094, inlinedAt: !5055)
!5097 = !{i32 -2147136032}
!5098 = !DILocation(line: 30, column: 1, scope: !5045)
!5099 = distinct !DISubprogram(name: "hub_is_superspeed", scope: !193, file: !193, line: 135, type: !5100, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!151, !196}
!5102 = !DILocalVariable(name: "hdev", arg: 1, scope: !5099, file: !193, line: 135, type: !196)
!5103 = !DILocation(line: 135, column: 56, scope: !5099)
!5104 = !DILocation(line: 137, column: 9, scope: !5099)
!5105 = !DILocation(line: 137, column: 15, scope: !5099)
!5106 = !DILocation(line: 137, column: 26, scope: !5099)
!5107 = !DILocation(line: 137, column: 42, scope: !5099)
!5108 = !DILocation(line: 137, column: 2, scope: !5099)
!5109 = distinct !DISubprogram(name: "dev_name", scope: !60, file: !60, line: 609, type: !5110, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!284, !3655}
!5112 = !DILocalVariable(name: "dev", arg: 1, scope: !5109, file: !60, line: 609, type: !3655)
!5113 = !DILocation(line: 609, column: 57, scope: !5109)
!5114 = !DILocation(line: 612, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5109, file: !60, line: 612, column: 6)
!5116 = !DILocation(line: 612, column: 11, scope: !5115)
!5117 = !DILocation(line: 612, column: 6, scope: !5109)
!5118 = !DILocation(line: 613, column: 10, scope: !5115)
!5119 = !DILocation(line: 613, column: 15, scope: !5115)
!5120 = !DILocation(line: 613, column: 3, scope: !5115)
!5121 = !DILocation(line: 615, column: 23, scope: !5109)
!5122 = !DILocation(line: 615, column: 28, scope: !5109)
!5123 = !DILocation(line: 615, column: 9, scope: !5109)
!5124 = !DILocation(line: 615, column: 2, scope: !5109)
!5125 = !DILocation(line: 616, column: 1, scope: !5109)
!5126 = distinct !DISubprogram(name: "find_and_link_peer", scope: !3, file: !3, line: 478, type: !5127, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !4440, !151}
!5129 = !DILocalVariable(name: "hub", arg: 1, scope: !5126, file: !3, line: 478, type: !4440)
!5130 = !DILocation(line: 478, column: 48, scope: !5126)
!5131 = !DILocalVariable(name: "port1", arg: 2, scope: !5126, file: !3, line: 478, type: !151)
!5132 = !DILocation(line: 478, column: 57, scope: !5126)
!5133 = !DILocalVariable(name: "port_dev", scope: !5126, file: !3, line: 480, type: !191)
!5134 = !DILocation(line: 480, column: 19, scope: !5126)
!5135 = !DILocation(line: 480, column: 30, scope: !5126)
!5136 = !DILocation(line: 480, column: 35, scope: !5126)
!5137 = !DILocation(line: 480, column: 41, scope: !5126)
!5138 = !DILocation(line: 480, column: 47, scope: !5126)
!5139 = !DILocalVariable(name: "peer", scope: !5126, file: !3, line: 480, type: !191)
!5140 = !DILocation(line: 480, column: 54, scope: !5126)
!5141 = !DILocalVariable(name: "hdev", scope: !5126, file: !3, line: 481, type: !196)
!5142 = !DILocation(line: 481, column: 21, scope: !5126)
!5143 = !DILocation(line: 481, column: 28, scope: !5126)
!5144 = !DILocation(line: 481, column: 33, scope: !5126)
!5145 = !DILocalVariable(name: "peer_hdev", scope: !5126, file: !3, line: 482, type: !196)
!5146 = !DILocation(line: 482, column: 21, scope: !5126)
!5147 = !DILocalVariable(name: "peer_hub", scope: !5126, file: !3, line: 483, type: !4440)
!5148 = !DILocation(line: 483, column: 18, scope: !5126)
!5149 = !DILocation(line: 491, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 491, column: 6)
!5151 = !DILocation(line: 491, column: 16, scope: !5150)
!5152 = !DILocation(line: 491, column: 6, scope: !5126)
!5153 = !DILocation(line: 493, column: 20, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 491, column: 26)
!5155 = !DILocation(line: 493, column: 3, scope: !5154)
!5156 = !DILocation(line: 494, column: 3, scope: !5154)
!5157 = !DILocation(line: 495, column: 14, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 495, column: 13)
!5159 = !DILocation(line: 495, column: 20, scope: !5158)
!5160 = !DILocation(line: 495, column: 13, scope: !5150)
!5161 = !DILocalVariable(name: "hcd", scope: !5162, file: !3, line: 496, type: !4173)
!5162 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 495, column: 28)
!5163 = !DILocation(line: 496, column: 19, scope: !5162)
!5164 = !DILocation(line: 496, column: 36, scope: !5162)
!5165 = !DILocation(line: 496, column: 42, scope: !5162)
!5166 = !DILocation(line: 496, column: 25, scope: !5162)
!5167 = !DILocalVariable(name: "peer_hcd", scope: !5162, file: !3, line: 497, type: !4173)
!5168 = !DILocation(line: 497, column: 19, scope: !5162)
!5169 = !DILocation(line: 497, column: 30, scope: !5162)
!5170 = !DILocation(line: 497, column: 35, scope: !5162)
!5171 = !DILocation(line: 499, column: 8, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 499, column: 7)
!5173 = !DILocation(line: 499, column: 7, scope: !5162)
!5174 = !DILocation(line: 500, column: 4, scope: !5172)
!5175 = !DILocation(line: 502, column: 15, scope: !5162)
!5176 = !DILocation(line: 502, column: 25, scope: !5162)
!5177 = !DILocation(line: 502, column: 30, scope: !5162)
!5178 = !DILocation(line: 502, column: 13, scope: !5162)
!5179 = !DILocation(line: 503, column: 2, scope: !5162)
!5180 = !DILocalVariable(name: "upstream", scope: !5181, file: !3, line: 504, type: !191)
!5181 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 503, column: 9)
!5182 = !DILocation(line: 504, column: 20, scope: !5181)
!5183 = !DILocalVariable(name: "parent", scope: !5181, file: !3, line: 505, type: !196)
!5184 = !DILocation(line: 505, column: 22, scope: !5181)
!5185 = !DILocation(line: 505, column: 31, scope: !5181)
!5186 = !DILocation(line: 505, column: 37, scope: !5181)
!5187 = !DILocalVariable(name: "parent_hub", scope: !5181, file: !3, line: 506, type: !4440)
!5188 = !DILocation(line: 506, column: 19, scope: !5181)
!5189 = !DILocation(line: 506, column: 54, scope: !5181)
!5190 = !DILocation(line: 506, column: 32, scope: !5181)
!5191 = !DILocation(line: 508, column: 8, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 508, column: 7)
!5193 = !DILocation(line: 508, column: 7, scope: !5181)
!5194 = !DILocation(line: 509, column: 4, scope: !5192)
!5195 = !DILocation(line: 511, column: 14, scope: !5181)
!5196 = !DILocation(line: 511, column: 26, scope: !5181)
!5197 = !DILocation(line: 511, column: 32, scope: !5181)
!5198 = !DILocation(line: 511, column: 38, scope: !5181)
!5199 = !DILocation(line: 511, column: 46, scope: !5181)
!5200 = !DILocation(line: 511, column: 12, scope: !5181)
!5201 = !DILocation(line: 512, column: 8, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 512, column: 7)
!5203 = !DILocation(line: 512, column: 17, scope: !5202)
!5204 = !DILocation(line: 512, column: 21, scope: !5202)
!5205 = !DILocation(line: 512, column: 31, scope: !5202)
!5206 = !DILocation(line: 512, column: 7, scope: !5181)
!5207 = !DILocation(line: 513, column: 4, scope: !5202)
!5208 = !DILocation(line: 515, column: 15, scope: !5181)
!5209 = !DILocation(line: 515, column: 25, scope: !5181)
!5210 = !DILocation(line: 515, column: 31, scope: !5181)
!5211 = !DILocation(line: 515, column: 13, scope: !5181)
!5212 = !DILocation(line: 518, column: 35, scope: !5126)
!5213 = !DILocation(line: 518, column: 13, scope: !5126)
!5214 = !DILocation(line: 518, column: 11, scope: !5126)
!5215 = !DILocation(line: 519, column: 7, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 519, column: 6)
!5217 = !DILocation(line: 519, column: 16, scope: !5216)
!5218 = !DILocation(line: 519, column: 19, scope: !5216)
!5219 = !DILocation(line: 519, column: 27, scope: !5216)
!5220 = !DILocation(line: 519, column: 38, scope: !5216)
!5221 = !DILocation(line: 519, column: 25, scope: !5216)
!5222 = !DILocation(line: 519, column: 6, scope: !5126)
!5223 = !DILocation(line: 520, column: 3, scope: !5216)
!5224 = !DILocation(line: 526, column: 9, scope: !5126)
!5225 = !DILocation(line: 526, column: 19, scope: !5126)
!5226 = !DILocation(line: 526, column: 25, scope: !5126)
!5227 = !DILocation(line: 526, column: 31, scope: !5126)
!5228 = !DILocation(line: 526, column: 7, scope: !5126)
!5229 = !DILocation(line: 527, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 527, column: 6)
!5231 = !DILocation(line: 527, column: 11, scope: !5230)
!5232 = !DILocation(line: 527, column: 14, scope: !5230)
!5233 = !DILocation(line: 527, column: 20, scope: !5230)
!5234 = !DILocation(line: 527, column: 29, scope: !5230)
!5235 = !DILocation(line: 527, column: 6, scope: !5126)
!5236 = !DILocation(line: 528, column: 21, scope: !5230)
!5237 = !DILocation(line: 528, column: 31, scope: !5230)
!5238 = !DILocation(line: 528, column: 3, scope: !5230)
!5239 = !DILocation(line: 529, column: 1, scope: !5126)
!5240 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !5241, file: !5241, line: 495, type: !3285, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5241 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5242 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !5241, line: 495, type: !276)
!5243 = !DILocation(line: 495, column: 56, scope: !5240)
!5244 = !DILocation(line: 497, column: 33, scope: !5240)
!5245 = !DILocation(line: 497, column: 9, scope: !5240)
!5246 = !DILocation(line: 497, column: 2, scope: !5240)
!5247 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !5241, file: !5241, line: 92, type: !3276, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5248 = !DILocalVariable(name: "v", arg: 1, scope: !5249, file: !5250, line: 93, type: !5253)
!5249 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5250, file: !5250, line: 93, type: !5251, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5250 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !5253}
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!5254 = !DILocation(line: 93, column: 55, scope: !5249, inlinedAt: !5255)
!5255 = distinct !DILocation(line: 241, column: 2, scope: !5256, inlinedAt: !5258)
!5256 = distinct !DISubprogram(name: "atomic_inc", scope: !5257, file: !5257, line: 238, type: !5251, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5257 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5258 = distinct !DILocation(line: 94, column: 2, scope: !5247)
!5259 = !DILocalVariable(name: "v", arg: 1, scope: !5260, file: !5060, line: 99, type: !5063)
!5260 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5060, file: !5060, line: 99, type: !5061, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5261 = !DILocation(line: 99, column: 79, scope: !5260, inlinedAt: !5262)
!5262 = distinct !DILocation(line: 240, column: 2, scope: !5256, inlinedAt: !5258)
!5263 = !DILocalVariable(name: "size", arg: 2, scope: !5260, file: !5060, line: 99, type: !368)
!5264 = !DILocation(line: 99, column: 89, scope: !5260, inlinedAt: !5262)
!5265 = !DILocalVariable(name: "v", arg: 1, scope: !5256, file: !5257, line: 238, type: !5253)
!5266 = !DILocation(line: 238, column: 22, scope: !5256, inlinedAt: !5258)
!5267 = !DILocalVariable(name: "dev", arg: 1, scope: !5247, file: !5241, line: 92, type: !276)
!5268 = !DILocation(line: 92, column: 59, scope: !5247)
!5269 = !DILocation(line: 94, column: 14, scope: !5247)
!5270 = !DILocation(line: 94, column: 19, scope: !5247)
!5271 = !DILocation(line: 94, column: 25, scope: !5247)
!5272 = !DILocation(line: 240, column: 31, scope: !5256, inlinedAt: !5258)
!5273 = !DILocation(line: 101, column: 20, scope: !5260, inlinedAt: !5262)
!5274 = !DILocation(line: 101, column: 23, scope: !5260, inlinedAt: !5262)
!5275 = !DILocation(line: 101, column: 2, scope: !5260, inlinedAt: !5262)
!5276 = !DILocation(line: 102, column: 2, scope: !5260, inlinedAt: !5262)
!5277 = !DILocation(line: 241, column: 18, scope: !5256, inlinedAt: !5258)
!5278 = !DILocation(line: 96, column: 16, scope: !5249, inlinedAt: !5255)
!5279 = !DILocation(line: 96, column: 19, scope: !5249, inlinedAt: !5255)
!5280 = !DILocation(line: 95, column: 2, scope: !5249, inlinedAt: !5255)
!5281 = !{i32 -2146446572}
!5282 = !DILocation(line: 95, column: 1, scope: !5247)
!5283 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !60, file: !60, line: 685, type: !3276, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5284 = !DILocalVariable(name: "dev", arg: 1, scope: !5283, file: !60, line: 685, type: !276)
!5285 = !DILocation(line: 685, column: 63, scope: !5283)
!5286 = !DILocation(line: 687, column: 7, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5283, file: !60, line: 687, column: 6)
!5288 = !DILocation(line: 687, column: 12, scope: !5287)
!5289 = !DILocation(line: 687, column: 18, scope: !5287)
!5290 = !DILocation(line: 687, column: 6, scope: !5283)
!5291 = !DILocation(line: 688, column: 3, scope: !5287)
!5292 = !DILocation(line: 688, column: 8, scope: !5287)
!5293 = !DILocation(line: 688, column: 14, scope: !5287)
!5294 = !DILocation(line: 688, column: 28, scope: !5287)
!5295 = !DILocation(line: 689, column: 1, scope: !5283)
!5296 = distinct !DISubprogram(name: "hub_is_port_power_switchable", scope: !193, file: !193, line: 125, type: !5297, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!533, !4440}
!5299 = !DILocalVariable(name: "hub", arg: 1, scope: !5296, file: !193, line: 125, type: !4440)
!5300 = !DILocation(line: 125, column: 65, scope: !5296)
!5301 = !DILocalVariable(name: "hcs", scope: !5296, file: !193, line: 127, type: !3905)
!5302 = !DILocation(line: 127, column: 9, scope: !5296)
!5303 = !DILocation(line: 129, column: 7, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5296, file: !193, line: 129, column: 6)
!5305 = !DILocation(line: 129, column: 6, scope: !5296)
!5306 = !DILocation(line: 130, column: 3, scope: !5304)
!5307 = !DILocation(line: 131, column: 8, scope: !5296)
!5308 = !DILocation(line: 131, column: 13, scope: !5296)
!5309 = !DILocation(line: 131, column: 25, scope: !5296)
!5310 = !DILocation(line: 131, column: 6, scope: !5296)
!5311 = !DILocation(line: 132, column: 10, scope: !5296)
!5312 = !DILocation(line: 132, column: 27, scope: !5296)
!5313 = !DILocation(line: 132, column: 44, scope: !5296)
!5314 = !DILocation(line: 132, column: 2, scope: !5296)
!5315 = !DILocation(line: 133, column: 1, scope: !5296)
!5316 = distinct !DISubprogram(name: "usb_hub_remove_port_device", scope: !3, file: !3, line: 614, type: !5127, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5317 = !DILocalVariable(name: "hub", arg: 1, scope: !5316, file: !3, line: 614, type: !4440)
!5318 = !DILocation(line: 614, column: 49, scope: !5316)
!5319 = !DILocalVariable(name: "port1", arg: 2, scope: !5316, file: !3, line: 614, type: !151)
!5320 = !DILocation(line: 614, column: 58, scope: !5316)
!5321 = !DILocalVariable(name: "port_dev", scope: !5316, file: !3, line: 616, type: !191)
!5322 = !DILocation(line: 616, column: 19, scope: !5316)
!5323 = !DILocation(line: 616, column: 30, scope: !5316)
!5324 = !DILocation(line: 616, column: 35, scope: !5316)
!5325 = !DILocation(line: 616, column: 41, scope: !5316)
!5326 = !DILocation(line: 616, column: 47, scope: !5316)
!5327 = !DILocalVariable(name: "peer", scope: !5316, file: !3, line: 617, type: !191)
!5328 = !DILocation(line: 617, column: 19, scope: !5316)
!5329 = !DILocation(line: 619, column: 9, scope: !5316)
!5330 = !DILocation(line: 619, column: 19, scope: !5316)
!5331 = !DILocation(line: 619, column: 7, scope: !5316)
!5332 = !DILocation(line: 620, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 620, column: 6)
!5334 = !DILocation(line: 620, column: 6, scope: !5316)
!5335 = !DILocation(line: 621, column: 16, scope: !5333)
!5336 = !DILocation(line: 621, column: 26, scope: !5333)
!5337 = !DILocation(line: 621, column: 3, scope: !5333)
!5338 = !DILocation(line: 622, column: 21, scope: !5316)
!5339 = !DILocation(line: 622, column: 31, scope: !5316)
!5340 = !DILocation(line: 622, column: 2, scope: !5316)
!5341 = !DILocation(line: 623, column: 1, scope: !5316)
!5342 = distinct !DISubprogram(name: "unlink_peers", scope: !3, file: !3, line: 405, type: !4575, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5343 = !DILocalVariable(name: "left", arg: 1, scope: !5342, file: !3, line: 405, type: !191)
!5344 = !DILocation(line: 405, column: 43, scope: !5342)
!5345 = !DILocalVariable(name: "right", arg: 2, scope: !5342, file: !3, line: 405, type: !191)
!5346 = !DILocation(line: 405, column: 66, scope: !5342)
!5347 = !DILocalVariable(name: "ss_port", scope: !5342, file: !3, line: 407, type: !191)
!5348 = !DILocation(line: 407, column: 19, scope: !5342)
!5349 = !DILocalVariable(name: "hs_port", scope: !5342, file: !3, line: 407, type: !191)
!5350 = !DILocation(line: 407, column: 29, scope: !5342)
!5351 = !DILocalVariable(name: "__ret_warn_on", scope: !5352, file: !3, line: 409, type: !151)
!5352 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 409, column: 2)
!5353 = !DILocation(line: 409, column: 2, scope: !5352)
!5354 = !DILocation(line: 409, column: 2, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 409, column: 2)
!5356 = !DILocation(line: 409, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 409, column: 2)
!5358 = !DILocation(line: 409, column: 2, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 409, column: 2)
!5360 = !DILocation(line: 409, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 409, column: 2)
!5362 = !DILocation(line: 409, column: 2, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 409, column: 2)
!5364 = !DILocation(line: 409, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 409, column: 2)
!5366 = !{i32 -2141818609, i32 -2141818580, i32 -2141818534, i32 -2141818476, i32 -2141818422, i32 -2141818368, i32 -2141818313, i32 -2141818282}
!5367 = !DILocation(line: 409, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 409, column: 2)
!5369 = !{i32 -2141817866, i32 -2141817859, i32 -2141817807, i32 -2141817776, i32 -2141817746}
!5370 = !DILocation(line: 409, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 409, column: 2)
!5372 = !DILocation(line: 409, column: 2, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 409, column: 2)
!5374 = !DILocation(line: 418, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 418, column: 6)
!5376 = !DILocation(line: 418, column: 12, scope: !5375)
!5377 = !DILocation(line: 418, column: 6, scope: !5342)
!5378 = !DILocation(line: 419, column: 13, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 418, column: 27)
!5380 = !DILocation(line: 419, column: 11, scope: !5379)
!5381 = !DILocation(line: 420, column: 13, scope: !5379)
!5382 = !DILocation(line: 420, column: 11, scope: !5379)
!5383 = !DILocation(line: 421, column: 2, scope: !5379)
!5384 = !DILocation(line: 422, column: 13, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 421, column: 9)
!5386 = !DILocation(line: 422, column: 11, scope: !5385)
!5387 = !DILocation(line: 423, column: 13, scope: !5385)
!5388 = !DILocation(line: 423, column: 11, scope: !5385)
!5389 = !DILocation(line: 426, column: 23, scope: !5342)
!5390 = !DILocation(line: 426, column: 32, scope: !5342)
!5391 = !DILocation(line: 426, column: 2, scope: !5342)
!5392 = !DILocation(line: 428, column: 21, scope: !5342)
!5393 = !DILocation(line: 428, column: 27, scope: !5342)
!5394 = !DILocation(line: 428, column: 31, scope: !5342)
!5395 = !DILocation(line: 428, column: 2, scope: !5342)
!5396 = !DILocation(line: 429, column: 2, scope: !5342)
!5397 = !DILocation(line: 429, column: 9, scope: !5342)
!5398 = !DILocation(line: 429, column: 14, scope: !5342)
!5399 = !DILocation(line: 430, column: 21, scope: !5342)
!5400 = !DILocation(line: 430, column: 28, scope: !5342)
!5401 = !DILocation(line: 430, column: 32, scope: !5342)
!5402 = !DILocation(line: 430, column: 2, scope: !5342)
!5403 = !DILocation(line: 431, column: 2, scope: !5342)
!5404 = !DILocation(line: 431, column: 8, scope: !5342)
!5405 = !DILocation(line: 431, column: 13, scope: !5342)
!5406 = !DILocation(line: 434, column: 18, scope: !5342)
!5407 = !DILocation(line: 434, column: 27, scope: !5342)
!5408 = !DILocation(line: 434, column: 2, scope: !5342)
!5409 = !DILocation(line: 437, column: 18, scope: !5342)
!5410 = !DILocation(line: 437, column: 27, scope: !5342)
!5411 = !DILocation(line: 437, column: 2, scope: !5342)
!5412 = !DILocation(line: 438, column: 1, scope: !5342)
!5413 = distinct !DISubprogram(name: "usb_port_runtime_suspend", scope: !3, file: !3, line: 250, type: !3285, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5414 = !DILocalVariable(name: "dev", arg: 1, scope: !5413, file: !3, line: 250, type: !276)
!5415 = !DILocation(line: 250, column: 52, scope: !5413)
!5416 = !DILocalVariable(name: "port_dev", scope: !5413, file: !3, line: 252, type: !191)
!5417 = !DILocation(line: 252, column: 19, scope: !5413)
!5418 = !DILocalVariable(name: "__mptr", scope: !5419, file: !3, line: 252, type: !190)
!5419 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 252, column: 30)
!5420 = !DILocation(line: 252, column: 30, scope: !5419)
!5421 = !DILocation(line: 252, column: 30, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 252, column: 30)
!5423 = !DILocalVariable(name: "hdev", scope: !5413, file: !3, line: 253, type: !196)
!5424 = !DILocation(line: 253, column: 21, scope: !5413)
!5425 = !DILocalVariable(name: "__mptr", scope: !5426, file: !3, line: 253, type: !190)
!5426 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 253, column: 28)
!5427 = !DILocation(line: 253, column: 28, scope: !5426)
!5428 = !DILocation(line: 253, column: 28, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 253, column: 28)
!5430 = !DILocalVariable(name: "intf", scope: !5413, file: !3, line: 254, type: !4045)
!5431 = !DILocation(line: 254, column: 24, scope: !5413)
!5432 = !DILocalVariable(name: "__mptr", scope: !5433, file: !3, line: 254, type: !190)
!5433 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 254, column: 31)
!5434 = !DILocation(line: 254, column: 31, scope: !5433)
!5435 = !DILocation(line: 254, column: 31, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 254, column: 31)
!5437 = !DILocalVariable(name: "hub", scope: !5413, file: !3, line: 255, type: !4440)
!5438 = !DILocation(line: 255, column: 18, scope: !5413)
!5439 = !DILocation(line: 255, column: 46, scope: !5413)
!5440 = !DILocation(line: 255, column: 24, scope: !5413)
!5441 = !DILocalVariable(name: "peer", scope: !5413, file: !3, line: 256, type: !191)
!5442 = !DILocation(line: 256, column: 19, scope: !5413)
!5443 = !DILocation(line: 256, column: 26, scope: !5413)
!5444 = !DILocation(line: 256, column: 36, scope: !5413)
!5445 = !DILocalVariable(name: "port1", scope: !5413, file: !3, line: 257, type: !151)
!5446 = !DILocation(line: 257, column: 6, scope: !5413)
!5447 = !DILocation(line: 257, column: 14, scope: !5413)
!5448 = !DILocation(line: 257, column: 24, scope: !5413)
!5449 = !DILocalVariable(name: "retval", scope: !5413, file: !3, line: 258, type: !151)
!5450 = !DILocation(line: 258, column: 6, scope: !5413)
!5451 = !DILocation(line: 260, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 260, column: 6)
!5453 = !DILocation(line: 260, column: 6, scope: !5413)
!5454 = !DILocation(line: 261, column: 3, scope: !5452)
!5455 = !DILocation(line: 262, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 262, column: 6)
!5457 = !DILocation(line: 262, column: 11, scope: !5456)
!5458 = !DILocation(line: 262, column: 6, scope: !5413)
!5459 = !DILocation(line: 263, column: 3, scope: !5456)
!5460 = !DILocation(line: 265, column: 24, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 265, column: 6)
!5462 = !DILocation(line: 265, column: 34, scope: !5461)
!5463 = !DILocation(line: 265, column: 6, scope: !5461)
!5464 = !DILocation(line: 266, column: 4, scope: !5461)
!5465 = !DILocation(line: 265, column: 6, scope: !5413)
!5466 = !DILocation(line: 267, column: 3, scope: !5461)
!5467 = !DILocation(line: 269, column: 6, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 269, column: 6)
!5469 = !DILocation(line: 269, column: 6, scope: !5413)
!5470 = !DILocation(line: 270, column: 3, scope: !5468)
!5471 = !DILocation(line: 272, column: 36, scope: !5413)
!5472 = !DILocation(line: 272, column: 11, scope: !5413)
!5473 = !DILocation(line: 272, column: 9, scope: !5413)
!5474 = !DILocation(line: 273, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 273, column: 6)
!5476 = !DILocation(line: 273, column: 13, scope: !5475)
!5477 = !DILocation(line: 273, column: 6, scope: !5413)
!5478 = !DILocation(line: 274, column: 10, scope: !5475)
!5479 = !DILocation(line: 274, column: 3, scope: !5475)
!5480 = !DILocation(line: 276, column: 34, scope: !5413)
!5481 = !DILocation(line: 276, column: 40, scope: !5413)
!5482 = !DILocation(line: 276, column: 45, scope: !5413)
!5483 = !DILocation(line: 276, column: 11, scope: !5413)
!5484 = !DILocation(line: 276, column: 9, scope: !5413)
!5485 = !DILocation(line: 277, column: 25, scope: !5413)
!5486 = !DILocation(line: 277, column: 31, scope: !5413)
!5487 = !DILocation(line: 277, column: 2, scope: !5413)
!5488 = !DILocation(line: 278, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 278, column: 6)
!5490 = !DILocation(line: 278, column: 17, scope: !5489)
!5491 = !DILocation(line: 278, column: 6, scope: !5413)
!5492 = !DILocation(line: 279, column: 26, scope: !5489)
!5493 = !DILocation(line: 279, column: 32, scope: !5489)
!5494 = !DILocation(line: 279, column: 3, scope: !5489)
!5495 = !DILocation(line: 280, column: 27, scope: !5413)
!5496 = !DILocation(line: 280, column: 2, scope: !5413)
!5497 = !DILocation(line: 287, column: 7, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 287, column: 6)
!5499 = !DILocation(line: 287, column: 17, scope: !5498)
!5500 = !DILocation(line: 287, column: 31, scope: !5498)
!5501 = !DILocation(line: 287, column: 34, scope: !5498)
!5502 = !DILocation(line: 287, column: 6, scope: !5413)
!5503 = !DILocation(line: 288, column: 19, scope: !5498)
!5504 = !DILocation(line: 288, column: 25, scope: !5498)
!5505 = !DILocation(line: 288, column: 3, scope: !5498)
!5506 = !DILocation(line: 290, column: 9, scope: !5413)
!5507 = !DILocation(line: 290, column: 2, scope: !5413)
!5508 = !DILocation(line: 291, column: 1, scope: !5413)
!5509 = distinct !DISubprogram(name: "usb_port_runtime_resume", scope: !3, file: !3, line: 191, type: !3285, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5510 = !DILocalVariable(name: "dev", arg: 1, scope: !5509, file: !3, line: 191, type: !276)
!5511 = !DILocation(line: 191, column: 51, scope: !5509)
!5512 = !DILocalVariable(name: "port_dev", scope: !5509, file: !3, line: 193, type: !191)
!5513 = !DILocation(line: 193, column: 19, scope: !5509)
!5514 = !DILocalVariable(name: "__mptr", scope: !5515, file: !3, line: 193, type: !190)
!5515 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 193, column: 30)
!5516 = !DILocation(line: 193, column: 30, scope: !5515)
!5517 = !DILocation(line: 193, column: 30, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 193, column: 30)
!5519 = !DILocalVariable(name: "hdev", scope: !5509, file: !3, line: 194, type: !196)
!5520 = !DILocation(line: 194, column: 21, scope: !5509)
!5521 = !DILocalVariable(name: "__mptr", scope: !5522, file: !3, line: 194, type: !190)
!5522 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 194, column: 28)
!5523 = !DILocation(line: 194, column: 28, scope: !5522)
!5524 = !DILocation(line: 194, column: 28, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 194, column: 28)
!5526 = !DILocalVariable(name: "intf", scope: !5509, file: !3, line: 195, type: !4045)
!5527 = !DILocation(line: 195, column: 24, scope: !5509)
!5528 = !DILocalVariable(name: "__mptr", scope: !5529, file: !3, line: 195, type: !190)
!5529 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 195, column: 31)
!5530 = !DILocation(line: 195, column: 31, scope: !5529)
!5531 = !DILocation(line: 195, column: 31, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 195, column: 31)
!5533 = !DILocalVariable(name: "hub", scope: !5509, file: !3, line: 196, type: !4440)
!5534 = !DILocation(line: 196, column: 18, scope: !5509)
!5535 = !DILocation(line: 196, column: 46, scope: !5509)
!5536 = !DILocation(line: 196, column: 24, scope: !5509)
!5537 = !DILocalVariable(name: "udev", scope: !5509, file: !3, line: 197, type: !196)
!5538 = !DILocation(line: 197, column: 21, scope: !5509)
!5539 = !DILocation(line: 197, column: 28, scope: !5509)
!5540 = !DILocation(line: 197, column: 38, scope: !5509)
!5541 = !DILocalVariable(name: "peer", scope: !5509, file: !3, line: 198, type: !191)
!5542 = !DILocation(line: 198, column: 19, scope: !5509)
!5543 = !DILocation(line: 198, column: 26, scope: !5509)
!5544 = !DILocation(line: 198, column: 36, scope: !5509)
!5545 = !DILocalVariable(name: "port1", scope: !5509, file: !3, line: 199, type: !151)
!5546 = !DILocation(line: 199, column: 6, scope: !5509)
!5547 = !DILocation(line: 199, column: 14, scope: !5509)
!5548 = !DILocation(line: 199, column: 24, scope: !5509)
!5549 = !DILocalVariable(name: "retval", scope: !5509, file: !3, line: 200, type: !151)
!5550 = !DILocation(line: 200, column: 6, scope: !5509)
!5551 = !DILocation(line: 202, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 202, column: 6)
!5553 = !DILocation(line: 202, column: 6, scope: !5509)
!5554 = !DILocation(line: 203, column: 3, scope: !5552)
!5555 = !DILocation(line: 204, column: 6, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 204, column: 6)
!5557 = !DILocation(line: 204, column: 11, scope: !5556)
!5558 = !DILocation(line: 204, column: 6, scope: !5509)
!5559 = !DILocation(line: 205, column: 11, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 204, column: 21)
!5561 = !DILocation(line: 205, column: 18, scope: !5560)
!5562 = !DILocation(line: 205, column: 23, scope: !5560)
!5563 = !DILocation(line: 205, column: 3, scope: !5560)
!5564 = !DILocation(line: 206, column: 3, scope: !5560)
!5565 = !DILocation(line: 213, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 213, column: 6)
!5567 = !DILocation(line: 213, column: 17, scope: !5566)
!5568 = !DILocation(line: 213, column: 31, scope: !5566)
!5569 = !DILocation(line: 213, column: 34, scope: !5566)
!5570 = !DILocation(line: 213, column: 6, scope: !5509)
!5571 = !DILocation(line: 214, column: 24, scope: !5566)
!5572 = !DILocation(line: 214, column: 30, scope: !5566)
!5573 = !DILocation(line: 214, column: 3, scope: !5566)
!5574 = !DILocation(line: 216, column: 36, scope: !5509)
!5575 = !DILocation(line: 216, column: 11, scope: !5509)
!5576 = !DILocation(line: 216, column: 9, scope: !5509)
!5577 = !DILocation(line: 217, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 217, column: 6)
!5579 = !DILocation(line: 217, column: 13, scope: !5578)
!5580 = !DILocation(line: 217, column: 6, scope: !5509)
!5581 = !DILocation(line: 218, column: 10, scope: !5578)
!5582 = !DILocation(line: 218, column: 3, scope: !5578)
!5583 = !DILocation(line: 220, column: 34, scope: !5509)
!5584 = !DILocation(line: 220, column: 40, scope: !5509)
!5585 = !DILocation(line: 220, column: 45, scope: !5509)
!5586 = !DILocation(line: 220, column: 11, scope: !5509)
!5587 = !DILocation(line: 220, column: 9, scope: !5509)
!5588 = !DILocation(line: 221, column: 33, scope: !5509)
!5589 = !DILocation(line: 221, column: 9, scope: !5509)
!5590 = !DILocation(line: 221, column: 2, scope: !5509)
!5591 = !DILocation(line: 222, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 222, column: 6)
!5593 = !DILocation(line: 222, column: 11, scope: !5592)
!5594 = !DILocation(line: 222, column: 15, scope: !5592)
!5595 = !DILocation(line: 222, column: 6, scope: !5509)
!5596 = !DILocation(line: 232, column: 38, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 232, column: 7)
!5598 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 222, column: 23)
!5599 = !DILocation(line: 232, column: 43, scope: !5597)
!5600 = !DILocation(line: 232, column: 7, scope: !5597)
!5601 = !DILocation(line: 232, column: 50, scope: !5597)
!5602 = !DILocation(line: 232, column: 7, scope: !5598)
!5603 = !DILocation(line: 234, column: 26, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 234, column: 8)
!5605 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 232, column: 55)
!5606 = !DILocation(line: 234, column: 8, scope: !5604)
!5607 = !DILocation(line: 234, column: 8, scope: !5605)
!5608 = !DILocation(line: 235, column: 13, scope: !5604)
!5609 = !DILocation(line: 235, column: 20, scope: !5604)
!5610 = !DILocation(line: 235, column: 25, scope: !5604)
!5611 = !DILocation(line: 235, column: 5, scope: !5604)
!5612 = !DILocation(line: 236, column: 3, scope: !5605)
!5613 = !DILocation(line: 239, column: 25, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 239, column: 7)
!5615 = !DILocation(line: 239, column: 32, scope: !5614)
!5616 = !DILocation(line: 239, column: 37, scope: !5614)
!5617 = !DILocation(line: 239, column: 8, scope: !5614)
!5618 = !DILocation(line: 239, column: 7, scope: !5598)
!5619 = !DILocation(line: 240, column: 29, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 239, column: 56)
!5621 = !DILocation(line: 240, column: 39, scope: !5620)
!5622 = !DILocation(line: 240, column: 4, scope: !5620)
!5623 = !DILocation(line: 241, column: 23, scope: !5620)
!5624 = !DILocation(line: 241, column: 29, scope: !5620)
!5625 = !DILocation(line: 241, column: 4, scope: !5620)
!5626 = !DILocation(line: 242, column: 3, scope: !5620)
!5627 = !DILocation(line: 243, column: 2, scope: !5598)
!5628 = !DILocation(line: 245, column: 27, scope: !5509)
!5629 = !DILocation(line: 245, column: 2, scope: !5509)
!5630 = !DILocation(line: 247, column: 9, scope: !5509)
!5631 = !DILocation(line: 247, column: 2, scope: !5509)
!5632 = !DILocation(line: 248, column: 1, scope: !5509)
!5633 = distinct !DISubprogram(name: "pm_runtime_put", scope: !5241, file: !5241, line: 417, type: !3285, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5634 = !DILocalVariable(name: "dev", arg: 1, scope: !5633, file: !5241, line: 417, type: !276)
!5635 = !DILocation(line: 417, column: 49, scope: !5633)
!5636 = !DILocation(line: 419, column: 27, scope: !5633)
!5637 = !DILocation(line: 419, column: 9, scope: !5633)
!5638 = !DILocation(line: 419, column: 2, scope: !5633)
!5639 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !5241, file: !5241, line: 384, type: !3285, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5640 = !DILocalVariable(name: "dev", arg: 1, scope: !5639, file: !5241, line: 384, type: !276)
!5641 = !DILocation(line: 384, column: 54, scope: !5639)
!5642 = !DILocation(line: 386, column: 29, scope: !5639)
!5643 = !DILocation(line: 386, column: 9, scope: !5639)
!5644 = !DILocation(line: 386, column: 2, scope: !5639)
!5645 = distinct !DISubprogram(name: "hub_power_on_good_delay", scope: !193, file: !193, line: 147, type: !5646, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!7, !4440}
!5648 = !DILocalVariable(name: "hub", arg: 1, scope: !5645, file: !193, line: 147, type: !4440)
!5649 = !DILocation(line: 147, column: 64, scope: !5645)
!5650 = !DILocalVariable(name: "delay", scope: !5645, file: !193, line: 149, type: !7)
!5651 = !DILocation(line: 149, column: 11, scope: !5645)
!5652 = !DILocation(line: 149, column: 19, scope: !5645)
!5653 = !DILocation(line: 149, column: 24, scope: !5645)
!5654 = !DILocation(line: 149, column: 36, scope: !5645)
!5655 = !DILocation(line: 149, column: 51, scope: !5645)
!5656 = !DILocalVariable(name: "__UNIQUE_ID___x221", scope: !5657, file: !193, line: 152, type: !7)
!5657 = distinct !DILexicalBlock(scope: !5645, file: !193, line: 152, column: 9)
!5658 = !DILocation(line: 152, column: 9, scope: !5657)
!5659 = !DILocalVariable(name: "__UNIQUE_ID___y222", scope: !5657, file: !193, line: 152, type: !7)
!5660 = !DILocation(line: 152, column: 2, scope: !5645)
!5661 = distinct !DISubprogram(name: "hub_port_debounce_be_connected", scope: !193, file: !193, line: 155, type: !4438, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5662 = !DILocalVariable(name: "hub", arg: 1, scope: !5661, file: !193, line: 155, type: !4440)
!5663 = !DILocation(line: 155, column: 66, scope: !5661)
!5664 = !DILocalVariable(name: "port1", arg: 2, scope: !5661, file: !193, line: 156, type: !151)
!5665 = !DILocation(line: 156, column: 7, scope: !5661)
!5666 = !DILocation(line: 158, column: 27, scope: !5661)
!5667 = !DILocation(line: 158, column: 32, scope: !5661)
!5668 = !DILocation(line: 158, column: 9, scope: !5661)
!5669 = !DILocation(line: 158, column: 2, scope: !5661)
!5670 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5046, file: !5046, line: 68, type: !5671, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!533, !356, !5049}
!5673 = !DILocalVariable(name: "nr", arg: 1, scope: !5674, file: !5053, line: 136, type: !356)
!5674 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5053, file: !5053, line: 136, type: !5671, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5675 = !DILocation(line: 136, column: 28, scope: !5674, inlinedAt: !5676)
!5676 = distinct !DILocation(line: 71, column: 9, scope: !5670)
!5677 = !DILocalVariable(name: "addr", arg: 2, scope: !5674, file: !5053, line: 136, type: !5049)
!5678 = !DILocation(line: 136, column: 56, scope: !5674, inlinedAt: !5676)
!5679 = !DILocalVariable(name: "c", scope: !5680, file: !5053, line: 138, type: !533)
!5680 = distinct !DILexicalBlock(scope: !5674, file: !5053, line: 138, column: 9)
!5681 = !DILocation(line: 138, column: 9, scope: !5680, inlinedAt: !5676)
!5682 = !DILocation(line: 99, column: 79, scope: !5260, inlinedAt: !5683)
!5683 = distinct !DILocation(line: 70, column: 2, scope: !5670)
!5684 = !DILocation(line: 99, column: 89, scope: !5260, inlinedAt: !5683)
!5685 = !DILocalVariable(name: "nr", arg: 1, scope: !5670, file: !5046, line: 68, type: !356)
!5686 = !DILocation(line: 68, column: 42, scope: !5670)
!5687 = !DILocalVariable(name: "addr", arg: 2, scope: !5670, file: !5046, line: 68, type: !5049)
!5688 = !DILocation(line: 68, column: 70, scope: !5670)
!5689 = !DILocation(line: 70, column: 31, scope: !5670)
!5690 = !DILocation(line: 70, column: 38, scope: !5670)
!5691 = !DILocation(line: 70, column: 36, scope: !5670)
!5692 = !DILocation(line: 101, column: 20, scope: !5260, inlinedAt: !5683)
!5693 = !DILocation(line: 101, column: 23, scope: !5260, inlinedAt: !5683)
!5694 = !DILocation(line: 101, column: 2, scope: !5260, inlinedAt: !5683)
!5695 = !DILocation(line: 102, column: 2, scope: !5260, inlinedAt: !5683)
!5696 = !DILocation(line: 71, column: 31, scope: !5670)
!5697 = !DILocation(line: 71, column: 35, scope: !5670)
!5698 = !{i32 -2147131678, i32 -2147131582}
!5699 = !DILocation(line: 71, column: 2, scope: !5670)
!5700 = distinct !DISubprogram(name: "pm_request_resume", scope: !5241, file: !5241, line: 344, type: !3285, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5701 = !DILocalVariable(name: "dev", arg: 1, scope: !5700, file: !5241, line: 344, type: !276)
!5702 = !DILocation(line: 344, column: 52, scope: !5700)
!5703 = !DILocation(line: 346, column: 29, scope: !5700)
!5704 = !DILocation(line: 346, column: 9, scope: !5700)
!5705 = !DILocation(line: 346, column: 2, scope: !5700)
!5706 = distinct !DISubprogram(name: "kasan_check_write", scope: !5707, file: !5707, line: 38, type: !5708, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5707 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!533, !5063, !7}
!5710 = !DILocalVariable(name: "p", arg: 1, scope: !5706, file: !5707, line: 38, type: !5063)
!5711 = !DILocation(line: 38, column: 59, scope: !5706)
!5712 = !DILocalVariable(name: "size", arg: 2, scope: !5706, file: !5707, line: 38, type: !7)
!5713 = !DILocation(line: 38, column: 75, scope: !5706)
!5714 = !DILocation(line: 40, column: 2, scope: !5706)
!5715 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5716, file: !5716, line: 178, type: !5717, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5716 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !5063, !368, !151}
!5719 = !DILocalVariable(name: "ptr", arg: 1, scope: !5715, file: !5716, line: 178, type: !5063)
!5720 = !DILocation(line: 178, column: 60, scope: !5715)
!5721 = !DILocalVariable(name: "size", arg: 2, scope: !5715, file: !5716, line: 178, type: !368)
!5722 = !DILocation(line: 178, column: 72, scope: !5715)
!5723 = !DILocalVariable(name: "type", arg: 3, scope: !5715, file: !5716, line: 179, type: !151)
!5724 = !DILocation(line: 179, column: 15, scope: !5715)
!5725 = !DILocation(line: 179, column: 23, scope: !5715)
!5726 = distinct !DISubprogram(name: "get_order", scope: !5727, file: !5727, line: 29, type: !5728, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5727 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!151, !371}
!5730 = !DILocalVariable(name: "x", arg: 1, scope: !5731, file: !5053, line: 366, type: !465)
!5731 = distinct !DISubprogram(name: "fls64", scope: !5053, file: !5053, line: 366, type: !5732, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!151, !465}
!5734 = !DILocation(line: 366, column: 40, scope: !5731, inlinedAt: !5735)
!5735 = distinct !DILocation(line: 46, column: 9, scope: !5726)
!5736 = !DILocalVariable(name: "bitpos", scope: !5731, file: !5053, line: 368, type: !151)
!5737 = !DILocation(line: 368, column: 6, scope: !5731, inlinedAt: !5735)
!5738 = !DILocalVariable(name: "size", arg: 1, scope: !5726, file: !5727, line: 29, type: !371)
!5739 = !DILocation(line: 29, column: 63, scope: !5726)
!5740 = !DILocation(line: 31, column: 27, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5726, file: !5727, line: 31, column: 6)
!5742 = !DILocation(line: 31, column: 6, scope: !5741)
!5743 = !DILocation(line: 31, column: 6, scope: !5726)
!5744 = !DILocation(line: 32, column: 8, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !5727, line: 32, column: 7)
!5746 = distinct !DILexicalBlock(scope: !5741, file: !5727, line: 31, column: 34)
!5747 = !DILocation(line: 32, column: 7, scope: !5746)
!5748 = !DILocation(line: 33, column: 4, scope: !5745)
!5749 = !DILocation(line: 35, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5746, file: !5727, line: 35, column: 7)
!5751 = !DILocation(line: 35, column: 12, scope: !5750)
!5752 = !DILocation(line: 35, column: 7, scope: !5746)
!5753 = !DILocation(line: 36, column: 4, scope: !5750)
!5754 = !DILocation(line: 38, column: 10, scope: !5746)
!5755 = !DILocation(line: 38, column: 28, scope: !5746)
!5756 = !DILocation(line: 38, column: 41, scope: !5746)
!5757 = !DILocation(line: 38, column: 3, scope: !5746)
!5758 = !DILocation(line: 41, column: 6, scope: !5726)
!5759 = !DILocation(line: 42, column: 7, scope: !5726)
!5760 = !DILocation(line: 46, column: 15, scope: !5726)
!5761 = !DILocation(line: 374, column: 2, scope: !5731, inlinedAt: !5735)
!5762 = !DILocation(line: 376, column: 14, scope: !5731, inlinedAt: !5735)
!5763 = !{i32 316057}
!5764 = !DILocation(line: 377, column: 9, scope: !5731, inlinedAt: !5735)
!5765 = !DILocation(line: 377, column: 16, scope: !5731, inlinedAt: !5735)
!5766 = !DILocation(line: 46, column: 2, scope: !5726)
!5767 = !DILocation(line: 48, column: 1, scope: !5726)
!5768 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5769, file: !5769, line: 30, type: !5770, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5769 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!151, !464}
!5772 = !DILocation(line: 366, column: 40, scope: !5731, inlinedAt: !5773)
!5773 = distinct !DILocation(line: 32, column: 9, scope: !5768)
!5774 = !DILocation(line: 368, column: 6, scope: !5731, inlinedAt: !5773)
!5775 = !DILocalVariable(name: "n", arg: 1, scope: !5768, file: !5769, line: 30, type: !464)
!5776 = !DILocation(line: 30, column: 21, scope: !5768)
!5777 = !DILocation(line: 32, column: 15, scope: !5768)
!5778 = !DILocation(line: 374, column: 2, scope: !5731, inlinedAt: !5773)
!5779 = !DILocation(line: 376, column: 14, scope: !5731, inlinedAt: !5773)
!5780 = !DILocation(line: 377, column: 9, scope: !5731, inlinedAt: !5773)
!5781 = !DILocation(line: 377, column: 16, scope: !5731, inlinedAt: !5773)
!5782 = !DILocation(line: 32, column: 18, scope: !5768)
!5783 = !DILocation(line: 32, column: 2, scope: !5768)
!5784 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5785, file: !5785, line: 137, type: !5786, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5785 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!190, !972, !2069, !368, !188}
!5788 = !DILocalVariable(name: "s", arg: 1, scope: !5784, file: !5785, line: 137, type: !972)
!5789 = !DILocation(line: 137, column: 54, scope: !5784)
!5790 = !DILocalVariable(name: "object", arg: 2, scope: !5784, file: !5785, line: 137, type: !2069)
!5791 = !DILocation(line: 137, column: 69, scope: !5784)
!5792 = !DILocalVariable(name: "size", arg: 3, scope: !5784, file: !5785, line: 138, type: !368)
!5793 = !DILocation(line: 138, column: 12, scope: !5784)
!5794 = !DILocalVariable(name: "flags", arg: 4, scope: !5784, file: !5785, line: 138, type: !188)
!5795 = !DILocation(line: 138, column: 24, scope: !5784)
!5796 = !DILocation(line: 140, column: 17, scope: !5784)
!5797 = !DILocation(line: 140, column: 2, scope: !5784)
!5798 = distinct !DISubprogram(name: "connect_type_show", scope: !3, file: !3, line: 28, type: !4547, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5799 = !DILocalVariable(name: "dev", arg: 1, scope: !5798, file: !3, line: 28, type: !276)
!5800 = !DILocation(line: 28, column: 49, scope: !5798)
!5801 = !DILocalVariable(name: "attr", arg: 2, scope: !5798, file: !3, line: 29, type: !4549)
!5802 = !DILocation(line: 29, column: 31, scope: !5798)
!5803 = !DILocalVariable(name: "buf", arg: 3, scope: !5798, file: !3, line: 29, type: !321)
!5804 = !DILocation(line: 29, column: 43, scope: !5798)
!5805 = !DILocalVariable(name: "port_dev", scope: !5798, file: !3, line: 31, type: !191)
!5806 = !DILocation(line: 31, column: 19, scope: !5798)
!5807 = !DILocalVariable(name: "__mptr", scope: !5808, file: !3, line: 31, type: !190)
!5808 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 31, column: 30)
!5809 = !DILocation(line: 31, column: 30, scope: !5808)
!5810 = !DILocation(line: 31, column: 30, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 31, column: 30)
!5812 = !DILocalVariable(name: "result", scope: !5798, file: !3, line: 32, type: !321)
!5813 = !DILocation(line: 32, column: 8, scope: !5798)
!5814 = !DILocation(line: 34, column: 10, scope: !5798)
!5815 = !DILocation(line: 34, column: 20, scope: !5798)
!5816 = !DILocation(line: 34, column: 2, scope: !5798)
!5817 = !DILocation(line: 36, column: 10, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 34, column: 34)
!5819 = !DILocation(line: 37, column: 3, scope: !5818)
!5820 = !DILocation(line: 39, column: 10, scope: !5818)
!5821 = !DILocation(line: 40, column: 3, scope: !5818)
!5822 = !DILocation(line: 42, column: 10, scope: !5818)
!5823 = !DILocation(line: 43, column: 3, scope: !5818)
!5824 = !DILocation(line: 45, column: 10, scope: !5818)
!5825 = !DILocation(line: 46, column: 3, scope: !5818)
!5826 = !DILocation(line: 49, column: 17, scope: !5798)
!5827 = !DILocation(line: 49, column: 30, scope: !5798)
!5828 = !DILocation(line: 49, column: 9, scope: !5798)
!5829 = !DILocation(line: 49, column: 2, scope: !5798)
!5830 = distinct !DISubprogram(name: "location_show", scope: !3, file: !3, line: 19, type: !4547, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5831 = !DILocalVariable(name: "dev", arg: 1, scope: !5830, file: !3, line: 19, type: !276)
!5832 = !DILocation(line: 19, column: 45, scope: !5830)
!5833 = !DILocalVariable(name: "attr", arg: 2, scope: !5830, file: !3, line: 20, type: !4549)
!5834 = !DILocation(line: 20, column: 34, scope: !5830)
!5835 = !DILocalVariable(name: "buf", arg: 3, scope: !5830, file: !3, line: 20, type: !321)
!5836 = !DILocation(line: 20, column: 46, scope: !5830)
!5837 = !DILocalVariable(name: "port_dev", scope: !5830, file: !3, line: 22, type: !191)
!5838 = !DILocation(line: 22, column: 19, scope: !5830)
!5839 = !DILocalVariable(name: "__mptr", scope: !5840, file: !3, line: 22, type: !190)
!5840 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 22, column: 30)
!5841 = !DILocation(line: 22, column: 30, scope: !5840)
!5842 = !DILocation(line: 22, column: 30, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 22, column: 30)
!5844 = !DILocation(line: 24, column: 17, scope: !5830)
!5845 = !DILocation(line: 24, column: 34, scope: !5830)
!5846 = !DILocation(line: 24, column: 44, scope: !5830)
!5847 = !DILocation(line: 24, column: 9, scope: !5830)
!5848 = !DILocation(line: 24, column: 2, scope: !5830)
!5849 = distinct !DISubprogram(name: "quirks_show", scope: !3, file: !3, line: 62, type: !4547, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5850 = !DILocalVariable(name: "dev", arg: 1, scope: !5849, file: !3, line: 62, type: !276)
!5851 = !DILocation(line: 62, column: 43, scope: !5849)
!5852 = !DILocalVariable(name: "attr", arg: 2, scope: !5849, file: !3, line: 63, type: !4549)
!5853 = !DILocation(line: 63, column: 32, scope: !5849)
!5854 = !DILocalVariable(name: "buf", arg: 3, scope: !5849, file: !3, line: 63, type: !321)
!5855 = !DILocation(line: 63, column: 44, scope: !5849)
!5856 = !DILocalVariable(name: "port_dev", scope: !5849, file: !3, line: 65, type: !191)
!5857 = !DILocation(line: 65, column: 19, scope: !5849)
!5858 = !DILocalVariable(name: "__mptr", scope: !5859, file: !3, line: 65, type: !190)
!5859 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 65, column: 30)
!5860 = !DILocation(line: 65, column: 30, scope: !5859)
!5861 = !DILocation(line: 65, column: 30, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 65, column: 30)
!5863 = !DILocation(line: 67, column: 17, scope: !5849)
!5864 = !DILocation(line: 67, column: 32, scope: !5849)
!5865 = !DILocation(line: 67, column: 42, scope: !5849)
!5866 = !DILocation(line: 67, column: 9, scope: !5849)
!5867 = !DILocation(line: 67, column: 2, scope: !5849)
!5868 = distinct !DISubprogram(name: "quirks_store", scope: !3, file: !3, line: 70, type: !4552, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5869 = !DILocalVariable(name: "dev", arg: 1, scope: !5868, file: !3, line: 70, type: !276)
!5870 = !DILocation(line: 70, column: 44, scope: !5868)
!5871 = !DILocalVariable(name: "attr", arg: 2, scope: !5868, file: !3, line: 70, type: !4549)
!5872 = !DILocation(line: 70, column: 74, scope: !5868)
!5873 = !DILocalVariable(name: "buf", arg: 3, scope: !5868, file: !3, line: 71, type: !284)
!5874 = !DILocation(line: 71, column: 20, scope: !5868)
!5875 = !DILocalVariable(name: "count", arg: 4, scope: !5868, file: !3, line: 71, type: !368)
!5876 = !DILocation(line: 71, column: 32, scope: !5868)
!5877 = !DILocalVariable(name: "port_dev", scope: !5868, file: !3, line: 73, type: !191)
!5878 = !DILocation(line: 73, column: 19, scope: !5868)
!5879 = !DILocalVariable(name: "__mptr", scope: !5880, file: !3, line: 73, type: !190)
!5880 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 73, column: 30)
!5881 = !DILocation(line: 73, column: 30, scope: !5880)
!5882 = !DILocation(line: 73, column: 30, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 73, column: 30)
!5884 = !DILocalVariable(name: "value", scope: !5868, file: !3, line: 74, type: !206)
!5885 = !DILocation(line: 74, column: 6, scope: !5868)
!5886 = !DILocation(line: 76, column: 16, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 76, column: 6)
!5888 = !DILocation(line: 76, column: 6, scope: !5887)
!5889 = !DILocation(line: 76, column: 6, scope: !5868)
!5890 = !DILocation(line: 77, column: 3, scope: !5887)
!5891 = !DILocation(line: 79, column: 21, scope: !5868)
!5892 = !DILocation(line: 79, column: 2, scope: !5868)
!5893 = !DILocation(line: 79, column: 12, scope: !5868)
!5894 = !DILocation(line: 79, column: 19, scope: !5868)
!5895 = !DILocation(line: 80, column: 9, scope: !5868)
!5896 = !DILocation(line: 80, column: 2, scope: !5868)
!5897 = !DILocation(line: 81, column: 1, scope: !5868)
!5898 = distinct !DISubprogram(name: "kstrtou32", scope: !5899, file: !5899, line: 405, type: !5900, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5899 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!151, !284, !7, !1372}
!5902 = !DILocalVariable(name: "s", arg: 1, scope: !5898, file: !5899, line: 405, type: !284)
!5903 = !DILocation(line: 405, column: 54, scope: !5898)
!5904 = !DILocalVariable(name: "base", arg: 2, scope: !5898, file: !5899, line: 405, type: !7)
!5905 = !DILocation(line: 405, column: 70, scope: !5898)
!5906 = !DILocalVariable(name: "res", arg: 3, scope: !5898, file: !5899, line: 405, type: !1372)
!5907 = !DILocation(line: 405, column: 81, scope: !5898)
!5908 = !DILocation(line: 407, column: 20, scope: !5898)
!5909 = !DILocation(line: 407, column: 23, scope: !5898)
!5910 = !DILocation(line: 407, column: 29, scope: !5898)
!5911 = !DILocation(line: 407, column: 9, scope: !5898)
!5912 = !DILocation(line: 407, column: 2, scope: !5898)
!5913 = distinct !DISubprogram(name: "over_current_count_show", scope: !3, file: !3, line: 53, type: !4547, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5914 = !DILocalVariable(name: "dev", arg: 1, scope: !5913, file: !3, line: 53, type: !276)
!5915 = !DILocation(line: 53, column: 55, scope: !5913)
!5916 = !DILocalVariable(name: "attr", arg: 2, scope: !5913, file: !3, line: 54, type: !4549)
!5917 = !DILocation(line: 54, column: 37, scope: !5913)
!5918 = !DILocalVariable(name: "buf", arg: 3, scope: !5913, file: !3, line: 54, type: !321)
!5919 = !DILocation(line: 54, column: 49, scope: !5913)
!5920 = !DILocalVariable(name: "port_dev", scope: !5913, file: !3, line: 56, type: !191)
!5921 = !DILocation(line: 56, column: 19, scope: !5913)
!5922 = !DILocalVariable(name: "__mptr", scope: !5923, file: !3, line: 56, type: !190)
!5923 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 56, column: 30)
!5924 = !DILocation(line: 56, column: 30, scope: !5923)
!5925 = !DILocation(line: 56, column: 30, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 56, column: 30)
!5927 = !DILocation(line: 58, column: 17, scope: !5913)
!5928 = !DILocation(line: 58, column: 30, scope: !5913)
!5929 = !DILocation(line: 58, column: 40, scope: !5913)
!5930 = !DILocation(line: 58, column: 9, scope: !5913)
!5931 = !DILocation(line: 58, column: 2, scope: !5913)
!5932 = distinct !DISubprogram(name: "usb3_lpm_permit_show", scope: !3, file: !3, line: 84, type: !4547, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5933 = !DILocalVariable(name: "dev", arg: 1, scope: !5932, file: !3, line: 84, type: !276)
!5934 = !DILocation(line: 84, column: 52, scope: !5932)
!5935 = !DILocalVariable(name: "attr", arg: 2, scope: !5932, file: !3, line: 85, type: !4549)
!5936 = !DILocation(line: 85, column: 35, scope: !5932)
!5937 = !DILocalVariable(name: "buf", arg: 3, scope: !5932, file: !3, line: 85, type: !321)
!5938 = !DILocation(line: 85, column: 47, scope: !5932)
!5939 = !DILocalVariable(name: "port_dev", scope: !5932, file: !3, line: 87, type: !191)
!5940 = !DILocation(line: 87, column: 19, scope: !5932)
!5941 = !DILocalVariable(name: "__mptr", scope: !5942, file: !3, line: 87, type: !190)
!5942 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 87, column: 30)
!5943 = !DILocation(line: 87, column: 30, scope: !5942)
!5944 = !DILocation(line: 87, column: 30, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 87, column: 30)
!5946 = !DILocalVariable(name: "p", scope: !5932, file: !3, line: 88, type: !284)
!5947 = !DILocation(line: 88, column: 14, scope: !5932)
!5948 = !DILocation(line: 90, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 90, column: 6)
!5950 = !DILocation(line: 90, column: 16, scope: !5949)
!5951 = !DILocation(line: 90, column: 6, scope: !5932)
!5952 = !DILocation(line: 91, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 91, column: 7)
!5954 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 90, column: 36)
!5955 = !DILocation(line: 91, column: 17, scope: !5953)
!5956 = !DILocation(line: 91, column: 7, scope: !5954)
!5957 = !DILocation(line: 92, column: 6, scope: !5953)
!5958 = !DILocation(line: 92, column: 4, scope: !5953)
!5959 = !DILocation(line: 94, column: 6, scope: !5953)
!5960 = !DILocation(line: 95, column: 2, scope: !5954)
!5961 = !DILocation(line: 96, column: 7, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 96, column: 7)
!5963 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 95, column: 9)
!5964 = !DILocation(line: 96, column: 17, scope: !5962)
!5965 = !DILocation(line: 96, column: 7, scope: !5963)
!5966 = !DILocation(line: 97, column: 6, scope: !5962)
!5967 = !DILocation(line: 97, column: 4, scope: !5962)
!5968 = !DILocation(line: 99, column: 6, scope: !5962)
!5969 = !DILocation(line: 102, column: 17, scope: !5932)
!5970 = !DILocation(line: 102, column: 30, scope: !5932)
!5971 = !DILocation(line: 102, column: 9, scope: !5932)
!5972 = !DILocation(line: 102, column: 2, scope: !5932)
!5973 = distinct !DISubprogram(name: "usb3_lpm_permit_store", scope: !3, file: !3, line: 105, type: !4552, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!5974 = !DILocalVariable(name: "dev", arg: 1, scope: !5973, file: !3, line: 105, type: !276)
!5975 = !DILocation(line: 105, column: 53, scope: !5973)
!5976 = !DILocalVariable(name: "attr", arg: 2, scope: !5973, file: !3, line: 106, type: !4549)
!5977 = !DILocation(line: 106, column: 36, scope: !5973)
!5978 = !DILocalVariable(name: "buf", arg: 3, scope: !5973, file: !3, line: 107, type: !284)
!5979 = !DILocation(line: 107, column: 23, scope: !5973)
!5980 = !DILocalVariable(name: "count", arg: 4, scope: !5973, file: !3, line: 107, type: !368)
!5981 = !DILocation(line: 107, column: 35, scope: !5973)
!5982 = !DILocalVariable(name: "port_dev", scope: !5973, file: !3, line: 109, type: !191)
!5983 = !DILocation(line: 109, column: 19, scope: !5973)
!5984 = !DILocalVariable(name: "__mptr", scope: !5985, file: !3, line: 109, type: !190)
!5985 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 109, column: 30)
!5986 = !DILocation(line: 109, column: 30, scope: !5985)
!5987 = !DILocation(line: 109, column: 30, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 109, column: 30)
!5989 = !DILocalVariable(name: "udev", scope: !5973, file: !3, line: 110, type: !196)
!5990 = !DILocation(line: 110, column: 21, scope: !5973)
!5991 = !DILocation(line: 110, column: 28, scope: !5973)
!5992 = !DILocation(line: 110, column: 38, scope: !5973)
!5993 = !DILocalVariable(name: "hcd", scope: !5973, file: !3, line: 111, type: !4173)
!5994 = !DILocation(line: 111, column: 18, scope: !5973)
!5995 = !DILocation(line: 113, column: 15, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 113, column: 6)
!5997 = !DILocation(line: 113, column: 7, scope: !5996)
!5998 = !DILocation(line: 113, column: 6, scope: !5973)
!5999 = !DILocation(line: 114, column: 3, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 113, column: 33)
!6001 = !DILocation(line: 114, column: 13, scope: !6000)
!6002 = !DILocation(line: 114, column: 32, scope: !6000)
!6003 = !DILocation(line: 115, column: 3, scope: !6000)
!6004 = !DILocation(line: 115, column: 13, scope: !6000)
!6005 = !DILocation(line: 115, column: 32, scope: !6000)
!6006 = !DILocation(line: 117, column: 2, scope: !6000)
!6007 = !DILocation(line: 117, column: 22, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 117, column: 13)
!6009 = !DILocation(line: 117, column: 14, scope: !6008)
!6010 = !DILocation(line: 117, column: 13, scope: !5996)
!6011 = !DILocation(line: 118, column: 3, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 117, column: 37)
!6013 = !DILocation(line: 118, column: 13, scope: !6012)
!6014 = !DILocation(line: 118, column: 32, scope: !6012)
!6015 = !DILocation(line: 119, column: 3, scope: !6012)
!6016 = !DILocation(line: 119, column: 13, scope: !6012)
!6017 = !DILocation(line: 119, column: 32, scope: !6012)
!6018 = !DILocation(line: 121, column: 2, scope: !6012)
!6019 = !DILocation(line: 121, column: 22, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 121, column: 13)
!6021 = !DILocation(line: 121, column: 14, scope: !6020)
!6022 = !DILocation(line: 121, column: 13, scope: !6008)
!6023 = !DILocation(line: 122, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 121, column: 37)
!6025 = !DILocation(line: 122, column: 13, scope: !6024)
!6026 = !DILocation(line: 122, column: 32, scope: !6024)
!6027 = !DILocation(line: 123, column: 3, scope: !6024)
!6028 = !DILocation(line: 123, column: 13, scope: !6024)
!6029 = !DILocation(line: 123, column: 32, scope: !6024)
!6030 = !DILocation(line: 125, column: 2, scope: !6024)
!6031 = !DILocation(line: 125, column: 22, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 125, column: 13)
!6033 = !DILocation(line: 125, column: 14, scope: !6032)
!6034 = !DILocation(line: 125, column: 13, scope: !6020)
!6035 = !DILocation(line: 126, column: 3, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 125, column: 36)
!6037 = !DILocation(line: 126, column: 13, scope: !6036)
!6038 = !DILocation(line: 126, column: 32, scope: !6036)
!6039 = !DILocation(line: 127, column: 3, scope: !6036)
!6040 = !DILocation(line: 127, column: 13, scope: !6036)
!6041 = !DILocation(line: 127, column: 32, scope: !6036)
!6042 = !DILocation(line: 128, column: 2, scope: !6036)
!6043 = !DILocation(line: 129, column: 3, scope: !6032)
!6044 = !DILocation(line: 134, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 134, column: 6)
!6046 = !DILocation(line: 134, column: 6, scope: !5973)
!6047 = !DILocation(line: 135, column: 20, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 134, column: 12)
!6049 = !DILocation(line: 135, column: 26, scope: !6048)
!6050 = !DILocation(line: 135, column: 9, scope: !6048)
!6051 = !DILocation(line: 135, column: 7, scope: !6048)
!6052 = !DILocation(line: 136, column: 8, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 136, column: 7)
!6054 = !DILocation(line: 136, column: 7, scope: !6048)
!6055 = !DILocation(line: 137, column: 4, scope: !6053)
!6056 = !DILocation(line: 138, column: 3, scope: !6048)
!6057 = !DILocation(line: 139, column: 14, scope: !6048)
!6058 = !DILocation(line: 139, column: 19, scope: !6048)
!6059 = !DILocation(line: 139, column: 3, scope: !6048)
!6060 = !DILocation(line: 140, column: 24, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 140, column: 7)
!6062 = !DILocation(line: 140, column: 8, scope: !6061)
!6063 = !DILocation(line: 140, column: 7, scope: !6048)
!6064 = !DILocation(line: 141, column: 19, scope: !6061)
!6065 = !DILocation(line: 141, column: 4, scope: !6061)
!6066 = !DILocation(line: 142, column: 16, scope: !6048)
!6067 = !DILocation(line: 142, column: 21, scope: !6048)
!6068 = !DILocation(line: 142, column: 3, scope: !6048)
!6069 = !DILocation(line: 143, column: 3, scope: !6048)
!6070 = !DILocation(line: 144, column: 2, scope: !6048)
!6071 = !DILocation(line: 146, column: 9, scope: !5973)
!6072 = !DILocation(line: 146, column: 2, scope: !5973)
!6073 = !DILocation(line: 147, column: 1, scope: !5973)
!6074 = distinct !DISubprogram(name: "bus_to_hcd", scope: !182, file: !182, line: 241, type: !6075, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6075 = !DISubroutineType(types: !6076)
!6076 = !{!4173, !272}
!6077 = !DILocalVariable(name: "bus", arg: 1, scope: !6074, file: !182, line: 241, type: !272)
!6078 = !DILocation(line: 241, column: 58, scope: !6074)
!6079 = !DILocalVariable(name: "__mptr", scope: !6080, file: !182, line: 243, type: !190)
!6080 = distinct !DILexicalBlock(scope: !6074, file: !182, line: 243, column: 9)
!6081 = !DILocation(line: 243, column: 9, scope: !6080)
!6082 = !DILocation(line: 243, column: 9, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6080, file: !182, line: 243, column: 9)
!6084 = !DILocation(line: 243, column: 2, scope: !6074)
!6085 = distinct !DISubprogram(name: "device_lock", scope: !60, file: !60, line: 729, type: !3276, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6086 = !DILocalVariable(name: "dev", arg: 1, scope: !6085, file: !60, line: 729, type: !276)
!6087 = !DILocation(line: 729, column: 47, scope: !6085)
!6088 = !DILocation(line: 731, column: 14, scope: !6085)
!6089 = !DILocation(line: 731, column: 19, scope: !6085)
!6090 = !DILocation(line: 731, column: 2, scope: !6085)
!6091 = !DILocation(line: 732, column: 1, scope: !6085)
!6092 = distinct !DISubprogram(name: "device_unlock", scope: !60, file: !60, line: 744, type: !3276, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6093 = !DILocalVariable(name: "dev", arg: 1, scope: !6092, file: !60, line: 744, type: !276)
!6094 = !DILocation(line: 744, column: 49, scope: !6092)
!6095 = !DILocation(line: 746, column: 16, scope: !6092)
!6096 = !DILocation(line: 746, column: 21, scope: !6092)
!6097 = !DILocation(line: 746, column: 2, scope: !6092)
!6098 = !DILocation(line: 747, column: 1, scope: !6092)
!6099 = distinct !DISubprogram(name: "usb_port_shutdown", scope: !3, file: !3, line: 294, type: !3276, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6100 = !DILocalVariable(name: "dev", arg: 1, scope: !6099, file: !3, line: 294, type: !276)
!6101 = !DILocation(line: 294, column: 46, scope: !6099)
!6102 = !DILocalVariable(name: "port_dev", scope: !6099, file: !3, line: 296, type: !191)
!6103 = !DILocation(line: 296, column: 19, scope: !6099)
!6104 = !DILocalVariable(name: "__mptr", scope: !6105, file: !3, line: 296, type: !190)
!6105 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 296, column: 30)
!6106 = !DILocation(line: 296, column: 30, scope: !6105)
!6107 = !DILocation(line: 296, column: 30, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 296, column: 30)
!6109 = !DILocation(line: 298, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 298, column: 6)
!6111 = !DILocation(line: 298, column: 16, scope: !6110)
!6112 = !DILocation(line: 298, column: 6, scope: !6099)
!6113 = !DILocation(line: 299, column: 33, scope: !6110)
!6114 = !DILocation(line: 299, column: 43, scope: !6110)
!6115 = !DILocation(line: 299, column: 3, scope: !6110)
!6116 = !DILocation(line: 300, column: 1, scope: !6099)
!6117 = distinct !DISubprogram(name: "kobject_name", scope: !281, file: !281, line: 88, type: !6118, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!284, !6120}
!6120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6121, size: 64)
!6121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!6122 = !DILocalVariable(name: "kobj", arg: 1, scope: !6117, file: !281, line: 88, type: !6120)
!6123 = !DILocation(line: 88, column: 62, scope: !6117)
!6124 = !DILocation(line: 90, column: 9, scope: !6117)
!6125 = !DILocation(line: 90, column: 15, scope: !6117)
!6126 = !DILocation(line: 90, column: 2, scope: !6117)
!6127 = distinct !DISubprogram(name: "match_location", scope: !3, file: !3, line: 445, type: !6128, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!151, !196, !190}
!6130 = !DILocalVariable(name: "peer_hdev", arg: 1, scope: !6127, file: !3, line: 445, type: !196)
!6131 = !DILocation(line: 445, column: 46, scope: !6127)
!6132 = !DILocalVariable(name: "p", arg: 2, scope: !6127, file: !3, line: 445, type: !190)
!6133 = !DILocation(line: 445, column: 63, scope: !6127)
!6134 = !DILocalVariable(name: "port1", scope: !6127, file: !3, line: 447, type: !151)
!6135 = !DILocation(line: 447, column: 6, scope: !6127)
!6136 = !DILocalVariable(name: "hcd", scope: !6127, file: !3, line: 448, type: !4173)
!6137 = !DILocation(line: 448, column: 18, scope: !6127)
!6138 = !DILocalVariable(name: "peer_hcd", scope: !6127, file: !3, line: 448, type: !4173)
!6139 = !DILocation(line: 448, column: 24, scope: !6127)
!6140 = !DILocalVariable(name: "port_dev", scope: !6127, file: !3, line: 449, type: !191)
!6141 = !DILocation(line: 449, column: 19, scope: !6127)
!6142 = !DILocation(line: 449, column: 30, scope: !6127)
!6143 = !DILocalVariable(name: "peer", scope: !6127, file: !3, line: 449, type: !191)
!6144 = !DILocation(line: 449, column: 34, scope: !6127)
!6145 = !DILocalVariable(name: "peer_hub", scope: !6127, file: !3, line: 450, type: !4440)
!6146 = !DILocation(line: 450, column: 18, scope: !6127)
!6147 = !DILocation(line: 450, column: 51, scope: !6127)
!6148 = !DILocation(line: 450, column: 29, scope: !6127)
!6149 = !DILocalVariable(name: "hdev", scope: !6127, file: !3, line: 451, type: !196)
!6150 = !DILocation(line: 451, column: 21, scope: !6127)
!6151 = !DILocalVariable(name: "__mptr", scope: !6152, file: !3, line: 451, type: !190)
!6152 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 451, column: 28)
!6153 = !DILocation(line: 451, column: 28, scope: !6152)
!6154 = !DILocation(line: 451, column: 28, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6152, file: !3, line: 451, column: 28)
!6156 = !DILocation(line: 453, column: 7, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 453, column: 6)
!6158 = !DILocation(line: 453, column: 6, scope: !6127)
!6159 = !DILocation(line: 454, column: 3, scope: !6157)
!6160 = !DILocation(line: 456, column: 19, scope: !6127)
!6161 = !DILocation(line: 456, column: 25, scope: !6127)
!6162 = !DILocation(line: 456, column: 8, scope: !6127)
!6163 = !DILocation(line: 456, column: 6, scope: !6127)
!6164 = !DILocation(line: 457, column: 24, scope: !6127)
!6165 = !DILocation(line: 457, column: 35, scope: !6127)
!6166 = !DILocation(line: 457, column: 13, scope: !6127)
!6167 = !DILocation(line: 457, column: 11, scope: !6127)
!6168 = !DILocation(line: 459, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 459, column: 6)
!6170 = !DILocation(line: 459, column: 18, scope: !6169)
!6171 = !DILocation(line: 459, column: 23, scope: !6169)
!6172 = !DILocation(line: 459, column: 15, scope: !6169)
!6173 = !DILocation(line: 459, column: 6, scope: !6127)
!6174 = !DILocation(line: 460, column: 3, scope: !6169)
!6175 = !DILocation(line: 462, column: 13, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 462, column: 2)
!6177 = !DILocation(line: 462, column: 7, scope: !6176)
!6178 = !DILocation(line: 462, column: 18, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 462, column: 2)
!6180 = !DILocation(line: 462, column: 27, scope: !6179)
!6181 = !DILocation(line: 462, column: 38, scope: !6179)
!6182 = !DILocation(line: 462, column: 24, scope: !6179)
!6183 = !DILocation(line: 462, column: 2, scope: !6176)
!6184 = !DILocation(line: 463, column: 10, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 462, column: 57)
!6186 = !DILocation(line: 463, column: 20, scope: !6185)
!6187 = !DILocation(line: 463, column: 26, scope: !6185)
!6188 = !DILocation(line: 463, column: 32, scope: !6185)
!6189 = !DILocation(line: 463, column: 8, scope: !6185)
!6190 = !DILocation(line: 464, column: 7, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 464, column: 7)
!6192 = !DILocation(line: 464, column: 12, scope: !6191)
!6193 = !DILocation(line: 464, column: 15, scope: !6191)
!6194 = !DILocation(line: 464, column: 21, scope: !6191)
!6195 = !DILocation(line: 464, column: 33, scope: !6191)
!6196 = !DILocation(line: 464, column: 43, scope: !6191)
!6197 = !DILocation(line: 464, column: 30, scope: !6191)
!6198 = !DILocation(line: 464, column: 7, scope: !6185)
!6199 = !DILocation(line: 465, column: 22, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 464, column: 53)
!6201 = !DILocation(line: 465, column: 32, scope: !6200)
!6202 = !DILocation(line: 465, column: 4, scope: !6200)
!6203 = !DILocation(line: 466, column: 4, scope: !6200)
!6204 = !DILocation(line: 468, column: 2, scope: !6185)
!6205 = !DILocation(line: 462, column: 53, scope: !6179)
!6206 = !DILocation(line: 462, column: 2, scope: !6179)
!6207 = distinct !{!6207, !6183, !6208}
!6208 = !DILocation(line: 468, column: 2, scope: !6176)
!6209 = !DILocation(line: 470, column: 2, scope: !6127)
!6210 = !DILocation(line: 471, column: 1, scope: !6127)
!6211 = !DILocalVariable(name: "left", arg: 1, scope: !4574, file: !3, line: 390, type: !191)
!6212 = !DILocation(line: 390, column: 48, scope: !4574)
!6213 = !DILocalVariable(name: "right", arg: 2, scope: !4574, file: !3, line: 390, type: !191)
!6214 = !DILocation(line: 390, column: 71, scope: !4574)
!6215 = !DILocalVariable(name: "rc", scope: !4574, file: !3, line: 392, type: !151)
!6216 = !DILocation(line: 392, column: 6, scope: !4574)
!6217 = !DILocation(line: 394, column: 18, scope: !4574)
!6218 = !DILocation(line: 394, column: 24, scope: !4574)
!6219 = !DILocation(line: 394, column: 7, scope: !4574)
!6220 = !DILocation(line: 394, column: 5, scope: !4574)
!6221 = !DILocation(line: 395, column: 6, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 395, column: 6)
!6223 = !DILocation(line: 395, column: 9, scope: !6222)
!6224 = !DILocation(line: 395, column: 6, scope: !4574)
!6225 = !DILocation(line: 397, column: 2, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 395, column: 15)
!6227 = !DILocalVariable(name: "__ret_print_once", scope: !6228, file: !3, line: 400, type: !533)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 400, column: 3)
!6229 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 397, column: 9)
!6230 = !DILocation(line: 400, column: 3, scope: !6228)
!6231 = !DILocation(line: 400, column: 3, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 400, column: 3)
!6233 = !DILocation(line: 400, column: 3, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6232, file: !3, line: 400, column: 3)
!6235 = !DILocation(line: 401, column: 28, scope: !6229)
!6236 = !DILocation(line: 403, column: 1, scope: !4574)
!6237 = distinct !DISubprogram(name: "link_peers", scope: !3, file: !3, line: 321, type: !6238, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !237)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!151, !191, !191}
!6240 = !DILocalVariable(name: "left", arg: 1, scope: !6237, file: !3, line: 321, type: !191)
!6241 = !DILocation(line: 321, column: 40, scope: !6237)
!6242 = !DILocalVariable(name: "right", arg: 2, scope: !6237, file: !3, line: 321, type: !191)
!6243 = !DILocation(line: 321, column: 63, scope: !6237)
!6244 = !DILocalVariable(name: "ss_port", scope: !6237, file: !3, line: 323, type: !191)
!6245 = !DILocation(line: 323, column: 19, scope: !6237)
!6246 = !DILocalVariable(name: "hs_port", scope: !6237, file: !3, line: 323, type: !191)
!6247 = !DILocation(line: 323, column: 29, scope: !6237)
!6248 = !DILocalVariable(name: "rc", scope: !6237, file: !3, line: 324, type: !151)
!6249 = !DILocation(line: 324, column: 6, scope: !6237)
!6250 = !DILocation(line: 326, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 326, column: 6)
!6252 = !DILocation(line: 326, column: 12, scope: !6251)
!6253 = !DILocation(line: 326, column: 20, scope: !6251)
!6254 = !DILocation(line: 326, column: 17, scope: !6251)
!6255 = !DILocation(line: 326, column: 26, scope: !6251)
!6256 = !DILocation(line: 326, column: 29, scope: !6251)
!6257 = !DILocation(line: 326, column: 36, scope: !6251)
!6258 = !DILocation(line: 326, column: 44, scope: !6251)
!6259 = !DILocation(line: 326, column: 41, scope: !6251)
!6260 = !DILocation(line: 326, column: 6, scope: !6237)
!6261 = !DILocation(line: 327, column: 3, scope: !6251)
!6262 = !DILocation(line: 329, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 329, column: 6)
!6264 = !DILocation(line: 329, column: 12, scope: !6263)
!6265 = !DILocation(line: 329, column: 17, scope: !6263)
!6266 = !DILocation(line: 329, column: 20, scope: !6263)
!6267 = !DILocation(line: 329, column: 27, scope: !6263)
!6268 = !DILocation(line: 329, column: 6, scope: !6237)
!6269 = !DILocalVariable(name: "lpeer", scope: !6270, file: !3, line: 330, type: !191)
!6270 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 329, column: 33)
!6271 = !DILocation(line: 330, column: 20, scope: !6270)
!6272 = !DILocation(line: 330, column: 28, scope: !6270)
!6273 = !DILocation(line: 330, column: 34, scope: !6270)
!6274 = !DILocalVariable(name: "rpeer", scope: !6270, file: !3, line: 331, type: !191)
!6275 = !DILocation(line: 331, column: 20, scope: !6270)
!6276 = !DILocation(line: 331, column: 28, scope: !6270)
!6277 = !DILocation(line: 331, column: 35, scope: !6270)
!6278 = !DILocalVariable(name: "method", scope: !6270, file: !3, line: 332, type: !321)
!6279 = !DILocation(line: 332, column: 9, scope: !6270)
!6280 = !DILocation(line: 334, column: 7, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 334, column: 7)
!6282 = !DILocation(line: 334, column: 13, scope: !6281)
!6283 = !DILocation(line: 334, column: 22, scope: !6281)
!6284 = !DILocation(line: 334, column: 25, scope: !6281)
!6285 = !DILocation(line: 334, column: 31, scope: !6281)
!6286 = !DILocation(line: 334, column: 43, scope: !6281)
!6287 = !DILocation(line: 334, column: 50, scope: !6281)
!6288 = !DILocation(line: 334, column: 40, scope: !6281)
!6289 = !DILocation(line: 334, column: 7, scope: !6270)
!6290 = !DILocation(line: 335, column: 11, scope: !6281)
!6291 = !DILocation(line: 335, column: 4, scope: !6281)
!6292 = !DILocation(line: 337, column: 11, scope: !6281)
!6293 = !DILocation(line: 339, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 339, column: 3)
!6295 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 339, column: 3)
!6296 = !DILocation(line: 339, column: 3, scope: !6295)
!6297 = !DILocation(line: 345, column: 3, scope: !6270)
!6298 = !DILocation(line: 348, column: 26, scope: !6237)
!6299 = !DILocation(line: 348, column: 32, scope: !6237)
!6300 = !DILocation(line: 348, column: 36, scope: !6237)
!6301 = !DILocation(line: 348, column: 43, scope: !6237)
!6302 = !DILocation(line: 348, column: 50, scope: !6237)
!6303 = !DILocation(line: 348, column: 54, scope: !6237)
!6304 = !DILocation(line: 348, column: 7, scope: !6237)
!6305 = !DILocation(line: 348, column: 5, scope: !6237)
!6306 = !DILocation(line: 349, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 349, column: 6)
!6308 = !DILocation(line: 349, column: 6, scope: !6237)
!6309 = !DILocation(line: 350, column: 10, scope: !6307)
!6310 = !DILocation(line: 350, column: 3, scope: !6307)
!6311 = !DILocation(line: 351, column: 26, scope: !6237)
!6312 = !DILocation(line: 351, column: 33, scope: !6237)
!6313 = !DILocation(line: 351, column: 37, scope: !6237)
!6314 = !DILocation(line: 351, column: 44, scope: !6237)
!6315 = !DILocation(line: 351, column: 50, scope: !6237)
!6316 = !DILocation(line: 351, column: 54, scope: !6237)
!6317 = !DILocation(line: 351, column: 7, scope: !6237)
!6318 = !DILocation(line: 351, column: 5, scope: !6237)
!6319 = !DILocation(line: 352, column: 6, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 352, column: 6)
!6321 = !DILocation(line: 352, column: 6, scope: !6237)
!6322 = !DILocation(line: 353, column: 22, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6320, file: !3, line: 352, column: 10)
!6324 = !DILocation(line: 353, column: 28, scope: !6323)
!6325 = !DILocation(line: 353, column: 32, scope: !6323)
!6326 = !DILocation(line: 353, column: 3, scope: !6323)
!6327 = !DILocation(line: 354, column: 10, scope: !6323)
!6328 = !DILocation(line: 354, column: 3, scope: !6323)
!6329 = !DILocation(line: 362, column: 6, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 362, column: 6)
!6331 = !DILocation(line: 362, column: 12, scope: !6330)
!6332 = !DILocation(line: 362, column: 6, scope: !6237)
!6333 = !DILocation(line: 363, column: 13, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 362, column: 27)
!6335 = !DILocation(line: 363, column: 11, scope: !6334)
!6336 = !DILocalVariable(name: "__ret_warn_on", scope: !6337, file: !3, line: 364, type: !151)
!6337 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 364, column: 3)
!6338 = !DILocation(line: 364, column: 3, scope: !6337)
!6339 = !DILocation(line: 364, column: 3, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 364, column: 3)
!6341 = !DILocation(line: 364, column: 3, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 364, column: 3)
!6343 = !DILocation(line: 364, column: 3, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 364, column: 3)
!6345 = !DILocation(line: 364, column: 3, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 364, column: 3)
!6347 = !{i32 -2141822863, i32 -2141822834, i32 -2141822788, i32 -2141822730, i32 -2141822676, i32 -2141822622, i32 -2141822567, i32 -2141822536}
!6348 = !DILocation(line: 364, column: 3, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 364, column: 3)
!6350 = !{i32 -2141822131, i32 -2141822124, i32 -2141822072, i32 -2141822041, i32 -2141822011}
!6351 = !DILocation(line: 364, column: 3, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 364, column: 3)
!6353 = !DILocation(line: 365, column: 13, scope: !6334)
!6354 = !DILocation(line: 365, column: 11, scope: !6334)
!6355 = !DILocation(line: 366, column: 2, scope: !6334)
!6356 = !DILocation(line: 367, column: 13, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 366, column: 9)
!6358 = !DILocation(line: 367, column: 11, scope: !6357)
!6359 = !DILocalVariable(name: "__ret_warn_on", scope: !6360, file: !3, line: 368, type: !151)
!6360 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 368, column: 3)
!6361 = !DILocation(line: 368, column: 3, scope: !6360)
!6362 = !DILocation(line: 368, column: 3, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 368, column: 3)
!6364 = !DILocation(line: 368, column: 3, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 368, column: 3)
!6366 = !DILocation(line: 368, column: 3, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 368, column: 3)
!6368 = !DILocation(line: 368, column: 3, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 368, column: 3)
!6370 = !{i32 -2141821418, i32 -2141821389, i32 -2141821343, i32 -2141821285, i32 -2141821231, i32 -2141821177, i32 -2141821122, i32 -2141821091}
!6371 = !DILocation(line: 368, column: 3, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 368, column: 3)
!6373 = !{i32 -2141820686, i32 -2141820679, i32 -2141820627, i32 -2141820596, i32 -2141820566}
!6374 = !DILocation(line: 368, column: 3, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 368, column: 3)
!6376 = !DILocation(line: 369, column: 13, scope: !6357)
!6377 = !DILocation(line: 369, column: 11, scope: !6357)
!6378 = !DILocation(line: 371, column: 23, scope: !6237)
!6379 = !DILocation(line: 371, column: 32, scope: !6237)
!6380 = !DILocation(line: 371, column: 2, scope: !6237)
!6381 = !DILocation(line: 373, column: 15, scope: !6237)
!6382 = !DILocation(line: 373, column: 2, scope: !6237)
!6383 = !DILocation(line: 373, column: 8, scope: !6237)
!6384 = !DILocation(line: 373, column: 13, scope: !6237)
!6385 = !DILocation(line: 374, column: 16, scope: !6237)
!6386 = !DILocation(line: 374, column: 2, scope: !6237)
!6387 = !DILocation(line: 374, column: 9, scope: !6237)
!6388 = !DILocation(line: 374, column: 14, scope: !6237)
!6389 = !DILocation(line: 384, column: 23, scope: !6237)
!6390 = !DILocation(line: 384, column: 32, scope: !6237)
!6391 = !DILocation(line: 384, column: 2, scope: !6237)
!6392 = !DILocation(line: 385, column: 18, scope: !6237)
!6393 = !DILocation(line: 385, column: 27, scope: !6237)
!6394 = !DILocation(line: 385, column: 2, scope: !6237)
!6395 = !DILocation(line: 387, column: 2, scope: !6237)
!6396 = !DILocation(line: 388, column: 1, scope: !6237)
