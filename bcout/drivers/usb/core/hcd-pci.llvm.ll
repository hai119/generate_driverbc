; ModuleID = '../bcout/drivers/usb/core/hcd-pci.llvm.bc'
source_filename = "drivers/usb/core/hcd-pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
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
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.66, i64 }
%union.anon.66 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], void (%struct.irq_affinity*, i32)*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@companions_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @companions_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @companions_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@usb_hcd_pci_pm_ops = dso_local constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @hcd_pci_suspend, i32 (%struct.device*)* @hcd_pci_resume, i32 (%struct.device*)* @check_root_hub_suspended, i32 (%struct.device*)* null, i32 (%struct.device*)* @hcd_pci_suspend, i32 (%struct.device*)* @hcd_pci_restore, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @hcd_pci_suspend_noirq, i32 (%struct.device*)* @hcd_pci_resume_noirq, i32 (%struct.device*)* @check_root_hub_suspended, i32 (%struct.device*)* null, i32 (%struct.device*)* @hcd_pci_suspend_noirq, i32 (%struct.device*)* @hcd_pci_resume_noirq, i32 (%struct.device*)* @hcd_pci_runtime_suspend, i32 (%struct.device*)* @hcd_pci_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !4177
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__func__.suspend_common = private unnamed_addr constant [15 x i8] c"suspend_common\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"can't re-enable after resume, %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"PCI post-resume error %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Root hub is not suspended\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Secondary root hub is not suspended\0A\00", align 1
@__func__.hcd_pci_suspend_noirq = private unnamed_addr constant [22 x i8] c"hcd_pci_suspend_noirq\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id, %struct.hc_driver* %driver) #0 !dbg !4185 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %driver.addr = alloca %struct.hc_driver*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %retval1 = alloca i32, align 4
  %hcd_irq = alloca i32, align 4
  %region = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  store %struct.hc_driver* %driver, %struct.hc_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hc_driver** %driver.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.declare(metadata i32* %hcd_irq, metadata !4775, metadata !DIExpression()), !dbg !4776
  store i32 0, i32* %hcd_irq, align 4, !dbg !4776
  %call = call i32 @usb_disabled() #7, !dbg !4777
  %tobool = icmp ne i32 %call, 0, !dbg !4777
  br i1 %tobool, label %if.then, label %if.end, !dbg !4779

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4780
  br label %return, !dbg !4780

if.end:                                           ; preds = %entry
  %0 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !4781
  %tobool2 = icmp ne %struct.pci_device_id* %0, null, !dbg !4781
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4783

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4784
  br label %return, !dbg !4784

if.end4:                                          ; preds = %if.end
  %1 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4785
  %tobool5 = icmp ne %struct.hc_driver* %1, null, !dbg !4785
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4787

if.then6:                                         ; preds = %if.end4
  store i32 -22, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

if.end7:                                          ; preds = %if.end4
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4789
  %call8 = call i32 @pci_enable_device(%struct.pci_dev* %2) #7, !dbg !4791
  %cmp = icmp slt i32 %call8, 0, !dbg !4792
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4793

if.then9:                                         ; preds = %if.end7
  store i32 -19, i32* %retval, align 4, !dbg !4794
  br label %return, !dbg !4794

if.end10:                                         ; preds = %if.end7
  %3 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4795
  %flags = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %3, i32 0, i32 4, !dbg !4797
  %4 = load i32, i32* %flags, align 8, !dbg !4797
  %and = and i32 %4, 112, !dbg !4798
  %cmp11 = icmp slt i32 %and, 64, !dbg !4799
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !4800

if.then12:                                        ; preds = %if.end10
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4801
  %call13 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %5, i32 1, i32 1, i32 3) #7, !dbg !4803
  store i32 %call13, i32* %retval1, align 4, !dbg !4804
  %6 = load i32, i32* %retval1, align 4, !dbg !4805
  %cmp14 = icmp slt i32 %6, 0, !dbg !4807
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !4808

if.then15:                                        ; preds = %if.then12
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4809
  %dev16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !4809
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4809
  %call17 = call i8* @pci_name(%struct.pci_dev* %8) #7, !dbg !4809
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %call17) #8, !dbg !4809
  store i32 -19, i32* %retval1, align 4, !dbg !4811
  br label %disable_pci, !dbg !4812

if.end18:                                         ; preds = %if.then12
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4813
  %call19 = call i32 @pci_irq_vector(%struct.pci_dev* %9, i32 0) #7, !dbg !4814
  store i32 %call19, i32* %hcd_irq, align 4, !dbg !4815
  br label %if.end20, !dbg !4816

if.end20:                                         ; preds = %if.end18, %if.end10
  %10 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4817
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4818
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4819
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4820
  %call22 = call i8* @pci_name(%struct.pci_dev* %12) #7, !dbg !4821
  %call23 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %10, %struct.device* %dev21, i8* %call22) #7, !dbg !4822
  store %struct.usb_hcd* %call23, %struct.usb_hcd** %hcd, align 8, !dbg !4823
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4824
  %tobool24 = icmp ne %struct.usb_hcd* %13, null, !dbg !4824
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4826

if.then25:                                        ; preds = %if.end20
  store i32 -12, i32* %retval1, align 4, !dbg !4827
  br label %free_irq_vectors, !dbg !4829

if.end26:                                         ; preds = %if.end20
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4830
  %call27 = call i32 @usb_hcd_amd_remote_wakeup_quirk(%struct.pci_dev* %14) #7, !dbg !4831
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4831
  br i1 %tobool28, label %land.rhs, label %land.end, !dbg !4832

land.rhs:                                         ; preds = %if.end26
  %15 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4833
  %flags29 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %15, i32 0, i32 4, !dbg !4834
  %16 = load i32, i32* %flags29, align 8, !dbg !4834
  %and30 = and i32 %16, 80, !dbg !4835
  %tobool31 = icmp ne i32 %and30, 0, !dbg !4832
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end26
  %17 = phi i1 [ false, %if.end26 ], [ %tobool31, %land.rhs ], !dbg !4836
  %18 = zext i1 %17 to i64, !dbg !4837
  %cond = select i1 %17, i32 1, i32 0, !dbg !4837
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4838
  %amd_resume_bug = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 14, !dbg !4839
  %20 = trunc i32 %cond to i16, !dbg !4840
  %bf.load = load i16, i16* %amd_resume_bug, align 4, !dbg !4840
  %bf.value = and i16 %20, 1, !dbg !4840
  %bf.shl = shl i16 %bf.value, 8, !dbg !4840
  %bf.clear = and i16 %bf.load, -257, !dbg !4840
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !4840
  store i16 %bf.set, i16* %amd_resume_bug, align 4, !dbg !4840
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !4840
  %21 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4841
  %flags32 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %21, i32 0, i32 4, !dbg !4843
  %22 = load i32, i32* %flags32, align 8, !dbg !4843
  %and33 = and i32 %22, 1, !dbg !4844
  %tobool34 = icmp ne i32 %and33, 0, !dbg !4844
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !4845

if.then35:                                        ; preds = %land.end
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4846
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 44, !dbg !4846
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4846
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4846
  %24 = load i64, i64* %start, align 8, !dbg !4846
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4848
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 17, !dbg !4849
  store i64 %24, i64* %rsrc_start, align 8, !dbg !4850
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4851
  %resource36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 44, !dbg !4851
  %arrayidx37 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource36, i64 0, i64 0, !dbg !4851
  %start38 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx37, i32 0, i32 0, !dbg !4851
  %27 = load i64, i64* %start38, align 8, !dbg !4851
  %cmp39 = icmp eq i64 %27, 0, !dbg !4851
  br i1 %cmp39, label %land.lhs.true, label %cond.false, !dbg !4851

land.lhs.true:                                    ; preds = %if.then35
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4851
  %resource40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 44, !dbg !4851
  %arrayidx41 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource40, i64 0, i64 0, !dbg !4851
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx41, i32 0, i32 1, !dbg !4851
  %29 = load i64, i64* %end, align 8, !dbg !4851
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4851
  %resource42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 44, !dbg !4851
  %arrayidx43 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource42, i64 0, i64 0, !dbg !4851
  %start44 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx43, i32 0, i32 0, !dbg !4851
  %31 = load i64, i64* %start44, align 8, !dbg !4851
  %cmp45 = icmp eq i64 %29, %31, !dbg !4851
  br i1 %cmp45, label %cond.true, label %cond.false, !dbg !4851

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4851

cond.false:                                       ; preds = %land.lhs.true, %if.then35
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4851
  %resource46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 44, !dbg !4851
  %arrayidx47 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource46, i64 0, i64 0, !dbg !4851
  %end48 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx47, i32 0, i32 1, !dbg !4851
  %33 = load i64, i64* %end48, align 8, !dbg !4851
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4851
  %resource49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 44, !dbg !4851
  %arrayidx50 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource49, i64 0, i64 0, !dbg !4851
  %start51 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx50, i32 0, i32 0, !dbg !4851
  %35 = load i64, i64* %start51, align 8, !dbg !4851
  %sub = sub i64 %33, %35, !dbg !4851
  %add = add i64 %sub, 1, !dbg !4851
  br label %cond.end, !dbg !4851

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond52 = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4851
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4852
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 18, !dbg !4853
  store i64 %cond52, i64* %rsrc_len, align 8, !dbg !4854
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4855
  %dev53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 41, !dbg !4855
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4855
  %rsrc_start54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 17, !dbg !4855
  %39 = load i64, i64* %rsrc_start54, align 8, !dbg !4855
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4855
  %rsrc_len55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 18, !dbg !4855
  %41 = load i64, i64* %rsrc_len55, align 8, !dbg !4855
  %42 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4855
  %description = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %42, i32 0, i32 0, !dbg !4855
  %43 = load i8*, i8** %description, align 8, !dbg !4855
  %call56 = call %struct.resource* @__devm_request_region(%struct.device* %dev53, %struct.resource* @iomem_resource, i64 %39, i64 %41, i8* %43) #7, !dbg !4855
  %tobool57 = icmp ne %struct.resource* %call56, null, !dbg !4855
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !4857

if.then58:                                        ; preds = %cond.end
  store i32 -16, i32* %retval1, align 4, !dbg !4858
  br label %put_hcd, !dbg !4860

if.end59:                                         ; preds = %cond.end
  %44 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4861
  %dev60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 41, !dbg !4862
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4863
  %rsrc_start61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 17, !dbg !4864
  %46 = load i64, i64* %rsrc_start61, align 8, !dbg !4864
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4865
  %rsrc_len62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 18, !dbg !4866
  %48 = load i64, i64* %rsrc_len62, align 8, !dbg !4866
  %call63 = call i8* @devm_ioremap(%struct.device* %dev60, i64 %46, i64 %48) #7, !dbg !4867
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4868
  %regs = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 16, !dbg !4869
  store i8* %call63, i8** %regs, align 8, !dbg !4870
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4871
  %regs64 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 16, !dbg !4873
  %51 = load i8*, i8** %regs64, align 8, !dbg !4873
  %cmp65 = icmp eq i8* %51, null, !dbg !4874
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !4875

if.then66:                                        ; preds = %if.end59
  store i32 -14, i32* %retval1, align 4, !dbg !4876
  br label %put_hcd, !dbg !4878

if.end67:                                         ; preds = %if.end59
  br label %if.end122, !dbg !4879

if.else:                                          ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %region, metadata !4880, metadata !DIExpression()), !dbg !4882
  store i32 0, i32* %region, align 4, !dbg !4883
  br label %for.cond, !dbg !4885

for.cond:                                         ; preds = %for.inc, %if.else
  %52 = load i32, i32* %region, align 4, !dbg !4886
  %cmp68 = icmp slt i32 %52, 6, !dbg !4888
  br i1 %cmp68, label %for.body, label %for.end, !dbg !4889

for.body:                                         ; preds = %for.cond
  %53 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4890
  %resource69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 44, !dbg !4890
  %54 = load i32, i32* %region, align 4, !dbg !4890
  %idxprom = sext i32 %54 to i64, !dbg !4890
  %arrayidx70 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource69, i64 0, i64 %idxprom, !dbg !4890
  %flags71 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx70, i32 0, i32 3, !dbg !4890
  %55 = load i64, i64* %flags71, align 8, !dbg !4890
  %and72 = and i64 %55, 256, !dbg !4893
  %tobool73 = icmp ne i64 %and72, 0, !dbg !4893
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !4894

if.then74:                                        ; preds = %for.body
  br label %for.inc, !dbg !4895

if.end75:                                         ; preds = %for.body
  %56 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4896
  %resource76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 44, !dbg !4896
  %57 = load i32, i32* %region, align 4, !dbg !4896
  %idxprom77 = sext i32 %57 to i64, !dbg !4896
  %arrayidx78 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource76, i64 0, i64 %idxprom77, !dbg !4896
  %start79 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx78, i32 0, i32 0, !dbg !4896
  %58 = load i64, i64* %start79, align 8, !dbg !4896
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4897
  %rsrc_start80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %59, i32 0, i32 17, !dbg !4898
  store i64 %58, i64* %rsrc_start80, align 8, !dbg !4899
  %60 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %resource81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 44, !dbg !4900
  %61 = load i32, i32* %region, align 4, !dbg !4900
  %idxprom82 = sext i32 %61 to i64, !dbg !4900
  %arrayidx83 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource81, i64 0, i64 %idxprom82, !dbg !4900
  %start84 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx83, i32 0, i32 0, !dbg !4900
  %62 = load i64, i64* %start84, align 8, !dbg !4900
  %cmp85 = icmp eq i64 %62, 0, !dbg !4900
  br i1 %cmp85, label %land.lhs.true86, label %cond.false97, !dbg !4900

land.lhs.true86:                                  ; preds = %if.end75
  %63 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %resource87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 44, !dbg !4900
  %64 = load i32, i32* %region, align 4, !dbg !4900
  %idxprom88 = sext i32 %64 to i64, !dbg !4900
  %arrayidx89 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource87, i64 0, i64 %idxprom88, !dbg !4900
  %end90 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx89, i32 0, i32 1, !dbg !4900
  %65 = load i64, i64* %end90, align 8, !dbg !4900
  %66 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %resource91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 44, !dbg !4900
  %67 = load i32, i32* %region, align 4, !dbg !4900
  %idxprom92 = sext i32 %67 to i64, !dbg !4900
  %arrayidx93 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource91, i64 0, i64 %idxprom92, !dbg !4900
  %start94 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx93, i32 0, i32 0, !dbg !4900
  %68 = load i64, i64* %start94, align 8, !dbg !4900
  %cmp95 = icmp eq i64 %65, %68, !dbg !4900
  br i1 %cmp95, label %cond.true96, label %cond.false97, !dbg !4900

cond.true96:                                      ; preds = %land.lhs.true86
  br label %cond.end108, !dbg !4900

cond.false97:                                     ; preds = %land.lhs.true86, %if.end75
  %69 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %resource98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 44, !dbg !4900
  %70 = load i32, i32* %region, align 4, !dbg !4900
  %idxprom99 = sext i32 %70 to i64, !dbg !4900
  %arrayidx100 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource98, i64 0, i64 %idxprom99, !dbg !4900
  %end101 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx100, i32 0, i32 1, !dbg !4900
  %71 = load i64, i64* %end101, align 8, !dbg !4900
  %72 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %resource102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 44, !dbg !4900
  %73 = load i32, i32* %region, align 4, !dbg !4900
  %idxprom103 = sext i32 %73 to i64, !dbg !4900
  %arrayidx104 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource102, i64 0, i64 %idxprom103, !dbg !4900
  %start105 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx104, i32 0, i32 0, !dbg !4900
  %74 = load i64, i64* %start105, align 8, !dbg !4900
  %sub106 = sub i64 %71, %74, !dbg !4900
  %add107 = add i64 %sub106, 1, !dbg !4900
  br label %cond.end108, !dbg !4900

cond.end108:                                      ; preds = %cond.false97, %cond.true96
  %cond109 = phi i64 [ 0, %cond.true96 ], [ %add107, %cond.false97 ], !dbg !4900
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4901
  %rsrc_len110 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 18, !dbg !4902
  store i64 %cond109, i64* %rsrc_len110, align 8, !dbg !4903
  %76 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4904
  %dev111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 41, !dbg !4904
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4904
  %rsrc_start112 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 17, !dbg !4904
  %78 = load i64, i64* %rsrc_start112, align 8, !dbg !4904
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4904
  %rsrc_len113 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 18, !dbg !4904
  %80 = load i64, i64* %rsrc_len113, align 8, !dbg !4904
  %81 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4904
  %description114 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %81, i32 0, i32 0, !dbg !4904
  %82 = load i8*, i8** %description114, align 8, !dbg !4904
  %call115 = call %struct.resource* @__devm_request_region(%struct.device* %dev111, %struct.resource* @ioport_resource, i64 %78, i64 %80, i8* %82) #7, !dbg !4904
  %tobool116 = icmp ne %struct.resource* %call115, null, !dbg !4904
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !4906

if.then117:                                       ; preds = %cond.end108
  br label %for.end, !dbg !4907

if.end118:                                        ; preds = %cond.end108
  br label %for.inc, !dbg !4908

for.inc:                                          ; preds = %if.end118, %if.then74
  %83 = load i32, i32* %region, align 4, !dbg !4909
  %inc = add i32 %83, 1, !dbg !4909
  store i32 %inc, i32* %region, align 4, !dbg !4909
  br label %for.cond, !dbg !4910, !llvm.loop !4911

for.end:                                          ; preds = %if.then117, %for.cond
  %84 = load i32, i32* %region, align 4, !dbg !4913
  %cmp119 = icmp eq i32 %84, 6, !dbg !4915
  br i1 %cmp119, label %if.then120, label %if.end121, !dbg !4916

if.then120:                                       ; preds = %for.end
  store i32 -16, i32* %retval1, align 4, !dbg !4917
  br label %put_hcd, !dbg !4919

if.end121:                                        ; preds = %for.end
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end67
  %85 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4920
  call void @pci_set_master(%struct.pci_dev* %85) #7, !dbg !4921
  %86 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4922
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 11, !dbg !4924
  %87 = load i32, i32* %class, align 4, !dbg !4924
  %cmp123 = icmp eq i32 %87, 787232, !dbg !4925
  br i1 %cmp123, label %if.then124, label %if.else131, !dbg !4926

if.then124:                                       ; preds = %if.end122
  call void @down_write(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !4927
  %88 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4929
  %dev125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 41, !dbg !4930
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4931
  %90 = bitcast %struct.usb_hcd* %89 to i8*, !dbg !4931
  call void @dev_set_drvdata(%struct.device* %dev125, i8* %90) #7, !dbg !4932
  %91 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4933
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4934
  call void @for_each_companion(%struct.pci_dev* %91, %struct.usb_hcd* %92, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @ehci_pre_add) #7, !dbg !4935
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4936
  %94 = load i32, i32* %hcd_irq, align 4, !dbg !4937
  %call126 = call i32 @usb_add_hcd(%struct.usb_hcd* %93, i32 %94, i64 128) #7, !dbg !4938
  store i32 %call126, i32* %retval1, align 4, !dbg !4939
  %95 = load i32, i32* %retval1, align 4, !dbg !4940
  %cmp127 = icmp ne i32 %95, 0, !dbg !4942
  br i1 %cmp127, label %if.then128, label %if.end130, !dbg !4943

if.then128:                                       ; preds = %if.then124
  %96 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4944
  %dev129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 41, !dbg !4945
  call void @dev_set_drvdata(%struct.device* %dev129, i8* null) #7, !dbg !4946
  br label %if.end130, !dbg !4946

if.end130:                                        ; preds = %if.then128, %if.then124
  %97 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4947
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4948
  call void @for_each_companion(%struct.pci_dev* %97, %struct.usb_hcd* %98, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @ehci_post_add) #7, !dbg !4949
  call void @up_write(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !4950
  br label %if.end139, !dbg !4951

if.else131:                                       ; preds = %if.end122
  call void @down_read(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !4952
  %99 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4954
  %dev132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 41, !dbg !4955
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4956
  %101 = bitcast %struct.usb_hcd* %100 to i8*, !dbg !4956
  call void @dev_set_drvdata(%struct.device* %dev132, i8* %101) #7, !dbg !4957
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4958
  %103 = load i32, i32* %hcd_irq, align 4, !dbg !4959
  %call133 = call i32 @usb_add_hcd(%struct.usb_hcd* %102, i32 %103, i64 128) #7, !dbg !4960
  store i32 %call133, i32* %retval1, align 4, !dbg !4961
  %104 = load i32, i32* %retval1, align 4, !dbg !4962
  %cmp134 = icmp ne i32 %104, 0, !dbg !4964
  br i1 %cmp134, label %if.then135, label %if.else137, !dbg !4965

if.then135:                                       ; preds = %if.else131
  %105 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4966
  %dev136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 41, !dbg !4967
  call void @dev_set_drvdata(%struct.device* %dev136, i8* null) #7, !dbg !4968
  br label %if.end138, !dbg !4968

if.else137:                                       ; preds = %if.else131
  %106 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4969
  %107 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4970
  call void @for_each_companion(%struct.pci_dev* %106, %struct.usb_hcd* %107, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @non_ehci_add) #7, !dbg !4971
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %if.then135
  call void @up_read(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !4972
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end130
  %108 = load i32, i32* %retval1, align 4, !dbg !4973
  %cmp140 = icmp ne i32 %108, 0, !dbg !4975
  br i1 %cmp140, label %if.then141, label %if.end142, !dbg !4976

if.then141:                                       ; preds = %if.end139
  br label %put_hcd, !dbg !4977

if.end142:                                        ; preds = %if.end139
  %109 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4978
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %109, i32 0, i32 0, !dbg !4979
  %controller = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 0, !dbg !4980
  %110 = load %struct.device*, %struct.device** %controller, align 8, !dbg !4980
  %call143 = call i32 @device_wakeup_enable(%struct.device* %110) #7, !dbg !4981
  %111 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4982
  %call144 = call zeroext i1 @pci_dev_run_wake(%struct.pci_dev* %111) #7, !dbg !4984
  br i1 %call144, label %if.then145, label %if.end147, !dbg !4985

if.then145:                                       ; preds = %if.end142
  %112 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4986
  %dev146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 41, !dbg !4987
  call void @pm_runtime_put_noidle(%struct.device* %dev146) #7, !dbg !4988
  br label %if.end147, !dbg !4988

if.end147:                                        ; preds = %if.then145, %if.end142
  %113 = load i32, i32* %retval1, align 4, !dbg !4989
  store i32 %113, i32* %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

put_hcd:                                          ; preds = %if.then141, %if.then120, %if.then66, %if.then58
  call void @llvm.dbg.label(metadata !4991), !dbg !4992
  %114 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4993
  call void @usb_put_hcd(%struct.usb_hcd* %114) #7, !dbg !4994
  br label %free_irq_vectors, !dbg !4994

free_irq_vectors:                                 ; preds = %put_hcd, %if.then25
  call void @llvm.dbg.label(metadata !4995), !dbg !4996
  %115 = load %struct.hc_driver*, %struct.hc_driver** %driver.addr, align 8, !dbg !4997
  %flags148 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %115, i32 0, i32 4, !dbg !4999
  %116 = load i32, i32* %flags148, align 8, !dbg !4999
  %and149 = and i32 %116, 112, !dbg !5000
  %cmp150 = icmp slt i32 %and149, 64, !dbg !5001
  br i1 %cmp150, label %if.then151, label %if.end152, !dbg !5002

if.then151:                                       ; preds = %free_irq_vectors
  %117 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5003
  call void @pci_free_irq_vectors(%struct.pci_dev* %117) #7, !dbg !5004
  br label %if.end152, !dbg !5004

if.end152:                                        ; preds = %if.then151, %free_irq_vectors
  br label %disable_pci, !dbg !5005

disable_pci:                                      ; preds = %if.end152, %if.then15
  call void @llvm.dbg.label(metadata !5006), !dbg !5007
  %118 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5008
  call void @pci_disable_device(%struct.pci_dev* %118) #7, !dbg !5009
  %119 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5010
  %dev153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 41, !dbg !5010
  %120 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5010
  %call154 = call i8* @pci_name(%struct.pci_dev* %120) #7, !dbg !5010
  %121 = load i32, i32* %retval1, align 4, !dbg !5010
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %call154, i32 %121) #8, !dbg !5010
  %122 = load i32, i32* %retval1, align 4, !dbg !5011
  store i32 %122, i32* %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

return:                                           ; preds = %disable_pci, %if.end147, %if.then9, %if.then6, %if.then3, %if.then
  %123 = load i32, i32* %retval, align 4, !dbg !5013
  ret i32 %123, !dbg !5013
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_disabled() #2

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_alloc_irq_vectors(%struct.pci_dev* %dev, i32 %min_vecs, i32 %max_vecs, i32 %flags) #0 !dbg !5014 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %min_vecs.addr = alloca i32, align 4
  %max_vecs.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  store i32 %min_vecs, i32* %min_vecs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min_vecs.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  store i32 %max_vecs, i32* %max_vecs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_vecs.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5025
  %1 = load i32, i32* %min_vecs.addr, align 4, !dbg !5026
  %2 = load i32, i32* %max_vecs.addr, align 4, !dbg !5027
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5028
  %call = call i32 @pci_alloc_irq_vectors_affinity(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3, %struct.irq_affinity* null) #7, !dbg !5029
  ret i32 %call, !dbg !5030
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #0 !dbg !5031 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5038
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5039
  %call = call i8* @dev_name(%struct.device* %dev) #7, !dbg !5040
  ret i8* %call, !dbg !5041
}

; Function Attrs: noredzone
declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local %struct.resource* @__devm_request_region(%struct.device*, %struct.resource*, i64, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap(%struct.device*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @pci_set_master(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5042 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5049
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5050
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5051
  store i8* %0, i8** %driver_data, align 8, !dbg !5052
  ret void, !dbg !5053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @for_each_companion(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* %fn) #0 !dbg !5054 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %fn.addr = alloca void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)*, align 8
  %companion = alloca %struct.pci_dev*, align 8
  %companion_hcd = alloca %struct.usb_hcd*, align 8
  %slot = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  store void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* %fn, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)** %fn.addr, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %slot, metadata !5071, metadata !DIExpression()), !dbg !5072
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5073
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 6, !dbg !5073
  %1 = load i32, i32* %devfn, align 8, !dbg !5073
  %shr = lshr i32 %1, 3, !dbg !5073
  %and = and i32 %shr, 31, !dbg !5073
  store i32 %and, i32* %slot, align 4, !dbg !5072
  store %struct.pci_dev* null, %struct.pci_dev** %companion, align 8, !dbg !5074
  br label %while.cond, !dbg !5075

while.cond:                                       ; preds = %if.end19, %if.then18, %if.then13, %if.then, %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5075
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %2) #7, !dbg !5075
  store %struct.pci_dev* %call, %struct.pci_dev** %companion, align 8, !dbg !5075
  %cmp = icmp ne %struct.pci_dev* %call, null, !dbg !5075
  br i1 %cmp, label %while.body, label %while.end, !dbg !5075

while.body:                                       ; preds = %while.cond
  %3 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5076
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !5079
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5079
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5080
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !5081
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !5081
  %cmp2 = icmp ne %struct.pci_bus* %4, %6, !dbg !5082
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !5083

lor.lhs.false:                                    ; preds = %while.body
  %7 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5084
  %devfn3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 6, !dbg !5084
  %8 = load i32, i32* %devfn3, align 8, !dbg !5084
  %shr4 = lshr i32 %8, 3, !dbg !5084
  %and5 = and i32 %shr4, 31, !dbg !5084
  %9 = load i32, i32* %slot, align 4, !dbg !5085
  %cmp6 = icmp ne i32 %and5, %9, !dbg !5086
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5087

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !dbg !5088, !llvm.loop !5089

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5091
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 11, !dbg !5093
  %11 = load i32, i32* %class, align 4, !dbg !5093
  %cmp7 = icmp ne i32 %11, 787200, !dbg !5094
  br i1 %cmp7, label %land.lhs.true, label %if.end14, !dbg !5095

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5096
  %class8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 11, !dbg !5097
  %13 = load i32, i32* %class8, align 4, !dbg !5097
  %cmp9 = icmp ne i32 %13, 787216, !dbg !5098
  br i1 %cmp9, label %land.lhs.true10, label %if.end14, !dbg !5099

land.lhs.true10:                                  ; preds = %land.lhs.true
  %14 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5100
  %class11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 11, !dbg !5101
  %15 = load i32, i32* %class11, align 4, !dbg !5101
  %cmp12 = icmp ne i32 %15, 787232, !dbg !5102
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5103

if.then13:                                        ; preds = %land.lhs.true10
  br label %while.cond, !dbg !5104, !llvm.loop !5089

if.end14:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.end
  %16 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5105
  %call15 = call i8* @pci_get_drvdata(%struct.pci_dev* %16) #7, !dbg !5106
  %17 = bitcast i8* %call15 to %struct.usb_hcd*, !dbg !5106
  store %struct.usb_hcd* %17, %struct.usb_hcd** %companion_hcd, align 8, !dbg !5107
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd, align 8, !dbg !5108
  %tobool = icmp ne %struct.usb_hcd* %18, null, !dbg !5108
  br i1 %tobool, label %lor.lhs.false16, label %if.then18, !dbg !5110

lor.lhs.false16:                                  ; preds = %if.end14
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd, align 8, !dbg !5111
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 0, !dbg !5112
  %root_hub = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 11, !dbg !5113
  %20 = load %struct.usb_device*, %struct.usb_device** %root_hub, align 8, !dbg !5113
  %tobool17 = icmp ne %struct.usb_device* %20, null, !dbg !5111
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5114

if.then18:                                        ; preds = %lor.lhs.false16, %if.end14
  br label %while.cond, !dbg !5115, !llvm.loop !5089

if.end19:                                         ; preds = %lor.lhs.false16
  %21 = load void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)*, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)** %fn.addr, align 8, !dbg !5116
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5117
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5118
  %24 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5119
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd, align 8, !dbg !5120
  call void %21(%struct.pci_dev* %22, %struct.usb_hcd* %23, %struct.pci_dev* %24, %struct.usb_hcd* %25) #7, !dbg !5116
  br label %while.cond, !dbg !5075, !llvm.loop !5089

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehci_pre_add(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, %struct.pci_dev* %companion, %struct.usb_hcd* %companion_hcd) #0 !dbg !5122 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %companion.addr = alloca %struct.pci_dev*, align 8
  %companion_hcd.addr = alloca %struct.usb_hcd*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store %struct.pci_dev* %companion, %struct.pci_dev** %companion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store %struct.usb_hcd* %companion_hcd, %struct.usb_hcd** %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5131, metadata !DIExpression()), !dbg !5132
  %0 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !5133
  %call = call i32 @is_ohci_or_uhci(%struct.pci_dev* %0) #7, !dbg !5135
  %tobool = icmp ne i32 %call, 0, !dbg !5135
  br i1 %tobool, label %if.then, label %if.end, !dbg !5136

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd.addr, align 8, !dbg !5137
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %1, i32 0, i32 0, !dbg !5139
  %root_hub = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 11, !dbg !5140
  %2 = load %struct.usb_device*, %struct.usb_device** %root_hub, align 8, !dbg !5140
  store %struct.usb_device* %2, %struct.usb_device** %udev, align 8, !dbg !5141
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5142
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 14, !dbg !5142
  call void @device_lock(%struct.device* %dev) #7, !dbg !5142
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5143
  %call1 = call i32 @usb_set_configuration(%struct.usb_device* %4, i32 0) #7, !dbg !5144
  br label %if.end, !dbg !5145

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5146
}

; Function Attrs: noredzone
declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehci_post_add(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, %struct.pci_dev* %companion, %struct.usb_hcd* %companion_hcd) #0 !dbg !5147 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %companion.addr = alloca %struct.pci_dev*, align 8
  %companion_hcd.addr = alloca %struct.usb_hcd*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store %struct.pci_dev* %companion, %struct.pci_dev** %companion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store %struct.usb_hcd* %companion_hcd, %struct.usb_hcd** %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !5158
  %call = call i32 @is_ohci_or_uhci(%struct.pci_dev* %0) #7, !dbg !5160
  %tobool = icmp ne i32 %call, 0, !dbg !5160
  br i1 %tobool, label %if.then, label %if.end8, !dbg !5161

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5162
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !5165
  %call1 = call i8* @dev_get_drvdata(%struct.device* %dev) #7, !dbg !5166
  %tobool2 = icmp ne i8* %call1, null, !dbg !5166
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5167

if.then3:                                         ; preds = %if.then
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5168
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %2, i32 0, i32 0, !dbg !5170
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd.addr, align 8, !dbg !5171
  %self4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 0, !dbg !5172
  %hs_companion = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self4, i32 0, i32 12, !dbg !5173
  store %struct.usb_bus* %self, %struct.usb_bus** %hs_companion, align 8, !dbg !5174
  br label %if.end, !dbg !5175

if.end:                                           ; preds = %if.then3, %if.then
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd.addr, align 8, !dbg !5176
  %self5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0, !dbg !5177
  %root_hub = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self5, i32 0, i32 11, !dbg !5178
  %5 = load %struct.usb_device*, %struct.usb_device** %root_hub, align 8, !dbg !5178
  store %struct.usb_device* %5, %struct.usb_device** %udev, align 8, !dbg !5179
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5180
  %call6 = call i32 @usb_set_configuration(%struct.usb_device* %6, i32 1) #7, !dbg !5181
  %7 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5182
  %dev7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 14, !dbg !5182
  call void @device_unlock(%struct.device* %dev7) #7, !dbg !5182
  br label %if.end8, !dbg !5183

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !5184
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @non_ehci_add(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, %struct.pci_dev* %companion, %struct.usb_hcd* %companion_hcd) #0 !dbg !5185 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %companion.addr = alloca %struct.pci_dev*, align 8
  %companion_hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  store %struct.pci_dev* %companion, %struct.pci_dev** %companion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  store %struct.usb_hcd* %companion_hcd, %struct.usb_hcd** %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5194
  %call = call i32 @is_ohci_or_uhci(%struct.pci_dev* %0) #7, !dbg !5196
  %tobool = icmp ne i32 %call, 0, !dbg !5196
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5197

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !5198
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 11, !dbg !5199
  %2 = load i32, i32* %class, align 4, !dbg !5199
  %cmp = icmp eq i32 %2, 787232, !dbg !5200
  br i1 %cmp, label %if.then, label %if.end, !dbg !5201

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd.addr, align 8, !dbg !5202
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 0, !dbg !5204
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5205
  %self1 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0, !dbg !5206
  %hs_companion = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self1, i32 0, i32 12, !dbg !5207
  store %struct.usb_bus* %self, %struct.usb_bus** %hs_companion, align 8, !dbg !5208
  br label %if.end, !dbg !5209

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5210
}

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_wakeup_enable(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @pci_dev_run_wake(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #0 !dbg !5211 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !5213, metadata !DIExpression()), !dbg !5219
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !5233, metadata !DIExpression()), !dbg !5234
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !5235, metadata !DIExpression()), !dbg !5236
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !5237, metadata !DIExpression()), !dbg !5239
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !5240, metadata !DIExpression()), !dbg !5239
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !5241, metadata !DIExpression()), !dbg !5239
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !5242, metadata !DIExpression()), !dbg !5239
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !5243, metadata !DIExpression()), !dbg !5239
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !5244, metadata !DIExpression()), !dbg !5250
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !5252, metadata !DIExpression()), !dbg !5253
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !5254, metadata !DIExpression()), !dbg !5255
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !5256, metadata !DIExpression()), !dbg !5257
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !5258, metadata !DIExpression()), !dbg !5259
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5260, metadata !DIExpression()), !dbg !5261
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !5262, metadata !DIExpression()), !dbg !5263
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !5264, metadata !DIExpression()), !dbg !5265
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5266, metadata !DIExpression()), !dbg !5274
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5276, metadata !DIExpression()), !dbg !5277
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5278, metadata !DIExpression()), !dbg !5279
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !5280, metadata !DIExpression()), !dbg !5281
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !5282, metadata !DIExpression()), !dbg !5283
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5286
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5287
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !5288
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5289
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5289
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5290
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5291
  %conv.i.i = trunc i64 %4 to i32, !dbg !5291
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #9, !dbg !5292
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5293
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5293
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !5293
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5294
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !5295
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !5296
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5297
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !5298
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !5299
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !5300
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !5301
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !5301
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !5301
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !5259
  br label %do.body.i.i.i, !dbg !5302

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !5303
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !5303
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !5303
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !5303
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !5303
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !5303
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !5306

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !5307

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !5308
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !5309
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !5310
  %add.i.i.i = add i32 %19, %20, !dbg !5311
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !5239
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !5239
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !5239
  %23 = load i32, i32* %22, align 4, !dbg !5239
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !5239
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !5239
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !5239
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !5239
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !5239
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !5239
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !5239
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !5239
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !5239
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #5, !dbg !5239, !srcloc !5312
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !5239
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !5239
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !5239
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !5239
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !5313
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !5313
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !5313
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !5313
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !5313
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !5313
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !5239

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !5313
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !5313
  store i32 %31, i32* %32, align 4, !dbg !5313
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !5313

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !5239
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !5239
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !5239
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !5239
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !5239
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !5313
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !5239
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !5315
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !5316
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !5317, !llvm.loop !5318

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !5320
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !5321
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !5322
  ret void, !dbg !5323
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @usb_put_hcd(%struct.usb_hcd*) #2

; Function Attrs: noredzone
declare dso_local void @pci_free_irq_vectors(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_hcd_pci_remove(%struct.pci_dev* %dev) #0 !dbg !5324 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %hcd_driver_flags = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %hcd_driver_flags, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5331
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #7, !dbg !5332
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5332
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !5333
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5334
  %tobool = icmp ne %struct.usb_hcd* %2, null, !dbg !5334
  br i1 %tobool, label %if.end, label %if.then, !dbg !5336

if.then:                                          ; preds = %entry
  br label %return, !dbg !5337

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5338
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 9, !dbg !5339
  %4 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5339
  %flags = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %4, i32 0, i32 4, !dbg !5340
  %5 = load i32, i32* %flags, align 8, !dbg !5340
  store i32 %5, i32* %hcd_driver_flags, align 4, !dbg !5341
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5342
  %call1 = call zeroext i1 @pci_dev_run_wake(%struct.pci_dev* %6) #7, !dbg !5344
  br i1 %call1, label %if.then2, label %if.end4, !dbg !5345

if.then2:                                         ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5346
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !5347
  call void @pm_runtime_get_noresume(%struct.device* %dev3) #7, !dbg !5348
  br label %if.end4, !dbg !5348

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !5349

do.body:                                          ; preds = %if.end4
  call void @arch_local_irq_disable() #7, !dbg !5350
  br label %do.end, !dbg !5350

do.end:                                           ; preds = %do.body
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5352
  %9 = bitcast %struct.usb_hcd* %8 to i8*, !dbg !5352
  %call5 = call i32 @usb_hcd_irq(i32 0, i8* %9) #7, !dbg !5353
  br label %do.body6, !dbg !5354

do.body6:                                         ; preds = %do.end
  call void @arch_local_irq_enable() #7, !dbg !5355
  br label %do.end7, !dbg !5355

do.end7:                                          ; preds = %do.body6
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5357
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 11, !dbg !5359
  %11 = load i32, i32* %class, align 4, !dbg !5359
  %cmp = icmp eq i32 %11, 787232, !dbg !5360
  br i1 %cmp, label %if.then8, label %if.else, !dbg !5361

if.then8:                                         ; preds = %do.end7
  call void @down_write(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !5362
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5364
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5365
  call void @for_each_companion(%struct.pci_dev* %12, %struct.usb_hcd* %13, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @ehci_remove) #7, !dbg !5366
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5367
  call void @usb_remove_hcd(%struct.usb_hcd* %14) #7, !dbg !5368
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5369
  %dev9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !5370
  call void @dev_set_drvdata(%struct.device* %dev9, i8* null) #7, !dbg !5371
  call void @up_write(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !5372
  br label %if.end11, !dbg !5373

if.else:                                          ; preds = %do.end7
  call void @down_read(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !5374
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5376
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 0, !dbg !5377
  %hs_companion = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 12, !dbg !5378
  store %struct.usb_bus* null, %struct.usb_bus** %hs_companion, align 8, !dbg !5379
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5380
  call void @usb_remove_hcd(%struct.usb_hcd* %17) #7, !dbg !5381
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5382
  %dev10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !5383
  call void @dev_set_drvdata(%struct.device* %dev10, i8* null) #7, !dbg !5384
  call void @up_read(%struct.rw_semaphore* @companions_rwsem) #7, !dbg !5385
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5386
  call void @usb_put_hcd(%struct.usb_hcd* %19) #7, !dbg !5387
  %20 = load i32, i32* %hcd_driver_flags, align 4, !dbg !5388
  %and = and i32 %20, 112, !dbg !5390
  %cmp12 = icmp slt i32 %and, 64, !dbg !5391
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5392

if.then13:                                        ; preds = %if.end11
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5393
  call void @pci_free_irq_vectors(%struct.pci_dev* %21) #7, !dbg !5394
  br label %if.end14, !dbg !5394

if.end14:                                         ; preds = %if.then13, %if.end11
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5395
  call void @pci_disable_device(%struct.pci_dev* %22) #7, !dbg !5396
  br label %return, !dbg !5397

return:                                           ; preds = %if.end14, %if.then
  ret void, !dbg !5397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #0 !dbg !5398 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5403
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5404
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #7, !dbg !5405
  ret i8* %call, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #0 !dbg !5407 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5408, metadata !DIExpression()), !dbg !5412
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5266, metadata !DIExpression()), !dbg !5416
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5276, metadata !DIExpression()), !dbg !5418
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5419, metadata !DIExpression()), !dbg !5420
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5423
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5424
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !5425
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5426
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5426
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5427
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5428
  %conv.i.i = trunc i64 %4 to i32, !dbg !5428
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #9, !dbg !5429
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5430
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5430
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !5430
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5431
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5432
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5433
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #5, !dbg !5434, !srcloc !5435
  ret void, !dbg !5436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5437 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5439, metadata !DIExpression()), !dbg !5441
  %0 = load i64, i64* %__edi, align 8, !dbg !5441
  store i64 %0, i64* %__edi, align 8, !dbg !5441
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5442, metadata !DIExpression()), !dbg !5441
  %1 = load i64, i64* %__esi, align 8, !dbg !5441
  store i64 %1, i64* %__esi, align 8, !dbg !5441
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5443, metadata !DIExpression()), !dbg !5441
  %2 = load i64, i64* %__edx, align 8, !dbg !5441
  store i64 %2, i64* %__edx, align 8, !dbg !5441
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5444, metadata !DIExpression()), !dbg !5441
  %3 = load i64, i64* %__ecx, align 8, !dbg !5441
  store i64 %3, i64* %__ecx, align 8, !dbg !5441
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5445, metadata !DIExpression()), !dbg !5441
  %4 = load i64, i64* %__eax, align 8, !dbg !5441
  store i64 %4, i64* %__eax, align 8, !dbg !5441
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5441
  %6 = call i64 @llvm.read_register.i64(metadata !4179), !dbg !5441
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5441, !srcloc !5446
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5441
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5441
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5441
  call void @llvm.write_register.i64(metadata !4179, i64 %asmresult1), !dbg !5441
  ret void, !dbg !5447
}

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5448 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5449, metadata !DIExpression()), !dbg !5451
  %0 = load i64, i64* %__edi, align 8, !dbg !5451
  store i64 %0, i64* %__edi, align 8, !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5452, metadata !DIExpression()), !dbg !5451
  %1 = load i64, i64* %__esi, align 8, !dbg !5451
  store i64 %1, i64* %__esi, align 8, !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5453, metadata !DIExpression()), !dbg !5451
  %2 = load i64, i64* %__edx, align 8, !dbg !5451
  store i64 %2, i64* %__edx, align 8, !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5454, metadata !DIExpression()), !dbg !5451
  %3 = load i64, i64* %__ecx, align 8, !dbg !5451
  store i64 %3, i64* %__ecx, align 8, !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5455, metadata !DIExpression()), !dbg !5451
  %4 = load i64, i64* %__eax, align 8, !dbg !5451
  store i64 %4, i64* %__eax, align 8, !dbg !5451
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5451
  %6 = call i64 @llvm.read_register.i64(metadata !4179), !dbg !5451
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !5451, !srcloc !5456
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5451
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5451
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5451
  call void @llvm.write_register.i64(metadata !4179, i64 %asmresult1), !dbg !5451
  ret void, !dbg !5457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehci_remove(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, %struct.pci_dev* %companion, %struct.usb_hcd* %companion_hcd) #0 !dbg !5458 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %companion.addr = alloca %struct.pci_dev*, align 8
  %companion_hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  store %struct.pci_dev* %companion, %struct.pci_dev** %companion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  store %struct.usb_hcd* %companion_hcd, %struct.usb_hcd** %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  %0 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !5467
  %call = call i32 @is_ohci_or_uhci(%struct.pci_dev* %0) #7, !dbg !5469
  %tobool = icmp ne i32 %call, 0, !dbg !5469
  br i1 %tobool, label %if.then, label %if.end, !dbg !5470

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %companion_hcd.addr, align 8, !dbg !5471
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %1, i32 0, i32 0, !dbg !5472
  %hs_companion = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 12, !dbg !5473
  store %struct.usb_bus* null, %struct.usb_bus** %hs_companion, align 8, !dbg !5474
  br label %if.end, !dbg !5471

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5475
}

; Function Attrs: noredzone
declare dso_local void @usb_remove_hcd(%struct.usb_hcd*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_hcd_pci_shutdown(%struct.pci_dev* %dev) #0 !dbg !5476 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5481
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #7, !dbg !5482
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5482
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !5483
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5484
  %tobool = icmp ne %struct.usb_hcd* %2, null, !dbg !5484
  br i1 %tobool, label %if.end, label %if.then, !dbg !5486

if.then:                                          ; preds = %entry
  br label %if.end13, !dbg !5487

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5488
  %flags = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 12, !dbg !5490
  %call1 = call zeroext i1 @test_bit(i64 0, i64* %flags) #7, !dbg !5491
  br i1 %call1, label %land.lhs.true, label %if.end13, !dbg !5492

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5493
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 9, !dbg !5494
  %5 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5494
  %shutdown = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %5, i32 0, i32 10, !dbg !5495
  %6 = load void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)** %shutdown, align 8, !dbg !5495
  %tobool2 = icmp ne void (%struct.usb_hcd*)* %6, null, !dbg !5493
  br i1 %tobool2, label %if.then3, label %if.end13, !dbg !5496

if.then3:                                         ; preds = %land.lhs.true
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5497
  %driver4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 9, !dbg !5499
  %8 = load %struct.hc_driver*, %struct.hc_driver** %driver4, align 8, !dbg !5499
  %shutdown5 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %8, i32 0, i32 10, !dbg !5500
  %9 = load void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)** %shutdown5, align 8, !dbg !5500
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5501
  call void %9(%struct.usb_hcd* %10) #7, !dbg !5497
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5502
  %call6 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %11) #7, !dbg !5504
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5504
  br i1 %tobool7, label %land.lhs.true8, label %if.end12, !dbg !5505

land.lhs.true8:                                   ; preds = %if.then3
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5506
  %irq = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 15, !dbg !5507
  %13 = load i32, i32* %irq, align 8, !dbg !5507
  %cmp = icmp ugt i32 %13, 0, !dbg !5508
  br i1 %cmp, label %if.then9, label %if.end12, !dbg !5509

if.then9:                                         ; preds = %land.lhs.true8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5510
  %irq10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 15, !dbg !5511
  %15 = load i32, i32* %irq10, align 8, !dbg !5511
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5512
  %17 = bitcast %struct.usb_hcd* %16 to i8*, !dbg !5512
  %call11 = call i8* @free_irq(i32 %15, i8* %17) #7, !dbg !5513
  br label %if.end12, !dbg !5513

if.end12:                                         ; preds = %if.then9, %land.lhs.true8, %if.then3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5514
  call void @pci_disable_device(%struct.pci_dev* %18) #7, !dbg !5515
  br label %if.end13, !dbg !5516

if.end13:                                         ; preds = %if.then, %if.end12, %land.lhs.true, %if.end
  ret void, !dbg !5517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5518 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5525, metadata !DIExpression()), !dbg !5528
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5530, metadata !DIExpression()), !dbg !5531
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5532, metadata !DIExpression()), !dbg !5533
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5534, metadata !DIExpression()), !dbg !5536
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5538, metadata !DIExpression()), !dbg !5539
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5540, metadata !DIExpression()), !dbg !5542
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5544, metadata !DIExpression()), !dbg !5545
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5550
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5551
  %div = sdiv i64 %1, 64, !dbg !5551
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5552
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5550
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5553
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5554
  %conv.i = trunc i64 %4 to i32, !dbg !5554
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !5555
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5556
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5556
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !5556
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5557
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5557
  br i1 %8, label %cond.true, label %cond.false, !dbg !5557

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5557
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5557
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5558
  %and.i = and i64 %11, 63, !dbg !5559
  %shl.i = shl i64 1, %and.i, !dbg !5560
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5561
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5562
  %shr.i = ashr i64 %13, 6, !dbg !5563
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5561
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5561
  %and1.i = and i64 %shl.i, %14, !dbg !5564
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5565
  %conv = zext i1 %cmp.i to i32, !dbg !5557
  br label %cond.end, !dbg !5557

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5557
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5557
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5566
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5567
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #5, !dbg !5568, !srcloc !5569
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5568
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5570
  %tobool.i = trunc i8 %20 to i1, !dbg !5570
  %conv2 = zext i1 %tobool.i to i32, !dbg !5557
  br label %cond.end, !dbg !5557

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5557
  %tobool = icmp ne i32 %cond, 0, !dbg !5557
  ret i1 %tobool, !dbg !5571
}

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #2

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_suspend(%struct.device* %dev) #0 !dbg !5572 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5575
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5576
  %call = call zeroext i1 @device_may_wakeup(%struct.device* %1) #7, !dbg !5577
  %call1 = call i32 @suspend_common(%struct.device* %0, i1 zeroext %call) #7, !dbg !5578
  ret i32 %call1, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_resume(%struct.device* %dev) #0 !dbg !5580 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5583
  %call = call i32 @resume_common(%struct.device* %0, i32 16) #7, !dbg !5584
  ret i32 %call, !dbg !5585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_root_hub_suspended(%struct.device* %dev) #0 !dbg !5586 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5589, metadata !DIExpression()), !dbg !5590
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5591
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5592
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5592
  store %struct.usb_hcd* %1, %struct.usb_hcd** %hcd, align 8, !dbg !5590
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5593
  %flags = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %2, i32 0, i32 12, !dbg !5593
  %3 = load i64, i64* %flags, align 8, !dbg !5593
  %and = and i64 %3, 32, !dbg !5593
  %tobool = icmp ne i64 %and, 0, !dbg !5593
  br i1 %tobool, label %if.then, label %if.end, !dbg !5595

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5596
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !5596
  store i32 -16, i32* %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5599
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %5, i32 0, i32 24, !dbg !5601
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !5601
  %tobool1 = icmp ne %struct.usb_hcd* %6, null, !dbg !5599
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !5602

if.then2:                                         ; preds = %if.end
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5603
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 24, !dbg !5605
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd3, align 8, !dbg !5605
  store %struct.usb_hcd* %8, %struct.usb_hcd** %hcd, align 8, !dbg !5606
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5607
  %flags4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 12, !dbg !5607
  %10 = load i64, i64* %flags4, align 8, !dbg !5607
  %and5 = and i64 %10, 32, !dbg !5607
  %tobool6 = icmp ne i64 %and5, 0, !dbg !5607
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5609

if.then7:                                         ; preds = %if.then2
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5610
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !5610
  store i32 -16, i32* %retval, align 4, !dbg !5612
  br label %return, !dbg !5612

if.end8:                                          ; preds = %if.then2
  br label %if.end9, !dbg !5613

if.end9:                                          ; preds = %if.end8, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5615
  ret i32 %12, !dbg !5615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_restore(%struct.device* %dev) #0 !dbg !5616 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5619
  %call = call i32 @resume_common(%struct.device* %0, i32 64) #7, !dbg !5620
  ret i32 %call, !dbg !5621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_suspend_noirq(%struct.device* %dev) #0 !dbg !5622 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %pci_dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev, metadata !5625, metadata !DIExpression()), !dbg !5626
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5627, metadata !DIExpression()), !dbg !5629
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5629
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5629
  store i8* %1, i8** %__mptr, align 8, !dbg !5629
  br label %do.body, !dbg !5629

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5629
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5629
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5629
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5630
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5629
  store %struct.pci_dev* %4, %struct.pci_dev** %pci_dev, align 8, !dbg !5626
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5632, metadata !DIExpression()), !dbg !5633
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5634
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %5) #7, !dbg !5635
  %6 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5635
  store %struct.usb_hcd* %6, %struct.usb_hcd** %hcd, align 8, !dbg !5633
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5636, metadata !DIExpression()), !dbg !5637
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5638
  %call2 = call i32 @check_root_hub_suspended(%struct.device* %7) #7, !dbg !5639
  store i32 %call2, i32* %retval1, align 4, !dbg !5640
  %8 = load i32, i32* %retval1, align 4, !dbg !5641
  %tobool = icmp ne i32 %8, 0, !dbg !5641
  br i1 %tobool, label %if.then, label %if.end, !dbg !5643

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %retval1, align 4, !dbg !5644
  store i32 %9, i32* %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end:                                           ; preds = %do.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5646
  %call3 = call i32 @pci_save_state(%struct.pci_dev* %10) #7, !dbg !5647
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5648
  %flags = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 12, !dbg !5648
  %12 = load i64, i64* %flags, align 8, !dbg !5648
  %and = and i64 %12, 64, !dbg !5648
  %tobool4 = icmp ne i64 %and, 0, !dbg !5648
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5650

if.then5:                                         ; preds = %if.end
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5651
  %call6 = call i32 @device_set_wakeup_enable(%struct.device* %13, i1 zeroext false) #7, !dbg !5652
  br label %if.end7, !dbg !5652

if.end7:                                          ; preds = %if.then5, %if.end
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5653
  %call8 = call i32 @pci_prepare_to_sleep(%struct.pci_dev* %14) #7, !dbg !5654
  store i32 %call8, i32* %retval1, align 4, !dbg !5655
  %15 = load i32, i32* %retval1, align 4, !dbg !5656
  %cmp = icmp eq i32 %15, -5, !dbg !5658
  br i1 %cmp, label %if.then9, label %if.else, !dbg !5659

if.then9:                                         ; preds = %if.end7
  store i32 0, i32* %retval1, align 4, !dbg !5660
  br label %if.end16, !dbg !5662

if.else:                                          ; preds = %if.end7
  %16 = load i32, i32* %retval1, align 4, !dbg !5663
  %cmp10 = icmp eq i32 %16, 0, !dbg !5665
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5666

if.then11:                                        ; preds = %if.else
  br label %if.end15, !dbg !5667

if.else12:                                        ; preds = %if.else
  br label %do.body13, !dbg !5669

do.body13:                                        ; preds = %if.else12
  %17 = load i32, i32* %retval1, align 4, !dbg !5671
  call void @__suspend_report_result(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.hcd_pci_suspend_noirq, i64 0, i64 0), i8* bitcast (i32 (%struct.pci_dev*)* @pci_prepare_to_sleep to i8*), i32 %17) #7, !dbg !5671
  br label %do.end14, !dbg !5671

do.end14:                                         ; preds = %do.body13
  %18 = load i32, i32* %retval1, align 4, !dbg !5673
  store i32 %18, i32* %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5675
  call void @powermac_set_asic(%struct.pci_dev* %19, i32 0) #7, !dbg !5676
  %20 = load i32, i32* %retval1, align 4, !dbg !5677
  store i32 %20, i32* %retval, align 4, !dbg !5678
  br label %return, !dbg !5678

return:                                           ; preds = %if.end16, %do.end14, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5679
  ret i32 %21, !dbg !5679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_resume_noirq(%struct.device* %dev) #0 !dbg !5680 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5683, metadata !DIExpression()), !dbg !5685
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5685
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5685
  store i8* %1, i8** %__mptr, align 8, !dbg !5685
  br label %do.body, !dbg !5685

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5686

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5685
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5685
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5685
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5686
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5685
  call void @powermac_set_asic(%struct.pci_dev* %4, i32 1) #7, !dbg !5688
  ret i32 0, !dbg !5689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_runtime_suspend(%struct.device* %dev) #0 !dbg !5690 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %retval1 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5693, metadata !DIExpression()), !dbg !5694
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5695
  %call = call i32 @suspend_common(%struct.device* %0, i1 zeroext true) #7, !dbg !5696
  store i32 %call, i32* %retval1, align 4, !dbg !5697
  %1 = load i32, i32* %retval1, align 4, !dbg !5698
  %cmp = icmp eq i32 %1, 0, !dbg !5700
  br i1 %cmp, label %if.then, label %if.end, !dbg !5701

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5702, metadata !DIExpression()), !dbg !5704
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5704
  %3 = bitcast %struct.device* %2 to i8*, !dbg !5704
  store i8* %3, i8** %__mptr, align 8, !dbg !5704
  br label %do.body, !dbg !5704

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5705

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5704
  %add.ptr = getelementptr i8, i8* %4, i64 -176, !dbg !5704
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5704
  store %struct.pci_dev* %5, %struct.pci_dev** %tmp, align 8, !dbg !5705
  %6 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5704
  call void @powermac_set_asic(%struct.pci_dev* %6, i32 0) #7, !dbg !5707
  br label %if.end, !dbg !5707

if.end:                                           ; preds = %do.end, %entry
  %7 = load i32, i32* %retval1, align 4, !dbg !5708
  ret i32 %7, !dbg !5709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hcd_pci_runtime_resume(%struct.device* %dev) #0 !dbg !5710 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %retval1 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5715, metadata !DIExpression()), !dbg !5717
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5717
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5717
  store i8* %1, i8** %__mptr, align 8, !dbg !5717
  br label %do.body, !dbg !5717

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5718

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5717
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5717
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5717
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5718
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5717
  call void @powermac_set_asic(%struct.pci_dev* %4, i32 1) #7, !dbg !5720
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5721
  %call = call i32 @resume_common(%struct.device* %5, i32 1040) #7, !dbg !5722
  store i32 %call, i32* %retval1, align 4, !dbg !5723
  %6 = load i32, i32* %retval1, align 4, !dbg !5724
  ret i32 %6, !dbg !5725
}

; Function Attrs: noredzone
declare dso_local i32 @pci_alloc_irq_vectors_affinity(%struct.pci_dev*, i32, i32, i32, %struct.irq_affinity*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5726 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5731
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5733
  %1 = load i8*, i8** %init_name, align 8, !dbg !5733
  %tobool = icmp ne i8* %1, null, !dbg !5731
  br i1 %tobool, label %if.then, label %if.end, !dbg !5734

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5735
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5736
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5736
  store i8* %3, i8** %retval, align 8, !dbg !5737
  br label %return, !dbg !5737

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5738
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5739
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5740
  store i8* %call, i8** %retval, align 8, !dbg !5741
  br label %return, !dbg !5741

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5742
  ret i8* %5, !dbg !5742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5743 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5750
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5751
  %1 = load i8*, i8** %name, align 8, !dbg !5751
  ret i8* %1, !dbg !5752
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_ohci_or_uhci(%struct.pci_dev* %pdev) #0 !dbg !5753 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5756
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 11, !dbg !5757
  %1 = load i32, i32* %class, align 4, !dbg !5757
  %cmp = icmp eq i32 %1, 787216, !dbg !5758
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5759

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5760
  %class1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 11, !dbg !5761
  %3 = load i32, i32* %class1, align 4, !dbg !5761
  %cmp2 = icmp eq i32 %3, 787200, !dbg !5762
  br label %lor.end, !dbg !5759

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5759
  ret i32 %lor.ext, !dbg !5763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !5764 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5767
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !5768
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !5769
  ret void, !dbg !5770
}

; Function Attrs: noredzone
declare dso_local i32 @usb_set_configuration(%struct.usb_device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5771 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5776
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5777
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5777
  ret i8* %1, !dbg !5778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !5779 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5782
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !5783
  call void @mutex_unlock(%struct.mutex* %mutex) #7, !dbg !5784
  ret void, !dbg !5785
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5786 {
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
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5795 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  ret void, !dbg !5805
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5806 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5807, metadata !DIExpression()), !dbg !5808
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  ret i1 true, !dbg !5811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @suspend_common(%struct.device* %dev, i1 zeroext %do_wakeup) #0 !dbg !5812 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %do_wakeup.addr = alloca i8, align 1
  %pci_dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5815, metadata !DIExpression()), !dbg !5816
  %frombool = zext i1 %do_wakeup to i8
  store i8 %frombool, i8* %do_wakeup.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %do_wakeup.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5821, metadata !DIExpression()), !dbg !5823
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5823
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5823
  store i8* %1, i8** %__mptr, align 8, !dbg !5823
  br label %do.body, !dbg !5823

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5824

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5823
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5823
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5823
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5824
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5823
  store %struct.pci_dev* %4, %struct.pci_dev** %pci_dev, align 8, !dbg !5820
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5826, metadata !DIExpression()), !dbg !5827
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5828
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %5) #7, !dbg !5829
  %6 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5829
  store %struct.usb_hcd* %6, %struct.usb_hcd** %hcd, align 8, !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5830, metadata !DIExpression()), !dbg !5831
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5832
  %call2 = call i32 @check_root_hub_suspended(%struct.device* %7) #7, !dbg !5833
  store i32 %call2, i32* %retval1, align 4, !dbg !5834
  %8 = load i32, i32* %retval1, align 4, !dbg !5835
  %tobool = icmp ne i32 %8, 0, !dbg !5835
  br i1 %tobool, label %if.then, label %if.end, !dbg !5837

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %retval1, align 4, !dbg !5838
  store i32 %9, i32* %retval, align 4, !dbg !5839
  br label %return, !dbg !5839

if.end:                                           ; preds = %do.end
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5840
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 9, !dbg !5842
  %11 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5842
  %pci_suspend = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %11, i32 0, i32 7, !dbg !5843
  %12 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_suspend, align 8, !dbg !5843
  %tobool3 = icmp ne i32 (%struct.usb_hcd*, i1)* %12, null, !dbg !5840
  br i1 %tobool3, label %land.lhs.true, label %if.end60, !dbg !5844

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5845
  %flags = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 12, !dbg !5845
  %14 = load i64, i64* %flags, align 8, !dbg !5845
  %and = and i64 %14, 64, !dbg !5845
  %tobool4 = icmp ne i64 %and, 0, !dbg !5845
  br i1 %tobool4, label %if.end60, label %if.then5, !dbg !5846

if.then5:                                         ; preds = %land.lhs.true
  %15 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5847
  %tobool6 = trunc i8 %15 to i1, !dbg !5847
  br i1 %tobool6, label %land.lhs.true7, label %if.end12, !dbg !5850

land.lhs.true7:                                   ; preds = %if.then5
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5851
  %flags8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 12, !dbg !5851
  %17 = load i64, i64* %flags8, align 8, !dbg !5851
  %and9 = and i64 %17, 16, !dbg !5851
  %tobool10 = icmp ne i64 %and9, 0, !dbg !5851
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5852

if.then11:                                        ; preds = %land.lhs.true7
  store i32 -16, i32* %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end12:                                         ; preds = %land.lhs.true7, %if.then5
  %18 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5854
  %tobool13 = trunc i8 %18 to i1, !dbg !5854
  br i1 %tobool13, label %land.lhs.true14, label %if.end22, !dbg !5856

land.lhs.true14:                                  ; preds = %if.end12
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5857
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 24, !dbg !5858
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !5858
  %tobool15 = icmp ne %struct.usb_hcd* %20, null, !dbg !5857
  br i1 %tobool15, label %land.lhs.true16, label %if.end22, !dbg !5859

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5860
  %shared_hcd17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 24, !dbg !5860
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd17, align 8, !dbg !5860
  %flags18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 12, !dbg !5860
  %23 = load i64, i64* %flags18, align 8, !dbg !5860
  %and19 = and i64 %23, 16, !dbg !5860
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5860
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5861

if.then21:                                        ; preds = %land.lhs.true16
  store i32 -16, i32* %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

if.end22:                                         ; preds = %land.lhs.true16, %land.lhs.true14, %if.end12
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5863
  %driver23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 9, !dbg !5864
  %25 = load %struct.hc_driver*, %struct.hc_driver** %driver23, align 8, !dbg !5864
  %pci_suspend24 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %25, i32 0, i32 7, !dbg !5865
  %26 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_suspend24, align 8, !dbg !5865
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5866
  %28 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5867
  %tobool25 = trunc i8 %28 to i1, !dbg !5867
  %call26 = call i32 %26(%struct.usb_hcd* %27, i1 zeroext %tobool25) #7, !dbg !5863
  store i32 %call26, i32* %retval1, align 4, !dbg !5868
  br label %do.body27, !dbg !5869

do.body27:                                        ; preds = %if.end22
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5870
  %driver28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 9, !dbg !5870
  %30 = load %struct.hc_driver*, %struct.hc_driver** %driver28, align 8, !dbg !5870
  %pci_suspend29 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %30, i32 0, i32 7, !dbg !5870
  %31 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_suspend29, align 8, !dbg !5870
  %32 = bitcast i32 (%struct.usb_hcd*, i1)* %31 to i8*, !dbg !5870
  %33 = load i32, i32* %retval1, align 4, !dbg !5870
  call void @__suspend_report_result(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.suspend_common, i64 0, i64 0), i8* %32, i32 %33) #7, !dbg !5870
  br label %do.end30, !dbg !5870

do.end30:                                         ; preds = %do.body27
  %34 = load i32, i32* %retval1, align 4, !dbg !5872
  %cmp = icmp eq i32 %34, 0, !dbg !5874
  br i1 %cmp, label %land.lhs.true31, label %lor.lhs.false, !dbg !5875

land.lhs.true31:                                  ; preds = %do.end30
  %35 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5876
  %tobool32 = trunc i8 %35 to i1, !dbg !5876
  br i1 %tobool32, label %land.lhs.true33, label %lor.lhs.false, !dbg !5877

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5878
  %flags34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 12, !dbg !5878
  %37 = load i64, i64* %flags34, align 8, !dbg !5878
  %and35 = and i64 %37, 16, !dbg !5878
  %tobool36 = icmp ne i64 %and35, 0, !dbg !5878
  br i1 %tobool36, label %if.then48, label %lor.lhs.false, !dbg !5879

lor.lhs.false:                                    ; preds = %land.lhs.true33, %land.lhs.true31, %do.end30
  %38 = load i32, i32* %retval1, align 4, !dbg !5880
  %cmp37 = icmp eq i32 %38, 0, !dbg !5881
  br i1 %cmp37, label %land.lhs.true38, label %if.end56, !dbg !5882

land.lhs.true38:                                  ; preds = %lor.lhs.false
  %39 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5883
  %tobool39 = trunc i8 %39 to i1, !dbg !5883
  br i1 %tobool39, label %land.lhs.true40, label %if.end56, !dbg !5884

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5885
  %shared_hcd41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 24, !dbg !5886
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd41, align 8, !dbg !5886
  %tobool42 = icmp ne %struct.usb_hcd* %41, null, !dbg !5885
  br i1 %tobool42, label %land.lhs.true43, label %if.end56, !dbg !5887

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5888
  %shared_hcd44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 24, !dbg !5888
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd44, align 8, !dbg !5888
  %flags45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 12, !dbg !5888
  %44 = load i64, i64* %flags45, align 8, !dbg !5888
  %and46 = and i64 %44, 16, !dbg !5888
  %tobool47 = icmp ne i64 %and46, 0, !dbg !5888
  br i1 %tobool47, label %if.then48, label %if.end56, !dbg !5889

if.then48:                                        ; preds = %land.lhs.true43, %land.lhs.true33
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5890
  %driver49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 9, !dbg !5893
  %46 = load %struct.hc_driver*, %struct.hc_driver** %driver49, align 8, !dbg !5893
  %pci_resume = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %46, i32 0, i32 8, !dbg !5894
  %47 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_resume, align 8, !dbg !5894
  %tobool50 = icmp ne i32 (%struct.usb_hcd*, i1)* %47, null, !dbg !5890
  br i1 %tobool50, label %if.then51, label %if.end55, !dbg !5895

if.then51:                                        ; preds = %if.then48
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5896
  %driver52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 9, !dbg !5897
  %49 = load %struct.hc_driver*, %struct.hc_driver** %driver52, align 8, !dbg !5897
  %pci_resume53 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %49, i32 0, i32 8, !dbg !5898
  %50 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_resume53, align 8, !dbg !5898
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5899
  %call54 = call i32 %50(%struct.usb_hcd* %51, i1 zeroext false) #7, !dbg !5896
  br label %if.end55, !dbg !5896

if.end55:                                         ; preds = %if.then51, %if.then48
  store i32 -16, i32* %retval1, align 4, !dbg !5900
  br label %if.end56, !dbg !5901

if.end56:                                         ; preds = %if.end55, %land.lhs.true43, %land.lhs.true40, %land.lhs.true38, %lor.lhs.false
  %52 = load i32, i32* %retval1, align 4, !dbg !5902
  %tobool57 = icmp ne i32 %52, 0, !dbg !5902
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !5904

if.then58:                                        ; preds = %if.end56
  %53 = load i32, i32* %retval1, align 4, !dbg !5905
  store i32 %53, i32* %retval, align 4, !dbg !5906
  br label %return, !dbg !5906

if.end59:                                         ; preds = %if.end56
  br label %if.end60, !dbg !5907

if.end60:                                         ; preds = %if.end59, %land.lhs.true, %if.end
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5908
  %msix_enabled = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 14, !dbg !5910
  %bf.load = load i16, i16* %msix_enabled, align 4, !dbg !5910
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !5910
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5910
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5910
  %tobool61 = icmp ne i32 %bf.cast, 0, !dbg !5908
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !5911

if.then62:                                        ; preds = %if.end60
  %55 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5912
  %call63 = call i32 @pci_irq_vector(%struct.pci_dev* %55, i32 0) #7, !dbg !5913
  call void @synchronize_irq(i32 %call63) #7, !dbg !5914
  br label %if.end64, !dbg !5914

if.end64:                                         ; preds = %if.then62, %if.end60
  %56 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5915
  call void @pci_disable_device(%struct.pci_dev* %56) #7, !dbg !5916
  %57 = load i32, i32* %retval1, align 4, !dbg !5917
  store i32 %57, i32* %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

return:                                           ; preds = %if.end64, %if.then58, %if.then21, %if.then11, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !5919
  ret i32 %58, !dbg !5919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !5920 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5925
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5926
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !5927
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !5927
  %bf.clear = and i16 %bf.load, 1, !dbg !5927
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5927
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5925
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5928

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5929
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !5930
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !5931
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !5931
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !5932
  %lnot = xor i1 %tobool2, true, !dbg !5932
  %lnot3 = xor i1 %lnot, true, !dbg !5933
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !5934
  ret i1 %3, !dbg !5935
}

; Function Attrs: noredzone
declare dso_local void @__suspend_report_result(i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @synchronize_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @resume_common(%struct.device* %dev, i32 %event) #0 !dbg !5936 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %event.addr = alloca i32, align 4
  %pci_dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5939, metadata !DIExpression()), !dbg !5940
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !5941, metadata !DIExpression()), !dbg !5942
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev, metadata !5943, metadata !DIExpression()), !dbg !5944
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5945, metadata !DIExpression()), !dbg !5947
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5947
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5947
  store i8* %1, i8** %__mptr, align 8, !dbg !5947
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5948

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5947
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5947
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5947
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5948
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5947
  store %struct.pci_dev* %4, %struct.pci_dev** %pci_dev, align 8, !dbg !5944
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5950, metadata !DIExpression()), !dbg !5951
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5952
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %5) #7, !dbg !5953
  %6 = bitcast i8* %call to %struct.usb_hcd*, !dbg !5953
  store %struct.usb_hcd* %6, %struct.usb_hcd** %hcd, align 8, !dbg !5951
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5954, metadata !DIExpression()), !dbg !5955
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5956
  %flags = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 12, !dbg !5956
  %8 = load i64, i64* %flags, align 8, !dbg !5956
  %and = and i64 %8, 32, !dbg !5956
  %tobool = icmp ne i64 %and, 0, !dbg !5956
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5958

lor.lhs.false:                                    ; preds = %do.end
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5959
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 24, !dbg !5960
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !5960
  %tobool2 = icmp ne %struct.usb_hcd* %10, null, !dbg !5959
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !5961

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5962
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 24, !dbg !5962
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd3, align 8, !dbg !5962
  %flags4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 12, !dbg !5962
  %13 = load i64, i64* %flags4, align 8, !dbg !5962
  %and5 = and i64 %13, 32, !dbg !5962
  %tobool6 = icmp ne i64 %and5, 0, !dbg !5962
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5963

if.then:                                          ; preds = %land.lhs.true, %do.end
  store i32 0, i32* %retval, align 4, !dbg !5964
  br label %return, !dbg !5964

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5966
  %call7 = call i32 @pci_enable_device(%struct.pci_dev* %14) #7, !dbg !5967
  store i32 %call7, i32* %retval1, align 4, !dbg !5968
  %15 = load i32, i32* %retval1, align 4, !dbg !5969
  %cmp = icmp slt i32 %15, 0, !dbg !5971
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5972

if.then8:                                         ; preds = %if.end
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5973
  %17 = load i32, i32* %retval1, align 4, !dbg !5973
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %17) #8, !dbg !5973
  %18 = load i32, i32* %retval1, align 4, !dbg !5975
  store i32 %18, i32* %retval, align 4, !dbg !5976
  br label %return, !dbg !5976

if.end9:                                          ; preds = %if.end
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5977
  call void @pci_set_master(%struct.pci_dev* %19) #7, !dbg !5978
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5979
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %20, i32 0, i32 9, !dbg !5981
  %21 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5981
  %pci_resume = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %21, i32 0, i32 8, !dbg !5982
  %22 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_resume, align 8, !dbg !5982
  %tobool10 = icmp ne i32 (%struct.usb_hcd*, i1)* %22, null, !dbg !5979
  br i1 %tobool10, label %land.lhs.true11, label %if.end28, !dbg !5983

land.lhs.true11:                                  ; preds = %if.end9
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5984
  %flags12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 12, !dbg !5984
  %24 = load i64, i64* %flags12, align 8, !dbg !5984
  %and13 = and i64 %24, 64, !dbg !5984
  %tobool14 = icmp ne i64 %and13, 0, !dbg !5984
  br i1 %tobool14, label %if.end28, label %if.then15, !dbg !5985

if.then15:                                        ; preds = %land.lhs.true11
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5986
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 11, !dbg !5989
  %26 = load i32, i32* %class, align 4, !dbg !5989
  %cmp16 = icmp eq i32 %26, 787232, !dbg !5990
  br i1 %cmp16, label %land.lhs.true17, label %if.end20, !dbg !5991

land.lhs.true17:                                  ; preds = %if.then15
  %27 = load i32, i32* %event.addr, align 4, !dbg !5992
  %cmp18 = icmp ne i32 %27, 1040, !dbg !5993
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5994

if.then19:                                        ; preds = %land.lhs.true17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5995
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5996
  call void @for_each_companion(%struct.pci_dev* %28, %struct.usb_hcd* %29, void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @ehci_wait_for_companions) #7, !dbg !5997
  br label %if.end20, !dbg !5997

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %if.then15
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5998
  %driver21 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 9, !dbg !5999
  %31 = load %struct.hc_driver*, %struct.hc_driver** %driver21, align 8, !dbg !5999
  %pci_resume22 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %31, i32 0, i32 8, !dbg !6000
  %32 = load i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)** %pci_resume22, align 8, !dbg !6000
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6001
  %34 = load i32, i32* %event.addr, align 4, !dbg !6002
  %cmp23 = icmp eq i32 %34, 64, !dbg !6003
  %call24 = call i32 %32(%struct.usb_hcd* %33, i1 zeroext %cmp23) #7, !dbg !5998
  store i32 %call24, i32* %retval1, align 4, !dbg !6004
  %35 = load i32, i32* %retval1, align 4, !dbg !6005
  %tobool25 = icmp ne i32 %35, 0, !dbg !6005
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6007

if.then26:                                        ; preds = %if.end20
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6008
  %37 = load i32, i32* %retval1, align 4, !dbg !6008
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %37) #8, !dbg !6008
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6010
  call void @usb_hc_died(%struct.usb_hcd* %38) #7, !dbg !6011
  br label %if.end27, !dbg !6012

if.end27:                                         ; preds = %if.then26, %if.end20
  br label %if.end28, !dbg !6013

if.end28:                                         ; preds = %if.end27, %land.lhs.true11, %if.end9
  %39 = load i32, i32* %retval1, align 4, !dbg !6014
  store i32 %39, i32* %retval, align 4, !dbg !6015
  br label %return, !dbg !6015

return:                                           ; preds = %if.end28, %if.then8, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !6016
  ret i32 %40, !dbg !6016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehci_wait_for_companions(%struct.pci_dev* %pdev, %struct.usb_hcd* %hcd, %struct.pci_dev* %companion, %struct.usb_hcd* %companion_hcd) #0 !dbg !6017 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %companion.addr = alloca %struct.pci_dev*, align 8
  %companion_hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  store %struct.pci_dev* %companion, %struct.pci_dev** %companion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  store %struct.usb_hcd* %companion_hcd, %struct.usb_hcd** %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %companion_hcd.addr, metadata !6024, metadata !DIExpression()), !dbg !6025
  %0 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !6026
  %call = call i32 @is_ohci_or_uhci(%struct.pci_dev* %0) #7, !dbg !6028
  %tobool = icmp ne i32 %call, 0, !dbg !6028
  br i1 %tobool, label %if.then, label %if.end, !dbg !6029

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6030
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !6031
  %2 = load %struct.pci_dev*, %struct.pci_dev** %companion.addr, align 8, !dbg !6032
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !6033
  %call2 = call i32 @device_pm_wait_for_dev(%struct.device* %dev, %struct.device* %dev1) #7, !dbg !6034
  br label %if.end, !dbg !6034

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6035
}

; Function Attrs: noredzone
declare dso_local void @usb_hc_died(%struct.usb_hcd*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_pm_wait_for_dev(%struct.device*, %struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_save_state(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_prepare_to_sleep(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermac_set_asic(%struct.pci_dev* %pci_dev, i32 %enable) #0 !dbg !6036 {
entry:
  %pci_dev.addr = alloca %struct.pci_dev*, align 8
  %enable.addr = alloca i32, align 4
  store %struct.pci_dev* %pci_dev, %struct.pci_dev** %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  ret void, !dbg !6043
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4179}
!llvm.module.flags = !{!4180, !4181, !4182, !4183}
!llvm.ident = !{!4184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "companions_rwsem", scope: !2, file: !3, line: 31, type: !827, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !4176, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/hcd-pci.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !125, !134, !141, !146, !152, !158, !170}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !108, line: 11, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !114, line: 1156, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}
!116 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!121 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!123 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !114, line: 1146, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133}
!127 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !135, line: 96, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !135, line: 476, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !147, line: 75, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !114, line: 1181, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 89, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169}
!161 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5, isUnsigned: true)
!163 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6, isUnsigned: true)
!164 = !DIEnumerator(name: "PCI_IOV_RESOURCES", value: 7, isUnsigned: true)
!165 = !DIEnumerator(name: "PCI_IOV_RESOURCE_END", value: 12, isUnsigned: true)
!166 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 13, isUnsigned: true)
!167 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 16, isUnsigned: true)
!168 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 17, isUnsigned: true)
!169 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 17, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!175 = !{!176, !177, !181, !182, !188, !190}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !180)
!180 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !185, line: 21, baseType: !186)
!185 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !187, line: 27, baseType: !7)
!187 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !159, line: 309, size: 19264, elements: !192)
!192 = !{!193, !200, !3979, !3980, !3981, !3982, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4074, !4075, !4076, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4150, !4151, !4152, !4153, !4154, !4155, !4157, !4158, !4159, !4162, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !191, file: !159, line: 310, baseType: !194, size: 128)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !195, line: 178, size: 128, elements: !196)
!195 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !195, line: 179, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !194, file: !195, line: 179, baseType: !198, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !191, file: !159, line: 311, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !159, line: 605, size: 8064, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !234, !235, !236, !261, !264, !265, !269, !271, !272, !273, !274, !278, !280, !282, !3975, !3976, !3977, !3978}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !159, line: 606, baseType: !194, size: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !159, line: 607, baseType: !201, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !202, file: !159, line: 608, baseType: !194, size: 128, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !202, file: !159, line: 609, baseType: !194, size: 128, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !202, file: !159, line: 610, baseType: !190, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !202, file: !159, line: 611, baseType: !194, size: 128, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !202, file: !159, line: 613, baseType: !211, size: 256, offset: 640)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !232)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !214, line: 20, size: 512, elements: !215)
!214 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !222, !223, !227, !228, !229, !230, !231}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !213, file: !214, line: 21, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !195, line: 158, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !195, line: 153, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !185, line: 23, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !187, line: 31, baseType: !221)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !213, file: !214, line: 22, baseType: !217, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !214, line: 23, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !214, line: 24, baseType: !189, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !213, file: !214, line: 25, baseType: !189, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !214, line: 26, baseType: !212, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !213, file: !214, line: 26, baseType: !212, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !213, file: !214, line: 26, baseType: !212, size: 64, offset: 448)
!232 = !{!233}
!233 = !DISubrange(count: 4)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !202, file: !159, line: 614, baseType: !194, size: 128, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !202, file: !159, line: 615, baseType: !213, size: 512, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !202, file: !159, line: 617, baseType: !237, size: 64, offset: 1536)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !159, line: 731, size: 320, elements: !239)
!239 = !{!240, !244, !248, !252, !257}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !238, file: !159, line: 732, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!180, !201}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !238, file: !159, line: 733, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !201}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !238, file: !159, line: 734, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!176, !201, !7, !180}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !238, file: !159, line: 735, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!180, !201, !7, !180, !180, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !238, file: !159, line: 736, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!180, !201, !7, !180, !180, !184}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !202, file: !159, line: 618, baseType: !262, size: 64, offset: 1600)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !159, line: 537, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !202, file: !159, line: 619, baseType: !176, size: 64, offset: 1664)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !202, file: !159, line: 620, baseType: !266, size: 64, offset: 1728)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !268, line: 123, flags: DIFlagFwdDecl)
!268 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !202, file: !159, line: 622, baseType: !270, size: 8, offset: 1792)
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !202, file: !159, line: 623, baseType: !270, size: 8, offset: 1800)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !202, file: !159, line: 624, baseType: !270, size: 8, offset: 1808)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !202, file: !159, line: 625, baseType: !270, size: 8, offset: 1816)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !159, line: 630, baseType: !275, size: 384, offset: 1824)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 384, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 48)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !202, file: !159, line: 632, baseType: !279, size: 16, offset: 2208)
!279 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !202, file: !159, line: 633, baseType: !281, size: 16, offset: 2224)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !159, line: 237, baseType: !279)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !202, file: !159, line: 634, baseType: !283, size: 64, offset: 2240)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !285)
!285 = !{!286, !3430, !3431, !3434, !3435, !3486, !3577, !3578, !3579, !3580, !3581, !3590, !3695, !3708, !3902, !3903, !3907, !3909, !3910, !3911, !3915, !3921, !3922, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3963, !3964, !3965, !3968, !3971, !3972, !3973, !3974}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !284, file: !73, line: 462, baseType: !287, size: 512)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !288, line: 64, size: 512, elements: !289)
!288 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !291, !292, !294, !354, !3281, !3420, !3425, !3426, !3427, !3428, !3429}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !288, line: 65, baseType: !224, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !287, file: !288, line: 66, baseType: !194, size: 128, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !287, file: !288, line: 67, baseType: !293, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !287, file: !288, line: 68, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !288, line: 192, size: 704, elements: !297)
!297 = !{!298, !299, !315, !316}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !296, file: !288, line: 193, baseType: !194, size: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !296, file: !288, line: 194, baseType: !300, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !301, line: 83, baseType: !302)
!301 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !301, line: 71, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !301, line: 72, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !301, line: 72, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !305, file: !301, line: 73, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !301, line: 20, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !308, file: !301, line: 21, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !312, line: 25, baseType: !313)
!312 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 25, elements: !314)
!314 = !{}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !296, file: !288, line: 195, baseType: !287, size: 512, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !296, file: !288, line: 196, baseType: !317, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !288, line: 156, size: 192, elements: !320)
!320 = !{!321, !326, !331}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !319, file: !288, line: 157, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!180, !295, !293}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !288, line: 158, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!224, !295, !293}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !319, file: !288, line: 159, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!180, !295, !293, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !288, line: 148, size: 20736, elements: !338)
!338 = !{!339, !344, !348, !349, !353}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !337, file: !288, line: 149, baseType: !340, size: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 192, elements: !342)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!342 = !{!343}
!343 = !DISubrange(count: 3)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !337, file: !288, line: 150, baseType: !345, size: 4096, offset: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4096, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !337, file: !288, line: 151, baseType: !180, size: 32, offset: 4288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !337, file: !288, line: 152, baseType: !350, size: 16384, offset: 4320)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 16384, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 2048)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !337, file: !288, line: 153, baseType: !180, size: 32, offset: 20704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !287, file: !288, line: 69, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !288, line: 138, size: 448, elements: !357)
!357 = !{!358, !362, !390, !392, !3243, !3271, !3275}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !356, file: !288, line: 139, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !293}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !356, file: !288, line: 140, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !366, line: 230, size: 128, elements: !367)
!366 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !383}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !365, file: !366, line: 231, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !293, !377, !341}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !195, line: 60, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !374, line: 73, baseType: !375)
!374 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !374, line: 15, baseType: !376)
!376 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !366, line: 30, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !366, line: 31, baseType: !224, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !378, file: !366, line: 32, baseType: !382, size: 16, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !195, line: 19, baseType: !279)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !365, file: !366, line: 232, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!372, !293, !377, !224, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 55, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !374, line: 72, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !374, line: 16, baseType: !189)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !356, file: !288, line: 141, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !356, file: !288, line: 142, baseType: !393, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !366, line: 84, size: 320, elements: !397)
!397 = !{!398, !399, !403, !3240, !3241}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !366, line: 85, baseType: !224, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !396, file: !366, line: 86, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!382, !293, !377, !180}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !396, file: !366, line: 88, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!382, !293, !407, !180}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !366, line: 168, size: 448, elements: !409)
!409 = !{!410, !411, !412, !413, !3235, !3236}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !408, file: !366, line: 169, baseType: !378, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !408, file: !366, line: 170, baseType: !387, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !408, file: !366, line: 171, baseType: !176, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !408, file: !366, line: 172, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!372, !417, !293, !407, !341, !588, !387}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !419)
!419 = !{!420, !438, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3218, !3219, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !418, file: !44, line: 920, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !44, line: 917, size: 128, elements: !422)
!422 = !{!423, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !421, file: !44, line: 918, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !425, line: 58, size: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 59, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !421, file: !44, line: 919, baseType: !430, size: 128, align: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !195, line: 216, size: 128, align: 64, elements: !431)
!431 = !{!432, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !195, line: 217, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !430, file: !195, line: 218, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !433}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !418, file: !44, line: 921, baseType: !439, size: 128, offset: 128)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !440, line: 8, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !439, file: !440, line: 9, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !445, line: 18, flags: DIFlagFwdDecl)
!445 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !439, file: !440, line: 10, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !445, line: 89, size: 1536, elements: !449)
!449 = !{!450, !451, !461, !469, !470, !485, !3168, !3170, !3182, !3183, !3184, !3185, !3186, !3192, !3193, !3194}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !448, file: !445, line: 91, baseType: !7, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !448, file: !445, line: 92, baseType: !452, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !453, line: 277, baseType: !454)
!453 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !453, line: 277, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !454, file: !453, line: 277, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !453, line: 70, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !453, line: 65, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !458, file: !453, line: 66, baseType: !7, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !448, file: !445, line: 93, baseType: !462, size: 128, offset: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !463, line: 38, size: 128, elements: !464)
!463 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !463, line: 39, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !462, file: !463, line: 39, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !448, file: !445, line: 94, baseType: !447, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !448, file: !445, line: 95, baseType: !471, size: 128, offset: 256)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !445, line: 47, size: 128, elements: !472)
!472 = !{!473, !482}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !445, line: 48, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !471, file: !445, line: 48, size: 64, elements: !475)
!475 = !{!476, !481}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !445, line: 49, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !445, line: 49, size: 64, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !477, file: !445, line: 50, baseType: !184, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !477, file: !445, line: 50, baseType: !184, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !474, file: !445, line: 52, baseType: !219, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !445, line: 54, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !448, file: !445, line: 96, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !488)
!488 = !{!489, !490, !491, !499, !506, !507, !655, !2879, !2880, !2881, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !3144, !3152, !3153, !3154, !3164, !3165, !3166, !3167}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !487, file: !44, line: 611, baseType: !382, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !487, file: !44, line: 612, baseType: !279, size: 16, offset: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !487, file: !44, line: 613, baseType: !492, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !493, line: 23, baseType: !494)
!493 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 21, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !494, file: !493, line: 22, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 32, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !374, line: 49, baseType: !7)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !487, file: !44, line: 614, baseType: !500, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !493, line: 28, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 26, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !493, line: 27, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 33, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !374, line: 50, baseType: !7)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !487, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !487, file: !44, line: 622, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !511)
!511 = !{!512, !516, !529, !533, !539, !543, !549, !553, !557, !561, !565, !566, !572, !576, !602, !631, !635, !641, !646, !650, !651}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !510, file: !44, line: 1865, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!447, !486, !447, !7}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !510, file: !44, line: 1866, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!224, !447, !486, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !522, line: 10, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !528}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !521, file: !522, line: 11, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !176}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !521, file: !522, line: 12, baseType: !176, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !510, file: !44, line: 1867, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!180, !486, !180}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !510, file: !44, line: 1868, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !486, !180}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !510, file: !44, line: 1870, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!180, !447, !341, !180}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !510, file: !44, line: 1872, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!180, !486, !447, !382, !547}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !195, line: 30, baseType: !548)
!548 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !510, file: !44, line: 1873, baseType: !550, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!180, !447, !486, !447}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !510, file: !44, line: 1874, baseType: !554, size: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!180, !486, !447}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !510, file: !44, line: 1875, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!180, !486, !447, !224}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !510, file: !44, line: 1876, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!180, !486, !447, !382}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !510, file: !44, line: 1877, baseType: !554, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !510, file: !44, line: 1878, baseType: !567, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!180, !486, !447, !382, !570}
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 16, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !195, line: 13, baseType: !184)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !510, file: !44, line: 1879, baseType: !573, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!180, !486, !447, !486, !447, !7}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !510, file: !44, line: 1881, baseType: !577, size: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!180, !447, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !591, !599, !600, !601}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !581, file: !44, line: 220, baseType: !7, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !581, file: !44, line: 221, baseType: !382, size: 16, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !581, file: !44, line: 222, baseType: !492, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !581, file: !44, line: 223, baseType: !500, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !581, file: !44, line: 224, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !195, line: 46, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !374, line: 88, baseType: !590)
!590 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !581, file: !44, line: 225, baseType: !592, size: 128, offset: 192)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !593, line: 13, size: 128, elements: !594)
!593 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!594 = !{!595, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !592, file: !593, line: 14, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !593, line: 8, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !187, line: 30, baseType: !590)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !592, file: !593, line: 15, baseType: !376, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !581, file: !44, line: 226, baseType: !592, size: 128, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !581, file: !44, line: 227, baseType: !592, size: 128, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !581, file: !44, line: 234, baseType: !417, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !510, file: !44, line: 1882, baseType: !603, size: 64, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!180, !606, !608, !184, !7}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !610, line: 22, size: 1152, elements: !611)
!610 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!611 = !{!612, !613, !614, !615, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !609, file: !610, line: 23, baseType: !184, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !609, file: !610, line: 24, baseType: !382, size: 16, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !609, file: !610, line: 25, baseType: !7, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !609, file: !610, line: 26, baseType: !616, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !195, line: 104, baseType: !184)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !609, file: !610, line: 27, baseType: !219, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !609, file: !610, line: 28, baseType: !219, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !609, file: !610, line: 37, baseType: !219, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !609, file: !610, line: 38, baseType: !570, size: 32, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !609, file: !610, line: 39, baseType: !570, size: 32, offset: 352)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !609, file: !610, line: 40, baseType: !492, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !609, file: !610, line: 41, baseType: !500, size: 32, offset: 416)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !609, file: !610, line: 42, baseType: !588, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !609, file: !610, line: 43, baseType: !592, size: 128, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !609, file: !610, line: 44, baseType: !592, size: 128, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !609, file: !610, line: 45, baseType: !592, size: 128, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !609, file: !610, line: 46, baseType: !592, size: 128, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !609, file: !610, line: 47, baseType: !219, size: 64, offset: 1024)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !609, file: !610, line: 48, baseType: !219, size: 64, offset: 1088)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !510, file: !44, line: 1883, baseType: !632, size: 64, offset: 960)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!372, !447, !341, !387}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !510, file: !44, line: 1884, baseType: !636, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!180, !486, !639, !219, !219}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !510, file: !44, line: 1886, baseType: !642, size: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!180, !486, !645, !180}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !510, file: !44, line: 1887, baseType: !647, size: 64, offset: 1152)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!180, !486, !447, !417, !7, !382}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !510, file: !44, line: 1890, baseType: !562, size: 64, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !510, file: !44, line: 1891, baseType: !652, size: 64, offset: 1280)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!180, !486, !537, !180}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !487, file: !44, line: 623, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !714, !2486, !2568, !2651, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2667, !2671, !2672, !2675, !2676, !2679, !2680, !2681, !2722, !2749, !2750, !2751, !2752, !2753, !2754, !2757, !2759, !2766, !2767, !2769, !2770, !2771, !2830, !2831, !2846, !2847, !2848, !2849, !2850, !2853, !2854, !2855, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !657, file: !44, line: 1417, baseType: !194, size: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !657, file: !44, line: 1418, baseType: !570, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !657, file: !44, line: 1419, baseType: !270, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !657, file: !44, line: 1420, baseType: !189, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !657, file: !44, line: 1421, baseType: !588, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !657, file: !44, line: 1422, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !667)
!667 = !{!668, !669, !670, !677, !681, !685, !689, !693, !694, !704, !707, !708, !709, !711, !712, !713}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !44, line: 2229, baseType: !224, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !666, file: !44, line: 2230, baseType: !180, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !666, file: !44, line: 2238, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!180, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !676, line: 28, flags: DIFlagFwdDecl)
!676 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!677 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !666, file: !44, line: 2239, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !666, file: !44, line: 2240, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!447, !665, !180, !224, !176}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !666, file: !44, line: 2242, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !656}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !666, file: !44, line: 2243, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !692, line: 76, flags: DIFlagFwdDecl)
!692 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !44, line: 2244, baseType: !665, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !666, file: !44, line: 2245, baseType: !695, size: 64, offset: 512)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !195, line: 182, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !195, line: 183, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !195, line: 186, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !195, line: 187, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !195, line: 187, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !666, file: !44, line: 2247, baseType: !705, offset: 576)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !706, line: 187, elements: !314)
!706 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !666, file: !44, line: 2248, baseType: !705, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !666, file: !44, line: 2249, baseType: !705, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !666, file: !44, line: 2250, baseType: !710, offset: 576)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, elements: !342)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !666, file: !44, line: 2252, baseType: !705, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !666, file: !44, line: 2253, baseType: !705, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !666, file: !44, line: 2254, baseType: !705, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !657, file: !44, line: 1423, baseType: !715, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !718)
!718 = !{!719, !723, !727, !728, !732, !738, !742, !743, !744, !748, !752, !753, !754, !755, !761, !765, !766, !773, !774, !775, !776, !2470, !2485}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !717, file: !44, line: 1936, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!486, !656}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !717, file: !44, line: 1937, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !486}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !717, file: !44, line: 1938, baseType: !724, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !717, file: !44, line: 1940, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !486, !180}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !717, file: !44, line: 1941, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!180, !486, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !717, file: !44, line: 1942, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!180, !486}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !717, file: !44, line: 1943, baseType: !724, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !717, file: !44, line: 1944, baseType: !686, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !717, file: !44, line: 1945, baseType: !745, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!180, !656, !180}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !717, file: !44, line: 1946, baseType: !749, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!180, !656}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !717, file: !44, line: 1947, baseType: !749, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !717, file: !44, line: 1948, baseType: !749, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !717, file: !44, line: 1949, baseType: !749, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !717, file: !44, line: 1950, baseType: !756, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!180, !447, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !717, file: !44, line: 1951, baseType: !762, size: 64, offset: 896)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!180, !656, !181, !341}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !717, file: !44, line: 1952, baseType: !686, size: 64, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !717, file: !44, line: 1954, baseType: !767, size: 64, offset: 1024)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!180, !770, !447}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !772, line: 539, flags: DIFlagFwdDecl)
!772 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!773 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !717, file: !44, line: 1955, baseType: !767, size: 64, offset: 1088)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !717, file: !44, line: 1956, baseType: !767, size: 64, offset: 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !717, file: !44, line: 1957, baseType: !767, size: 64, offset: 1216)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !717, file: !44, line: 1963, baseType: !777, size: 64, offset: 1280)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!180, !656, !780, !803}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !782, line: 68, size: 512, align: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !2462, !2469}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 69, baseType: !189, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 77, baseType: !786, size: 320, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 77, size: 320, elements: !787)
!787 = !{!788, !976, !981, !1009, !1017, !1023, !2393, !2461}
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 78, baseType: !789, size: 320)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 78, size: 320, elements: !790)
!790 = !{!791, !792, !974, !975}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !789, file: !782, line: 84, baseType: !194, size: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !789, file: !782, line: 86, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !795)
!795 = !{!796, !797, !805, !806, !811, !826, !842, !843, !844, !845, !967, !968, !971, !972, !973}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !794, file: !44, line: 452, baseType: !486, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !794, file: !44, line: 453, baseType: !798, size: 128, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !799, line: 292, size: 128, elements: !800)
!799 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !802, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !798, file: !799, line: 293, baseType: !300)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !798, file: !799, line: 295, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !195, line: 148, baseType: !7)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !798, file: !799, line: 296, baseType: !176, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !794, file: !44, line: 454, baseType: !803, size: 32, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !794, file: !44, line: 455, baseType: !807, size: 32, offset: 224)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !195, line: 168, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 166, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !808, file: !195, line: 167, baseType: !180, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !794, file: !44, line: 460, baseType: !812, size: 128, offset: 256)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !813, line: 125, size: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !825}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !812, file: !813, line: 126, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !813, line: 31, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !816, file: !813, line: 32, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !813, line: 24, size: 192, align: 64, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !820, file: !813, line: 25, baseType: !189, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !820, file: !813, line: 26, baseType: !819, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !820, file: !813, line: 27, baseType: !819, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !812, file: !813, line: 127, baseType: !819, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !794, file: !44, line: 461, baseType: !827, size: 256, offset: 384)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !828, line: 35, size: 256, elements: !829)
!828 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!829 = !{!830, !838, !839, !841}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !827, file: !828, line: 36, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !832, line: 13, baseType: !833)
!832 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !195, line: 175, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 173, size: 64, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !834, file: !195, line: 174, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !185, line: 22, baseType: !597)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !827, file: !828, line: 42, baseType: !831, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !827, file: !828, line: 46, baseType: !840, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !301, line: 29, baseType: !308)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !827, file: !828, line: 47, baseType: !194, size: 128, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !794, file: !44, line: 462, baseType: !189, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !794, file: !44, line: 463, baseType: !189, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !794, file: !44, line: 464, baseType: !189, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !794, file: !44, line: 465, baseType: !846, size: 64, offset: 832)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !849)
!849 = !{!850, !854, !858, !862, !866, !870, !876, !882, !886, !891, !895, !899, !903, !931, !935, !941, !942, !943, !947, !952, !956, !963}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !848, file: !44, line: 368, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!180, !780, !736}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !848, file: !44, line: 369, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!180, !417, !780}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !848, file: !44, line: 372, baseType: !859, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!180, !793, !736}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !848, file: !44, line: 375, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!180, !780}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !848, file: !44, line: 381, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!180, !417, !793, !198, !7}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !848, file: !44, line: 383, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !848, file: !44, line: 385, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!180, !417, !793, !588, !7, !7, !880, !881}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !848, file: !44, line: 388, baseType: !883, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!180, !417, !793, !588, !7, !7, !780, !176}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !848, file: !44, line: 393, baseType: !887, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!890, !793, !890}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !195, line: 125, baseType: !219)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !848, file: !44, line: 394, baseType: !892, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !780, !7, !7}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !848, file: !44, line: 395, baseType: !896, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!180, !780, !803}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !848, file: !44, line: 396, baseType: !900, size: 64, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !780}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !848, file: !44, line: 397, baseType: !904, size: 64, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!372, !907, !929}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !909)
!909 = !{!910, !911, !912, !916, !917, !918, !921, !922}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !908, file: !44, line: 321, baseType: !417, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !908, file: !44, line: 326, baseType: !588, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !908, file: !44, line: 327, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !907, !376, !376}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !908, file: !44, line: 328, baseType: !176, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !908, file: !44, line: 329, baseType: !180, size: 32, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !908, file: !44, line: 330, baseType: !919, size: 16, offset: 288)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !185, line: 19, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !187, line: 24, baseType: !279)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !908, file: !44, line: 331, baseType: !919, size: 16, offset: 304)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !44, line: 332, baseType: !923, size: 64, offset: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !44, line: 332, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !923, file: !44, line: 333, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !923, file: !44, line: 334, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !848, file: !44, line: 402, baseType: !932, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!180, !793, !780, !780, !5}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !848, file: !44, line: 404, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!547, !780, !939}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !940, line: 305, baseType: !7)
!940 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !848, file: !44, line: 405, baseType: !900, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !848, file: !44, line: 406, baseType: !863, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !848, file: !44, line: 407, baseType: !944, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!180, !780, !189, !189}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !848, file: !44, line: 409, baseType: !948, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !780, !951, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !848, file: !44, line: 410, baseType: !953, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!180, !793, !780}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !848, file: !44, line: 413, baseType: !957, size: 64, offset: 1280)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!180, !960, !417, !962}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !848, file: !44, line: 415, baseType: !964, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !417}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !44, line: 466, baseType: !189, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !794, file: !44, line: 467, baseType: !969, size: 32, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !970, line: 8, baseType: !184)
!970 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !794, file: !44, line: 468, baseType: !300, offset: 992)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !794, file: !44, line: 469, baseType: !194, size: 128, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !794, file: !44, line: 470, baseType: !176, size: 64, offset: 1152)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !789, file: !782, line: 87, baseType: !189, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !789, file: !782, line: 94, baseType: !189, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 96, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 96, size: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !977, file: !782, line: 101, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !195, line: 143, baseType: !219)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 103, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 103, size: 320, elements: !983)
!983 = !{!984, !994, !997, !998}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !782, line: 104, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !782, line: 104, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !985, file: !782, line: 105, baseType: !194, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !782, line: 106, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !782, line: 106, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !782, line: 107, baseType: !780, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !989, file: !782, line: 109, baseType: !180, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !989, file: !782, line: 110, baseType: !180, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !982, file: !782, line: 117, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !782, line: 117, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !982, file: !782, line: 119, baseType: !176, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !782, line: 120, baseType: !999, size: 64, offset: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !782, line: 120, size: 64, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !999, file: !782, line: 121, baseType: !176, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !999, file: !782, line: 122, baseType: !189, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !782, line: 123, baseType: !1004, size: 32)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !782, line: 123, size: 32, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1004, file: !782, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1004, file: !782, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1004, file: !782, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 130, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 130, size: 192, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1010, file: !782, line: 131, baseType: !189, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1010, file: !782, line: 134, baseType: !270, size: 8, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1010, file: !782, line: 135, baseType: !270, size: 8, offset: 72)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1010, file: !782, line: 136, baseType: !807, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1010, file: !782, line: 137, baseType: !7, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 139, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 139, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1018, file: !782, line: 140, baseType: !189, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1018, file: !782, line: 141, baseType: !807, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1018, file: !782, line: 143, baseType: !194, size: 128, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 145, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 145, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1029, !1030, !2392}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1024, file: !782, line: 146, baseType: !189, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1024, file: !782, line: 147, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !772, line: 509, baseType: !780)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1024, file: !782, line: 148, baseType: !189, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !782, line: 149, baseType: !1031, size: 64, offset: 192)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !782, line: 149, size: 64, elements: !1032)
!1032 = !{!1033, !2391}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1031, file: !782, line: 150, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !782, line: 388, size: 7296, elements: !1036)
!1036 = !{!1037, !2387}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !782, line: 389, baseType: !1038, size: 7296)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !782, line: 389, size: 7296, elements: !1039)
!1039 = !{!1040, !1158, !1159, !1160, !1164, !1165, !1166, !1167, !1168, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1215, !1218, !1264, !1265, !2371, !2372, !2375, !2376, !2377, !2380, !2381, !2382, !2385, !2386}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1038, file: !782, line: 390, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !782, line: 305, size: 1472, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1058, !1059, !1064, !1065, !1068, !1152, !1153, !1154, !1155, !1156}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1042, file: !782, line: 308, baseType: !189, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1042, file: !782, line: 309, baseType: !189, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1042, file: !782, line: 313, baseType: !1041, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1042, file: !782, line: 313, baseType: !1041, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1042, file: !782, line: 315, baseType: !820, size: 192, align: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1042, file: !782, line: 323, baseType: !189, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1042, file: !782, line: 327, baseType: !1034, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1042, file: !782, line: 333, baseType: !1052, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !772, line: 284, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !772, line: 284, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1053, file: !772, line: 284, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1057, line: 19, baseType: !189)
!1057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1042, file: !782, line: 334, baseType: !189, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1042, file: !782, line: 343, baseType: !1060, size: 256, offset: 704)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !782, line: 340, size: 256, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1060, file: !782, line: 341, baseType: !820, size: 192, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1060, file: !782, line: 342, baseType: !189, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1042, file: !782, line: 351, baseType: !194, size: 128, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1042, file: !782, line: 353, baseType: !1066, size: 64, offset: 1088)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !782, line: 353, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1042, file: !782, line: 356, baseType: !1069, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1072)
!1072 = !{!1073, !1077, !1078, !1082, !1086, !1126, !1130, !1134, !1138, !1139, !1140, !1144, !1148}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1071, file: !14, line: 558, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1041}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1071, file: !14, line: 559, baseType: !1074, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1071, file: !14, line: 560, baseType: !1079, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!180, !1041, !189}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1071, file: !14, line: 561, baseType: !1083, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!180, !1041}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1071, file: !14, line: 562, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !782, line: 682, baseType: !7)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1106, !1113, !1119, !1120, !1121, !1123, !1125}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1092, file: !14, line: 509, baseType: !1041, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1092, file: !14, line: 511, baseType: !803, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1092, file: !14, line: 512, baseType: !189, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1092, file: !14, line: 513, baseType: !189, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1092, file: !14, line: 514, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !772, line: 385, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 385, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1102, file: !772, line: 385, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1057, line: 15, baseType: !189)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1092, file: !14, line: 516, baseType: !1107, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !772, line: 359, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 359, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1109, file: !772, line: 359, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1057, line: 16, baseType: !189)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1092, file: !14, line: 519, baseType: !1114, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1057, line: 21, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 21, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1115, file: !1057, line: 21, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1057, line: 14, baseType: !189)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1092, file: !14, line: 521, baseType: !780, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1092, file: !14, line: 522, baseType: !780, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1092, file: !14, line: 528, baseType: !1122, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1092, file: !14, line: 532, baseType: !1124, size: 64, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1092, file: !14, line: 536, baseType: !1028, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1071, file: !14, line: 563, baseType: !1127, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1090, !1091, !13}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1071, file: !14, line: 565, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1091, !189, !189}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1071, file: !14, line: 567, baseType: !1135, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!189, !1041}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1071, file: !14, line: 571, baseType: !1087, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1071, file: !14, line: 574, baseType: !1087, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1071, file: !14, line: 579, baseType: !1141, size: 64, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!180, !1041, !189, !176, !180, !180}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1071, file: !14, line: 585, baseType: !1145, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!224, !1041}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1071, file: !14, line: 615, baseType: !1149, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!780, !1041, !189}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1042, file: !782, line: 359, baseType: !189, size: 64, offset: 1216)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1042, file: !782, line: 361, baseType: !417, size: 64, offset: 1280)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1042, file: !782, line: 362, baseType: !176, size: 64, offset: 1344)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1042, file: !782, line: 365, baseType: !831, size: 64, offset: 1408)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1042, file: !782, line: 373, baseType: !1157, offset: 1472)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !782, line: 296, elements: !314)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1038, file: !782, line: 391, baseType: !816, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1038, file: !782, line: 392, baseType: !219, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1038, file: !782, line: 394, baseType: !1161, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!189, !417, !189, !189, !189, !189}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1038, file: !782, line: 398, baseType: !189, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1038, file: !782, line: 399, baseType: !189, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1038, file: !782, line: 405, baseType: !189, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1038, file: !782, line: 406, baseType: !189, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1038, file: !782, line: 407, baseType: !1169, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !772, line: 286, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 286, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1171, file: !772, line: 286, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1057, line: 18, baseType: !189)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1038, file: !782, line: 416, baseType: !807, size: 32, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1038, file: !782, line: 428, baseType: !807, size: 32, offset: 608)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1038, file: !782, line: 437, baseType: !807, size: 32, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1038, file: !782, line: 447, baseType: !807, size: 32, offset: 672)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1038, file: !782, line: 450, baseType: !831, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1038, file: !782, line: 452, baseType: !180, size: 32, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1038, file: !782, line: 454, baseType: !300, offset: 800)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1038, file: !782, line: 457, baseType: !827, size: 256, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1038, file: !782, line: 459, baseType: !194, size: 128, offset: 1088)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1038, file: !782, line: 466, baseType: !189, size: 64, offset: 1216)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1038, file: !782, line: 467, baseType: !189, size: 64, offset: 1280)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1038, file: !782, line: 469, baseType: !189, size: 64, offset: 1344)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1038, file: !782, line: 470, baseType: !189, size: 64, offset: 1408)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1038, file: !782, line: 471, baseType: !833, size: 64, offset: 1472)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1038, file: !782, line: 472, baseType: !189, size: 64, offset: 1536)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1038, file: !782, line: 473, baseType: !189, size: 64, offset: 1600)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1038, file: !782, line: 474, baseType: !189, size: 64, offset: 1664)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1038, file: !782, line: 475, baseType: !189, size: 64, offset: 1728)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1038, file: !782, line: 477, baseType: !300, offset: 1792)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1038, file: !782, line: 478, baseType: !189, size: 64, offset: 1792)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1038, file: !782, line: 478, baseType: !189, size: 64, offset: 1856)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1038, file: !782, line: 478, baseType: !189, size: 64, offset: 1920)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1038, file: !782, line: 478, baseType: !189, size: 64, offset: 1984)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1038, file: !782, line: 479, baseType: !189, size: 64, offset: 2048)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1038, file: !782, line: 479, baseType: !189, size: 64, offset: 2112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1038, file: !782, line: 479, baseType: !189, size: 64, offset: 2176)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1038, file: !782, line: 480, baseType: !189, size: 64, offset: 2240)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1038, file: !782, line: 480, baseType: !189, size: 64, offset: 2304)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1038, file: !782, line: 480, baseType: !189, size: 64, offset: 2368)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1038, file: !782, line: 480, baseType: !189, size: 64, offset: 2432)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1038, file: !782, line: 482, baseType: !1206, size: 2816, offset: 2496)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2816, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 44)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1038, file: !782, line: 488, baseType: !1210, size: 256, offset: 5312)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1211, line: 60, size: 256, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1210, file: !1211, line: 61, baseType: !1214, size: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 256, elements: !232)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1038, file: !782, line: 490, baseType: !1216, size: 64, offset: 5568)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !782, line: 490, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1038, file: !782, line: 493, baseType: !1219, size: 896, offset: 5632)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1220, line: 53, baseType: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 13, size: 896, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1229, !1230, !1237, !1238, !1258, !1259, !1260}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1221, file: !1220, line: 18, baseType: !219, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1221, file: !1220, line: 28, baseType: !833, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1221, file: !1220, line: 31, baseType: !827, size: 256, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1221, file: !1220, line: 32, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1220, line: 32, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1221, file: !1220, line: 37, baseType: !279, size: 16, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1221, file: !1220, line: 40, baseType: !1231, size: 192, offset: 512)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1232, line: 53, size: 192, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1231, file: !1232, line: 54, baseType: !831, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1231, file: !1232, line: 55, baseType: !300, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1231, file: !1232, line: 59, baseType: !194, size: 128, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1221, file: !1220, line: 41, baseType: !176, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1221, file: !1220, line: 42, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1242, line: 13, size: 896, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1241, file: !1242, line: 14, baseType: !176, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1241, file: !1242, line: 15, baseType: !189, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1241, file: !1242, line: 17, baseType: !189, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1241, file: !1242, line: 17, baseType: !189, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1241, file: !1242, line: 19, baseType: !376, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1241, file: !1242, line: 21, baseType: !376, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1241, file: !1242, line: 22, baseType: !376, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1241, file: !1242, line: 23, baseType: !376, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1241, file: !1242, line: 24, baseType: !376, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1241, file: !1242, line: 25, baseType: !376, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1241, file: !1242, line: 26, baseType: !376, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1241, file: !1242, line: 27, baseType: !376, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1241, file: !1242, line: 28, baseType: !376, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1241, file: !1242, line: 29, baseType: !376, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1221, file: !1220, line: 44, baseType: !807, size: 32, offset: 832)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1221, file: !1220, line: 50, baseType: !919, size: 16, offset: 864)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1221, file: !1220, line: 51, baseType: !1261, size: 16, offset: 880)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !185, line: 18, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !187, line: 23, baseType: !1263)
!1263 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !782, line: 495, baseType: !189, size: 64, offset: 6528)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1038, file: !782, line: 497, baseType: !1266, size: 64, offset: 6592)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !782, line: 381, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !2370}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1267, file: !782, line: 382, baseType: !807, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1267, file: !782, line: 383, baseType: !1271, size: 128, offset: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !782, line: 376, size: 128, elements: !1272)
!1272 = !{!1273, !2368}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1271, file: !782, line: 377, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1276, line: 640, size: 48640, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1277 = !{!1278, !1284, !1286, !1287, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304, !1322, !1333, !1418, !1419, !1420, !1431, !1432, !1434, !1435, !1436, !1437, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1515, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1553, !1555, !1556, !1557, !1569, !1570, !1571, !1572, !1573, !1574, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1598, !1603, !1787, !1788, !1789, !1790, !1794, !1797, !1800, !1803, !1806, !1810, !1911, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1957, !1958, !1959, !1960, !1961, !1966, !1967, !1968, !1971, !1972, !1975, !1978, !1981, !1984, !2027, !2030, !2031, !2110, !2111, !2114, !2115, !2118, !2119, !2120, !2124, !2125, !2126, !2139, !2140, !2141, !2151, !2156, !2159, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1275, file: !1276, line: 646, baseType: !1279, size: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1280, line: 56, size: 128, elements: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1280, line: 57, baseType: !189, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1279, file: !1280, line: 58, baseType: !184, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1275, file: !1276, line: 649, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1275, file: !1276, line: 657, baseType: !176, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1275, file: !1276, line: 658, baseType: !1288, size: 32, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1289, line: 113, baseType: !1290)
!1289 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1289, line: 111, size: 32, elements: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1290, file: !1289, line: 112, baseType: !807, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !1276, line: 660, baseType: !7, size: 32, offset: 288)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1275, file: !1276, line: 661, baseType: !7, size: 32, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1275, file: !1276, line: 684, baseType: !180, size: 32, offset: 352)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1275, file: !1276, line: 686, baseType: !180, size: 32, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1275, file: !1276, line: 687, baseType: !180, size: 32, offset: 416)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1275, file: !1276, line: 688, baseType: !180, size: 32, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1275, file: !1276, line: 689, baseType: !7, size: 32, offset: 480)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1275, file: !1276, line: 691, baseType: !1301, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1276, line: 691, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1275, file: !1276, line: 692, baseType: !1305, size: 832, offset: 576)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1276, line: 451, size: 832, elements: !1306)
!1306 = !{!1307, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1305, file: !1276, line: 453, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1276, line: 325, size: 128, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1308, file: !1276, line: 326, baseType: !189, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1308, file: !1276, line: 327, baseType: !184, size: 32, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1305, file: !1276, line: 454, baseType: !820, size: 192, align: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1305, file: !1276, line: 455, baseType: !194, size: 128, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1305, file: !1276, line: 456, baseType: !7, size: 32, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1305, file: !1276, line: 458, baseType: !219, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1305, file: !1276, line: 459, baseType: !219, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1305, file: !1276, line: 460, baseType: !219, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1305, file: !1276, line: 461, baseType: !219, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1305, file: !1276, line: 463, baseType: !219, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1305, file: !1276, line: 465, baseType: !1321, offset: 832)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1276, line: 415, elements: !314)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1275, file: !1276, line: 693, baseType: !1323, size: 384, offset: 1408)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1276, line: 489, size: 384, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1323, file: !1276, line: 490, baseType: !194, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1323, file: !1276, line: 491, baseType: !189, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1323, file: !1276, line: 492, baseType: !189, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1323, file: !1276, line: 493, baseType: !7, size: 32, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1323, file: !1276, line: 494, baseType: !279, size: 16, offset: 288)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1323, file: !1276, line: 495, baseType: !279, size: 16, offset: 304)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1323, file: !1276, line: 497, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1275, file: !1276, line: 697, baseType: !1334, size: 1792, offset: 1792)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1276, line: 507, size: 1792, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1415, !1416}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1334, file: !1276, line: 508, baseType: !820, size: 192, align: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1334, file: !1276, line: 515, baseType: !219, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1334, file: !1276, line: 516, baseType: !219, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1334, file: !1276, line: 517, baseType: !219, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1334, file: !1276, line: 518, baseType: !219, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1334, file: !1276, line: 519, baseType: !219, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1334, file: !1276, line: 526, baseType: !837, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1334, file: !1276, line: 527, baseType: !219, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1334, file: !1276, line: 528, baseType: !7, size: 32, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1334, file: !1276, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1334, file: !1276, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1334, file: !1276, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1334, file: !1276, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1334, file: !1276, line: 563, baseType: !1350, size: 512, offset: 704)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1351)
!1351 = !{!1352, !1360, !1361, !1366, !1409, !1412, !1413, !1414}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1350, file: !20, line: 119, baseType: !1353, size: 256)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1354, line: 9, size: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1353, file: !1354, line: 10, baseType: !820, size: 192, align: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1353, file: !1354, line: 11, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1359, line: 29, baseType: !837)
!1359 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1350, file: !20, line: 120, baseType: !1358, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1350, file: !20, line: 121, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!19, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1350, file: !20, line: 122, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1369)
!1369 = !{!1370, !1390, !1391, !1394, !1399, !1400, !1404, !1408}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1368, file: !20, line: 160, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !20, line: 215, baseType: !840)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1372, file: !20, line: 216, baseType: !7, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1372, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1372, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1372, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1372, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1372, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1372, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1372, file: !20, line: 233, baseType: !1358, size: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1372, file: !20, line: 234, baseType: !1365, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1372, file: !20, line: 235, baseType: !1358, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1372, file: !20, line: 236, baseType: !1365, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1372, file: !20, line: 237, baseType: !1387, size: 4096, offset: 512)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 4096, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 8)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1368, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1368, file: !20, line: 162, baseType: !1392, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !195, line: 27, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !374, line: 96, baseType: !180)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1368, file: !20, line: 163, baseType: !1395, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !453, line: 276, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !453, line: 276, size: 32, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1396, file: !453, line: 276, baseType: !457, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1368, file: !20, line: 164, baseType: !1365, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1368, file: !20, line: 165, baseType: !1401, size: 128, offset: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1354, line: 14, size: 128, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1401, file: !1354, line: 15, baseType: !812, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1368, file: !20, line: 166, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1358}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1368, file: !20, line: 167, baseType: !1358, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1350, file: !20, line: 123, baseType: !1410, size: 8, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !185, line: 17, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !187, line: 21, baseType: !270)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1350, file: !20, line: 124, baseType: !1410, size: 8, offset: 456)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1350, file: !20, line: 125, baseType: !1410, size: 8, offset: 464)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1350, file: !20, line: 126, baseType: !1410, size: 8, offset: 472)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1334, file: !1276, line: 572, baseType: !1350, size: 512, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1334, file: !1276, line: 580, baseType: !1417, size: 64, offset: 1728)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1275, file: !1276, line: 721, baseType: !7, size: 32, offset: 3584)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1275, file: !1276, line: 722, baseType: !180, size: 32, offset: 3616)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1275, file: !1276, line: 723, baseType: !1421, size: 64, offset: 3648)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1424, line: 17, baseType: !1425)
!1424 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1424, line: 17, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1425, file: !1424, line: 17, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 1)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1275, file: !1276, line: 724, baseType: !1423, size: 64, offset: 3712)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1275, file: !1276, line: 749, baseType: !1433, offset: 3776)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1276, line: 290, elements: !314)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1275, file: !1276, line: 751, baseType: !194, size: 128, offset: 3776)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1275, file: !1276, line: 757, baseType: !1034, size: 64, offset: 3904)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1275, file: !1276, line: 758, baseType: !1034, size: 64, offset: 3968)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1275, file: !1276, line: 761, baseType: !1438, size: 320, offset: 4032)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1211, line: 34, size: 320, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1438, file: !1211, line: 35, baseType: !219, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1438, file: !1211, line: 36, baseType: !1442, size: 256, offset: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 256, elements: !232)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1275, file: !1276, line: 766, baseType: !180, size: 32, offset: 4352)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1275, file: !1276, line: 767, baseType: !180, size: 32, offset: 4384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1275, file: !1276, line: 768, baseType: !180, size: 32, offset: 4416)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1275, file: !1276, line: 770, baseType: !180, size: 32, offset: 4448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1275, file: !1276, line: 772, baseType: !189, size: 64, offset: 4480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1275, file: !1276, line: 775, baseType: !7, size: 32, offset: 4544)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1275, file: !1276, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1275, file: !1276, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1275, file: !1276, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1275, file: !1276, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1275, file: !1276, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1275, file: !1276, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1275, file: !1276, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1275, file: !1276, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1275, file: !1276, line: 831, baseType: !189, size: 64, offset: 4672)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1275, file: !1276, line: 833, baseType: !1459, size: 384, offset: 4736)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1460)
!1460 = !{!1461, !1466}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1459, file: !25, line: 26, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!376, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !25, line: 27, baseType: !1467, size: 320, offset: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1459, file: !25, line: 27, size: 320, elements: !1468)
!1468 = !{!1469, !1478, !1505}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1467, file: !25, line: 36, baseType: !1470, size: 320)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !25, line: 29, size: 320, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1470, file: !25, line: 30, baseType: !256, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1470, file: !25, line: 31, baseType: !184, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1470, file: !25, line: 32, baseType: !184, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1470, file: !25, line: 33, baseType: !184, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1470, file: !25, line: 34, baseType: !219, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1470, file: !25, line: 35, baseType: !256, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1467, file: !25, line: 46, baseType: !1479, size: 192)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !25, line: 38, size: 192, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1504}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1479, file: !25, line: 39, baseType: !1392, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1479, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !25, line: 41, baseType: !1484, size: 64, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !25, line: 41, size: 64, elements: !1485)
!1485 = !{!1486, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1484, file: !25, line: 42, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1489, line: 7, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1488, file: !1489, line: 8, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !374, line: 93, baseType: !590)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !1489, line: 9, baseType: !590, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1484, file: !25, line: 43, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1497, line: 7, size: 64, elements: !1498)
!1497 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1503}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !1497, line: 8, baseType: !1500, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1497, line: 5, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !185, line: 20, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !187, line: 26, baseType: !180)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !1497, line: 9, baseType: !1501, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1479, file: !25, line: 45, baseType: !219, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1467, file: !25, line: 54, baseType: !1506, size: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1467, file: !25, line: 48, size: 256, elements: !1507)
!1507 = !{!1508, !1511, !1512, !1513, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1506, file: !25, line: 49, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1506, file: !25, line: 50, baseType: !180, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1506, file: !25, line: 51, baseType: !180, size: 32, offset: 96)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1506, file: !25, line: 52, baseType: !189, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1506, file: !25, line: 53, baseType: !189, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1275, file: !1276, line: 835, baseType: !1516, size: 32, offset: 5120)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !195, line: 22, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !374, line: 28, baseType: !180)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1275, file: !1276, line: 836, baseType: !1516, size: 32, offset: 5152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1275, file: !1276, line: 840, baseType: !189, size: 64, offset: 5184)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1275, file: !1276, line: 849, baseType: !1274, size: 64, offset: 5248)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1275, file: !1276, line: 852, baseType: !1274, size: 64, offset: 5312)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1275, file: !1276, line: 857, baseType: !194, size: 128, offset: 5376)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1275, file: !1276, line: 858, baseType: !194, size: 128, offset: 5504)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1275, file: !1276, line: 859, baseType: !1274, size: 64, offset: 5632)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1275, file: !1276, line: 867, baseType: !194, size: 128, offset: 5696)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1275, file: !1276, line: 868, baseType: !194, size: 128, offset: 5824)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1275, file: !1276, line: 871, baseType: !1528, size: 64, offset: 5952)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1536, !1537, !1544, !1545}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1529, file: !53, line: 61, baseType: !1288, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1529, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !53, line: 63, baseType: !300, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1529, file: !53, line: 65, baseType: !1535, size: 256, offset: 64)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !232)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1529, file: !53, line: 66, baseType: !695, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1529, file: !53, line: 68, baseType: !1538, size: 128, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1539, line: 40, baseType: !1540)
!1539 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1539, line: 36, size: 128, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !1539, line: 37, baseType: !300)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1540, file: !1539, line: 38, baseType: !194, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1529, file: !53, line: 69, baseType: !430, size: 128, align: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1529, file: !53, line: 70, baseType: !1546, size: 128, offset: 640)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 128, elements: !1429)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1547, file: !53, line: 55, baseType: !180, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1547, file: !53, line: 56, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1275, file: !1276, line: 872, baseType: !1554, size: 512, offset: 6016)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !232)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1275, file: !1276, line: 873, baseType: !194, size: 128, offset: 6528)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1275, file: !1276, line: 874, baseType: !194, size: 128, offset: 6656)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1275, file: !1276, line: 876, baseType: !1558, size: 64, offset: 6784)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1560, line: 26, size: 192, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1559, file: !1560, line: 27, baseType: !7, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1559, file: !1560, line: 28, baseType: !1564, size: 128, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1565, line: 43, size: 128, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !1565, line: 44, baseType: !840)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1564, file: !1565, line: 45, baseType: !194, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1275, file: !1276, line: 879, baseType: !181, size: 64, offset: 6848)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1275, file: !1276, line: 882, baseType: !181, size: 64, offset: 6912)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1275, file: !1276, line: 884, baseType: !219, size: 64, offset: 6976)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1275, file: !1276, line: 885, baseType: !219, size: 64, offset: 7040)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1275, file: !1276, line: 890, baseType: !219, size: 64, offset: 7104)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1275, file: !1276, line: 891, baseType: !1575, size: 128, offset: 7168)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1276, line: 242, size: 128, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1575, file: !1276, line: 244, baseType: !219, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1575, file: !1276, line: 245, baseType: !219, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !1276, line: 246, baseType: !840, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1275, file: !1276, line: 900, baseType: !189, size: 64, offset: 7296)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1275, file: !1276, line: 901, baseType: !189, size: 64, offset: 7360)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1275, file: !1276, line: 904, baseType: !219, size: 64, offset: 7424)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1275, file: !1276, line: 907, baseType: !219, size: 64, offset: 7488)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1275, file: !1276, line: 910, baseType: !189, size: 64, offset: 7552)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1275, file: !1276, line: 911, baseType: !189, size: 64, offset: 7616)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1275, file: !1276, line: 914, baseType: !1587, size: 640, offset: 7680)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1588, line: 123, size: 640, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1596, !1597}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1587, file: !1588, line: 124, baseType: !1591, size: 576)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 576, elements: !342)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1588, line: 108, size: 192, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1592, file: !1588, line: 109, baseType: !219, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1592, file: !1588, line: 110, baseType: !1401, size: 128, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1587, file: !1588, line: 125, baseType: !7, size: 32, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1587, file: !1588, line: 126, baseType: !7, size: 32, offset: 608)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1275, file: !1276, line: 917, baseType: !1599, size: 192, offset: 8320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1588, line: 134, size: 192, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1599, file: !1588, line: 135, baseType: !430, size: 128, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1599, file: !1588, line: 136, baseType: !7, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1275, file: !1276, line: 923, baseType: !1604, size: 64, offset: 8512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1607, line: 111, size: 1280, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1628, !1629, !1630, !1631, !1632, !1633, !1740, !1741, !1742, !1743, !1769, !1772, !1782}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1606, file: !1607, line: 112, baseType: !807, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 120, baseType: !492, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1606, file: !1607, line: 121, baseType: !500, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1606, file: !1607, line: 122, baseType: !492, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1606, file: !1607, line: 123, baseType: !500, size: 32, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1606, file: !1607, line: 124, baseType: !492, size: 32, offset: 160)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1606, file: !1607, line: 125, baseType: !500, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1606, file: !1607, line: 126, baseType: !492, size: 32, offset: 224)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1606, file: !1607, line: 127, baseType: !500, size: 32, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1606, file: !1607, line: 128, baseType: !7, size: 32, offset: 288)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1606, file: !1607, line: 129, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1621, line: 26, baseType: !1622)
!1621 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1621, line: 24, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1622, file: !1621, line: 25, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 2)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1606, file: !1607, line: 130, baseType: !1620, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1606, file: !1607, line: 131, baseType: !1620, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1606, file: !1607, line: 132, baseType: !1620, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1606, file: !1607, line: 133, baseType: !1620, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1606, file: !1607, line: 135, baseType: !270, size: 8, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1606, file: !1607, line: 137, baseType: !1634, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1636, line: 189, size: 1664, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1642, !1647, !1648, !1651, !1652, !1657, !1658, !1659, !1660, !1662, !1663, !1664, !1665, !1666, !1704, !1725}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1635, file: !1636, line: 190, baseType: !1288, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1635, file: !1636, line: 191, baseType: !1640, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1636, line: 28, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !195, line: 98, baseType: !1501)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 192, baseType: !1643, size: 192, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 192, size: 192, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1643, file: !1636, line: 193, baseType: !194, size: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1643, file: !1636, line: 194, baseType: !820, size: 192, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1635, file: !1636, line: 199, baseType: !827, size: 256, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1635, file: !1636, line: 200, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1636, line: 200, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1635, file: !1636, line: 201, baseType: !176, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 202, baseType: !1653, size: 64, offset: 640)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 202, size: 64, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1653, file: !1636, line: 203, baseType: !596, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1653, file: !1636, line: 204, baseType: !596, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1635, file: !1636, line: 206, baseType: !596, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1635, file: !1636, line: 207, baseType: !492, size: 32, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1635, file: !1636, line: 208, baseType: !500, size: 32, offset: 800)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1635, file: !1636, line: 209, baseType: !1661, size: 32, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1636, line: 31, baseType: !616)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1635, file: !1636, line: 210, baseType: !279, size: 16, offset: 864)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1635, file: !1636, line: 211, baseType: !279, size: 16, offset: 880)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1635, file: !1636, line: 215, baseType: !1263, size: 16, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1636, line: 222, baseType: !189, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 239, baseType: !1667, size: 320, offset: 1024)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 239, size: 320, elements: !1668)
!1668 = !{!1669, !1696}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1667, file: !1636, line: 240, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1636, line: 108, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1685, !1688, !1695}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1670, file: !1636, line: 110, baseType: !189, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1636, line: 111, baseType: !1674, size: 64, offset: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1636, line: 111, size: 64, elements: !1675)
!1675 = !{!1676, !1684}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1636, line: 112, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1636, line: 112, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1677, file: !1636, line: 114, baseType: !919, size: 16)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1677, file: !1636, line: 115, baseType: !1681, size: 48, offset: 16)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 6)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1674, file: !1636, line: 121, baseType: !189, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !1636, line: 123, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1636, line: 96, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1670, file: !1636, line: 124, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1636, line: 102, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1690, file: !1636, line: 103, baseType: !430, size: 128, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1690, file: !1636, line: 104, baseType: !1288, size: 32, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1690, file: !1636, line: 105, baseType: !547, size: 8, offset: 160)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1670, file: !1636, line: 125, baseType: !224, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1636, line: 241, baseType: !1697, size: 320)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !1636, line: 241, size: 320, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1697, file: !1636, line: 242, baseType: !189, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1697, file: !1636, line: 243, baseType: !189, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !1636, line: 244, baseType: !1686, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1697, file: !1636, line: 245, baseType: !1689, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1697, file: !1636, line: 246, baseType: !341, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 254, baseType: !1705, size: 256, offset: 1344)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 254, size: 256, elements: !1706)
!1706 = !{!1707, !1713}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1705, file: !1636, line: 255, baseType: !1708, size: 256)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1636, line: 128, size: 256, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1708, file: !1636, line: 129, baseType: !176, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1708, file: !1636, line: 130, baseType: !1712, size: 256)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !232)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1636, line: 256, baseType: !1714, size: 256)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !1636, line: 256, size: 256, elements: !1715)
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1714, file: !1636, line: 258, baseType: !194, size: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1714, file: !1636, line: 259, baseType: !1718, size: 128, offset: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1719, line: 22, size: 128, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1724}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1718, file: !1719, line: 23, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1719, line: 23, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1718, file: !1719, line: 24, baseType: !189, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1635, file: !1636, line: 274, baseType: !1726, size: 64, offset: 1600)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1636, line: 170, size: 192, elements: !1728)
!1728 = !{!1729, !1738, !1739}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1727, file: !1636, line: 171, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1636, line: 165, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!180, !1634, !1734, !1736, !1634}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1727, file: !1636, line: 172, baseType: !1634, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1727, file: !1636, line: 173, baseType: !1686, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1606, file: !1607, line: 138, baseType: !1634, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1606, file: !1607, line: 139, baseType: !1634, size: 64, offset: 832)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1606, file: !1607, line: 140, baseType: !1634, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1606, file: !1607, line: 145, baseType: !1744, size: 64, offset: 960)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1746, line: 13, size: 896, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1745, file: !1746, line: 14, baseType: !1288, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1745, file: !1746, line: 15, baseType: !807, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1745, file: !1746, line: 16, baseType: !807, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1745, file: !1746, line: 21, baseType: !831, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1745, file: !1746, line: 27, baseType: !189, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1745, file: !1746, line: 28, baseType: !189, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1745, file: !1746, line: 29, baseType: !831, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1745, file: !1746, line: 32, baseType: !699, size: 128, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1745, file: !1746, line: 33, baseType: !492, size: 32, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1745, file: !1746, line: 37, baseType: !831, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1745, file: !1746, line: 44, baseType: !1759, size: 256, offset: 640)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1760, line: 15, size: 256, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1760, line: 16, baseType: !840)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1759, file: !1760, line: 18, baseType: !180, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1759, file: !1760, line: 19, baseType: !180, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1759, file: !1760, line: 20, baseType: !180, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1759, file: !1760, line: 21, baseType: !180, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1759, file: !1760, line: 22, baseType: !189, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 23, baseType: !189, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1606, file: !1607, line: 146, baseType: !1770, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !493, line: 18, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1606, file: !1607, line: 147, baseType: !1773, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1607, line: 25, size: 64, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1774, file: !1607, line: 26, baseType: !807, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1774, file: !1607, line: 27, baseType: !180, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1774, file: !1607, line: 28, baseType: !1779, offset: 64)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 149, baseType: !1783, size: 128, offset: 1152)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 149, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1783, file: !1607, line: 150, baseType: !180, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1783, file: !1607, line: 151, baseType: !430, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1275, file: !1276, line: 926, baseType: !1604, size: 64, offset: 8576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1275, file: !1276, line: 929, baseType: !1604, size: 64, offset: 8640)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1275, file: !1276, line: 933, baseType: !1634, size: 64, offset: 8704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1275, file: !1276, line: 943, baseType: !1791, size: 128, offset: 8768)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 16)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1275, file: !1276, line: 945, baseType: !1795, size: 64, offset: 8896)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1276, line: 49, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1275, file: !1276, line: 956, baseType: !1798, size: 64, offset: 8960)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1276, line: 45, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1275, file: !1276, line: 959, baseType: !1801, size: 64, offset: 9024)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1276, line: 959, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1275, file: !1276, line: 962, baseType: !1804, size: 64, offset: 9088)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1276, line: 66, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1275, file: !1276, line: 966, baseType: !1807, size: 64, offset: 9152)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1809, line: 35, flags: DIFlagFwdDecl)
!1809 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1275, file: !1276, line: 969, baseType: !1811, size: 64, offset: 9216)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1813, line: 82, size: 7296, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1850, !1859, !1860, !1862, !1863, !1864, !1867, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1897, !1898, !1905, !1906, !1907, !1908, !1909, !1910}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1812, file: !1813, line: 83, baseType: !1288, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1812, file: !1813, line: 84, baseType: !807, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1812, file: !1813, line: 85, baseType: !180, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1812, file: !1813, line: 86, baseType: !194, size: 128, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1812, file: !1813, line: 88, baseType: !1538, size: 128, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1812, file: !1813, line: 91, baseType: !1274, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1812, file: !1813, line: 94, baseType: !1822, size: 192, offset: 448)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1823, line: 30, size: 192, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1822, file: !1823, line: 31, baseType: !194, size: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1822, file: !1823, line: 32, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1828, line: 25, baseType: !1829)
!1828 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1828, line: 23, size: 64, elements: !1830)
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1829, file: !1828, line: 24, baseType: !1428, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1812, file: !1813, line: 97, baseType: !695, size: 64, offset: 640)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1812, file: !1813, line: 100, baseType: !180, size: 32, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1812, file: !1813, line: 106, baseType: !180, size: 32, offset: 736)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1812, file: !1813, line: 107, baseType: !1274, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1812, file: !1813, line: 110, baseType: !180, size: 32, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1813, line: 111, baseType: !7, size: 32, offset: 864)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1812, file: !1813, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1812, file: !1813, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1812, file: !1813, line: 128, baseType: !180, size: 32, offset: 928)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1812, file: !1813, line: 129, baseType: !194, size: 128, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1812, file: !1813, line: 132, baseType: !1350, size: 512, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1812, file: !1813, line: 133, baseType: !1358, size: 64, offset: 1600)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1812, file: !1813, line: 140, baseType: !1845, size: 256, offset: 1664)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 256, elements: !1626)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1813, line: 38, size: 128, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1846, file: !1813, line: 39, baseType: !219, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1846, file: !1813, line: 40, baseType: !219, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1812, file: !1813, line: 146, baseType: !1851, size: 192, offset: 1920)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1813, line: 66, size: 192, elements: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1851, file: !1813, line: 67, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1813, line: 47, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1854, file: !1813, line: 48, baseType: !833, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1854, file: !1813, line: 49, baseType: !833, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1854, file: !1813, line: 50, baseType: !833, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1812, file: !1813, line: 150, baseType: !1587, size: 640, offset: 2112)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1812, file: !1813, line: 153, baseType: !1861, size: 256, offset: 2752)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 256, elements: !232)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1812, file: !1813, line: 159, baseType: !1528, size: 64, offset: 3008)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1812, file: !1813, line: 162, baseType: !180, size: 32, offset: 3072)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1812, file: !1813, line: 164, baseType: !1865, size: 64, offset: 3136)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1813, line: 164, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1812, file: !1813, line: 175, baseType: !1868, size: 32, offset: 3200)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !453, line: 805, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 798, size: 32, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1869, file: !453, line: 803, baseType: !452, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !453, line: 804, baseType: !300, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1812, file: !1813, line: 176, baseType: !219, size: 64, offset: 3264)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1812, file: !1813, line: 176, baseType: !219, size: 64, offset: 3328)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1812, file: !1813, line: 176, baseType: !219, size: 64, offset: 3392)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1812, file: !1813, line: 176, baseType: !219, size: 64, offset: 3456)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1812, file: !1813, line: 177, baseType: !219, size: 64, offset: 3520)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1812, file: !1813, line: 178, baseType: !219, size: 64, offset: 3584)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1812, file: !1813, line: 179, baseType: !1575, size: 128, offset: 3648)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1812, file: !1813, line: 180, baseType: !189, size: 64, offset: 3776)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1812, file: !1813, line: 180, baseType: !189, size: 64, offset: 3840)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1812, file: !1813, line: 180, baseType: !189, size: 64, offset: 3904)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1812, file: !1813, line: 180, baseType: !189, size: 64, offset: 3968)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1812, file: !1813, line: 181, baseType: !189, size: 64, offset: 4032)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1812, file: !1813, line: 181, baseType: !189, size: 64, offset: 4096)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1812, file: !1813, line: 181, baseType: !189, size: 64, offset: 4160)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1812, file: !1813, line: 181, baseType: !189, size: 64, offset: 4224)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1812, file: !1813, line: 182, baseType: !189, size: 64, offset: 4288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1812, file: !1813, line: 182, baseType: !189, size: 64, offset: 4352)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1812, file: !1813, line: 182, baseType: !189, size: 64, offset: 4416)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1812, file: !1813, line: 182, baseType: !189, size: 64, offset: 4480)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1812, file: !1813, line: 183, baseType: !189, size: 64, offset: 4544)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1812, file: !1813, line: 183, baseType: !189, size: 64, offset: 4608)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1812, file: !1813, line: 184, baseType: !1895, offset: 4672)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1896, line: 12, elements: !314)
!1896 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1812, file: !1813, line: 192, baseType: !221, size: 64, offset: 4672)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1812, file: !1813, line: 203, baseType: !1899, size: 2048, offset: 4736)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 2048, elements: !1792)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1901, line: 43, size: 128, elements: !1902)
!1901 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1900, file: !1901, line: 44, baseType: !389, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1900, file: !1901, line: 45, baseType: !389, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1812, file: !1813, line: 220, baseType: !547, size: 8, offset: 6784)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1812, file: !1813, line: 221, baseType: !1263, size: 16, offset: 6800)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1812, file: !1813, line: 222, baseType: !1263, size: 16, offset: 6816)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1812, file: !1813, line: 224, baseType: !1034, size: 64, offset: 6848)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1812, file: !1813, line: 227, baseType: !1231, size: 192, offset: 6912)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1812, file: !1813, line: 233, baseType: !1231, size: 192, offset: 7104)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1275, file: !1276, line: 970, baseType: !1912, size: 64, offset: 9280)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1813, line: 20, size: 16576, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1913, file: !1813, line: 21, baseType: !300)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1913, file: !1813, line: 22, baseType: !1288, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1913, file: !1813, line: 23, baseType: !1538, size: 128, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1913, file: !1813, line: 24, baseType: !1919, size: 16384, offset: 192)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1920, size: 16384, elements: !346)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1823, line: 49, size: 256, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1920, file: !1823, line: 50, baseType: !1923, size: 256)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1823, line: 35, size: 256, elements: !1924)
!1924 = !{!1925, !1932, !1933, !1939}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1923, file: !1823, line: 37, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1927, line: 19, baseType: !1928)
!1927 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1927, line: 18, baseType: !1930)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !180}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1923, file: !1823, line: 38, baseType: !189, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1923, file: !1823, line: 44, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1927, line: 22, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1927, line: 21, baseType: !1937)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1923, file: !1823, line: 46, baseType: !1827, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1275, file: !1276, line: 971, baseType: !1827, size: 64, offset: 9344)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1275, file: !1276, line: 972, baseType: !1827, size: 64, offset: 9408)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1275, file: !1276, line: 974, baseType: !1827, size: 64, offset: 9472)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1275, file: !1276, line: 975, baseType: !1822, size: 192, offset: 9536)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1275, file: !1276, line: 976, baseType: !189, size: 64, offset: 9728)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1275, file: !1276, line: 977, baseType: !387, size: 64, offset: 9792)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1275, file: !1276, line: 978, baseType: !7, size: 32, offset: 9856)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1275, file: !1276, line: 980, baseType: !433, size: 64, offset: 9920)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1275, file: !1276, line: 989, baseType: !1949, size: 128, offset: 9984)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1950, line: 35, size: 128, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1949, file: !1950, line: 36, baseType: !180, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1949, file: !1950, line: 37, baseType: !807, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1949, file: !1950, line: 38, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1950, line: 23, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1275, file: !1276, line: 992, baseType: !219, size: 64, offset: 10112)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1275, file: !1276, line: 993, baseType: !219, size: 64, offset: 10176)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1275, file: !1276, line: 996, baseType: !300, offset: 10240)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1275, file: !1276, line: 999, baseType: !840, offset: 10240)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1275, file: !1276, line: 1001, baseType: !1962, size: 64, offset: 10240)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1276, line: 636, size: 64, elements: !1963)
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1962, file: !1276, line: 637, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1275, file: !1276, line: 1005, baseType: !812, size: 128, offset: 10304)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1275, file: !1276, line: 1007, baseType: !1274, size: 64, offset: 10432)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1275, file: !1276, line: 1009, baseType: !1969, size: 64, offset: 10496)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1276, line: 1009, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1275, file: !1276, line: 1043, baseType: !176, size: 64, offset: 10560)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1275, file: !1276, line: 1046, baseType: !1973, size: 64, offset: 10624)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1276, line: 41, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1275, file: !1276, line: 1050, baseType: !1976, size: 64, offset: 10688)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1276, line: 42, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1275, file: !1276, line: 1054, baseType: !1979, size: 64, offset: 10752)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1276, line: 55, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1275, file: !1276, line: 1056, baseType: !1982, size: 64, offset: 10816)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1276, line: 40, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1275, file: !1276, line: 1058, baseType: !1985, size: 64, offset: 10880)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1987, line: 99, size: 704, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !2014, !2015}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1986, file: !1987, line: 100, baseType: !831, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1986, file: !1987, line: 101, baseType: !807, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1986, file: !1987, line: 102, baseType: !807, size: 32, offset: 96)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1986, file: !1987, line: 105, baseType: !300, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1986, file: !1987, line: 107, baseType: !279, size: 16, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1986, file: !1987, line: 109, baseType: !798, size: 128, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1986, file: !1987, line: 110, baseType: !1996, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1987, line: 73, size: 448, elements: !1998)
!1998 = !{!1999, !2002, !2003, !2008, !2013}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1997, file: !1987, line: 74, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1987, line: 74, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1997, file: !1987, line: 75, baseType: !1985, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1987, line: 83, baseType: !2004, size: 128, offset: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !1987, line: 83, size: 128, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2004, file: !1987, line: 84, baseType: !194, size: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2004, file: !1987, line: 85, baseType: !995, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1987, line: 87, baseType: !2009, size: 128, offset: 256)
!2009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !1987, line: 87, size: 128, elements: !2010)
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2009, file: !1987, line: 88, baseType: !699, size: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2009, file: !1987, line: 89, baseType: !430, size: 128, align: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !1987, line: 92, baseType: !7, size: 32, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1986, file: !1987, line: 111, baseType: !695, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1986, file: !1987, line: 113, baseType: !2016, size: 256, offset: 448)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2017, line: 102, size: 256, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2016, file: !2017, line: 103, baseType: !831, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2016, file: !2017, line: 104, baseType: !194, size: 128, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2016, file: !2017, line: 105, baseType: !2022, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2017, line: 21, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1275, file: !1276, line: 1061, baseType: !2028, size: 64, offset: 10944)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1276, line: 43, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1275, file: !1276, line: 1064, baseType: !189, size: 64, offset: 11008)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1275, file: !1276, line: 1065, baseType: !2032, size: 64, offset: 11072)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1823, line: 14, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1823, line: 12, size: 384, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !1823, line: 13, baseType: !2037, size: 384)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !1823, line: 13, size: 384, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2037, file: !1823, line: 13, baseType: !180, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2037, file: !1823, line: 13, baseType: !180, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2037, file: !1823, line: 13, baseType: !180, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2037, file: !1823, line: 13, baseType: !2043, size: 256, offset: 128)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2044, line: 32, size: 256, elements: !2045)
!2044 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2051, !2064, !2070, !2079, !2099, !2104}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2043, file: !2044, line: 37, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 34, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2047, file: !2044, line: 35, baseType: !1517, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2047, file: !2044, line: 36, baseType: !498, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2043, file: !2044, line: 45, baseType: !2052, size: 192)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 40, size: 192, elements: !2053)
!2053 = !{!2054, !2056, !2057, !2063}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2052, file: !2044, line: 41, baseType: !2055, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !374, line: 95, baseType: !180)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2052, file: !2044, line: 42, baseType: !180, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2052, file: !2044, line: 43, baseType: !2058, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2044, line: 11, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2044, line: 8, size: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2059, file: !2044, line: 9, baseType: !180, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2059, file: !2044, line: 10, baseType: !176, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2052, file: !2044, line: 44, baseType: !180, size: 32, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2043, file: !2044, line: 52, baseType: !2065, size: 128)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 48, size: 128, elements: !2066)
!2066 = !{!2067, !2068, !2069}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2065, file: !2044, line: 49, baseType: !1517, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2065, file: !2044, line: 50, baseType: !498, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2065, file: !2044, line: 51, baseType: !2058, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2043, file: !2044, line: 61, baseType: !2071, size: 256)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 55, size: 256, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2071, file: !2044, line: 56, baseType: !1517, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2071, file: !2044, line: 57, baseType: !498, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2071, file: !2044, line: 58, baseType: !180, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2071, file: !2044, line: 59, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !374, line: 94, baseType: !375)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2071, file: !2044, line: 60, baseType: !2077, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2043, file: !2044, line: 95, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 64, size: 256, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2080, file: !2044, line: 65, baseType: !176, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2044, line: 77, baseType: !2084, size: 192, offset: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2044, line: 77, size: 192, elements: !2085)
!2085 = !{!2086, !2087, !2094}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2084, file: !2044, line: 82, baseType: !1263, size: 16)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2084, file: !2044, line: 88, baseType: !2088, size: 192)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2044, line: 84, size: 192, elements: !2089)
!2089 = !{!2090, !2092, !2093}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2088, file: !2044, line: 85, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !1388)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2088, file: !2044, line: 86, baseType: !176, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2088, file: !2044, line: 87, baseType: !176, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2084, file: !2044, line: 93, baseType: !2095, size: 96)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2044, line: 90, size: 96, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2095, file: !2044, line: 91, baseType: !2091, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2095, file: !2044, line: 92, baseType: !186, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2043, file: !2044, line: 101, baseType: !2100, size: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 98, size: 128, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2100, file: !2044, line: 99, baseType: !376, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2100, file: !2044, line: 100, baseType: !180, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2043, file: !2044, line: 108, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 104, size: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2105, file: !2044, line: 105, baseType: !176, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2105, file: !2044, line: 106, baseType: !180, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2105, file: !2044, line: 107, baseType: !7, size: 32, offset: 96)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1275, file: !1276, line: 1067, baseType: !1895, offset: 11136)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1275, file: !1276, line: 1099, baseType: !2112, size: 64, offset: 11136)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1276, line: 56, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1275, file: !1276, line: 1103, baseType: !194, size: 128, offset: 11200)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1275, file: !1276, line: 1104, baseType: !2116, size: 64, offset: 11328)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1276, line: 46, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1275, file: !1276, line: 1105, baseType: !1231, size: 192, offset: 11392)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1275, file: !1276, line: 1106, baseType: !7, size: 32, offset: 11584)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1275, file: !1276, line: 1109, baseType: !2121, size: 128, offset: 11648)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2122, size: 128, elements: !1626)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1276, line: 51, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1275, file: !1276, line: 1110, baseType: !1231, size: 192, offset: 11776)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1275, file: !1276, line: 1111, baseType: !194, size: 128, offset: 11968)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1275, file: !1276, line: 1173, baseType: !2127, size: 64, offset: 12096)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2129, line: 62, size: 256, align: 256, elements: !2130)
!2129 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131, !2132, !2133, !2138}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2128, file: !2129, line: 75, baseType: !186, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2128, file: !2129, line: 90, baseType: !186, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2128, file: !2129, line: 124, baseType: !2134, size: 64, offset: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2128, file: !2129, line: 109, size: 64, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2134, file: !2129, line: 110, baseType: !220, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2134, file: !2129, line: 112, baseType: !220, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2128, file: !2129, line: 144, baseType: !186, size: 32, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1275, file: !1276, line: 1174, baseType: !184, size: 32, offset: 12160)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1275, file: !1276, line: 1179, baseType: !189, size: 64, offset: 12224)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1275, file: !1276, line: 1182, baseType: !2142, size: 128, offset: 12288)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1211, line: 76, size: 128, elements: !2143)
!2143 = !{!2144, !2149, !2150}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2142, file: !1211, line: 85, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2146, line: 7, size: 64, elements: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2145, file: !2146, line: 12, baseType: !1425, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2142, file: !1211, line: 88, baseType: !547, size: 8, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2142, file: !1211, line: 95, baseType: !547, size: 8, offset: 72)
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !1276, line: 1184, baseType: !2152, size: 128, offset: 12416)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !1276, line: 1184, size: 128, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2152, file: !1276, line: 1185, baseType: !1288, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2152, file: !1276, line: 1186, baseType: !430, size: 128, align: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1275, file: !1276, line: 1190, baseType: !2157, size: 64, offset: 12544)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1276, line: 53, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1275, file: !1276, line: 1192, baseType: !2160, size: 128, offset: 12608)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1211, line: 64, size: 128, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2160, file: !1211, line: 65, baseType: !780, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2160, file: !1211, line: 67, baseType: !186, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2160, file: !1211, line: 68, baseType: !186, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1275, file: !1276, line: 1206, baseType: !180, size: 32, offset: 12736)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1275, file: !1276, line: 1207, baseType: !180, size: 32, offset: 12768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1275, file: !1276, line: 1209, baseType: !189, size: 64, offset: 12800)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1275, file: !1276, line: 1219, baseType: !219, size: 64, offset: 12864)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1275, file: !1276, line: 1220, baseType: !219, size: 64, offset: 12928)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1275, file: !1276, line: 1317, baseType: !180, size: 32, offset: 12992)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1275, file: !1276, line: 1319, baseType: !1274, size: 64, offset: 13056)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1275, file: !1276, line: 1322, baseType: !2173, size: 64, offset: 13120)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2175, line: 56, size: 512, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2174, file: !2175, line: 57, baseType: !2173, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2174, file: !2175, line: 58, baseType: !176, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2174, file: !2175, line: 59, baseType: !189, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !2175, line: 60, baseType: !189, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2174, file: !2175, line: 61, baseType: !880, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2174, file: !2175, line: 62, baseType: !7, size: 32, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2174, file: !2175, line: 63, baseType: !218, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2174, file: !2175, line: 64, baseType: !2185, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1275, file: !1276, line: 1326, baseType: !1288, size: 32, offset: 13184)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1275, file: !1276, line: 1342, baseType: !176, size: 64, offset: 13248)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1275, file: !1276, line: 1343, baseType: !220, size: 64, offset: 13312)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1275, file: !1276, line: 1344, baseType: !219, size: 64, offset: 13376)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1275, file: !1276, line: 1345, baseType: !220, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1275, file: !1276, line: 1346, baseType: !220, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1275, file: !1276, line: 1347, baseType: !220, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1275, file: !1276, line: 1348, baseType: !430, size: 128, align: 64, offset: 13504)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1275, file: !1276, line: 1358, baseType: !2196, size: 34816, offset: 13824)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2197, line: 485, size: 34816, elements: !2198)
!2197 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2198 = !{!2199, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2228, !2229, !2230, !2231, !2232, !2233, !2236, !2237, !2238}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2196, file: !2197, line: 487, baseType: !2200, size: 192)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2201, size: 192, elements: !342)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2202, line: 16, size: 64, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2201, file: !2202, line: 17, baseType: !919, size: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2201, file: !2202, line: 18, baseType: !919, size: 16, offset: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2201, file: !2202, line: 19, baseType: !919, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2201, file: !2202, line: 19, baseType: !919, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2201, file: !2202, line: 19, baseType: !919, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2201, file: !2202, line: 19, baseType: !919, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2201, file: !2202, line: 19, baseType: !919, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2201, file: !2202, line: 20, baseType: !919, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2201, file: !2202, line: 20, baseType: !919, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2201, file: !2202, line: 20, baseType: !919, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2201, file: !2202, line: 20, baseType: !919, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2201, file: !2202, line: 20, baseType: !919, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2201, file: !2202, line: 20, baseType: !919, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2196, file: !2197, line: 491, baseType: !189, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2196, file: !2197, line: 495, baseType: !279, size: 16, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2196, file: !2197, line: 496, baseType: !279, size: 16, offset: 272)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2196, file: !2197, line: 497, baseType: !279, size: 16, offset: 288)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2196, file: !2197, line: 498, baseType: !279, size: 16, offset: 304)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2196, file: !2197, line: 502, baseType: !189, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2196, file: !2197, line: 503, baseType: !189, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2196, file: !2197, line: 514, baseType: !2225, size: 256, offset: 448)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2226, size: 256, elements: !232)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2197, line: 483, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2196, file: !2197, line: 516, baseType: !189, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2196, file: !2197, line: 518, baseType: !189, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2196, file: !2197, line: 520, baseType: !189, size: 64, offset: 832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2196, file: !2197, line: 521, baseType: !189, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2196, file: !2197, line: 522, baseType: !189, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2196, file: !2197, line: 528, baseType: !2234, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2197, line: 10, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2196, file: !2197, line: 535, baseType: !189, size: 64, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2196, file: !2197, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2196, file: !2197, line: 540, baseType: !2239, size: 33280, offset: 1536)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2240, line: 317, size: 33280, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2239, file: !2240, line: 330, baseType: !7, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2239, file: !2240, line: 337, baseType: !189, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2239, file: !2240, line: 348, baseType: !2245, size: 32768, offset: 512)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2240, line: 304, size: 32768, elements: !2246)
!2246 = !{!2247, !2262, !2301, !2351, !2364}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2245, file: !2240, line: 305, baseType: !2248, size: 896)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2240, line: 12, size: 896, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2261}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2248, file: !2240, line: 13, baseType: !184, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2248, file: !2240, line: 14, baseType: !184, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2248, file: !2240, line: 15, baseType: !184, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2248, file: !2240, line: 16, baseType: !184, size: 32, offset: 96)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2248, file: !2240, line: 17, baseType: !184, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2248, file: !2240, line: 18, baseType: !184, size: 32, offset: 160)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2248, file: !2240, line: 19, baseType: !184, size: 32, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2248, file: !2240, line: 22, baseType: !2258, size: 640, offset: 224)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 640, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 20)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2248, file: !2240, line: 25, baseType: !184, size: 32, offset: 864)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2245, file: !2240, line: 306, baseType: !2263, size: 4096, align: 128)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2240, line: 34, size: 4096, align: 128, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2284, !2285, !2286, !2290, !2292, !2296}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2263, file: !2240, line: 35, baseType: !919, size: 16)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2263, file: !2240, line: 36, baseType: !919, size: 16, offset: 16)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2263, file: !2240, line: 37, baseType: !919, size: 16, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2263, file: !2240, line: 38, baseType: !919, size: 16, offset: 48)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !2240, line: 39, baseType: !2270, size: 128, offset: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !2240, line: 39, size: 128, elements: !2271)
!2271 = !{!2272, !2277}
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !2240, line: 40, baseType: !2273, size: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !2240, line: 40, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2273, file: !2240, line: 41, baseType: !219, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2273, file: !2240, line: 42, baseType: !219, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !2240, line: 44, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !2240, line: 44, size: 128, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2278, file: !2240, line: 45, baseType: !184, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2278, file: !2240, line: 46, baseType: !184, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2278, file: !2240, line: 47, baseType: !184, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2278, file: !2240, line: 48, baseType: !184, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2263, file: !2240, line: 51, baseType: !184, size: 32, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2263, file: !2240, line: 52, baseType: !184, size: 32, offset: 224)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2263, file: !2240, line: 55, baseType: !2287, size: 1024, offset: 256)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 1024, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2263, file: !2240, line: 58, baseType: !2291, size: 2048, offset: 1280)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 2048, elements: !346)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2263, file: !2240, line: 60, baseType: !2293, size: 384, offset: 3328)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 384, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 12)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !2240, line: 62, baseType: !2297, size: 384, offset: 3712)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !2240, line: 62, size: 384, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2297, file: !2240, line: 63, baseType: !2293, size: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2297, file: !2240, line: 64, baseType: !2293, size: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2245, file: !2240, line: 307, baseType: !2302, size: 1088)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2240, line: 79, size: 1088, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2350}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2302, file: !2240, line: 80, baseType: !184, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2302, file: !2240, line: 81, baseType: !184, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2302, file: !2240, line: 82, baseType: !184, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2302, file: !2240, line: 83, baseType: !184, size: 32, offset: 96)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2302, file: !2240, line: 84, baseType: !184, size: 32, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2302, file: !2240, line: 85, baseType: !184, size: 32, offset: 160)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2302, file: !2240, line: 86, baseType: !184, size: 32, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2302, file: !2240, line: 88, baseType: !2258, size: 640, offset: 224)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2302, file: !2240, line: 89, baseType: !1410, size: 8, offset: 864)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2302, file: !2240, line: 90, baseType: !1410, size: 8, offset: 872)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2302, file: !2240, line: 91, baseType: !1410, size: 8, offset: 880)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2302, file: !2240, line: 92, baseType: !1410, size: 8, offset: 888)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2302, file: !2240, line: 93, baseType: !1410, size: 8, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2302, file: !2240, line: 94, baseType: !1410, size: 8, offset: 904)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2302, file: !2240, line: 95, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2321, line: 11, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2320, file: !2321, line: 12, baseType: !376, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2320, file: !2321, line: 13, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2327, line: 56, size: 1344, elements: !2328)
!2327 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2326, file: !2327, line: 61, baseType: !189, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2326, file: !2327, line: 62, baseType: !189, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2326, file: !2327, line: 63, baseType: !189, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2326, file: !2327, line: 64, baseType: !189, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2326, file: !2327, line: 65, baseType: !189, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2326, file: !2327, line: 66, baseType: !189, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2326, file: !2327, line: 68, baseType: !189, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2326, file: !2327, line: 69, baseType: !189, size: 64, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2326, file: !2327, line: 70, baseType: !189, size: 64, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2326, file: !2327, line: 71, baseType: !189, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2326, file: !2327, line: 72, baseType: !189, size: 64, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2326, file: !2327, line: 73, baseType: !189, size: 64, offset: 704)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2326, file: !2327, line: 74, baseType: !189, size: 64, offset: 768)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2326, file: !2327, line: 75, baseType: !189, size: 64, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2326, file: !2327, line: 76, baseType: !189, size: 64, offset: 896)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2326, file: !2327, line: 81, baseType: !189, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2326, file: !2327, line: 83, baseType: !189, size: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2326, file: !2327, line: 84, baseType: !189, size: 64, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2327, line: 85, baseType: !189, size: 64, offset: 1152)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2326, file: !2327, line: 86, baseType: !189, size: 64, offset: 1216)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2326, file: !2327, line: 87, baseType: !189, size: 64, offset: 1280)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2302, file: !2240, line: 96, baseType: !184, size: 32, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2245, file: !2240, line: 308, baseType: !2352, size: 4608, align: 512)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2240, line: 289, size: 4608, align: 512, elements: !2353)
!2353 = !{!2354, !2355, !2362}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2352, file: !2240, line: 290, baseType: !2263, size: 4096, align: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2352, file: !2240, line: 291, baseType: !2356, size: 512, offset: 4096)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2240, line: 268, size: 512, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2356, file: !2240, line: 269, baseType: !219, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2356, file: !2240, line: 270, baseType: !219, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2356, file: !2240, line: 271, baseType: !2361, size: 384, offset: 128)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !1682)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2352, file: !2240, line: 292, baseType: !2363, offset: 4608)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, elements: !1780)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2245, file: !2240, line: 309, baseType: !2365, size: 32768)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 32768, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 4096)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1271, file: !782, line: 378, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1267, file: !782, line: 384, baseType: !1559, size: 192, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1038, file: !782, line: 500, baseType: !300, offset: 6656)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1038, file: !782, line: 501, baseType: !2373, size: 64, offset: 6656)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !782, line: 387, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1038, file: !782, line: 516, baseType: !1770, size: 64, offset: 6720)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1038, file: !782, line: 519, baseType: !417, size: 64, offset: 6784)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1038, file: !782, line: 521, baseType: !2378, size: 64, offset: 6848)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !782, line: 521, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1038, file: !782, line: 545, baseType: !807, size: 32, offset: 6912)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1038, file: !782, line: 548, baseType: !547, size: 8, offset: 6944)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1038, file: !782, line: 550, baseType: !2383, offset: 6952)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2384, line: 142, elements: !314)
!2384 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1038, file: !782, line: 554, baseType: !2016, size: 256, offset: 6976)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1038, file: !782, line: 557, baseType: !184, size: 32, offset: 7232)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1035, file: !782, line: 565, baseType: !2388, offset: 7296)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: -1)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1031, file: !782, line: 151, baseType: !807, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1024, file: !782, line: 156, baseType: !300, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !782, line: 159, baseType: !2394, size: 128)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !782, line: 159, size: 128, elements: !2395)
!2395 = !{!2396, !2460}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2394, file: !782, line: 161, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2399)
!2399 = !{!2400, !2410, !2431, !2432, !2433, !2434, !2435, !2447, !2448, !2449}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2398, file: !31, line: 111, baseType: !2401, size: 384)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2402)
!2402 = !{!2403, !2405, !2406, !2407, !2408, !2409}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2401, file: !31, line: 20, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2401, file: !31, line: 21, baseType: !2404, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2401, file: !31, line: 22, baseType: !2404, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2401, file: !31, line: 23, baseType: !189, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2401, file: !31, line: 24, baseType: !189, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2401, file: !31, line: 25, baseType: !189, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2398, file: !31, line: 112, baseType: !2411, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2413, line: 105, size: 128, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2412, file: !2413, line: 110, baseType: !189, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2412, file: !2413, line: 118, baseType: !2417, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2413, line: 95, size: 448, elements: !2419)
!2419 = !{!2420, !2421, !2426, !2427, !2428, !2429, !2430}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2418, file: !2413, line: 96, baseType: !831, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2418, file: !2413, line: 97, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2413, line: 60, baseType: !2424)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2411}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2418, file: !2413, line: 98, baseType: !2422, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2418, file: !2413, line: 99, baseType: !547, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2418, file: !2413, line: 100, baseType: !547, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2418, file: !2413, line: 101, baseType: !430, size: 128, align: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2418, file: !2413, line: 102, baseType: !2411, size: 64, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2398, file: !31, line: 113, baseType: !2412, size: 128, offset: 448)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2398, file: !31, line: 114, baseType: !1559, size: 192, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2398, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2398, file: !31, line: 117, baseType: !2436, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2439)
!2439 = !{!2440, !2441, !2445, !2446}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2438, file: !31, line: 73, baseType: !900, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2438, file: !31, line: 78, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !2397}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2438, file: !31, line: 83, baseType: !2442, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2438, file: !31, line: 89, baseType: !1087, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2398, file: !31, line: 118, baseType: !176, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2398, file: !31, line: 119, baseType: !180, size: 32, offset: 960)
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !31, line: 120, baseType: !2450, size: 128, offset: 1024)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !31, line: 120, size: 128, elements: !2451)
!2451 = !{!2452, !2458}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2450, file: !31, line: 121, baseType: !2453, size: 128)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2454, line: 6, size: 128, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2453, file: !2454, line: 7, baseType: !219, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2453, file: !2454, line: 8, baseType: !219, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2450, file: !31, line: 122, baseType: !2459)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, elements: !1780)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2394, file: !782, line: 162, baseType: !176, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !786, file: !782, line: 176, baseType: !430, size: 128, align: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 179, baseType: !2463, size: 32, offset: 384)
!2463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 179, size: 32, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2463, file: !782, line: 184, baseType: !807, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2463, file: !782, line: 192, baseType: !7, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2463, file: !782, line: 194, baseType: !7, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2463, file: !782, line: 195, baseType: !180, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !781, file: !782, line: 199, baseType: !807, size: 32, offset: 416)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !717, file: !44, line: 1964, baseType: !2471, size: 64, offset: 1344)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!376, !656, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2476, line: 12, size: 256, elements: !2477)
!2476 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2477 = !{!2478, !2479, !2480, !2481, !2482}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2475, file: !2476, line: 13, baseType: !803, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2475, file: !2476, line: 16, baseType: !180, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2475, file: !2476, line: 23, baseType: !189, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2475, file: !2476, line: 30, baseType: !189, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2475, file: !2476, line: 33, baseType: !2483, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !782, line: 27, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !717, file: !44, line: 1966, baseType: !2471, size: 64, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !657, file: !44, line: 1424, baseType: !2487, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2490)
!2490 = !{!2491, !2537, !2541, !2545, !2546, !2547, !2548, !2549, !2554, !2559, !2563}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2489, file: !38, line: 323, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!180, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2522, !2523, !2524}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2496, file: !38, line: 295, baseType: !699, size: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2496, file: !38, line: 296, baseType: !194, size: 128, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2496, file: !38, line: 297, baseType: !194, size: 128, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2496, file: !38, line: 298, baseType: !194, size: 128, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2496, file: !38, line: 299, baseType: !1231, size: 192, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2496, file: !38, line: 300, baseType: !300, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2496, file: !38, line: 301, baseType: !807, size: 32, offset: 704)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2496, file: !38, line: 302, baseType: !656, size: 64, offset: 768)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2496, file: !38, line: 303, baseType: !2507, size: 64, offset: 832)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2508)
!2508 = !{!2509, !2521}
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !38, line: 69, baseType: !2510, size: 32)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !38, line: 69, size: 32, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2510, file: !38, line: 70, baseType: !492, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2510, file: !38, line: 71, baseType: !500, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2510, file: !38, line: 72, baseType: !2515, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2516, line: 24, baseType: !2517)
!2516 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2516, line: 22, size: 32, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2517, file: !2516, line: 23, baseType: !2520, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2516, line: 20, baseType: !498)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2507, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2496, file: !38, line: 304, baseType: !588, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2496, file: !38, line: 305, baseType: !189, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2496, file: !38, line: 306, baseType: !2525, size: 576, offset: 1024)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2526)
!2526 = !{!2527, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2525, file: !38, line: 206, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !590)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2525, file: !38, line: 207, baseType: !2528, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2525, file: !38, line: 208, baseType: !2528, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2525, file: !38, line: 209, baseType: !2528, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2525, file: !38, line: 210, baseType: !2528, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2525, file: !38, line: 211, baseType: !2528, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2525, file: !38, line: 212, baseType: !2528, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2525, file: !38, line: 213, baseType: !596, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2525, file: !38, line: 214, baseType: !596, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2489, file: !38, line: 324, baseType: !2538, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!2495, !656, !180}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2489, file: !38, line: 325, baseType: !2542, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !2495}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2489, file: !38, line: 326, baseType: !2492, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2489, file: !38, line: 327, baseType: !2492, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2489, file: !38, line: 328, baseType: !2492, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2489, file: !38, line: 329, baseType: !745, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2489, file: !38, line: 332, baseType: !2550, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2553, !486}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2489, file: !38, line: 333, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!180, !486, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2489, file: !38, line: 335, baseType: !2560, size: 64, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!180, !486, !2553}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2489, file: !38, line: 337, baseType: !2564, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!180, !656, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !657, file: !44, line: 1425, baseType: !2569, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2572)
!2572 = !{!2573, !2577, !2578, !2582, !2583, !2584, !2599, !2622, !2626, !2627, !2650}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2571, file: !38, line: 429, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!180, !656, !180, !180, !606}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2571, file: !38, line: 430, baseType: !745, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2571, file: !38, line: 431, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!180, !656, !7}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2571, file: !38, line: 432, baseType: !2579, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2571, file: !38, line: 433, baseType: !745, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2571, file: !38, line: 434, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!180, !656, !180, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2589, file: !38, line: 416, baseType: !180, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2589, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2589, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2589, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2589, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2589, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2589, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2589, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2571, file: !38, line: 435, baseType: !2600, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!180, !656, !2507, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2604, file: !38, line: 344, baseType: !180, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2604, file: !38, line: 345, baseType: !219, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2604, file: !38, line: 346, baseType: !219, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2604, file: !38, line: 347, baseType: !219, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2604, file: !38, line: 348, baseType: !219, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2604, file: !38, line: 349, baseType: !219, size: 64, offset: 320)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2604, file: !38, line: 350, baseType: !219, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2604, file: !38, line: 351, baseType: !837, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2604, file: !38, line: 353, baseType: !837, size: 64, offset: 512)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2604, file: !38, line: 354, baseType: !180, size: 32, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2604, file: !38, line: 355, baseType: !180, size: 32, offset: 608)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2604, file: !38, line: 356, baseType: !219, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2604, file: !38, line: 357, baseType: !219, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2604, file: !38, line: 358, baseType: !219, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2604, file: !38, line: 359, baseType: !837, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2604, file: !38, line: 360, baseType: !180, size: 32, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2571, file: !38, line: 436, baseType: !2623, size: 64, offset: 448)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!180, !656, !2567, !2603}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2571, file: !38, line: 438, baseType: !2600, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2571, file: !38, line: 439, baseType: !2628, size: 64, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!180, !656, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2632, file: !38, line: 410, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2632, file: !38, line: 411, baseType: !2636, size: 1344, offset: 64)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 1344, elements: !342)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2649}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !38, line: 396, baseType: !7, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2637, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2637, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2637, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2637, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2637, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2637, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2637, file: !38, line: 404, baseType: !221, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2637, file: !38, line: 405, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 126, baseType: !219)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2637, file: !38, line: 406, baseType: !2648, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2571, file: !38, line: 440, baseType: !2579, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !657, file: !44, line: 1426, baseType: !2652, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2654)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !657, file: !44, line: 1427, baseType: !189, size: 64, offset: 640)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !657, file: !44, line: 1428, baseType: !189, size: 64, offset: 704)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !657, file: !44, line: 1429, baseType: !189, size: 64, offset: 768)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !657, file: !44, line: 1430, baseType: !447, size: 64, offset: 832)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !657, file: !44, line: 1431, baseType: !827, size: 256, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !657, file: !44, line: 1432, baseType: !180, size: 32, offset: 1152)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !657, file: !44, line: 1433, baseType: !807, size: 32, offset: 1184)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !657, file: !44, line: 1437, baseType: !2663, size: 64, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !657, file: !44, line: 1449, baseType: !2668, size: 64, offset: 1280)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !463, line: 34, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2668, file: !463, line: 35, baseType: !466, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !657, file: !44, line: 1450, baseType: !194, size: 128, offset: 1344)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !657, file: !44, line: 1451, baseType: !2673, size: 64, offset: 1472)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !657, file: !44, line: 1452, baseType: !1982, size: 64, offset: 1536)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !657, file: !44, line: 1453, baseType: !2677, size: 64, offset: 1600)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !657, file: !44, line: 1454, baseType: !699, size: 128, offset: 1664)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !657, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !657, file: !44, line: 1456, baseType: !2682, size: 2432, offset: 1856)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2688, !2720}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2682, file: !38, line: 519, baseType: !7, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2682, file: !38, line: 520, baseType: !827, size: 256, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2682, file: !38, line: 521, baseType: !2687, size: 192, offset: 320)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !342)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2682, file: !38, line: 522, baseType: !2689, size: 1728, offset: 512)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 1728, elements: !342)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2691)
!2691 = !{!2692, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2690, file: !38, line: 223, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2695)
!2695 = !{!2696, !2697, !2710, !2711}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2694, file: !38, line: 444, baseType: !180, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2694, file: !38, line: 445, baseType: !2698, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2700, file: !38, line: 311, baseType: !745, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2700, file: !38, line: 312, baseType: !745, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2700, file: !38, line: 313, baseType: !745, size: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2700, file: !38, line: 314, baseType: !745, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2700, file: !38, line: 315, baseType: !2492, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2700, file: !38, line: 316, baseType: !2492, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2700, file: !38, line: 317, baseType: !2492, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2700, file: !38, line: 318, baseType: !2564, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2694, file: !38, line: 446, baseType: !690, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2694, file: !38, line: 447, baseType: !2693, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2690, file: !38, line: 224, baseType: !180, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2690, file: !38, line: 226, baseType: !194, size: 128, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2690, file: !38, line: 227, baseType: !189, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2690, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2690, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2690, file: !38, line: 230, baseType: !2528, size: 64, offset: 384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2690, file: !38, line: 231, baseType: !2528, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2690, file: !38, line: 232, baseType: !176, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2682, file: !38, line: 523, baseType: !2721, size: 192, offset: 2240)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 192, elements: !342)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !657, file: !44, line: 1458, baseType: !2723, size: 2112, offset: 4288)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2724)
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2723, file: !44, line: 1411, baseType: !180, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2723, file: !44, line: 1412, baseType: !1538, size: 128, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2723, file: !44, line: 1413, baseType: !2728, size: 1920, offset: 192)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2729, size: 1920, elements: !342)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2730, line: 12, size: 640, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732, !2740, !2742, !2747, !2748}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2729, file: !2730, line: 13, baseType: !2733, size: 320)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2734, line: 17, size: 320, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2733, file: !2734, line: 18, baseType: !180, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2733, file: !2734, line: 19, baseType: !180, size: 32, offset: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2733, file: !2734, line: 20, baseType: !1538, size: 128, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2733, file: !2734, line: 22, baseType: !430, size: 128, align: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2729, file: !2730, line: 14, baseType: !2741, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2729, file: !2730, line: 15, baseType: !2743, size: 64, offset: 384)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2744, line: 16, size: 64, elements: !2745)
!2744 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2745 = !{!2746}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2743, file: !2744, line: 17, baseType: !1274, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2729, file: !2730, line: 16, baseType: !1538, size: 128, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2729, file: !2730, line: 17, baseType: !807, size: 32, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !657, file: !44, line: 1465, baseType: !176, size: 64, offset: 6400)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !657, file: !44, line: 1468, baseType: !184, size: 32, offset: 6464)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !657, file: !44, line: 1470, baseType: !596, size: 64, offset: 6528)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !657, file: !44, line: 1471, baseType: !596, size: 64, offset: 6592)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !657, file: !44, line: 1473, baseType: !186, size: 32, offset: 6656)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !657, file: !44, line: 1474, baseType: !2755, size: 64, offset: 6720)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !657, file: !44, line: 1477, baseType: !2758, size: 256, offset: 6784)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !2288)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !657, file: !44, line: 1478, baseType: !2760, size: 128, offset: 7040)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2761, line: 18, baseType: !2762)
!2761 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2761, line: 16, size: 128, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2762, file: !2761, line: 17, baseType: !2765, size: 128)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 128, elements: !1792)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !657, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !657, file: !44, line: 1481, baseType: !2768, size: 32, offset: 7200)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !195, line: 150, baseType: !7)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !657, file: !44, line: 1487, baseType: !1231, size: 192, offset: 7232)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !657, file: !44, line: 1493, baseType: !224, size: 64, offset: 7424)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !657, file: !44, line: 1495, baseType: !2772, size: 64, offset: 7488)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !445, line: 135, size: 1024, align: 512, elements: !2775)
!2775 = !{!2776, !2780, !2781, !2788, !2794, !2798, !2802, !2806, !2807, !2811, !2815, !2820, !2824}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2774, file: !445, line: 136, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!180, !447, !7}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2774, file: !445, line: 137, baseType: !2777, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2774, file: !445, line: 138, baseType: !2782, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!180, !2785, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2774, file: !445, line: 139, baseType: !2789, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!180, !2785, !7, !224, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2774, file: !445, line: 141, baseType: !2795, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!180, !2785}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2774, file: !445, line: 142, baseType: !2799, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!180, !447}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2774, file: !445, line: 143, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !447}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2774, file: !445, line: 144, baseType: !2803, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2774, file: !445, line: 145, baseType: !2808, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !447, !486}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2774, file: !445, line: 146, baseType: !2812, size: 64, offset: 576)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!341, !447, !341, !180}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2774, file: !445, line: 147, baseType: !2816, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!443, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2774, file: !445, line: 148, baseType: !2821, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!180, !606, !547}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2774, file: !445, line: 149, baseType: !2825, size: 64, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!447, !447, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !657, file: !44, line: 1500, baseType: !180, size: 32, offset: 7552)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !657, file: !44, line: 1502, baseType: !2832, size: 448, offset: 7616)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2476, line: 60, size: 448, elements: !2833)
!2833 = !{!2834, !2839, !2840, !2841, !2842, !2843, !2844}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2832, file: !2476, line: 61, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!189, !2838, !2474}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2832, file: !2476, line: 63, baseType: !2835, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2832, file: !2476, line: 66, baseType: !376, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2832, file: !2476, line: 67, baseType: !180, size: 32, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2832, file: !2476, line: 68, baseType: !7, size: 32, offset: 224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2832, file: !2476, line: 71, baseType: !194, size: 128, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2832, file: !2476, line: 77, baseType: !2845, size: 64, offset: 384)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !657, file: !44, line: 1505, baseType: !831, size: 64, offset: 8064)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !657, file: !44, line: 1508, baseType: !831, size: 64, offset: 8128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !657, file: !44, line: 1511, baseType: !180, size: 32, offset: 8192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !657, file: !44, line: 1514, baseType: !969, size: 32, offset: 8224)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !657, file: !44, line: 1517, baseType: !2851, size: 64, offset: 8256)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2017, line: 18, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !657, file: !44, line: 1518, baseType: !695, size: 64, offset: 8320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !657, file: !44, line: 1525, baseType: !1770, size: 64, offset: 8384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !657, file: !44, line: 1532, baseType: !2856, size: 64, offset: 8448)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2857, line: 52, size: 64, elements: !2858)
!2857 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2858 = !{!2859}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2856, file: !2857, line: 53, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2857, line: 40, size: 256, elements: !2862)
!2862 = !{!2863, !2864, !2869}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2861, file: !2857, line: 42, baseType: !300)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2861, file: !2857, line: 44, baseType: !2865, size: 192)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2857, line: 28, size: 192, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2865, file: !2857, line: 29, baseType: !194, size: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2865, file: !2857, line: 31, baseType: !376, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2861, file: !2857, line: 49, baseType: !376, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !657, file: !44, line: 1533, baseType: !2856, size: 64, offset: 8512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !657, file: !44, line: 1534, baseType: !430, size: 128, align: 64, offset: 8576)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !657, file: !44, line: 1535, baseType: !2016, size: 256, offset: 8704)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !657, file: !44, line: 1537, baseType: !1231, size: 192, offset: 8960)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !657, file: !44, line: 1542, baseType: !180, size: 32, offset: 9152)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !657, file: !44, line: 1545, baseType: !300, offset: 9184)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !657, file: !44, line: 1546, baseType: !194, size: 128, offset: 9216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !657, file: !44, line: 1548, baseType: !300, offset: 9344)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !657, file: !44, line: 1549, baseType: !194, size: 128, offset: 9344)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !487, file: !44, line: 624, baseType: !793, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !487, file: !44, line: 631, baseType: !189, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 639, baseType: !2882, size: 32, offset: 384)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 639, size: 32, elements: !2883)
!2883 = !{!2884, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2882, file: !44, line: 640, baseType: !2885, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2882, file: !44, line: 641, baseType: !7, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !487, file: !44, line: 643, baseType: !570, size: 32, offset: 416)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !487, file: !44, line: 644, baseType: !588, size: 64, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !487, file: !44, line: 645, baseType: !592, size: 128, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !487, file: !44, line: 646, baseType: !592, size: 128, offset: 640)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !487, file: !44, line: 647, baseType: !592, size: 128, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !487, file: !44, line: 648, baseType: !300, offset: 896)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !487, file: !44, line: 649, baseType: !279, size: 16, offset: 896)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !487, file: !44, line: 650, baseType: !1410, size: 8, offset: 912)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !487, file: !44, line: 651, baseType: !1410, size: 8, offset: 920)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !487, file: !44, line: 652, baseType: !2648, size: 64, offset: 960)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !487, file: !44, line: 659, baseType: !189, size: 64, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !487, file: !44, line: 660, baseType: !827, size: 256, offset: 1088)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !487, file: !44, line: 662, baseType: !189, size: 64, offset: 1344)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !487, file: !44, line: 663, baseType: !189, size: 64, offset: 1408)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !487, file: !44, line: 665, baseType: !699, size: 128, offset: 1472)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !487, file: !44, line: 666, baseType: !194, size: 128, offset: 1600)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !487, file: !44, line: 675, baseType: !194, size: 128, offset: 1728)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !487, file: !44, line: 676, baseType: !194, size: 128, offset: 1856)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !487, file: !44, line: 677, baseType: !194, size: 128, offset: 1984)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 678, baseType: !2907, size: 128, offset: 2112)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 678, size: 128, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2907, file: !44, line: 679, baseType: !695, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2907, file: !44, line: 680, baseType: !430, size: 128, align: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !487, file: !44, line: 682, baseType: !833, size: 64, offset: 2240)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !487, file: !44, line: 683, baseType: !833, size: 64, offset: 2304)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !487, file: !44, line: 684, baseType: !807, size: 32, offset: 2368)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !487, file: !44, line: 685, baseType: !807, size: 32, offset: 2400)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !487, file: !44, line: 686, baseType: !807, size: 32, offset: 2432)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !487, file: !44, line: 688, baseType: !807, size: 32, offset: 2464)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 690, baseType: !2918, size: 64, offset: 2496)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 690, size: 64, elements: !2919)
!2919 = !{!2920, !3143}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2918, file: !44, line: 691, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2924)
!2924 = !{!2925, !2926, !2930, !2935, !2939, !2940, !2941, !2945, !2958, !2959, !2967, !2971, !2972, !2976, !2977, !2981, !2986, !2987, !2991, !2995, !3103, !3107, !3108, !3112, !3113, !3117, !3121, !3126, !3130, !3134, !3138, !3142}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2923, file: !44, line: 1823, baseType: !690, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2923, file: !44, line: 1824, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!588, !417, !588, !180}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2923, file: !44, line: 1825, baseType: !2931, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!372, !417, !341, !387, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2923, file: !44, line: 1826, baseType: !2936, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!372, !417, !224, !387, !2934}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2923, file: !44, line: 1827, baseType: !904, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2923, file: !44, line: 1828, baseType: !904, size: 64, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2923, file: !44, line: 1829, baseType: !2942, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!180, !907, !547}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2923, file: !44, line: 1830, baseType: !2946, size: 64, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!180, !417, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2951)
!2951 = !{!2952, !2957}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2950, file: !44, line: 1777, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!180, !2949, !224, !180, !588, !219, !7}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2950, file: !44, line: 1778, baseType: !588, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2923, file: !44, line: 1831, baseType: !2946, size: 64, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2923, file: !44, line: 1832, baseType: !2960, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!2963, !417, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2964, line: 52, baseType: !7)
!2964 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !676, line: 27, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2923, file: !44, line: 1833, baseType: !2968, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!376, !417, !7, !189}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2923, file: !44, line: 1834, baseType: !2968, size: 64, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2923, file: !44, line: 1835, baseType: !2973, size: 64, offset: 768)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!180, !417, !1041}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2923, file: !44, line: 1836, baseType: !189, size: 64, offset: 832)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2923, file: !44, line: 1837, baseType: !2978, size: 64, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!180, !486, !417}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2923, file: !44, line: 1838, baseType: !2982, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!180, !417, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !176)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2923, file: !44, line: 1839, baseType: !2978, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2923, file: !44, line: 1840, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!180, !417, !588, !588, !180}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2923, file: !44, line: 1841, baseType: !2992, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!180, !180, !417, !180}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2923, file: !44, line: 1842, baseType: !2996, size: 64, offset: 1216)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!180, !417, !180, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3033, !3034, !3035, !3048, !3079}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3000, file: !44, line: 1063, baseType: !2999, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3000, file: !44, line: 1064, baseType: !194, size: 128, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3000, file: !44, line: 1065, baseType: !699, size: 128, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3000, file: !44, line: 1066, baseType: !194, size: 128, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3000, file: !44, line: 1069, baseType: !194, size: 128, offset: 448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3000, file: !44, line: 1072, baseType: !2985, size: 64, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3000, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3000, file: !44, line: 1074, baseType: !270, size: 8, offset: 672)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3000, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3000, file: !44, line: 1076, baseType: !180, size: 32, offset: 736)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3000, file: !44, line: 1077, baseType: !1538, size: 128, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3000, file: !44, line: 1078, baseType: !417, size: 64, offset: 896)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3000, file: !44, line: 1079, baseType: !588, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3000, file: !44, line: 1080, baseType: !588, size: 64, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3000, file: !44, line: 1082, baseType: !3017, size: 64, offset: 1088)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3019)
!3019 = !{!3020, !3028, !3029, !3030, !3031, !3032}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3018, file: !44, line: 1315, baseType: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3022, line: 20, baseType: !3023)
!3022 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3022, line: 11, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3023, file: !3022, line: 12, baseType: !3026)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !312, line: 33, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 31, elements: !314)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3018, file: !44, line: 1316, baseType: !180, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3018, file: !44, line: 1317, baseType: !180, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3018, file: !44, line: 1318, baseType: !3017, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3018, file: !44, line: 1319, baseType: !417, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3018, file: !44, line: 1320, baseType: !430, size: 128, align: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3000, file: !44, line: 1084, baseType: !189, size: 64, offset: 1152)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3000, file: !44, line: 1085, baseType: !189, size: 64, offset: 1216)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3000, file: !44, line: 1087, baseType: !3036, size: 64, offset: 1280)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3039)
!3039 = !{!3040, !3044}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3038, file: !44, line: 1012, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2999, !2999}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3038, file: !44, line: 1013, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2999}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3000, file: !44, line: 1088, baseType: !3049, size: 64, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3051)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3052)
!3052 = !{!3053, !3057, !3061, !3062, !3066, !3070, !3074, !3078}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3051, file: !44, line: 1017, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!2985, !2985}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3051, file: !44, line: 1018, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2985}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3051, file: !44, line: 1019, baseType: !3045, size: 64, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3051, file: !44, line: 1020, baseType: !3063, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!180, !2999, !180}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3051, file: !44, line: 1021, baseType: !3067, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!547, !2999}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3051, file: !44, line: 1022, baseType: !3071, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!180, !2999, !180, !198}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3051, file: !44, line: 1023, baseType: !3075, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !2999, !881}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3051, file: !44, line: 1024, baseType: !3067, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3000, file: !44, line: 1097, baseType: !3080, size: 256, offset: 1408)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !44, line: 1089, size: 256, elements: !3081)
!3081 = !{!3082, !3091, !3097}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3080, file: !44, line: 1090, baseType: !3083, size: 256)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3084, line: 10, size: 256, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3085 = !{!3086, !3087, !3090}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3083, file: !3084, line: 11, baseType: !184, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3083, file: !3084, line: 12, baseType: !3088, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3084, line: 5, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3083, file: !3084, line: 13, baseType: !194, size: 128, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3080, file: !44, line: 1091, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3084, line: 17, size: 64, elements: !3093)
!3093 = !{!3094}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3092, file: !3084, line: 18, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3084, line: 16, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3080, file: !44, line: 1096, baseType: !3098, size: 192)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !44, line: 1092, size: 192, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3098, file: !44, line: 1093, baseType: !194, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3098, file: !44, line: 1094, baseType: !180, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3098, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2923, file: !44, line: 1843, baseType: !3104, size: 64, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!372, !417, !780, !180, !387, !2934, !180}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2923, file: !44, line: 1844, baseType: !1161, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2923, file: !44, line: 1845, baseType: !3109, size: 64, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!180, !180}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2923, file: !44, line: 1846, baseType: !2996, size: 64, offset: 1472)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2923, file: !44, line: 1847, baseType: !3114, size: 64, offset: 1536)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!372, !2157, !417, !2934, !387, !7}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2923, file: !44, line: 1848, baseType: !3118, size: 64, offset: 1600)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!372, !417, !2934, !2157, !387, !7}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2923, file: !44, line: 1849, baseType: !3122, size: 64, offset: 1664)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!180, !417, !376, !3125, !881}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2923, file: !44, line: 1850, baseType: !3127, size: 64, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!376, !417, !180, !588, !588}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2923, file: !44, line: 1852, baseType: !3131, size: 64, offset: 1792)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !770, !417}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2923, file: !44, line: 1856, baseType: !3135, size: 64, offset: 1856)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!372, !417, !588, !417, !588, !387, !7}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2923, file: !44, line: 1858, baseType: !3139, size: 64, offset: 1920)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!588, !417, !588, !417, !588, !588, !7}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2923, file: !44, line: 1861, baseType: !2988, size: 64, offset: 1984)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2918, file: !44, line: 692, baseType: !724, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !487, file: !44, line: 694, baseType: !3145, size: 64, offset: 2560)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3146, file: !44, line: 1101, baseType: !300)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3146, file: !44, line: 1102, baseType: !194, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3146, file: !44, line: 1103, baseType: !194, size: 128, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3146, file: !44, line: 1104, baseType: !194, size: 128, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !487, file: !44, line: 695, baseType: !794, size: 1216, align: 64, offset: 2624)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !487, file: !44, line: 696, baseType: !194, size: 128, offset: 3840)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 697, baseType: !3155, size: 64, offset: 3968)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 697, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3162, !3163}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3155, file: !44, line: 698, baseType: !2157, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3155, file: !44, line: 699, baseType: !2673, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3155, file: !44, line: 700, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3155, file: !44, line: 701, baseType: !341, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3155, file: !44, line: 702, baseType: !7, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !487, file: !44, line: 705, baseType: !186, size: 32, offset: 4032)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !487, file: !44, line: 708, baseType: !186, size: 32, offset: 4064)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !487, file: !44, line: 709, baseType: !2755, size: 64, offset: 4096)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !487, file: !44, line: 720, baseType: !176, size: 64, offset: 4160)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !448, file: !445, line: 98, baseType: !3169, size: 256, offset: 448)
!3169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !2288)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !448, file: !445, line: 101, baseType: !3171, size: 32, offset: 704)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3172, line: 25, size: 32, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3173 = !{!3174}
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3171, file: !3172, line: 26, baseType: !3175, size: 32)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3171, file: !3172, line: 26, size: 32, elements: !3176)
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3175, file: !3172, line: 30, baseType: !3178, size: 32)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3175, file: !3172, line: 30, size: 32, elements: !3179)
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3178, file: !3172, line: 31, baseType: !300)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3178, file: !3172, line: 32, baseType: !180, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !448, file: !445, line: 102, baseType: !2772, size: 64, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !448, file: !445, line: 103, baseType: !656, size: 64, offset: 832)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !448, file: !445, line: 104, baseType: !189, size: 64, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !448, file: !445, line: 105, baseType: !176, size: 64, offset: 960)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !445, line: 107, baseType: !3187, size: 128, offset: 1024)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !445, line: 107, size: 128, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3187, file: !445, line: 108, baseType: !194, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3187, file: !445, line: 109, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !448, file: !445, line: 111, baseType: !194, size: 128, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !448, file: !445, line: 112, baseType: !194, size: 128, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !448, file: !445, line: 120, baseType: !3195, size: 128, offset: 1408)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !445, line: 116, size: 128, elements: !3196)
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3195, file: !445, line: 117, baseType: !699, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3195, file: !445, line: 118, baseType: !462, size: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3195, file: !445, line: 119, baseType: !430, size: 128, align: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !418, file: !44, line: 922, baseType: !486, size: 64, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !418, file: !44, line: 923, baseType: !2921, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !418, file: !44, line: 929, baseType: !300, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !418, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !418, file: !44, line: 931, baseType: !831, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !418, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !418, file: !44, line: 933, baseType: !2768, size: 32, offset: 544)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !418, file: !44, line: 934, baseType: !1231, size: 192, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !418, file: !44, line: 935, baseType: !588, size: 64, offset: 768)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !418, file: !44, line: 936, baseType: !3210, size: 192, offset: 832)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3210, file: !44, line: 886, baseType: !3021)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3210, file: !44, line: 887, baseType: !1528, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3210, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3210, file: !44, line: 889, baseType: !492, size: 32, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3210, file: !44, line: 889, baseType: !492, size: 32, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3210, file: !44, line: 890, baseType: !180, size: 32, offset: 160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !418, file: !44, line: 937, baseType: !1604, size: 64, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !418, file: !44, line: 938, baseType: !3220, size: 256, offset: 1088)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3220, file: !44, line: 897, baseType: !189, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3220, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3220, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3220, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3220, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3220, file: !44, line: 904, baseType: !588, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !418, file: !44, line: 940, baseType: !219, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !418, file: !44, line: 945, baseType: !176, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !418, file: !44, line: 949, baseType: !194, size: 128, offset: 1472)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !418, file: !44, line: 950, baseType: !194, size: 128, offset: 1600)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !418, file: !44, line: 952, baseType: !793, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !418, file: !44, line: 953, baseType: !969, size: 32, offset: 1792)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !418, file: !44, line: 954, baseType: !969, size: 32, offset: 1824)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !408, file: !366, line: 174, baseType: !414, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !408, file: !366, line: 176, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!180, !417, !293, !407, !1041}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !396, file: !366, line: 90, baseType: !391, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !396, file: !366, line: 91, baseType: !3242, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !356, file: !288, line: 143, baseType: !3244, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!3247, !293}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3250)
!3250 = !{!3251, !3252, !3256, !3260, !3266, !3270}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3249, file: !61, line: 40, baseType: !60, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3249, file: !61, line: 41, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!547}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3249, file: !61, line: 42, baseType: !3257, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!176}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3249, file: !61, line: 43, baseType: !3261, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!2185, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3249, file: !61, line: 44, baseType: !3267, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!2185}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3249, file: !61, line: 45, baseType: !525, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !356, file: !288, line: 144, baseType: !3272, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!2185, !293}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !356, file: !288, line: 145, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !293, !3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !287, file: !288, line: 70, baseType: !3282, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !676, line: 123, size: 1024, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3413, !3414, !3415, !3416, !3417}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3283, file: !676, line: 124, baseType: !807, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3283, file: !676, line: 125, baseType: !807, size: 32, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3283, file: !676, line: 135, baseType: !3282, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3283, file: !676, line: 136, baseType: !224, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3283, file: !676, line: 138, baseType: !820, size: 192, align: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3283, file: !676, line: 140, baseType: !2185, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3283, file: !676, line: 141, baseType: !7, size: 32, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !676, line: 142, baseType: !3293, size: 256, offset: 512)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !676, line: 142, size: 256, elements: !3294)
!3294 = !{!3295, !3341, !3345}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3293, file: !676, line: 143, baseType: !3296, size: 192)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !676, line: 91, size: 192, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3296, file: !676, line: 92, baseType: !189, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3296, file: !676, line: 94, baseType: !816, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3296, file: !676, line: 100, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !676, line: 180, size: 704, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3313, !3314, !3315, !3339, !3340}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3302, file: !676, line: 182, baseType: !3282, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3302, file: !676, line: 183, baseType: !7, size: 32, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3302, file: !676, line: 186, baseType: !3307, size: 192, offset: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3308, line: 19, size: 192, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3307, file: !3308, line: 20, baseType: !798, size: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3307, file: !3308, line: 21, baseType: !7, size: 32, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3307, file: !3308, line: 22, baseType: !7, size: 32, offset: 160)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3302, file: !676, line: 187, baseType: !184, size: 32, offset: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3302, file: !676, line: 188, baseType: !184, size: 32, offset: 352)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3302, file: !676, line: 189, baseType: !3316, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !676, line: 168, size: 320, elements: !3318)
!3318 = !{!3319, !3323, !3327, !3331, !3335}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3317, file: !676, line: 169, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!180, !770, !3301}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3317, file: !676, line: 171, baseType: !3324, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!180, !3282, !224, !382}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3317, file: !676, line: 173, baseType: !3328, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!180, !3282}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3317, file: !676, line: 174, baseType: !3332, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!180, !3282, !3282, !224}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3317, file: !676, line: 176, baseType: !3336, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!180, !770, !3282, !3301}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3302, file: !676, line: 192, baseType: !194, size: 128, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3302, file: !676, line: 194, baseType: !1538, size: 128, offset: 576)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3293, file: !676, line: 144, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !676, line: 103, size: 64, elements: !3343)
!3343 = !{!3344}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3342, file: !676, line: 104, baseType: !3282, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3293, file: !676, line: 145, baseType: !3346, size: 256)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !676, line: 107, size: 256, elements: !3347)
!3347 = !{!3348, !3408, !3411, !3412}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3346, file: !676, line: 108, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !676, line: 217, size: 768, elements: !3352)
!3352 = !{!3353, !3373, !3377, !3381, !3385, !3389, !3393, !3397, !3398, !3399, !3400, !3404}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3351, file: !676, line: 222, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!180, !3357}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !676, line: 197, size: 1088, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3358, file: !676, line: 199, baseType: !3282, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3358, file: !676, line: 200, baseType: !417, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3358, file: !676, line: 201, baseType: !770, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3358, file: !676, line: 202, baseType: !176, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3358, file: !676, line: 205, baseType: !1231, size: 192, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3358, file: !676, line: 206, baseType: !1231, size: 192, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3358, file: !676, line: 207, baseType: !180, size: 32, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3358, file: !676, line: 208, baseType: !194, size: 128, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3358, file: !676, line: 209, baseType: !341, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3358, file: !676, line: 211, baseType: !387, size: 64, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3358, file: !676, line: 212, baseType: !547, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3358, file: !676, line: 213, baseType: !547, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3358, file: !676, line: 214, baseType: !1069, size: 64, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3351, file: !676, line: 223, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3357}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3351, file: !676, line: 236, baseType: !3378, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!180, !770, !176}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3351, file: !676, line: 238, baseType: !3382, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!176, !770, !2934}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3351, file: !676, line: 239, baseType: !3386, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!176, !770, !176, !2934}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3351, file: !676, line: 240, baseType: !3390, size: 64, offset: 320)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !770, !176}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3351, file: !676, line: 242, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!372, !3357, !341, !387, !588}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3351, file: !676, line: 252, baseType: !387, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3351, file: !676, line: 259, baseType: !547, size: 8, offset: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3351, file: !676, line: 260, baseType: !3394, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3351, file: !676, line: 263, baseType: !3401, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!2963, !3357, !2965}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3351, file: !676, line: 266, baseType: !3405, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!180, !3357, !1041}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3346, file: !676, line: 109, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !676, line: 31, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3346, file: !676, line: 110, baseType: !588, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3346, file: !676, line: 111, baseType: !3282, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3283, file: !676, line: 148, baseType: !176, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3283, file: !676, line: 154, baseType: !219, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !676, line: 156, baseType: !279, size: 16, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3283, file: !676, line: 157, baseType: !382, size: 16, offset: 912)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3283, file: !676, line: 158, baseType: !3418, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !676, line: 32, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !287, file: !288, line: 71, baseType: !3421, size: 32, offset: 448)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3422, line: 19, size: 32, elements: !3423)
!3422 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3423 = !{!3424}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3421, file: !3422, line: 20, baseType: !1288, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !287, file: !288, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !287, file: !288, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !287, file: !288, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !287, file: !288, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !287, file: !288, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !73, line: 463, baseType: !283, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !284, file: !73, line: 465, baseType: !3432, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !284, file: !73, line: 467, baseType: !224, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !284, file: !73, line: 468, baseType: !3436, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3446, !3451, !3455}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !73, line: 88, baseType: !224, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3438, file: !73, line: 89, baseType: !393, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3438, file: !73, line: 90, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!180, !283, !336}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3438, file: !73, line: 91, baseType: !3447, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!341, !283, !3450, !3279, !3280}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3438, file: !73, line: 93, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !283}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3438, file: !73, line: 95, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3459)
!3459 = !{!3460, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3458, file: !80, line: 279, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!180, !283}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3458, file: !80, line: 280, baseType: !3452, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3458, file: !80, line: 281, baseType: !3461, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3458, file: !80, line: 282, baseType: !3461, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3458, file: !80, line: 283, baseType: !3461, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3458, file: !80, line: 284, baseType: !3461, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3458, file: !80, line: 285, baseType: !3461, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3458, file: !80, line: 286, baseType: !3461, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3458, file: !80, line: 287, baseType: !3461, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3458, file: !80, line: 288, baseType: !3461, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3458, file: !80, line: 289, baseType: !3461, size: 64, offset: 640)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3458, file: !80, line: 290, baseType: !3461, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3458, file: !80, line: 291, baseType: !3461, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3458, file: !80, line: 292, baseType: !3461, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3458, file: !80, line: 293, baseType: !3461, size: 64, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3458, file: !80, line: 294, baseType: !3461, size: 64, offset: 960)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3458, file: !80, line: 295, baseType: !3461, size: 64, offset: 1024)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3458, file: !80, line: 296, baseType: !3461, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3458, file: !80, line: 297, baseType: !3461, size: 64, offset: 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3458, file: !80, line: 298, baseType: !3461, size: 64, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3458, file: !80, line: 299, baseType: !3461, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3458, file: !80, line: 300, baseType: !3461, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3458, file: !80, line: 301, baseType: !3461, size: 64, offset: 1408)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !284, file: !73, line: 470, baseType: !3487, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3489, line: 82, size: 1408, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3572, !3575, !3576}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !3489, line: 83, baseType: !224, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3488, file: !3489, line: 84, baseType: !224, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3488, file: !3489, line: 85, baseType: !283, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3488, file: !3489, line: 86, baseType: !393, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3488, file: !3489, line: 87, baseType: !393, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3488, file: !3489, line: 88, baseType: !393, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3488, file: !3489, line: 90, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!180, !283, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3523, !3536, !3537, !3538, !3539, !3540, !3548, !3549, !3550, !3551, !3552, !3553}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !67, line: 96, baseType: !224, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3502, file: !67, line: 97, baseType: !3487, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3502, file: !67, line: 99, baseType: !690, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3502, file: !67, line: 100, baseType: !224, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3502, file: !67, line: 102, baseType: !547, size: 8, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3502, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3502, file: !67, line: 105, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3514, line: 262, size: 1600, elements: !3515)
!3514 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3515 = !{!3516, !3517, !3518, !3522}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3513, file: !3514, line: 263, baseType: !2758, size: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3513, file: !3514, line: 264, baseType: !2758, size: 256, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3513, file: !3514, line: 265, baseType: !3519, size: 1024, offset: 512)
!3519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1024, elements: !3520)
!3520 = !{!3521}
!3521 = !DISubrange(count: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3513, file: !3514, line: 266, baseType: !2185, size: 64, offset: 1536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3502, file: !67, line: 106, baseType: !3524, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3514, line: 210, size: 256, elements: !3527)
!3527 = !{!3528, !3532, !3534, !3535}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3526, file: !3514, line: 211, baseType: !3529, size: 72)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 72, elements: !3530)
!3530 = !{!3531}
!3531 = !DISubrange(count: 9)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3526, file: !3514, line: 212, baseType: !3533, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3514, line: 14, baseType: !189)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3526, file: !3514, line: 213, baseType: !186, size: 32, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3526, file: !3514, line: 214, baseType: !186, size: 32, offset: 224)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3502, file: !67, line: 108, baseType: !3461, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3502, file: !67, line: 109, baseType: !3452, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3502, file: !67, line: 110, baseType: !3461, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3502, file: !67, line: 111, baseType: !3452, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !67, line: 112, baseType: !3541, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!180, !283, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3546)
!3546 = !{!3547}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3545, file: !80, line: 51, baseType: !180, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !67, line: 113, baseType: !3461, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3502, file: !67, line: 114, baseType: !393, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3502, file: !67, line: 115, baseType: !393, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3502, file: !67, line: 117, baseType: !3456, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3502, file: !67, line: 118, baseType: !3452, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3502, file: !67, line: 120, baseType: !3554, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3488, file: !3489, line: 91, baseType: !3443, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3488, file: !3489, line: 92, baseType: !3461, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3488, file: !3489, line: 93, baseType: !3452, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3488, file: !3489, line: 94, baseType: !3461, size: 64, offset: 640)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3488, file: !3489, line: 95, baseType: !3452, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3488, file: !3489, line: 97, baseType: !3461, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3488, file: !3489, line: 98, baseType: !3461, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !3489, line: 100, baseType: !3541, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !3489, line: 101, baseType: !3461, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3488, file: !3489, line: 103, baseType: !3461, size: 64, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3488, file: !3489, line: 105, baseType: !3461, size: 64, offset: 1088)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3488, file: !3489, line: 107, baseType: !3456, size: 64, offset: 1152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3488, file: !3489, line: 109, baseType: !3569, size: 64, offset: 1216)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3489, line: 109, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3488, file: !3489, line: 111, baseType: !3573, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3489, line: 111, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3488, file: !3489, line: 112, baseType: !705, offset: 1344)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3488, file: !3489, line: 114, baseType: !547, size: 8, offset: 1344)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !284, file: !73, line: 471, baseType: !3501, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !284, file: !73, line: 473, baseType: !176, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !284, file: !73, line: 475, baseType: !176, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !284, file: !73, line: 480, baseType: !1231, size: 192, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !284, file: !73, line: 484, baseType: !3582, size: 576, offset: 1216)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3582, file: !73, line: 362, baseType: !194, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3582, file: !73, line: 363, baseType: !194, size: 128, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3582, file: !73, line: 364, baseType: !194, size: 128, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3582, file: !73, line: 365, baseType: !194, size: 128, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3582, file: !73, line: 366, baseType: !547, size: 8, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3582, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !284, file: !73, line: 485, baseType: !3591, size: 2304, offset: 1792)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3688, !3692}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3591, file: !80, line: 566, baseType: !3544, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3591, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3591, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3591, file: !80, line: 569, baseType: !547, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3591, file: !80, line: 570, baseType: !547, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3591, file: !80, line: 571, baseType: !547, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3591, file: !80, line: 572, baseType: !547, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3591, file: !80, line: 573, baseType: !547, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3591, file: !80, line: 574, baseType: !547, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3591, file: !80, line: 575, baseType: !547, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3591, file: !80, line: 576, baseType: !547, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3591, file: !80, line: 577, baseType: !184, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !80, line: 578, baseType: !300, offset: 96)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3591, file: !80, line: 580, baseType: !194, size: 128, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3591, file: !80, line: 581, baseType: !1559, size: 192, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3591, file: !80, line: 582, baseType: !3609, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3611, line: 43, size: 1472, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3620, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3610, file: !3611, line: 44, baseType: !224, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3610, file: !3611, line: 45, baseType: !180, size: 32, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3610, file: !3611, line: 46, baseType: !194, size: 128, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3610, file: !3611, line: 47, baseType: !300, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3610, file: !3611, line: 48, baseType: !3618, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3610, file: !3611, line: 49, baseType: !3621, size: 320, offset: 320)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3622, line: 11, size: 320, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3623 = !{!3624, !3625, !3626, !3631}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3621, file: !3622, line: 16, baseType: !699, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3621, file: !3622, line: 17, baseType: !189, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3621, file: !3622, line: 18, baseType: !3627, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !3622, line: 19, baseType: !184, size: 32, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3610, file: !3611, line: 50, baseType: !189, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3610, file: !3611, line: 51, baseType: !1358, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3610, file: !3611, line: 52, baseType: !1358, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3610, file: !3611, line: 53, baseType: !1358, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3610, file: !3611, line: 54, baseType: !1358, size: 64, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3610, file: !3611, line: 55, baseType: !1358, size: 64, offset: 960)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3610, file: !3611, line: 56, baseType: !189, size: 64, offset: 1024)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3610, file: !3611, line: 57, baseType: !189, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3610, file: !3611, line: 58, baseType: !189, size: 64, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3610, file: !3611, line: 59, baseType: !189, size: 64, offset: 1216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3610, file: !3611, line: 60, baseType: !189, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3610, file: !3611, line: 61, baseType: !283, size: 64, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3610, file: !3611, line: 62, baseType: !547, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3610, file: !3611, line: 63, baseType: !547, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3591, file: !80, line: 583, baseType: !547, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3591, file: !80, line: 584, baseType: !547, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3591, file: !80, line: 585, baseType: !547, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3591, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3591, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3591, file: !80, line: 592, baseType: !1350, size: 512, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3591, file: !80, line: 593, baseType: !219, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3591, file: !80, line: 594, baseType: !2016, size: 256, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3591, file: !80, line: 595, baseType: !1538, size: 128, offset: 1408)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3591, file: !80, line: 596, baseType: !3618, size: 64, offset: 1536)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3591, file: !80, line: 597, baseType: !807, size: 32, offset: 1600)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3591, file: !80, line: 598, baseType: !807, size: 32, offset: 1632)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3591, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3591, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3591, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3591, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3591, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3591, file: !80, line: 604, baseType: !547, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3591, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3591, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3591, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3591, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3591, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3591, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3591, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3591, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3591, file: !80, line: 613, baseType: !180, size: 32, offset: 1792)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3591, file: !80, line: 614, baseType: !180, size: 32, offset: 1824)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3591, file: !80, line: 615, baseType: !219, size: 64, offset: 1856)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3591, file: !80, line: 616, baseType: !219, size: 64, offset: 1920)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3591, file: !80, line: 617, baseType: !219, size: 64, offset: 1984)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3591, file: !80, line: 618, baseType: !219, size: 64, offset: 2048)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3591, file: !80, line: 620, baseType: !3679, size: 64, offset: 2112)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3680, file: !80, line: 537, baseType: !300)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3680, file: !80, line: 538, baseType: !7, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3680, file: !80, line: 540, baseType: !194, size: 128, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3680, file: !80, line: 543, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3591, file: !80, line: 621, baseType: !3689, size: 64, offset: 2176)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !283, !1501}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3591, file: !80, line: 622, baseType: !3693, size: 64, offset: 2240)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !284, file: !73, line: 486, baseType: !3696, size: 64, offset: 4096)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3705, !3706, !3707}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3697, file: !80, line: 643, baseType: !3458, size: 1472)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3697, file: !80, line: 644, baseType: !3461, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3697, file: !80, line: 645, baseType: !3702, size: 64, offset: 1536)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !283, !547}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3697, file: !80, line: 646, baseType: !3461, size: 64, offset: 1600)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3697, file: !80, line: 647, baseType: !3452, size: 64, offset: 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3697, file: !80, line: 648, baseType: !3452, size: 64, offset: 1728)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !284, file: !73, line: 493, baseType: !3709, size: 64, offset: 4160)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3886, !3887, !3888, !3889, !3890, !3891, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3710, file: !94, line: 163, baseType: !194, size: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3710, file: !94, line: 164, baseType: !224, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !94, line: 165, baseType: !3715, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3718)
!3718 = !{!3719, !3837, !3848, !3853, !3857, !3863, !3867, !3871, !3878, !3882}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3717, file: !94, line: 106, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!180, !3709, !3723, !93}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3725, line: 51, size: 1344, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !{!3727, !3728, !3730, !3731, !3821, !3830, !3831, !3832, !3833, !3834, !3835, !3836}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3724, file: !3725, line: 52, baseType: !224, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3724, file: !3725, line: 53, baseType: !3729, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3725, line: 28, baseType: !184)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3724, file: !3725, line: 54, baseType: !224, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3724, file: !3725, line: 55, baseType: !3732, size: 192, offset: 192)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3733, line: 17, size: 192, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !{!3735, !3737, !3820}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3732, file: !3733, line: 18, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3732, file: !3733, line: 19, baseType: !3738, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3733, line: 110, size: 1152, elements: !3741)
!3741 = !{!3742, !3746, !3750, !3756, !3762, !3766, !3770, !3775, !3779, !3780, !3784, !3788, !3792, !3803, !3804, !3805, !3806, !3816}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3740, file: !3733, line: 111, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3736, !3736}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3740, file: !3733, line: 112, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3736}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3740, file: !3733, line: 113, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!547, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3740, file: !3733, line: 114, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!2185, !3754, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3740, file: !3733, line: 116, baseType: !3763, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!547, !3754, !224}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3740, file: !3733, line: 118, baseType: !3767, size: 64, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!180, !3754, !224, !7, !176, !387}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3740, file: !3733, line: 123, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!180, !3754, !224, !3774, !387}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3740, file: !3733, line: 126, baseType: !3776, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!224, !3754}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3740, file: !3733, line: 127, baseType: !3776, size: 64, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3740, file: !3733, line: 128, baseType: !3781, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3736, !3754}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3740, file: !3733, line: 130, baseType: !3785, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3736, !3754, !3736}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3740, file: !3733, line: 133, baseType: !3789, size: 64, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3736, !3754, !224}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3740, file: !3733, line: 135, baseType: !3793, size: 64, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!180, !3754, !224, !224, !7, !7, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3733, line: 43, size: 640, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3797, file: !3733, line: 44, baseType: !3736, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3797, file: !3733, line: 45, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3797, file: !3733, line: 46, baseType: !3802, size: 512, offset: 128)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 512, elements: !1388)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3740, file: !3733, line: 140, baseType: !3785, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3740, file: !3733, line: 143, baseType: !3781, size: 64, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3740, file: !3733, line: 145, baseType: !3743, size: 64, offset: 960)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3740, file: !3733, line: 146, baseType: !3807, size: 64, offset: 1024)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!180, !3754, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3733, line: 29, size: 128, elements: !3812)
!3812 = !{!3813, !3814, !3815}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3811, file: !3733, line: 30, baseType: !7, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3811, file: !3733, line: 31, baseType: !7, size: 32, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3811, file: !3733, line: 32, baseType: !3754, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3740, file: !3733, line: 148, baseType: !3817, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!180, !3754, !283}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3732, file: !3733, line: 20, baseType: !283, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3724, file: !3725, line: 57, baseType: !3822, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3725, line: 31, size: 704, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3823, file: !3725, line: 32, baseType: !341, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3823, file: !3725, line: 33, baseType: !180, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3823, file: !3725, line: 34, baseType: !176, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3823, file: !3725, line: 35, baseType: !3822, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3823, file: !3725, line: 43, baseType: !408, size: 448, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3724, file: !3725, line: 58, baseType: !3822, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3724, file: !3725, line: 59, baseType: !3723, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3724, file: !3725, line: 60, baseType: !3723, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3724, file: !3725, line: 61, baseType: !3723, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3724, file: !3725, line: 63, baseType: !287, size: 512, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3724, file: !3725, line: 65, baseType: !189, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3724, file: !3725, line: 66, baseType: !176, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3717, file: !94, line: 108, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!180, !3709, !3841, !93}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3843)
!3843 = !{!3844, !3845, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3842, file: !94, line: 64, baseType: !3736, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3842, file: !94, line: 65, baseType: !180, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3842, file: !94, line: 66, baseType: !3847, size: 512, offset: 96)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 512, elements: !1792)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3717, file: !94, line: 110, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!180, !3709, !7, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !195, line: 164, baseType: !189)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3717, file: !94, line: 111, baseType: !3854, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3709, !7}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3717, file: !94, line: 112, baseType: !3858, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!180, !3709, !3723, !3861, !7, !188, !2741}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3717, file: !94, line: 117, baseType: !3864, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!180, !3709, !7, !7, !176}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3717, file: !94, line: 119, baseType: !3868, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3709, !7, !7}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3717, file: !94, line: 121, baseType: !3872, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!180, !3709, !3875, !547}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3877, line: 11, flags: DIFlagFwdDecl)
!3877 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3717, file: !94, line: 122, baseType: !3879, size: 64, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{null, !3709, !3875}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3717, file: !94, line: 123, baseType: !3883, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!180, !3709, !3841, !188, !2741}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3710, file: !94, line: 166, baseType: !176, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3710, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3710, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3710, file: !94, line: 171, baseType: !3736, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3710, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3710, file: !94, line: 173, baseType: !3892, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3710, file: !94, line: 175, baseType: !3709, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3710, file: !94, line: 182, baseType: !3852, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3710, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3710, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3710, file: !94, line: 185, baseType: !798, size: 128, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3710, file: !94, line: 186, baseType: !1231, size: 192, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3710, file: !94, line: 187, baseType: !3901, offset: 1088)
!3901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2389)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !284, file: !73, line: 499, baseType: !194, size: 128, offset: 4224)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !284, file: !73, line: 502, baseType: !3904, size: 64, offset: 4352)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3906)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !284, file: !73, line: 504, baseType: !3908, size: 64, offset: 4416)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !284, file: !73, line: 505, baseType: !219, size: 64, offset: 4480)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !284, file: !73, line: 510, baseType: !219, size: 64, offset: 4544)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !284, file: !73, line: 511, baseType: !3912, size: 64, offset: 4608)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !284, file: !73, line: 513, baseType: !3916, size: 64, offset: 4672)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3917, file: !73, line: 293, baseType: !7, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3917, file: !73, line: 294, baseType: !189, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !284, file: !73, line: 515, baseType: !194, size: 128, offset: 4736)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !284, file: !73, line: 526, baseType: !3923, offset: 4864)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3924, line: 5, elements: !314)
!3924 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !284, file: !73, line: 528, baseType: !3723, size: 64, offset: 4864)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !284, file: !73, line: 529, baseType: !3736, size: 64, offset: 4928)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !284, file: !73, line: 534, baseType: !570, size: 32, offset: 4992)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !284, file: !73, line: 535, baseType: !184, size: 32, offset: 5024)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !284, file: !73, line: 537, baseType: !300, offset: 5056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !284, file: !73, line: 538, baseType: !194, size: 128, offset: 5056)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !284, file: !73, line: 540, baseType: !3932, size: 64, offset: 5184)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3934, line: 54, size: 960, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3946, !3950, !3951, !3952, !3953, !3957, !3961, !3962}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3933, file: !3934, line: 55, baseType: !224, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3933, file: !3934, line: 56, baseType: !690, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3933, file: !3934, line: 58, baseType: !393, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3933, file: !3934, line: 59, baseType: !393, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3933, file: !3934, line: 60, baseType: !293, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3933, file: !3934, line: 62, baseType: !3443, size: 64, offset: 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3933, file: !3934, line: 63, baseType: !3943, size: 64, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!341, !283, !3450}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3933, file: !3934, line: 65, baseType: !3947, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3932}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3933, file: !3934, line: 66, baseType: !3452, size: 64, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3933, file: !3934, line: 68, baseType: !3461, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3933, file: !3934, line: 70, baseType: !3247, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3933, file: !3934, line: 71, baseType: !3954, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!2185, !283}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3933, file: !3934, line: 73, baseType: !3958, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !283, !3279, !3280}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3933, file: !3934, line: 75, baseType: !3456, size: 64, offset: 832)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3933, file: !3934, line: 77, baseType: !3573, size: 64, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !284, file: !73, line: 541, baseType: !393, size: 64, offset: 5248)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !284, file: !73, line: 543, baseType: !3452, size: 64, offset: 5312)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !284, file: !73, line: 544, baseType: !3966, size: 64, offset: 5376)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !284, file: !73, line: 545, baseType: !3969, size: 64, offset: 5440)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !284, file: !73, line: 547, baseType: !547, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !284, file: !73, line: 548, baseType: !547, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !284, file: !73, line: 549, baseType: !547, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !284, file: !73, line: 550, baseType: !547, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !202, file: !159, line: 635, baseType: !284, size: 5568, offset: 2304)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !202, file: !159, line: 636, baseType: !407, size: 64, offset: 7872)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !202, file: !159, line: 637, baseType: !407, size: 64, offset: 7936)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !202, file: !159, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !191, file: !159, line: 312, baseType: !201, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !191, file: !159, line: 314, baseType: !176, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !191, file: !159, line: 315, baseType: !266, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !191, file: !159, line: 316, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !159, line: 69, size: 832, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3991, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3984, file: !159, line: 70, baseType: !201, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3984, file: !159, line: 71, baseType: !194, size: 128, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3984, file: !159, line: 72, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !159, line: 72, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3984, file: !159, line: 73, baseType: !270, size: 8, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3984, file: !159, line: 74, baseType: !287, size: 512, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !191, file: !159, line: 318, baseType: !7, size: 32, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !191, file: !159, line: 319, baseType: !279, size: 16, offset: 480)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !191, file: !159, line: 320, baseType: !279, size: 16, offset: 496)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !191, file: !159, line: 321, baseType: !279, size: 16, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !191, file: !159, line: 322, baseType: !279, size: 16, offset: 528)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !191, file: !159, line: 323, baseType: !7, size: 32, offset: 544)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !191, file: !159, line: 324, baseType: !1410, size: 8, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !191, file: !159, line: 325, baseType: !1410, size: 8, offset: 584)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !191, file: !159, line: 330, baseType: !1410, size: 8, offset: 592)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !191, file: !159, line: 331, baseType: !1410, size: 8, offset: 600)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !191, file: !159, line: 332, baseType: !1410, size: 8, offset: 608)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !191, file: !159, line: 333, baseType: !1410, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !191, file: !159, line: 334, baseType: !1410, size: 8, offset: 624)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !191, file: !159, line: 335, baseType: !1410, size: 8, offset: 632)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !191, file: !159, line: 336, baseType: !919, size: 16, offset: 640)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !191, file: !159, line: 337, baseType: !188, size: 64, offset: 704)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !191, file: !159, line: 339, baseType: !4010, size: 64, offset: 768)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !159, line: 858, size: 2048, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4027, !4031, !4035, !4039, !4043, !4044, !4048, !4067, !4068, !4069}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4011, file: !159, line: 859, baseType: !194, size: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4011, file: !159, line: 860, baseType: !224, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4011, file: !159, line: 861, baseType: !4016, size: 64, offset: 192)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4018)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3514, line: 38, size: 256, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025, !4026}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4018, file: !3514, line: 39, baseType: !186, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4018, file: !3514, line: 39, baseType: !186, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4018, file: !3514, line: 40, baseType: !186, size: 32, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4018, file: !3514, line: 40, baseType: !186, size: 32, offset: 96)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4018, file: !3514, line: 41, baseType: !186, size: 32, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4018, file: !3514, line: 41, baseType: !186, size: 32, offset: 160)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4018, file: !3514, line: 42, baseType: !3533, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4011, file: !159, line: 862, baseType: !4028, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!180, !190, !4016}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4011, file: !159, line: 863, baseType: !4032, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !190}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4011, file: !159, line: 864, baseType: !4036, size: 64, offset: 384)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!180, !190, !3544}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4011, file: !159, line: 865, baseType: !4040, size: 64, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!180, !190}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4011, file: !159, line: 866, baseType: !4032, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4011, file: !159, line: 867, baseType: !4045, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!180, !190, !180}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4011, file: !159, line: 868, baseType: !4049, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4051)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !159, line: 795, size: 384, elements: !4052)
!4052 = !{!4053, !4059, !4063, !4064, !4065, !4066}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4051, file: !159, line: 797, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!4057, !190, !4058}
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !159, line: 772, baseType: !7)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !159, line: 180, baseType: !7)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4051, file: !159, line: 801, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!4057, !190}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4051, file: !159, line: 804, baseType: !4060, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4051, file: !159, line: 807, baseType: !4032, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4051, file: !159, line: 808, baseType: !4032, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4051, file: !159, line: 811, baseType: !4032, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4011, file: !159, line: 869, baseType: !393, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4011, file: !159, line: 870, baseType: !3502, size: 1152, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4011, file: !159, line: 871, baseType: !4070, size: 128, offset: 1920)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !159, line: 759, size: 128, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4070, file: !159, line: 760, baseType: !300)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4070, file: !159, line: 761, baseType: !194, size: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !191, file: !159, line: 340, baseType: !219, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !191, file: !159, line: 346, baseType: !3917, size: 128, offset: 896)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !191, file: !159, line: 348, baseType: !4077, size: 32, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !159, line: 155, baseType: !180)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !191, file: !159, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !191, file: !159, line: 352, baseType: !1410, size: 8, offset: 1064)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !191, file: !159, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !191, file: !159, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !191, file: !159, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !191, file: !159, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !191, file: !159, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !191, file: !159, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !191, file: !159, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !191, file: !159, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !191, file: !159, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !191, file: !159, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !191, file: !159, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !191, file: !159, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !191, file: !159, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !191, file: !159, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !191, file: !159, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !191, file: !159, line: 376, baseType: !7, size: 32, offset: 1120)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !191, file: !159, line: 377, baseType: !7, size: 32, offset: 1152)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !191, file: !159, line: 380, baseType: !4098, size: 64, offset: 1216)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !159, line: 303, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !191, file: !159, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !191, file: !159, line: 383, baseType: !180, size: 32, offset: 1312)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !191, file: !159, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !191, file: !159, line: 387, baseType: !4058, size: 32, offset: 1376)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !159, line: 388, baseType: !284, size: 5568, offset: 1408)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !191, file: !159, line: 390, baseType: !180, size: 32, offset: 6976)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !191, file: !159, line: 396, baseType: !7, size: 32, offset: 7008)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !191, file: !159, line: 397, baseType: !4108, size: 8704, offset: 7040)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 8704, elements: !4109)
!4109 = !{!4110}
!4110 = !DISubrange(count: 17)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !191, file: !159, line: 399, baseType: !547, size: 8, offset: 15744)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !191, file: !159, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !191, file: !159, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !191, file: !159, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !191, file: !159, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !191, file: !159, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !191, file: !159, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !191, file: !159, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !191, file: !159, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !191, file: !159, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !191, file: !159, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !191, file: !159, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !191, file: !159, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !191, file: !159, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !191, file: !159, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !191, file: !159, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !191, file: !159, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !191, file: !159, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !191, file: !159, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !191, file: !159, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !191, file: !159, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !191, file: !159, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !191, file: !159, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !191, file: !159, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !191, file: !159, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !191, file: !159, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !191, file: !159, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !191, file: !159, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !191, file: !159, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !191, file: !159, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !191, file: !159, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !191, file: !159, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !191, file: !159, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !191, file: !159, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !191, file: !159, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !191, file: !159, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !191, file: !159, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !191, file: !159, line: 450, baseType: !4149, size: 16, offset: 15792)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !159, line: 206, baseType: !279)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !191, file: !159, line: 451, baseType: !807, size: 32, offset: 15808)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !191, file: !159, line: 453, baseType: !3847, size: 512, offset: 15840)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !191, file: !159, line: 454, baseType: !695, size: 64, offset: 16384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !191, file: !159, line: 455, baseType: !407, size: 64, offset: 16448)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !191, file: !159, line: 456, baseType: !180, size: 32, offset: 16512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !191, file: !159, line: 457, baseType: !4156, size: 1088, offset: 16576)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1088, elements: !4109)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !191, file: !159, line: 458, baseType: !4156, size: 1088, offset: 17664)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !191, file: !159, line: 469, baseType: !393, size: 64, offset: 18752)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !191, file: !159, line: 471, baseType: !4160, size: 64, offset: 18816)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !159, line: 304, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !159, line: 478, baseType: !4163, size: 64, offset: 18880)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !159, line: 478, size: 64, elements: !4164)
!4164 = !{!4165, !4168}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4163, file: !159, line: 479, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !159, line: 305, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4163, file: !159, line: 480, baseType: !190, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !191, file: !159, line: 482, baseType: !919, size: 16, offset: 18944)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !191, file: !159, line: 483, baseType: !1410, size: 8, offset: 18960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !191, file: !159, line: 497, baseType: !919, size: 16, offset: 18976)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !191, file: !159, line: 498, baseType: !218, size: 64, offset: 19008)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !191, file: !159, line: 499, baseType: !387, size: 64, offset: 19072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !191, file: !159, line: 500, baseType: !341, size: 64, offset: 19136)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !191, file: !159, line: 502, baseType: !189, size: 64, offset: 19200)
!4176 = !{!4177, !0}
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "usb_hcd_pci_pm_ops", scope: !2, file: !3, line: 612, type: !3457, isLocal: false, isDefinition: true)
!4179 = !{!"rsp"}
!4180 = !{i32 7, !"Dwarf Version", i32 4}
!4181 = !{i32 2, !"Debug Info Version", i32 3}
!4182 = !{i32 1, !"wchar_size", i32 2}
!4183 = !{i32 1, !"Code Model", i32 2}
!4184 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4185 = distinct !DISubprogram(name: "usb_hcd_pci_probe", scope: !3, file: !3, line: 173, type: !4186, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!180, !190, !4016, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4190)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !147, line: 249, size: 2880, elements: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4657, !4658, !4662, !4663, !4667, !4668, !4672, !4673, !4674, !4678, !4682, !4683, !4687, !4691, !4692, !4696, !4700, !4701, !4702, !4706, !4710, !4714, !4718, !4719, !4723, !4727, !4732, !4736, !4740, !4741, !4742, !4743, !4744, !4745, !4749, !4750, !4751, !4755, !4759, !4760, !4761}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4190, file: !147, line: 250, baseType: !224, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4190, file: !147, line: 251, baseType: !224, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4190, file: !147, line: 252, baseType: !387, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4190, file: !147, line: 255, baseType: !4196, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !108, line: 17, baseType: !107)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !147, line: 81, size: 4672, elements: !4202)
!4202 = !{!4203, !4516, !4517, !4518, !4519, !4523, !4524, !4586, !4587, !4588, !4589, !4592, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4641, !4642, !4644, !4645, !4646, !4647, !4652, !4653, !4656}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4201, file: !147, line: 86, baseType: !4204, size: 960)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !135, line: 424, size: 960, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4224, !4511, !4512, !4513, !4514, !4515}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4204, file: !135, line: 425, baseType: !283, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !4204, file: !135, line: 426, baseType: !283, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !4204, file: !135, line: 427, baseType: !180, size: 32, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4204, file: !135, line: 428, baseType: !224, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !4204, file: !135, line: 429, baseType: !1410, size: 8, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !4204, file: !135, line: 433, baseType: !1410, size: 8, offset: 264)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !4204, file: !135, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !4204, file: !135, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !4204, file: !135, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !4204, file: !135, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !4204, file: !135, line: 442, baseType: !7, size: 32, offset: 288)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !4204, file: !135, line: 444, baseType: !180, size: 32, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !4204, file: !135, line: 446, baseType: !1231, size: 192, offset: 384)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !4204, file: !135, line: 448, baseType: !4220, size: 128, offset: 576)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !135, line: 417, size: 128, elements: !4221)
!4221 = !{!4222}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4220, file: !135, line: 418, baseType: !4223, size: 128)
!4223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1626)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !4204, file: !135, line: 449, baseType: !4225, size: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !135, line: 631, size: 10624, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4246, !4247, !4249, !4250, !4252, !4293, !4294, !4311, !4372, !4454, !4455, !4457, !4458, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4493, !4494, !4495, !4500, !4507, !4508, !4509, !4510}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4226, file: !135, line: 632, baseType: !180, size: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4226, file: !135, line: 633, baseType: !1791, size: 128, offset: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4226, file: !135, line: 634, baseType: !184, size: 32, offset: 160)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4226, file: !135, line: 635, baseType: !113, size: 32, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4226, file: !135, line: 636, baseType: !125, size: 32, offset: 224)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4226, file: !135, line: 637, baseType: !7, size: 32, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4226, file: !135, line: 638, baseType: !7, size: 32, offset: 288)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4226, file: !135, line: 640, baseType: !4236, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !147, line: 554, size: 576, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4237, file: !147, line: 555, baseType: !4225, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !4237, file: !147, line: 556, baseType: !180, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !4237, file: !147, line: 557, baseType: !7, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4237, file: !147, line: 558, baseType: !176, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4237, file: !147, line: 561, baseType: !300, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !4237, file: !147, line: 562, baseType: !194, size: 128, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !4237, file: !147, line: 563, baseType: !2016, size: 256, offset: 320)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4226, file: !135, line: 641, baseType: !180, size: 32, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4226, file: !135, line: 643, baseType: !4248, size: 64, offset: 416)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1626)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4226, file: !135, line: 645, baseType: !4225, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4226, file: !135, line: 646, baseType: !4251, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4226, file: !135, line: 647, baseType: !4253, size: 640, offset: 640)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !135, line: 67, size: 640, elements: !4254)
!4254 = !{!4255, !4267, !4275, !4283, !4284, !4285, !4288, !4290, !4291, !4292}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4253, file: !135, line: 68, baseType: !4256, size: 72)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !114, line: 407, size: 72, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4264, !4265, !4266}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4256, file: !114, line: 408, baseType: !1411, size: 8)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4256, file: !114, line: 409, baseType: !1411, size: 8, offset: 8)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4256, file: !114, line: 411, baseType: !1411, size: 8, offset: 16)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4256, file: !114, line: 412, baseType: !1411, size: 8, offset: 24)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4256, file: !114, line: 413, baseType: !4263, size: 16, offset: 32)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2964, line: 29, baseType: !920)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4256, file: !114, line: 414, baseType: !1411, size: 8, offset: 48)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4256, file: !114, line: 418, baseType: !1411, size: 8, offset: 56)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4256, file: !114, line: 419, baseType: !1411, size: 8, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4253, file: !135, line: 69, baseType: !4268, size: 48, offset: 72)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !114, line: 689, size: 48, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4268, file: !114, line: 690, baseType: !1411, size: 8)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4268, file: !114, line: 691, baseType: !1411, size: 8, offset: 8)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4268, file: !114, line: 693, baseType: !1411, size: 8, offset: 16)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4268, file: !114, line: 694, baseType: !1411, size: 8, offset: 24)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4268, file: !114, line: 695, baseType: !4263, size: 16, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4253, file: !135, line: 70, baseType: !4276, size: 64, offset: 120)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !114, line: 677, size: 64, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4276, file: !114, line: 678, baseType: !1411, size: 8)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4276, file: !114, line: 679, baseType: !1411, size: 8, offset: 8)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4276, file: !114, line: 680, baseType: !4263, size: 16, offset: 16)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4276, file: !114, line: 681, baseType: !4282, size: 32, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2964, line: 31, baseType: !186)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4253, file: !135, line: 71, baseType: !194, size: 128, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4253, file: !135, line: 72, baseType: !176, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4253, file: !135, line: 73, baseType: !4286, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !135, line: 48, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4253, file: !135, line: 75, baseType: !4289, size: 64, offset: 448)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4253, file: !135, line: 76, baseType: !180, size: 32, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4253, file: !135, line: 77, baseType: !180, size: 32, offset: 544)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4253, file: !135, line: 78, baseType: !180, size: 32, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4226, file: !135, line: 649, baseType: !284, size: 5568, offset: 1280)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4226, file: !135, line: 651, baseType: !4295, size: 144, offset: 6848)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !114, line: 289, size: 144, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4295, file: !114, line: 290, baseType: !1411, size: 8)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4295, file: !114, line: 291, baseType: !1411, size: 8, offset: 8)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4295, file: !114, line: 293, baseType: !4263, size: 16, offset: 16)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4295, file: !114, line: 294, baseType: !1411, size: 8, offset: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4295, file: !114, line: 295, baseType: !1411, size: 8, offset: 40)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4295, file: !114, line: 296, baseType: !1411, size: 8, offset: 48)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4295, file: !114, line: 297, baseType: !1411, size: 8, offset: 56)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4295, file: !114, line: 298, baseType: !4263, size: 16, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4295, file: !114, line: 299, baseType: !4263, size: 16, offset: 80)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4295, file: !114, line: 300, baseType: !4263, size: 16, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4295, file: !114, line: 301, baseType: !1411, size: 8, offset: 112)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4295, file: !114, line: 302, baseType: !1411, size: 8, offset: 120)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4295, file: !114, line: 303, baseType: !1411, size: 8, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4295, file: !114, line: 304, baseType: !1411, size: 8, offset: 136)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4226, file: !135, line: 652, baseType: !4312, size: 64, offset: 7040)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !135, line: 396, size: 384, elements: !4314)
!4314 = !{!4315, !4323, !4331, !4343, !4356, !4365}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4313, file: !135, line: 397, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !114, line: 844, size: 40, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4317, file: !114, line: 845, baseType: !1411, size: 8)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4317, file: !114, line: 846, baseType: !1411, size: 8, offset: 8)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4317, file: !114, line: 848, baseType: !4263, size: 16, offset: 16)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4317, file: !114, line: 849, baseType: !1411, size: 8, offset: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4313, file: !135, line: 400, baseType: !4324, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !114, line: 895, size: 56, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4325, file: !114, line: 896, baseType: !1411, size: 8)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4325, file: !114, line: 897, baseType: !1411, size: 8, offset: 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4325, file: !114, line: 898, baseType: !1411, size: 8, offset: 16)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4325, file: !114, line: 899, baseType: !4282, size: 32, offset: 24)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4313, file: !135, line: 401, baseType: !4332, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !114, line: 917, size: 80, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4333, file: !114, line: 918, baseType: !1411, size: 8)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4333, file: !114, line: 919, baseType: !1411, size: 8, offset: 8)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4333, file: !114, line: 920, baseType: !1411, size: 8, offset: 16)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4333, file: !114, line: 921, baseType: !1411, size: 8, offset: 24)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4333, file: !114, line: 923, baseType: !4263, size: 16, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4333, file: !114, line: 928, baseType: !1411, size: 8, offset: 48)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4333, file: !114, line: 929, baseType: !1411, size: 8, offset: 56)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4333, file: !114, line: 930, baseType: !4263, size: 16, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4313, file: !135, line: 402, baseType: !4344, size: 64, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !114, line: 955, size: 128, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4345, file: !114, line: 956, baseType: !1411, size: 8)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4345, file: !114, line: 957, baseType: !1411, size: 8, offset: 8)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4345, file: !114, line: 958, baseType: !1411, size: 8, offset: 16)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4345, file: !114, line: 959, baseType: !1411, size: 8, offset: 24)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4345, file: !114, line: 960, baseType: !4282, size: 32, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4345, file: !114, line: 963, baseType: !4263, size: 16, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4345, file: !114, line: 967, baseType: !4263, size: 16, offset: 80)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4345, file: !114, line: 968, baseType: !4355, size: 32, offset: 96)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4282, size: 32, elements: !1429)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4313, file: !135, line: 403, baseType: !4357, size: 64, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !114, line: 940, size: 160, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4358, file: !114, line: 941, baseType: !1411, size: 8)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4358, file: !114, line: 942, baseType: !1411, size: 8, offset: 8)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4358, file: !114, line: 943, baseType: !1411, size: 8, offset: 16)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4358, file: !114, line: 944, baseType: !1411, size: 8, offset: 24)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4358, file: !114, line: 945, baseType: !2765, size: 128, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4313, file: !135, line: 404, baseType: !4366, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !114, line: 1080, size: 24, elements: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4367, file: !114, line: 1081, baseType: !1411, size: 8)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4367, file: !114, line: 1082, baseType: !1411, size: 8, offset: 8)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4367, file: !114, line: 1083, baseType: !1411, size: 8, offset: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4226, file: !135, line: 653, baseType: !4373, size: 64, offset: 7104)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !135, line: 374, size: 5440, elements: !4375)
!4375 = !{!4376, !4387, !4388, !4401, !4443, !4452, !4453}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4374, file: !135, line: 375, baseType: !4377, size: 72)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !114, line: 349, size: 72, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4377, file: !114, line: 350, baseType: !1411, size: 8)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4377, file: !114, line: 351, baseType: !1411, size: 8, offset: 8)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4377, file: !114, line: 353, baseType: !4263, size: 16, offset: 16)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4377, file: !114, line: 354, baseType: !1411, size: 8, offset: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4377, file: !114, line: 355, baseType: !1411, size: 8, offset: 40)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4377, file: !114, line: 356, baseType: !1411, size: 8, offset: 48)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4377, file: !114, line: 357, baseType: !1411, size: 8, offset: 56)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4377, file: !114, line: 358, baseType: !1411, size: 8, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4374, file: !135, line: 377, baseType: !341, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4374, file: !135, line: 381, baseType: !4389, size: 1024, offset: 192)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4390, size: 1024, elements: !1792)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !114, line: 783, size: 64, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4391, file: !114, line: 784, baseType: !1411, size: 8)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4391, file: !114, line: 785, baseType: !1411, size: 8, offset: 8)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4391, file: !114, line: 787, baseType: !1411, size: 8, offset: 16)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4391, file: !114, line: 788, baseType: !1411, size: 8, offset: 24)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4391, file: !114, line: 789, baseType: !1411, size: 8, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4391, file: !114, line: 790, baseType: !1411, size: 8, offset: 40)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4391, file: !114, line: 791, baseType: !1411, size: 8, offset: 48)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4391, file: !114, line: 792, baseType: !1411, size: 8, offset: 56)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4374, file: !135, line: 385, baseType: !4402, size: 2048, offset: 1216)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 2048, elements: !2288)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !135, line: 232, size: 6272, elements: !4405)
!4405 = !{!4406, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4404, file: !135, line: 235, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !135, line: 82, size: 320, elements: !4409)
!4409 = !{!4410, !4422, !4423, !4424, !4426}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4408, file: !135, line: 83, baseType: !4411, size: 72)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !114, line: 389, size: 72, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4411, file: !114, line: 390, baseType: !1411, size: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4411, file: !114, line: 391, baseType: !1411, size: 8, offset: 8)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4411, file: !114, line: 393, baseType: !1411, size: 8, offset: 16)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4411, file: !114, line: 394, baseType: !1411, size: 8, offset: 24)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4411, file: !114, line: 395, baseType: !1411, size: 8, offset: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4411, file: !114, line: 396, baseType: !1411, size: 8, offset: 40)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4411, file: !114, line: 397, baseType: !1411, size: 8, offset: 48)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4411, file: !114, line: 398, baseType: !1411, size: 8, offset: 56)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4411, file: !114, line: 399, baseType: !1411, size: 8, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4408, file: !135, line: 85, baseType: !180, size: 32, offset: 96)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4408, file: !135, line: 86, baseType: !4289, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4408, file: !135, line: 91, baseType: !4425, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4408, file: !135, line: 93, baseType: !341, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4404, file: !135, line: 237, baseType: !4407, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4404, file: !135, line: 239, baseType: !7, size: 32, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4404, file: !135, line: 243, baseType: !4390, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4404, file: !135, line: 245, baseType: !180, size: 32, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4404, file: !135, line: 247, baseType: !134, size: 32, offset: 288)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4404, file: !135, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4404, file: !135, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4404, file: !135, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4404, file: !135, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4404, file: !135, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4404, file: !135, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4404, file: !135, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4404, file: !135, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4404, file: !135, line: 257, baseType: !284, size: 5568, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4404, file: !135, line: 258, baseType: !283, size: 64, offset: 5952)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4404, file: !135, line: 259, baseType: !2016, size: 256, offset: 6016)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4374, file: !135, line: 389, baseType: !4444, size: 2048, offset: 3264)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4445, size: 2048, elements: !2288)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !135, line: 322, size: 64, elements: !4447)
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4446, file: !135, line: 323, baseType: !7, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4446, file: !135, line: 324, baseType: !3421, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4446, file: !135, line: 328, baseType: !4451, offset: 64)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4408, elements: !2389)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4374, file: !135, line: 391, baseType: !4289, size: 64, offset: 5312)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4374, file: !135, line: 392, baseType: !180, size: 32, offset: 5376)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4226, file: !135, line: 655, baseType: !4373, size: 64, offset: 7168)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4226, file: !135, line: 656, baseType: !4456, size: 1024, offset: 7232)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 1024, elements: !1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4226, file: !135, line: 657, baseType: !4456, size: 1024, offset: 8256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4226, file: !135, line: 659, baseType: !4459, size: 64, offset: 9280)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4226, file: !135, line: 661, baseType: !279, size: 16, offset: 9344)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4226, file: !135, line: 662, baseType: !1410, size: 8, offset: 9360)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4226, file: !135, line: 663, baseType: !1410, size: 8, offset: 9368)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4226, file: !135, line: 664, baseType: !1410, size: 8, offset: 9376)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4226, file: !135, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4226, file: !135, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4226, file: !135, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4226, file: !135, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4226, file: !135, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !4226, file: !135, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4226, file: !135, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4226, file: !135, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4226, file: !135, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4226, file: !135, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4226, file: !135, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4226, file: !135, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4226, file: !135, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4226, file: !135, line: 679, baseType: !180, size: 32, offset: 9408)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4226, file: !135, line: 682, baseType: !341, size: 64, offset: 9472)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4226, file: !135, line: 683, baseType: !341, size: 64, offset: 9536)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4226, file: !135, line: 684, baseType: !341, size: 64, offset: 9600)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4226, file: !135, line: 686, baseType: !194, size: 128, offset: 9664)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4226, file: !135, line: 688, baseType: !180, size: 32, offset: 9792)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4226, file: !135, line: 690, baseType: !184, size: 32, offset: 9824)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4226, file: !135, line: 691, baseType: !807, size: 32, offset: 9856)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4226, file: !135, line: 693, baseType: !189, size: 64, offset: 9920)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4226, file: !135, line: 696, baseType: !189, size: 64, offset: 9984)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4226, file: !135, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4226, file: !135, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4226, file: !135, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !4226, file: !135, line: 702, baseType: !4491, size: 64, offset: 10112)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !135, line: 28, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4226, file: !135, line: 703, baseType: !180, size: 32, offset: 10176)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4226, file: !135, line: 704, baseType: !141, size: 32, offset: 10208)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4226, file: !135, line: 705, baseType: !4496, size: 64, offset: 10240)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !135, line: 502, size: 64, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4496, file: !135, line: 506, baseType: !7, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4496, file: !135, line: 512, baseType: !180, size: 32, offset: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4226, file: !135, line: 706, baseType: !4501, size: 128, offset: 10304)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !135, line: 522, size: 128, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4501, file: !135, line: 529, baseType: !7, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4501, file: !135, line: 535, baseType: !7, size: 32, offset: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4501, file: !135, line: 545, baseType: !7, size: 32, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4501, file: !135, line: 551, baseType: !180, size: 32, offset: 96)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4226, file: !135, line: 707, baseType: !4501, size: 128, offset: 10432)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4226, file: !135, line: 708, baseType: !7, size: 32, offset: 10560)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4226, file: !135, line: 710, baseType: !919, size: 16, offset: 10592)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4226, file: !135, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !4204, file: !135, line: 450, baseType: !4251, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !4204, file: !135, line: 452, baseType: !180, size: 32, offset: 832)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !4204, file: !135, line: 459, baseType: !180, size: 32, offset: 864)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !4204, file: !135, line: 460, baseType: !180, size: 32, offset: 896)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !4204, file: !135, line: 462, baseType: !7, size: 32, offset: 928)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4201, file: !147, line: 87, baseType: !3421, size: 32, offset: 960)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4201, file: !147, line: 89, baseType: !224, size: 64, offset: 1024)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4201, file: !147, line: 90, baseType: !180, size: 32, offset: 1088)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4201, file: !147, line: 94, baseType: !4520, size: 192, offset: 1120)
!4520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 192, elements: !4521)
!4521 = !{!4522}
!4522 = !DISubrange(count: 24)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !4201, file: !147, line: 96, baseType: !3621, size: 320, offset: 1344)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !4201, file: !147, line: 97, baseType: !4525, size: 64, offset: 1664)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !135, line: 1561, size: 1472, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4578}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4526, file: !135, line: 1563, baseType: !3421, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4526, file: !135, line: 1564, baseType: !180, size: 32, offset: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4526, file: !135, line: 1565, baseType: !176, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4526, file: !135, line: 1566, baseType: !807, size: 32, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4526, file: !135, line: 1567, baseType: !807, size: 32, offset: 160)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4526, file: !135, line: 1570, baseType: !194, size: 128, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4526, file: !135, line: 1572, baseType: !194, size: 128, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4526, file: !135, line: 1573, baseType: !4536, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !135, line: 1360, size: 320, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4537, file: !135, line: 1361, baseType: !194, size: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4537, file: !135, line: 1362, baseType: !1538, size: 128, offset: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4537, file: !135, line: 1363, baseType: !300, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4537, file: !135, line: 1364, baseType: !807, size: 32, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4537, file: !135, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4526, file: !135, line: 1574, baseType: !4225, size: 64, offset: 512)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4526, file: !135, line: 1575, baseType: !4425, size: 64, offset: 576)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4526, file: !135, line: 1576, baseType: !7, size: 32, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4526, file: !135, line: 1577, baseType: !7, size: 32, offset: 672)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4526, file: !135, line: 1578, baseType: !180, size: 32, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4526, file: !135, line: 1579, baseType: !7, size: 32, offset: 736)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4526, file: !135, line: 1580, baseType: !176, size: 64, offset: 768)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4526, file: !135, line: 1581, baseType: !980, size: 64, offset: 832)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4526, file: !135, line: 1582, baseType: !4553, size: 64, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4555, line: 11, size: 256, elements: !4556)
!4555 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4556 = !{!4557, !4558, !4559, !4560, !4561}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4554, file: !4555, line: 12, baseType: !189, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4554, file: !4555, line: 13, baseType: !7, size: 32, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4554, file: !4555, line: 14, baseType: !7, size: 32, offset: 96)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4554, file: !4555, line: 15, baseType: !980, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4554, file: !4555, line: 17, baseType: !7, size: 32, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4526, file: !135, line: 1583, baseType: !180, size: 32, offset: 960)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4526, file: !135, line: 1584, baseType: !180, size: 32, offset: 992)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4526, file: !135, line: 1585, baseType: !184, size: 32, offset: 1024)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4526, file: !135, line: 1586, baseType: !184, size: 32, offset: 1056)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4526, file: !135, line: 1587, baseType: !4289, size: 64, offset: 1088)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4526, file: !135, line: 1588, baseType: !980, size: 64, offset: 1152)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4526, file: !135, line: 1589, baseType: !180, size: 32, offset: 1216)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4526, file: !135, line: 1590, baseType: !180, size: 32, offset: 1248)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4526, file: !135, line: 1591, baseType: !180, size: 32, offset: 1280)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4526, file: !135, line: 1593, baseType: !180, size: 32, offset: 1312)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4526, file: !135, line: 1594, baseType: !176, size: 64, offset: 1344)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4526, file: !135, line: 1595, baseType: !4574, size: 64, offset: 1408)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !135, line: 1376, baseType: !4575)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4525}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4526, file: !135, line: 1596, baseType: !4579, offset: 1472)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4580, elements: !2389)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !135, line: 1351, size: 128, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4585}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4580, file: !135, line: 1352, baseType: !7, size: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4580, file: !135, line: 1353, baseType: !7, size: 32, offset: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4580, file: !135, line: 1354, baseType: !7, size: 32, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4580, file: !135, line: 1355, baseType: !180, size: 32, offset: 96)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !4201, file: !147, line: 99, baseType: !2016, size: 256, offset: 1728)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !4201, file: !147, line: 101, baseType: !2016, size: 256, offset: 1984)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4201, file: !147, line: 106, baseType: !4188, size: 64, offset: 2240)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !4201, file: !147, line: 112, baseType: !4590, size: 64, offset: 2304)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !147, line: 112, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !4201, file: !147, line: 113, baseType: !4593, size: 64, offset: 2368)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !147, line: 113, flags: DIFlagFwdDecl)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4201, file: !147, line: 119, baseType: !189, size: 64, offset: 2432)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !4201, file: !147, line: 151, baseType: !146, size: 32, offset: 2496)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !4201, file: !147, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !4201, file: !147, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4201, file: !147, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4201, file: !147, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !4201, file: !147, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !4201, file: !147, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !4201, file: !147, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !4201, file: !147, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !4201, file: !147, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !4201, file: !147, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !4201, file: !147, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !4201, file: !147, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4201, file: !147, line: 176, baseType: !7, size: 32, offset: 2560)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4201, file: !147, line: 177, baseType: !176, size: 64, offset: 2624)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !4201, file: !147, line: 178, baseType: !217, size: 64, offset: 2688)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !4201, file: !147, line: 179, baseType: !217, size: 64, offset: 2752)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !4201, file: !147, line: 180, baseType: !7, size: 32, offset: 2816)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !4201, file: !147, line: 182, baseType: !4615, size: 576, offset: 2880)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !147, line: 67, size: 576, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620, !4640}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4615, file: !147, line: 68, baseType: !547, size: 8)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4615, file: !147, line: 69, baseType: !300, offset: 8)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4615, file: !147, line: 70, baseType: !194, size: 128, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4615, file: !147, line: 71, baseType: !4621, size: 320, offset: 192)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !268, line: 609, size: 320, elements: !4622)
!4622 = !{!4623, !4625, !4626, !4627, !4628, !4639}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4621, file: !268, line: 611, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4621, file: !268, line: 612, baseType: !189, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4621, file: !268, line: 613, baseType: !807, size: 32, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4621, file: !268, line: 614, baseType: !547, size: 8, offset: 160)
!4628 = !DIDerivedType(tag: DW_TAG_member, scope: !4621, file: !268, line: 615, baseType: !4629, size: 64, offset: 192)
!4629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4621, file: !268, line: 615, size: 64, elements: !4630)
!4630 = !{!4631, !4635}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4629, file: !268, line: 616, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !189}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4629, file: !268, line: 617, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4624}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4621, file: !268, line: 619, baseType: !189, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4615, file: !147, line: 72, baseType: !4425, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !4201, file: !147, line: 183, baseType: !4615, size: 576, offset: 3456)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !4201, file: !147, line: 196, baseType: !4643, size: 64, offset: 4032)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !4201, file: !147, line: 197, baseType: !4643, size: 64, offset: 4096)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !4201, file: !147, line: 198, baseType: !4200, size: 64, offset: 4160)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !4201, file: !147, line: 199, baseType: !4200, size: 64, offset: 4224)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4201, file: !147, line: 203, baseType: !4648, size: 256, offset: 4288)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4649, size: 256, elements: !232)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !4651, line: 21, flags: DIFlagFwdDecl)
!4651 = !DIFile(filename: "./include/linux/dmapool.h", directory: "/home/lizy2001/genbc/linux")
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4201, file: !147, line: 205, baseType: !180, size: 32, offset: 4544)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !4201, file: !147, line: 220, baseType: !4654, size: 64, offset: 4608)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !147, line: 220, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !4201, file: !147, line: 231, baseType: !2388, align: 64, offset: 4672)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4190, file: !147, line: 257, baseType: !180, size: 32, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4190, file: !147, line: 271, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!180, !4200}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4190, file: !147, line: 272, baseType: !4659, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4190, file: !147, line: 278, baseType: !4664, size: 64, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!180, !4200, !547}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4190, file: !147, line: 281, baseType: !4664, size: 64, offset: 512)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4190, file: !147, line: 284, baseType: !4669, size: 64, offset: 576)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4200}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4190, file: !147, line: 287, baseType: !4669, size: 64, offset: 640)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4190, file: !147, line: 290, baseType: !4659, size: 64, offset: 704)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4190, file: !147, line: 293, baseType: !4675, size: 64, offset: 768)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!180, !4200, !4525, !803}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4190, file: !147, line: 295, baseType: !4679, size: 64, offset: 832)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!180, !4200, !4525, !180}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4190, file: !147, line: 307, baseType: !4675, size: 64, offset: 896)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4190, file: !147, line: 309, baseType: !4684, size: 64, offset: 960)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !4200, !4525}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4190, file: !147, line: 312, baseType: !4688, size: 64, offset: 1024)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4200, !4425}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4190, file: !147, line: 317, baseType: !4688, size: 64, offset: 1088)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4190, file: !147, line: 321, baseType: !4693, size: 64, offset: 1152)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!180, !4200, !341}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4190, file: !147, line: 322, baseType: !4697, size: 64, offset: 1216)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!180, !4200, !919, !919, !919, !341, !919}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4190, file: !147, line: 325, baseType: !4659, size: 64, offset: 1280)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4190, file: !147, line: 326, baseType: !4659, size: 64, offset: 1344)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4190, file: !147, line: 327, baseType: !4703, size: 64, offset: 1408)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!180, !4200, !7}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4190, file: !147, line: 328, baseType: !4707, size: 64, offset: 1472)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!189, !4200}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4190, file: !147, line: 331, baseType: !4711, size: 64, offset: 1536)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !4200, !180}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4190, file: !147, line: 333, baseType: !4715, size: 64, offset: 1600)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!180, !4200, !180}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4190, file: !147, line: 336, baseType: !4688, size: 64, offset: 1664)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4190, file: !147, line: 341, baseType: !4720, size: 64, offset: 1728)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!180, !4200, !4225}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4190, file: !147, line: 343, baseType: !4724, size: 64, offset: 1792)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4200, !4225}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4190, file: !147, line: 345, baseType: !4728, size: 64, offset: 1856)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!180, !4200, !4225, !4731, !7, !7, !803}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4190, file: !147, line: 351, baseType: !4733, size: 64, offset: 1920)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!180, !4200, !4225, !4731, !7, !803}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4190, file: !147, line: 366, baseType: !4737, size: 64, offset: 1984)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!180, !4200, !4225, !4425}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4190, file: !147, line: 369, baseType: !4737, size: 64, offset: 2048)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4190, file: !147, line: 376, baseType: !4720, size: 64, offset: 2112)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4190, file: !147, line: 384, baseType: !4724, size: 64, offset: 2176)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4190, file: !147, line: 386, baseType: !4720, size: 64, offset: 2240)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4190, file: !147, line: 388, baseType: !4720, size: 64, offset: 2304)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4190, file: !147, line: 392, baseType: !4746, size: 64, offset: 2368)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!180, !4200, !4225, !4236, !803}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4190, file: !147, line: 394, baseType: !4720, size: 64, offset: 2432)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4190, file: !147, line: 398, baseType: !4720, size: 64, offset: 2496)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4190, file: !147, line: 399, baseType: !4752, size: 64, offset: 2560)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!180, !4200, !4225, !180}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4190, file: !147, line: 402, baseType: !4756, size: 64, offset: 2624)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!180, !4200, !4225, !152}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4190, file: !147, line: 407, baseType: !4756, size: 64, offset: 2688)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4190, file: !147, line: 409, baseType: !4715, size: 64, offset: 2752)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4190, file: !147, line: 411, baseType: !4762, size: 64, offset: 2816)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!180, !4200, !180, !547}
!4765 = !DILocalVariable(name: "dev", arg: 1, scope: !4185, file: !3, line: 173, type: !190)
!4766 = !DILocation(line: 173, column: 39, scope: !4185)
!4767 = !DILocalVariable(name: "id", arg: 2, scope: !4185, file: !3, line: 173, type: !4016)
!4768 = !DILocation(line: 173, column: 72, scope: !4185)
!4769 = !DILocalVariable(name: "driver", arg: 3, scope: !4185, file: !3, line: 174, type: !4188)
!4770 = !DILocation(line: 174, column: 33, scope: !4185)
!4771 = !DILocalVariable(name: "hcd", scope: !4185, file: !3, line: 176, type: !4200)
!4772 = !DILocation(line: 176, column: 19, scope: !4185)
!4773 = !DILocalVariable(name: "retval", scope: !4185, file: !3, line: 177, type: !180)
!4774 = !DILocation(line: 177, column: 8, scope: !4185)
!4775 = !DILocalVariable(name: "hcd_irq", scope: !4185, file: !3, line: 178, type: !180)
!4776 = !DILocation(line: 178, column: 8, scope: !4185)
!4777 = !DILocation(line: 180, column: 6, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 180, column: 6)
!4779 = !DILocation(line: 180, column: 6, scope: !4185)
!4780 = !DILocation(line: 181, column: 3, scope: !4778)
!4781 = !DILocation(line: 183, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 183, column: 6)
!4783 = !DILocation(line: 183, column: 6, scope: !4185)
!4784 = !DILocation(line: 184, column: 3, scope: !4782)
!4785 = !DILocation(line: 186, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 186, column: 6)
!4787 = !DILocation(line: 186, column: 6, scope: !4185)
!4788 = !DILocation(line: 187, column: 3, scope: !4786)
!4789 = !DILocation(line: 189, column: 24, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 189, column: 6)
!4791 = !DILocation(line: 189, column: 6, scope: !4790)
!4792 = !DILocation(line: 189, column: 29, scope: !4790)
!4793 = !DILocation(line: 189, column: 6, scope: !4185)
!4794 = !DILocation(line: 190, column: 3, scope: !4790)
!4795 = !DILocation(line: 196, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 196, column: 6)
!4797 = !DILocation(line: 196, column: 15, scope: !4796)
!4798 = !DILocation(line: 196, column: 21, scope: !4796)
!4799 = !DILocation(line: 196, column: 33, scope: !4796)
!4800 = !DILocation(line: 196, column: 6, scope: !4185)
!4801 = !DILocation(line: 197, column: 34, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 196, column: 45)
!4803 = !DILocation(line: 197, column: 12, scope: !4802)
!4804 = !DILocation(line: 197, column: 10, scope: !4802)
!4805 = !DILocation(line: 198, column: 7, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 198, column: 7)
!4807 = !DILocation(line: 198, column: 14, scope: !4806)
!4808 = !DILocation(line: 198, column: 7, scope: !4802)
!4809 = !DILocation(line: 199, column: 4, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 198, column: 19)
!4811 = !DILocation(line: 202, column: 11, scope: !4810)
!4812 = !DILocation(line: 203, column: 4, scope: !4810)
!4813 = !DILocation(line: 205, column: 28, scope: !4802)
!4814 = !DILocation(line: 205, column: 13, scope: !4802)
!4815 = !DILocation(line: 205, column: 11, scope: !4802)
!4816 = !DILocation(line: 206, column: 2, scope: !4802)
!4817 = !DILocation(line: 208, column: 23, scope: !4185)
!4818 = !DILocation(line: 208, column: 32, scope: !4185)
!4819 = !DILocation(line: 208, column: 37, scope: !4185)
!4820 = !DILocation(line: 208, column: 51, scope: !4185)
!4821 = !DILocation(line: 208, column: 42, scope: !4185)
!4822 = !DILocation(line: 208, column: 8, scope: !4185)
!4823 = !DILocation(line: 208, column: 6, scope: !4185)
!4824 = !DILocation(line: 209, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 209, column: 6)
!4826 = !DILocation(line: 209, column: 6, scope: !4185)
!4827 = !DILocation(line: 210, column: 10, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 209, column: 12)
!4829 = !DILocation(line: 211, column: 3, scope: !4828)
!4830 = !DILocation(line: 214, column: 57, scope: !4185)
!4831 = !DILocation(line: 214, column: 25, scope: !4185)
!4832 = !DILocation(line: 214, column: 62, scope: !4185)
!4833 = !DILocation(line: 215, column: 4, scope: !4185)
!4834 = !DILocation(line: 215, column: 12, scope: !4185)
!4835 = !DILocation(line: 215, column: 18, scope: !4185)
!4836 = !DILocation(line: 0, scope: !4185)
!4837 = !DILocation(line: 214, column: 24, scope: !4185)
!4838 = !DILocation(line: 214, column: 2, scope: !4185)
!4839 = !DILocation(line: 214, column: 7, scope: !4185)
!4840 = !DILocation(line: 214, column: 22, scope: !4185)
!4841 = !DILocation(line: 217, column: 6, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 217, column: 6)
!4843 = !DILocation(line: 217, column: 14, scope: !4842)
!4844 = !DILocation(line: 217, column: 20, scope: !4842)
!4845 = !DILocation(line: 217, column: 6, scope: !4185)
!4846 = !DILocation(line: 219, column: 21, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 217, column: 34)
!4848 = !DILocation(line: 219, column: 3, scope: !4847)
!4849 = !DILocation(line: 219, column: 8, scope: !4847)
!4850 = !DILocation(line: 219, column: 19, scope: !4847)
!4851 = !DILocation(line: 220, column: 19, scope: !4847)
!4852 = !DILocation(line: 220, column: 3, scope: !4847)
!4853 = !DILocation(line: 220, column: 8, scope: !4847)
!4854 = !DILocation(line: 220, column: 17, scope: !4847)
!4855 = !DILocation(line: 221, column: 8, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 221, column: 7)
!4857 = !DILocation(line: 221, column: 7, scope: !4847)
!4858 = !DILocation(line: 224, column: 11, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 222, column: 42)
!4860 = !DILocation(line: 225, column: 4, scope: !4859)
!4861 = !DILocation(line: 227, column: 29, scope: !4847)
!4862 = !DILocation(line: 227, column: 34, scope: !4847)
!4863 = !DILocation(line: 227, column: 39, scope: !4847)
!4864 = !DILocation(line: 227, column: 44, scope: !4847)
!4865 = !DILocation(line: 228, column: 5, scope: !4847)
!4866 = !DILocation(line: 228, column: 10, scope: !4847)
!4867 = !DILocation(line: 227, column: 15, scope: !4847)
!4868 = !DILocation(line: 227, column: 3, scope: !4847)
!4869 = !DILocation(line: 227, column: 8, scope: !4847)
!4870 = !DILocation(line: 227, column: 13, scope: !4847)
!4871 = !DILocation(line: 229, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 229, column: 7)
!4873 = !DILocation(line: 229, column: 12, scope: !4872)
!4874 = !DILocation(line: 229, column: 17, scope: !4872)
!4875 = !DILocation(line: 229, column: 7, scope: !4847)
!4876 = !DILocation(line: 231, column: 11, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 229, column: 26)
!4878 = !DILocation(line: 232, column: 4, scope: !4877)
!4879 = !DILocation(line: 235, column: 2, scope: !4847)
!4880 = !DILocalVariable(name: "region", scope: !4881, file: !3, line: 237, type: !180)
!4881 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 235, column: 9)
!4882 = !DILocation(line: 237, column: 7, scope: !4881)
!4883 = !DILocation(line: 239, column: 15, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 239, column: 3)
!4885 = !DILocation(line: 239, column: 8, scope: !4884)
!4886 = !DILocation(line: 239, column: 20, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 239, column: 3)
!4888 = !DILocation(line: 239, column: 27, scope: !4887)
!4889 = !DILocation(line: 239, column: 3, scope: !4884)
!4890 = !DILocation(line: 240, column: 10, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 240, column: 8)
!4892 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 239, column: 57)
!4893 = !DILocation(line: 240, column: 42, scope: !4891)
!4894 = !DILocation(line: 240, column: 8, scope: !4892)
!4895 = !DILocation(line: 242, column: 5, scope: !4891)
!4896 = !DILocation(line: 244, column: 22, scope: !4892)
!4897 = !DILocation(line: 244, column: 4, scope: !4892)
!4898 = !DILocation(line: 244, column: 9, scope: !4892)
!4899 = !DILocation(line: 244, column: 20, scope: !4892)
!4900 = !DILocation(line: 245, column: 20, scope: !4892)
!4901 = !DILocation(line: 245, column: 4, scope: !4892)
!4902 = !DILocation(line: 245, column: 9, scope: !4892)
!4903 = !DILocation(line: 245, column: 18, scope: !4892)
!4904 = !DILocation(line: 246, column: 8, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 246, column: 8)
!4906 = !DILocation(line: 246, column: 8, scope: !4892)
!4907 = !DILocation(line: 248, column: 5, scope: !4905)
!4908 = !DILocation(line: 249, column: 3, scope: !4892)
!4909 = !DILocation(line: 239, column: 53, scope: !4887)
!4910 = !DILocation(line: 239, column: 3, scope: !4887)
!4911 = distinct !{!4911, !4889, !4912}
!4912 = !DILocation(line: 249, column: 3, scope: !4884)
!4913 = !DILocation(line: 250, column: 7, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 250, column: 7)
!4915 = !DILocation(line: 250, column: 14, scope: !4914)
!4916 = !DILocation(line: 250, column: 7, scope: !4881)
!4917 = !DILocation(line: 252, column: 11, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 250, column: 35)
!4919 = !DILocation(line: 253, column: 4, scope: !4918)
!4920 = !DILocation(line: 257, column: 17, scope: !4185)
!4921 = !DILocation(line: 257, column: 2, scope: !4185)
!4922 = !DILocation(line: 260, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 260, column: 6)
!4924 = !DILocation(line: 260, column: 11, scope: !4923)
!4925 = !DILocation(line: 260, column: 17, scope: !4923)
!4926 = !DILocation(line: 260, column: 6, scope: !4185)
!4927 = !DILocation(line: 261, column: 3, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 260, column: 29)
!4929 = !DILocation(line: 262, column: 20, scope: !4928)
!4930 = !DILocation(line: 262, column: 25, scope: !4928)
!4931 = !DILocation(line: 262, column: 30, scope: !4928)
!4932 = !DILocation(line: 262, column: 3, scope: !4928)
!4933 = !DILocation(line: 263, column: 22, scope: !4928)
!4934 = !DILocation(line: 263, column: 27, scope: !4928)
!4935 = !DILocation(line: 263, column: 3, scope: !4928)
!4936 = !DILocation(line: 264, column: 24, scope: !4928)
!4937 = !DILocation(line: 264, column: 29, scope: !4928)
!4938 = !DILocation(line: 264, column: 12, scope: !4928)
!4939 = !DILocation(line: 264, column: 10, scope: !4928)
!4940 = !DILocation(line: 265, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 265, column: 7)
!4942 = !DILocation(line: 265, column: 14, scope: !4941)
!4943 = !DILocation(line: 265, column: 7, scope: !4928)
!4944 = !DILocation(line: 266, column: 21, scope: !4941)
!4945 = !DILocation(line: 266, column: 26, scope: !4941)
!4946 = !DILocation(line: 266, column: 4, scope: !4941)
!4947 = !DILocation(line: 267, column: 22, scope: !4928)
!4948 = !DILocation(line: 267, column: 27, scope: !4928)
!4949 = !DILocation(line: 267, column: 3, scope: !4928)
!4950 = !DILocation(line: 268, column: 3, scope: !4928)
!4951 = !DILocation(line: 269, column: 2, scope: !4928)
!4952 = !DILocation(line: 270, column: 3, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 269, column: 9)
!4954 = !DILocation(line: 271, column: 20, scope: !4953)
!4955 = !DILocation(line: 271, column: 25, scope: !4953)
!4956 = !DILocation(line: 271, column: 30, scope: !4953)
!4957 = !DILocation(line: 271, column: 3, scope: !4953)
!4958 = !DILocation(line: 272, column: 24, scope: !4953)
!4959 = !DILocation(line: 272, column: 29, scope: !4953)
!4960 = !DILocation(line: 272, column: 12, scope: !4953)
!4961 = !DILocation(line: 272, column: 10, scope: !4953)
!4962 = !DILocation(line: 273, column: 7, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 273, column: 7)
!4964 = !DILocation(line: 273, column: 14, scope: !4963)
!4965 = !DILocation(line: 273, column: 7, scope: !4953)
!4966 = !DILocation(line: 274, column: 21, scope: !4963)
!4967 = !DILocation(line: 274, column: 26, scope: !4963)
!4968 = !DILocation(line: 274, column: 4, scope: !4963)
!4969 = !DILocation(line: 276, column: 23, scope: !4963)
!4970 = !DILocation(line: 276, column: 28, scope: !4963)
!4971 = !DILocation(line: 276, column: 4, scope: !4963)
!4972 = !DILocation(line: 277, column: 3, scope: !4953)
!4973 = !DILocation(line: 280, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 280, column: 6)
!4975 = !DILocation(line: 280, column: 13, scope: !4974)
!4976 = !DILocation(line: 280, column: 6, scope: !4185)
!4977 = !DILocation(line: 281, column: 3, scope: !4974)
!4978 = !DILocation(line: 282, column: 23, scope: !4185)
!4979 = !DILocation(line: 282, column: 28, scope: !4185)
!4980 = !DILocation(line: 282, column: 33, scope: !4185)
!4981 = !DILocation(line: 282, column: 2, scope: !4185)
!4982 = !DILocation(line: 284, column: 23, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 284, column: 6)
!4984 = !DILocation(line: 284, column: 6, scope: !4983)
!4985 = !DILocation(line: 284, column: 6, scope: !4185)
!4986 = !DILocation(line: 285, column: 26, scope: !4983)
!4987 = !DILocation(line: 285, column: 31, scope: !4983)
!4988 = !DILocation(line: 285, column: 3, scope: !4983)
!4989 = !DILocation(line: 286, column: 9, scope: !4185)
!4990 = !DILocation(line: 286, column: 2, scope: !4185)
!4991 = !DILabel(scope: !4185, name: "put_hcd", file: !3, line: 288)
!4992 = !DILocation(line: 288, column: 1, scope: !4185)
!4993 = !DILocation(line: 289, column: 14, scope: !4185)
!4994 = !DILocation(line: 289, column: 2, scope: !4185)
!4995 = !DILabel(scope: !4185, name: "free_irq_vectors", file: !3, line: 290)
!4996 = !DILocation(line: 290, column: 1, scope: !4185)
!4997 = !DILocation(line: 291, column: 7, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 291, column: 6)
!4999 = !DILocation(line: 291, column: 15, scope: !4998)
!5000 = !DILocation(line: 291, column: 21, scope: !4998)
!5001 = !DILocation(line: 291, column: 33, scope: !4998)
!5002 = !DILocation(line: 291, column: 6, scope: !4185)
!5003 = !DILocation(line: 292, column: 24, scope: !4998)
!5004 = !DILocation(line: 292, column: 3, scope: !4998)
!5005 = !DILocation(line: 291, column: 35, scope: !4998)
!5006 = !DILabel(scope: !4185, name: "disable_pci", file: !3, line: 293)
!5007 = !DILocation(line: 293, column: 1, scope: !4185)
!5008 = !DILocation(line: 294, column: 21, scope: !4185)
!5009 = !DILocation(line: 294, column: 2, scope: !4185)
!5010 = !DILocation(line: 295, column: 2, scope: !4185)
!5011 = !DILocation(line: 296, column: 9, scope: !4185)
!5012 = !DILocation(line: 296, column: 2, scope: !4185)
!5013 = !DILocation(line: 297, column: 1, scope: !4185)
!5014 = distinct !DISubprogram(name: "pci_alloc_irq_vectors", scope: !159, file: !159, line: 1800, type: !5015, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!180, !190, !7, !7, !7}
!5017 = !DILocalVariable(name: "dev", arg: 1, scope: !5014, file: !159, line: 1800, type: !190)
!5018 = !DILocation(line: 1800, column: 39, scope: !5014)
!5019 = !DILocalVariable(name: "min_vecs", arg: 2, scope: !5014, file: !159, line: 1800, type: !7)
!5020 = !DILocation(line: 1800, column: 57, scope: !5014)
!5021 = !DILocalVariable(name: "max_vecs", arg: 3, scope: !5014, file: !159, line: 1801, type: !7)
!5022 = !DILocation(line: 1801, column: 22, scope: !5014)
!5023 = !DILocalVariable(name: "flags", arg: 4, scope: !5014, file: !159, line: 1801, type: !7)
!5024 = !DILocation(line: 1801, column: 45, scope: !5014)
!5025 = !DILocation(line: 1803, column: 40, scope: !5014)
!5026 = !DILocation(line: 1803, column: 45, scope: !5014)
!5027 = !DILocation(line: 1803, column: 55, scope: !5014)
!5028 = !DILocation(line: 1803, column: 65, scope: !5014)
!5029 = !DILocation(line: 1803, column: 9, scope: !5014)
!5030 = !DILocation(line: 1803, column: 2, scope: !5014)
!5031 = distinct !DISubprogram(name: "pci_name", scope: !159, file: !159, line: 1875, type: !5032, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!224, !5034}
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!5036 = !DILocalVariable(name: "pdev", arg: 1, scope: !5031, file: !159, line: 1875, type: !5034)
!5037 = !DILocation(line: 1875, column: 58, scope: !5031)
!5038 = !DILocation(line: 1877, column: 19, scope: !5031)
!5039 = !DILocation(line: 1877, column: 25, scope: !5031)
!5040 = !DILocation(line: 1877, column: 9, scope: !5031)
!5041 = !DILocation(line: 1877, column: 2, scope: !5031)
!5042 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5043, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{null, !283, !176}
!5045 = !DILocalVariable(name: "dev", arg: 1, scope: !5042, file: !73, line: 660, type: !283)
!5046 = !DILocation(line: 660, column: 51, scope: !5042)
!5047 = !DILocalVariable(name: "data", arg: 2, scope: !5042, file: !73, line: 660, type: !176)
!5048 = !DILocation(line: 660, column: 62, scope: !5042)
!5049 = !DILocation(line: 662, column: 21, scope: !5042)
!5050 = !DILocation(line: 662, column: 2, scope: !5042)
!5051 = !DILocation(line: 662, column: 7, scope: !5042)
!5052 = !DILocation(line: 662, column: 19, scope: !5042)
!5053 = !DILocation(line: 663, column: 1, scope: !5042)
!5054 = distinct !DISubprogram(name: "for_each_companion", scope: !3, file: !3, line: 46, type: !5055, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !190, !4200, !5057}
!5057 = !DIDerivedType(tag: DW_TAG_typedef, name: "companion_fn", file: !3, line: 42, baseType: !5058)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{null, !190, !4200, !190, !4200}
!5061 = !DILocalVariable(name: "pdev", arg: 1, scope: !5054, file: !3, line: 46, type: !190)
!5062 = !DILocation(line: 46, column: 48, scope: !5054)
!5063 = !DILocalVariable(name: "hcd", arg: 2, scope: !5054, file: !3, line: 46, type: !4200)
!5064 = !DILocation(line: 46, column: 70, scope: !5054)
!5065 = !DILocalVariable(name: "fn", arg: 3, scope: !5054, file: !3, line: 47, type: !5057)
!5066 = !DILocation(line: 47, column: 16, scope: !5054)
!5067 = !DILocalVariable(name: "companion", scope: !5054, file: !3, line: 49, type: !190)
!5068 = !DILocation(line: 49, column: 19, scope: !5054)
!5069 = !DILocalVariable(name: "companion_hcd", scope: !5054, file: !3, line: 50, type: !4200)
!5070 = !DILocation(line: 50, column: 19, scope: !5054)
!5071 = !DILocalVariable(name: "slot", scope: !5054, file: !3, line: 51, type: !7)
!5072 = !DILocation(line: 51, column: 16, scope: !5054)
!5073 = !DILocation(line: 51, column: 23, scope: !5054)
!5074 = !DILocation(line: 58, column: 12, scope: !5054)
!5075 = !DILocation(line: 59, column: 2, scope: !5054)
!5076 = !DILocation(line: 60, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 60, column: 7)
!5078 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 59, column: 30)
!5079 = !DILocation(line: 60, column: 18, scope: !5077)
!5080 = !DILocation(line: 60, column: 25, scope: !5077)
!5081 = !DILocation(line: 60, column: 31, scope: !5077)
!5082 = !DILocation(line: 60, column: 22, scope: !5077)
!5083 = !DILocation(line: 60, column: 35, scope: !5077)
!5084 = !DILocation(line: 61, column: 5, scope: !5077)
!5085 = !DILocation(line: 61, column: 35, scope: !5077)
!5086 = !DILocation(line: 61, column: 32, scope: !5077)
!5087 = !DILocation(line: 60, column: 7, scope: !5078)
!5088 = !DILocation(line: 62, column: 4, scope: !5077)
!5089 = distinct !{!5089, !5075, !5090}
!5090 = !DILocation(line: 76, column: 2, scope: !5054)
!5091 = !DILocation(line: 68, column: 7, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 68, column: 7)
!5093 = !DILocation(line: 68, column: 18, scope: !5092)
!5094 = !DILocation(line: 68, column: 24, scope: !5092)
!5095 = !DILocation(line: 68, column: 35, scope: !5092)
!5096 = !DILocation(line: 68, column: 38, scope: !5092)
!5097 = !DILocation(line: 68, column: 49, scope: !5092)
!5098 = !DILocation(line: 68, column: 55, scope: !5092)
!5099 = !DILocation(line: 68, column: 66, scope: !5092)
!5100 = !DILocation(line: 69, column: 5, scope: !5092)
!5101 = !DILocation(line: 69, column: 16, scope: !5092)
!5102 = !DILocation(line: 69, column: 22, scope: !5092)
!5103 = !DILocation(line: 68, column: 7, scope: !5078)
!5104 = !DILocation(line: 70, column: 4, scope: !5092)
!5105 = !DILocation(line: 72, column: 35, scope: !5078)
!5106 = !DILocation(line: 72, column: 19, scope: !5078)
!5107 = !DILocation(line: 72, column: 17, scope: !5078)
!5108 = !DILocation(line: 73, column: 8, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 73, column: 7)
!5110 = !DILocation(line: 73, column: 22, scope: !5109)
!5111 = !DILocation(line: 73, column: 26, scope: !5109)
!5112 = !DILocation(line: 73, column: 41, scope: !5109)
!5113 = !DILocation(line: 73, column: 46, scope: !5109)
!5114 = !DILocation(line: 73, column: 7, scope: !5078)
!5115 = !DILocation(line: 74, column: 4, scope: !5109)
!5116 = !DILocation(line: 75, column: 3, scope: !5078)
!5117 = !DILocation(line: 75, column: 6, scope: !5078)
!5118 = !DILocation(line: 75, column: 12, scope: !5078)
!5119 = !DILocation(line: 75, column: 17, scope: !5078)
!5120 = !DILocation(line: 75, column: 28, scope: !5078)
!5121 = !DILocation(line: 77, column: 1, scope: !5054)
!5122 = distinct !DISubprogram(name: "ehci_pre_add", scope: !3, file: !3, line: 85, type: !5059, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5123 = !DILocalVariable(name: "pdev", arg: 1, scope: !5122, file: !3, line: 85, type: !190)
!5124 = !DILocation(line: 85, column: 42, scope: !5122)
!5125 = !DILocalVariable(name: "hcd", arg: 2, scope: !5122, file: !3, line: 85, type: !4200)
!5126 = !DILocation(line: 85, column: 64, scope: !5122)
!5127 = !DILocalVariable(name: "companion", arg: 3, scope: !5122, file: !3, line: 86, type: !190)
!5128 = !DILocation(line: 86, column: 19, scope: !5122)
!5129 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !5122, file: !3, line: 86, type: !4200)
!5130 = !DILocation(line: 86, column: 46, scope: !5122)
!5131 = !DILocalVariable(name: "udev", scope: !5122, file: !3, line: 88, type: !4225)
!5132 = !DILocation(line: 88, column: 21, scope: !5122)
!5133 = !DILocation(line: 90, column: 22, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 90, column: 6)
!5135 = !DILocation(line: 90, column: 6, scope: !5134)
!5136 = !DILocation(line: 90, column: 6, scope: !5122)
!5137 = !DILocation(line: 91, column: 10, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 90, column: 34)
!5139 = !DILocation(line: 91, column: 25, scope: !5138)
!5140 = !DILocation(line: 91, column: 30, scope: !5138)
!5141 = !DILocation(line: 91, column: 8, scope: !5138)
!5142 = !DILocation(line: 92, column: 3, scope: !5138)
!5143 = !DILocation(line: 93, column: 25, scope: !5138)
!5144 = !DILocation(line: 93, column: 3, scope: !5138)
!5145 = !DILocation(line: 94, column: 2, scope: !5138)
!5146 = !DILocation(line: 95, column: 1, scope: !5122)
!5147 = distinct !DISubprogram(name: "ehci_post_add", scope: !3, file: !3, line: 102, type: !5059, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5148 = !DILocalVariable(name: "pdev", arg: 1, scope: !5147, file: !3, line: 102, type: !190)
!5149 = !DILocation(line: 102, column: 43, scope: !5147)
!5150 = !DILocalVariable(name: "hcd", arg: 2, scope: !5147, file: !3, line: 102, type: !4200)
!5151 = !DILocation(line: 102, column: 65, scope: !5147)
!5152 = !DILocalVariable(name: "companion", arg: 3, scope: !5147, file: !3, line: 103, type: !190)
!5153 = !DILocation(line: 103, column: 19, scope: !5147)
!5154 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !5147, file: !3, line: 103, type: !4200)
!5155 = !DILocation(line: 103, column: 46, scope: !5147)
!5156 = !DILocalVariable(name: "udev", scope: !5147, file: !3, line: 105, type: !4225)
!5157 = !DILocation(line: 105, column: 21, scope: !5147)
!5158 = !DILocation(line: 107, column: 22, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 107, column: 6)
!5160 = !DILocation(line: 107, column: 6, scope: !5159)
!5161 = !DILocation(line: 107, column: 6, scope: !5147)
!5162 = !DILocation(line: 108, column: 24, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 108, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 107, column: 34)
!5165 = !DILocation(line: 108, column: 30, scope: !5163)
!5166 = !DILocation(line: 108, column: 7, scope: !5163)
!5167 = !DILocation(line: 108, column: 7, scope: !5164)
!5168 = !DILocation(line: 111, column: 40, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 108, column: 36)
!5170 = !DILocation(line: 111, column: 45, scope: !5169)
!5171 = !DILocation(line: 111, column: 4, scope: !5169)
!5172 = !DILocation(line: 111, column: 19, scope: !5169)
!5173 = !DILocation(line: 111, column: 24, scope: !5169)
!5174 = !DILocation(line: 111, column: 37, scope: !5169)
!5175 = !DILocation(line: 112, column: 3, scope: !5169)
!5176 = !DILocation(line: 113, column: 10, scope: !5164)
!5177 = !DILocation(line: 113, column: 25, scope: !5164)
!5178 = !DILocation(line: 113, column: 30, scope: !5164)
!5179 = !DILocation(line: 113, column: 8, scope: !5164)
!5180 = !DILocation(line: 114, column: 25, scope: !5164)
!5181 = !DILocation(line: 114, column: 3, scope: !5164)
!5182 = !DILocation(line: 115, column: 3, scope: !5164)
!5183 = !DILocation(line: 116, column: 2, scope: !5164)
!5184 = !DILocation(line: 117, column: 1, scope: !5147)
!5185 = distinct !DISubprogram(name: "non_ehci_add", scope: !3, file: !3, line: 123, type: !5059, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5186 = !DILocalVariable(name: "pdev", arg: 1, scope: !5185, file: !3, line: 123, type: !190)
!5187 = !DILocation(line: 123, column: 42, scope: !5185)
!5188 = !DILocalVariable(name: "hcd", arg: 2, scope: !5185, file: !3, line: 123, type: !4200)
!5189 = !DILocation(line: 123, column: 64, scope: !5185)
!5190 = !DILocalVariable(name: "companion", arg: 3, scope: !5185, file: !3, line: 124, type: !190)
!5191 = !DILocation(line: 124, column: 19, scope: !5185)
!5192 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !5185, file: !3, line: 124, type: !4200)
!5193 = !DILocation(line: 124, column: 46, scope: !5185)
!5194 = !DILocation(line: 126, column: 22, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 126, column: 6)
!5196 = !DILocation(line: 126, column: 6, scope: !5195)
!5197 = !DILocation(line: 126, column: 28, scope: !5195)
!5198 = !DILocation(line: 126, column: 31, scope: !5195)
!5199 = !DILocation(line: 126, column: 42, scope: !5195)
!5200 = !DILocation(line: 126, column: 48, scope: !5195)
!5201 = !DILocation(line: 126, column: 6, scope: !5185)
!5202 = !DILocation(line: 129, column: 29, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 126, column: 60)
!5204 = !DILocation(line: 129, column: 44, scope: !5203)
!5205 = !DILocation(line: 129, column: 3, scope: !5203)
!5206 = !DILocation(line: 129, column: 8, scope: !5203)
!5207 = !DILocation(line: 129, column: 13, scope: !5203)
!5208 = !DILocation(line: 129, column: 26, scope: !5203)
!5209 = !DILocation(line: 130, column: 2, scope: !5203)
!5210 = !DILocation(line: 131, column: 1, scope: !5185)
!5211 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !5212, file: !5212, line: 103, type: !3453, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5212 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5213 = !DILocalVariable(name: "v", arg: 1, scope: !5214, file: !5215, line: 200, type: !5218)
!5214 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5215, file: !5215, line: 200, type: !5216, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5215 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!547, !5218, !181, !180}
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!5219 = !DILocation(line: 200, column: 63, scope: !5214, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 1093, column: 12, scope: !5221, inlinedAt: !5225)
!5221 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !5222, file: !5222, line: 1086, type: !5223, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5222 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!180, !5218, !180, !180}
!5225 = distinct !DILocation(line: 1113, column: 9, scope: !5226, inlinedAt: !5229)
!5226 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !5222, file: !5222, line: 1111, type: !5227, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!547, !5218, !180, !180}
!5229 = distinct !DILocation(line: 789, column: 9, scope: !5230, inlinedAt: !5232)
!5230 = distinct !DISubprogram(name: "atomic_add_unless", scope: !5231, file: !5231, line: 786, type: !5227, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5231 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5232 = distinct !DILocation(line: 105, column: 2, scope: !5211)
!5233 = !DILocalVariable(name: "old", arg: 2, scope: !5214, file: !5215, line: 200, type: !181)
!5234 = !DILocation(line: 200, column: 71, scope: !5214, inlinedAt: !5220)
!5235 = !DILocalVariable(name: "new", arg: 3, scope: !5214, file: !5215, line: 200, type: !180)
!5236 = !DILocation(line: 200, column: 80, scope: !5214, inlinedAt: !5220)
!5237 = !DILocalVariable(name: "success", scope: !5238, file: !5215, line: 202, type: !547)
!5238 = distinct !DILexicalBlock(scope: !5214, file: !5215, line: 202, column: 9)
!5239 = !DILocation(line: 202, column: 9, scope: !5238, inlinedAt: !5220)
!5240 = !DILocalVariable(name: "_old", scope: !5238, file: !5215, line: 202, type: !181)
!5241 = !DILocalVariable(name: "__old", scope: !5238, file: !5215, line: 202, type: !180)
!5242 = !DILocalVariable(name: "__new", scope: !5238, file: !5215, line: 202, type: !180)
!5243 = !DILocalVariable(name: "__ptr", scope: !5238, file: !5215, line: 202, type: !182)
!5244 = !DILocalVariable(name: "v", arg: 1, scope: !5245, file: !5215, line: 23, type: !5248)
!5245 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5215, file: !5215, line: 23, type: !5246, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!180, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!5250 = !DILocation(line: 23, column: 61, scope: !5245, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 1088, column: 10, scope: !5221, inlinedAt: !5225)
!5252 = !DILocalVariable(name: "v", arg: 1, scope: !5221, file: !5222, line: 1086, type: !5218)
!5253 = !DILocation(line: 1086, column: 40, scope: !5221, inlinedAt: !5225)
!5254 = !DILocalVariable(name: "a", arg: 2, scope: !5221, file: !5222, line: 1086, type: !180)
!5255 = !DILocation(line: 1086, column: 47, scope: !5221, inlinedAt: !5225)
!5256 = !DILocalVariable(name: "u", arg: 3, scope: !5221, file: !5222, line: 1086, type: !180)
!5257 = !DILocation(line: 1086, column: 54, scope: !5221, inlinedAt: !5225)
!5258 = !DILocalVariable(name: "c", scope: !5221, file: !5222, line: 1088, type: !180)
!5259 = !DILocation(line: 1088, column: 6, scope: !5221, inlinedAt: !5225)
!5260 = !DILocalVariable(name: "v", arg: 1, scope: !5226, file: !5222, line: 1111, type: !5218)
!5261 = !DILocation(line: 1111, column: 34, scope: !5226, inlinedAt: !5229)
!5262 = !DILocalVariable(name: "a", arg: 2, scope: !5226, file: !5222, line: 1111, type: !180)
!5263 = !DILocation(line: 1111, column: 41, scope: !5226, inlinedAt: !5229)
!5264 = !DILocalVariable(name: "u", arg: 3, scope: !5226, file: !5222, line: 1111, type: !180)
!5265 = !DILocation(line: 1111, column: 48, scope: !5226, inlinedAt: !5229)
!5266 = !DILocalVariable(name: "v", arg: 1, scope: !5267, file: !5268, line: 99, type: !5271)
!5267 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5268, file: !5268, line: 99, type: !5269, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5268 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5271, !387}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5273)
!5273 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5274 = !DILocation(line: 99, column: 79, scope: !5267, inlinedAt: !5275)
!5275 = distinct !DILocation(line: 788, column: 2, scope: !5230, inlinedAt: !5232)
!5276 = !DILocalVariable(name: "size", arg: 2, scope: !5267, file: !5268, line: 99, type: !387)
!5277 = !DILocation(line: 99, column: 89, scope: !5267, inlinedAt: !5275)
!5278 = !DILocalVariable(name: "v", arg: 1, scope: !5230, file: !5231, line: 786, type: !5218)
!5279 = !DILocation(line: 786, column: 29, scope: !5230, inlinedAt: !5232)
!5280 = !DILocalVariable(name: "a", arg: 2, scope: !5230, file: !5231, line: 786, type: !180)
!5281 = !DILocation(line: 786, column: 36, scope: !5230, inlinedAt: !5232)
!5282 = !DILocalVariable(name: "u", arg: 3, scope: !5230, file: !5231, line: 786, type: !180)
!5283 = !DILocation(line: 786, column: 43, scope: !5230, inlinedAt: !5232)
!5284 = !DILocalVariable(name: "dev", arg: 1, scope: !5211, file: !5212, line: 103, type: !283)
!5285 = !DILocation(line: 103, column: 57, scope: !5211)
!5286 = !DILocation(line: 105, column: 21, scope: !5211)
!5287 = !DILocation(line: 105, column: 26, scope: !5211)
!5288 = !DILocation(line: 105, column: 32, scope: !5211)
!5289 = !DILocation(line: 788, column: 31, scope: !5230, inlinedAt: !5232)
!5290 = !DILocation(line: 101, column: 20, scope: !5267, inlinedAt: !5275)
!5291 = !DILocation(line: 101, column: 23, scope: !5267, inlinedAt: !5275)
!5292 = !DILocation(line: 101, column: 2, scope: !5267, inlinedAt: !5275)
!5293 = !DILocation(line: 102, column: 2, scope: !5267, inlinedAt: !5275)
!5294 = !DILocation(line: 789, column: 32, scope: !5230, inlinedAt: !5232)
!5295 = !DILocation(line: 789, column: 35, scope: !5230, inlinedAt: !5232)
!5296 = !DILocation(line: 789, column: 38, scope: !5230, inlinedAt: !5232)
!5297 = !DILocation(line: 1113, column: 38, scope: !5226, inlinedAt: !5229)
!5298 = !DILocation(line: 1113, column: 41, scope: !5226, inlinedAt: !5229)
!5299 = !DILocation(line: 1113, column: 44, scope: !5226, inlinedAt: !5229)
!5300 = !DILocation(line: 1088, column: 27, scope: !5221, inlinedAt: !5225)
!5301 = !DILocation(line: 29, column: 9, scope: !5245, inlinedAt: !5251)
!5302 = !DILocation(line: 1090, column: 2, scope: !5221, inlinedAt: !5225)
!5303 = !DILocation(line: 1091, column: 7, scope: !5304, inlinedAt: !5225)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !5222, line: 1091, column: 7)
!5305 = distinct !DILexicalBlock(scope: !5221, file: !5222, line: 1090, column: 5)
!5306 = !DILocation(line: 1091, column: 7, scope: !5305, inlinedAt: !5225)
!5307 = !DILocation(line: 1092, column: 4, scope: !5304, inlinedAt: !5225)
!5308 = !DILocation(line: 1093, column: 36, scope: !5221, inlinedAt: !5225)
!5309 = !DILocation(line: 1093, column: 43, scope: !5221, inlinedAt: !5225)
!5310 = !DILocation(line: 1093, column: 47, scope: !5221, inlinedAt: !5225)
!5311 = !DILocation(line: 1093, column: 45, scope: !5221, inlinedAt: !5225)
!5312 = !{i32 -2146602994, i32 -2146602839}
!5313 = !DILocation(line: 202, column: 9, scope: !5314, inlinedAt: !5220)
!5314 = distinct !DILexicalBlock(scope: !5238, file: !5215, line: 202, column: 9)
!5315 = !DILocation(line: 202, column: 9, scope: !5214, inlinedAt: !5220)
!5316 = !DILocation(line: 1093, column: 11, scope: !5221, inlinedAt: !5225)
!5317 = !DILocation(line: 1093, column: 2, scope: !5305, inlinedAt: !5225)
!5318 = distinct !{!5318, !5302, !5319}
!5319 = !DILocation(line: 1093, column: 49, scope: !5221, inlinedAt: !5225)
!5320 = !DILocation(line: 1095, column: 9, scope: !5221, inlinedAt: !5225)
!5321 = !DILocation(line: 1113, column: 50, scope: !5226, inlinedAt: !5229)
!5322 = !DILocation(line: 1113, column: 47, scope: !5226, inlinedAt: !5229)
!5323 = !DILocation(line: 106, column: 1, scope: !5211)
!5324 = distinct !DISubprogram(name: "usb_hcd_pci_remove", scope: !3, file: !3, line: 315, type: !4033, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5325 = !DILocalVariable(name: "dev", arg: 1, scope: !5324, file: !3, line: 315, type: !190)
!5326 = !DILocation(line: 315, column: 41, scope: !5324)
!5327 = !DILocalVariable(name: "hcd", scope: !5324, file: !3, line: 317, type: !4200)
!5328 = !DILocation(line: 317, column: 19, scope: !5324)
!5329 = !DILocalVariable(name: "hcd_driver_flags", scope: !5324, file: !3, line: 318, type: !180)
!5330 = !DILocation(line: 318, column: 8, scope: !5324)
!5331 = !DILocation(line: 320, column: 24, scope: !5324)
!5332 = !DILocation(line: 320, column: 8, scope: !5324)
!5333 = !DILocation(line: 320, column: 6, scope: !5324)
!5334 = !DILocation(line: 321, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 321, column: 6)
!5336 = !DILocation(line: 321, column: 6, scope: !5324)
!5337 = !DILocation(line: 322, column: 3, scope: !5335)
!5338 = !DILocation(line: 324, column: 21, scope: !5324)
!5339 = !DILocation(line: 324, column: 26, scope: !5324)
!5340 = !DILocation(line: 324, column: 34, scope: !5324)
!5341 = !DILocation(line: 324, column: 19, scope: !5324)
!5342 = !DILocation(line: 326, column: 23, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 326, column: 6)
!5344 = !DILocation(line: 326, column: 6, scope: !5343)
!5345 = !DILocation(line: 326, column: 6, scope: !5324)
!5346 = !DILocation(line: 327, column: 28, scope: !5343)
!5347 = !DILocation(line: 327, column: 33, scope: !5343)
!5348 = !DILocation(line: 327, column: 3, scope: !5343)
!5349 = !DILocation(line: 333, column: 2, scope: !5324)
!5350 = !DILocation(line: 333, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 333, column: 2)
!5352 = !DILocation(line: 334, column: 17, scope: !5324)
!5353 = !DILocation(line: 334, column: 2, scope: !5324)
!5354 = !DILocation(line: 335, column: 2, scope: !5324)
!5355 = !DILocation(line: 335, column: 2, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 335, column: 2)
!5357 = !DILocation(line: 338, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 338, column: 6)
!5359 = !DILocation(line: 338, column: 11, scope: !5358)
!5360 = !DILocation(line: 338, column: 17, scope: !5358)
!5361 = !DILocation(line: 338, column: 6, scope: !5324)
!5362 = !DILocation(line: 339, column: 3, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 338, column: 29)
!5364 = !DILocation(line: 340, column: 22, scope: !5363)
!5365 = !DILocation(line: 340, column: 27, scope: !5363)
!5366 = !DILocation(line: 340, column: 3, scope: !5363)
!5367 = !DILocation(line: 341, column: 18, scope: !5363)
!5368 = !DILocation(line: 341, column: 3, scope: !5363)
!5369 = !DILocation(line: 342, column: 20, scope: !5363)
!5370 = !DILocation(line: 342, column: 25, scope: !5363)
!5371 = !DILocation(line: 342, column: 3, scope: !5363)
!5372 = !DILocation(line: 343, column: 3, scope: !5363)
!5373 = !DILocation(line: 344, column: 2, scope: !5363)
!5374 = !DILocation(line: 346, column: 3, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 344, column: 9)
!5376 = !DILocation(line: 347, column: 3, scope: !5375)
!5377 = !DILocation(line: 347, column: 8, scope: !5375)
!5378 = !DILocation(line: 347, column: 13, scope: !5375)
!5379 = !DILocation(line: 347, column: 26, scope: !5375)
!5380 = !DILocation(line: 348, column: 18, scope: !5375)
!5381 = !DILocation(line: 348, column: 3, scope: !5375)
!5382 = !DILocation(line: 349, column: 20, scope: !5375)
!5383 = !DILocation(line: 349, column: 25, scope: !5375)
!5384 = !DILocation(line: 349, column: 3, scope: !5375)
!5385 = !DILocation(line: 350, column: 3, scope: !5375)
!5386 = !DILocation(line: 352, column: 14, scope: !5324)
!5387 = !DILocation(line: 352, column: 2, scope: !5324)
!5388 = !DILocation(line: 353, column: 7, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 353, column: 6)
!5390 = !DILocation(line: 353, column: 24, scope: !5389)
!5391 = !DILocation(line: 353, column: 36, scope: !5389)
!5392 = !DILocation(line: 353, column: 6, scope: !5324)
!5393 = !DILocation(line: 354, column: 24, scope: !5389)
!5394 = !DILocation(line: 354, column: 3, scope: !5389)
!5395 = !DILocation(line: 355, column: 21, scope: !5324)
!5396 = !DILocation(line: 355, column: 2, scope: !5324)
!5397 = !DILocation(line: 356, column: 1, scope: !5324)
!5398 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !159, file: !159, line: 1865, type: !5399, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!176, !190}
!5401 = !DILocalVariable(name: "pdev", arg: 1, scope: !5398, file: !159, line: 1865, type: !190)
!5402 = !DILocation(line: 1865, column: 53, scope: !5398)
!5403 = !DILocation(line: 1867, column: 26, scope: !5398)
!5404 = !DILocation(line: 1867, column: 32, scope: !5398)
!5405 = !DILocation(line: 1867, column: 9, scope: !5398)
!5406 = !DILocation(line: 1867, column: 2, scope: !5398)
!5407 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !5212, file: !5212, line: 92, type: !3453, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5408 = !DILocalVariable(name: "v", arg: 1, scope: !5409, file: !5215, line: 93, type: !5218)
!5409 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5215, file: !5215, line: 93, type: !5410, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{null, !5218}
!5412 = !DILocation(line: 93, column: 55, scope: !5409, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 241, column: 2, scope: !5414, inlinedAt: !5415)
!5414 = distinct !DISubprogram(name: "atomic_inc", scope: !5231, file: !5231, line: 238, type: !5410, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5415 = distinct !DILocation(line: 94, column: 2, scope: !5407)
!5416 = !DILocation(line: 99, column: 79, scope: !5267, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 240, column: 2, scope: !5414, inlinedAt: !5415)
!5418 = !DILocation(line: 99, column: 89, scope: !5267, inlinedAt: !5417)
!5419 = !DILocalVariable(name: "v", arg: 1, scope: !5414, file: !5231, line: 238, type: !5218)
!5420 = !DILocation(line: 238, column: 22, scope: !5414, inlinedAt: !5415)
!5421 = !DILocalVariable(name: "dev", arg: 1, scope: !5407, file: !5212, line: 92, type: !283)
!5422 = !DILocation(line: 92, column: 59, scope: !5407)
!5423 = !DILocation(line: 94, column: 14, scope: !5407)
!5424 = !DILocation(line: 94, column: 19, scope: !5407)
!5425 = !DILocation(line: 94, column: 25, scope: !5407)
!5426 = !DILocation(line: 240, column: 31, scope: !5414, inlinedAt: !5415)
!5427 = !DILocation(line: 101, column: 20, scope: !5267, inlinedAt: !5417)
!5428 = !DILocation(line: 101, column: 23, scope: !5267, inlinedAt: !5417)
!5429 = !DILocation(line: 101, column: 2, scope: !5267, inlinedAt: !5417)
!5430 = !DILocation(line: 102, column: 2, scope: !5267, inlinedAt: !5417)
!5431 = !DILocation(line: 241, column: 18, scope: !5414, inlinedAt: !5415)
!5432 = !DILocation(line: 96, column: 16, scope: !5409, inlinedAt: !5413)
!5433 = !DILocation(line: 96, column: 19, scope: !5409, inlinedAt: !5413)
!5434 = !DILocation(line: 95, column: 2, scope: !5409, inlinedAt: !5413)
!5435 = !{i32 -2146614591}
!5436 = !DILocation(line: 95, column: 1, scope: !5407)
!5437 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5438, file: !5438, line: 656, type: !1937, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5438 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5439 = !DILocalVariable(name: "__edi", scope: !5440, file: !5438, line: 658, type: !189)
!5440 = distinct !DILexicalBlock(scope: !5437, file: !5438, line: 658, column: 2)
!5441 = !DILocation(line: 658, column: 2, scope: !5440)
!5442 = !DILocalVariable(name: "__esi", scope: !5440, file: !5438, line: 658, type: !189)
!5443 = !DILocalVariable(name: "__edx", scope: !5440, file: !5438, line: 658, type: !189)
!5444 = !DILocalVariable(name: "__ecx", scope: !5440, file: !5438, line: 658, type: !189)
!5445 = !DILocalVariable(name: "__eax", scope: !5440, file: !5438, line: 658, type: !189)
!5446 = !{i32 -2145767359, i32 -2145766627, i32 -2145766393, i32 -2145766342, i32 -2145766314, i32 -2145766289, i32 -2145766605, i32 -2145766592, i32 -2145766154, i32 -2145766035, i32 -2145766500, i32 -2145766473, i32 -2145766445, i32 -2145766415}
!5447 = !DILocation(line: 659, column: 1, scope: !5437)
!5448 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5438, file: !5438, line: 661, type: !1937, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5449 = !DILocalVariable(name: "__edi", scope: !5450, file: !5438, line: 663, type: !189)
!5450 = distinct !DILexicalBlock(scope: !5448, file: !5438, line: 663, column: 2)
!5451 = !DILocation(line: 663, column: 2, scope: !5450)
!5452 = !DILocalVariable(name: "__esi", scope: !5450, file: !5438, line: 663, type: !189)
!5453 = !DILocalVariable(name: "__edx", scope: !5450, file: !5438, line: 663, type: !189)
!5454 = !DILocalVariable(name: "__ecx", scope: !5450, file: !5438, line: 663, type: !189)
!5455 = !DILocalVariable(name: "__eax", scope: !5450, file: !5438, line: 663, type: !189)
!5456 = !{i32 -2145764775, i32 -2145764045, i32 -2145763811, i32 -2145763760, i32 -2145763732, i32 -2145763707, i32 -2145764023, i32 -2145764010, i32 -2145763572, i32 -2145763453, i32 -2145763918, i32 -2145763891, i32 -2145763863, i32 -2145763833}
!5457 = !DILocation(line: 664, column: 1, scope: !5448)
!5458 = distinct !DISubprogram(name: "ehci_remove", scope: !3, file: !3, line: 134, type: !5059, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5459 = !DILocalVariable(name: "pdev", arg: 1, scope: !5458, file: !3, line: 134, type: !190)
!5460 = !DILocation(line: 134, column: 41, scope: !5458)
!5461 = !DILocalVariable(name: "hcd", arg: 2, scope: !5458, file: !3, line: 134, type: !4200)
!5462 = !DILocation(line: 134, column: 63, scope: !5458)
!5463 = !DILocalVariable(name: "companion", arg: 3, scope: !5458, file: !3, line: 135, type: !190)
!5464 = !DILocation(line: 135, column: 19, scope: !5458)
!5465 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !5458, file: !3, line: 135, type: !4200)
!5466 = !DILocation(line: 135, column: 46, scope: !5458)
!5467 = !DILocation(line: 137, column: 22, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 137, column: 6)
!5469 = !DILocation(line: 137, column: 6, scope: !5468)
!5470 = !DILocation(line: 137, column: 6, scope: !5458)
!5471 = !DILocation(line: 138, column: 3, scope: !5468)
!5472 = !DILocation(line: 138, column: 18, scope: !5468)
!5473 = !DILocation(line: 138, column: 23, scope: !5468)
!5474 = !DILocation(line: 138, column: 36, scope: !5468)
!5475 = !DILocation(line: 139, column: 1, scope: !5458)
!5476 = distinct !DISubprogram(name: "usb_hcd_pci_shutdown", scope: !3, file: !3, line: 363, type: !4033, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5477 = !DILocalVariable(name: "dev", arg: 1, scope: !5476, file: !3, line: 363, type: !190)
!5478 = !DILocation(line: 363, column: 43, scope: !5476)
!5479 = !DILocalVariable(name: "hcd", scope: !5476, file: !3, line: 365, type: !4200)
!5480 = !DILocation(line: 365, column: 19, scope: !5476)
!5481 = !DILocation(line: 367, column: 24, scope: !5476)
!5482 = !DILocation(line: 367, column: 8, scope: !5476)
!5483 = !DILocation(line: 367, column: 6, scope: !5476)
!5484 = !DILocation(line: 368, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 368, column: 6)
!5486 = !DILocation(line: 368, column: 6, scope: !5476)
!5487 = !DILocation(line: 369, column: 3, scope: !5485)
!5488 = !DILocation(line: 371, column: 40, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 371, column: 6)
!5490 = !DILocation(line: 371, column: 45, scope: !5489)
!5491 = !DILocation(line: 371, column: 6, scope: !5489)
!5492 = !DILocation(line: 371, column: 52, scope: !5489)
!5493 = !DILocation(line: 372, column: 4, scope: !5489)
!5494 = !DILocation(line: 372, column: 9, scope: !5489)
!5495 = !DILocation(line: 372, column: 17, scope: !5489)
!5496 = !DILocation(line: 371, column: 6, scope: !5476)
!5497 = !DILocation(line: 373, column: 3, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 372, column: 27)
!5499 = !DILocation(line: 373, column: 8, scope: !5498)
!5500 = !DILocation(line: 373, column: 16, scope: !5498)
!5501 = !DILocation(line: 373, column: 25, scope: !5498)
!5502 = !DILocation(line: 374, column: 30, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 374, column: 7)
!5504 = !DILocation(line: 374, column: 7, scope: !5503)
!5505 = !DILocation(line: 374, column: 35, scope: !5503)
!5506 = !DILocation(line: 374, column: 38, scope: !5503)
!5507 = !DILocation(line: 374, column: 43, scope: !5503)
!5508 = !DILocation(line: 374, column: 47, scope: !5503)
!5509 = !DILocation(line: 374, column: 7, scope: !5498)
!5510 = !DILocation(line: 375, column: 13, scope: !5503)
!5511 = !DILocation(line: 375, column: 18, scope: !5503)
!5512 = !DILocation(line: 375, column: 23, scope: !5503)
!5513 = !DILocation(line: 375, column: 4, scope: !5503)
!5514 = !DILocation(line: 376, column: 22, scope: !5498)
!5515 = !DILocation(line: 376, column: 3, scope: !5498)
!5516 = !DILocation(line: 377, column: 2, scope: !5498)
!5517 = !DILocation(line: 378, column: 1, scope: !5476)
!5518 = distinct !DISubprogram(name: "test_bit", scope: !5519, file: !5519, line: 132, type: !5520, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5519 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!547, !376, !5522}
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5524)
!5524 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !189)
!5525 = !DILocalVariable(name: "nr", arg: 1, scope: !5526, file: !5527, line: 210, type: !376)
!5526 = distinct !DISubprogram(name: "variable_test_bit", scope: !5527, file: !5527, line: 210, type: !5520, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5527 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5528 = !DILocation(line: 210, column: 52, scope: !5526, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 135, column: 9, scope: !5518)
!5530 = !DILocalVariable(name: "addr", arg: 2, scope: !5526, file: !5527, line: 210, type: !5522)
!5531 = !DILocation(line: 210, column: 86, scope: !5526, inlinedAt: !5529)
!5532 = !DILocalVariable(name: "oldbit", scope: !5526, file: !5527, line: 212, type: !547)
!5533 = !DILocation(line: 212, column: 7, scope: !5526, inlinedAt: !5529)
!5534 = !DILocalVariable(name: "nr", arg: 1, scope: !5535, file: !5527, line: 204, type: !376)
!5535 = distinct !DISubprogram(name: "constant_test_bit", scope: !5527, file: !5527, line: 204, type: !5520, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5536 = !DILocation(line: 204, column: 52, scope: !5535, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 135, column: 9, scope: !5518)
!5538 = !DILocalVariable(name: "addr", arg: 2, scope: !5535, file: !5527, line: 204, type: !5522)
!5539 = !DILocation(line: 204, column: 86, scope: !5535, inlinedAt: !5537)
!5540 = !DILocalVariable(name: "v", arg: 1, scope: !5541, file: !5268, line: 69, type: !5271)
!5541 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5268, file: !5268, line: 69, type: !5269, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5542 = !DILocation(line: 69, column: 73, scope: !5541, inlinedAt: !5543)
!5543 = distinct !DILocation(line: 134, column: 2, scope: !5518)
!5544 = !DILocalVariable(name: "size", arg: 2, scope: !5541, file: !5268, line: 69, type: !387)
!5545 = !DILocation(line: 69, column: 83, scope: !5541, inlinedAt: !5543)
!5546 = !DILocalVariable(name: "nr", arg: 1, scope: !5518, file: !5519, line: 132, type: !376)
!5547 = !DILocation(line: 132, column: 34, scope: !5518)
!5548 = !DILocalVariable(name: "addr", arg: 2, scope: !5518, file: !5519, line: 132, type: !5522)
!5549 = !DILocation(line: 132, column: 68, scope: !5518)
!5550 = !DILocation(line: 134, column: 25, scope: !5518)
!5551 = !DILocation(line: 134, column: 32, scope: !5518)
!5552 = !DILocation(line: 134, column: 30, scope: !5518)
!5553 = !DILocation(line: 71, column: 19, scope: !5541, inlinedAt: !5543)
!5554 = !DILocation(line: 71, column: 22, scope: !5541, inlinedAt: !5543)
!5555 = !DILocation(line: 71, column: 2, scope: !5541, inlinedAt: !5543)
!5556 = !DILocation(line: 72, column: 2, scope: !5541, inlinedAt: !5543)
!5557 = !DILocation(line: 135, column: 9, scope: !5518)
!5558 = !DILocation(line: 206, column: 19, scope: !5535, inlinedAt: !5537)
!5559 = !DILocation(line: 206, column: 22, scope: !5535, inlinedAt: !5537)
!5560 = !DILocation(line: 206, column: 15, scope: !5535, inlinedAt: !5537)
!5561 = !DILocation(line: 207, column: 4, scope: !5535, inlinedAt: !5537)
!5562 = !DILocation(line: 207, column: 9, scope: !5535, inlinedAt: !5537)
!5563 = !DILocation(line: 207, column: 12, scope: !5535, inlinedAt: !5537)
!5564 = !DILocation(line: 206, column: 44, scope: !5535, inlinedAt: !5537)
!5565 = !DILocation(line: 207, column: 37, scope: !5535, inlinedAt: !5537)
!5566 = !DILocation(line: 217, column: 33, scope: !5526, inlinedAt: !5529)
!5567 = !DILocation(line: 217, column: 46, scope: !5526, inlinedAt: !5529)
!5568 = !DILocation(line: 214, column: 2, scope: !5526, inlinedAt: !5529)
!5569 = !{i32 -2147187036, i32 -2147186976}
!5570 = !DILocation(line: 219, column: 9, scope: !5526, inlinedAt: !5529)
!5571 = !DILocation(line: 135, column: 2, scope: !5518)
!5572 = distinct !DISubprogram(name: "hcd_pci_suspend", scope: !3, file: !3, line: 521, type: !3462, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5573 = !DILocalVariable(name: "dev", arg: 1, scope: !5572, file: !3, line: 521, type: !283)
!5574 = !DILocation(line: 521, column: 43, scope: !5572)
!5575 = !DILocation(line: 523, column: 24, scope: !5572)
!5576 = !DILocation(line: 523, column: 47, scope: !5572)
!5577 = !DILocation(line: 523, column: 29, scope: !5572)
!5578 = !DILocation(line: 523, column: 9, scope: !5572)
!5579 = !DILocation(line: 523, column: 2, scope: !5572)
!5580 = distinct !DISubprogram(name: "hcd_pci_resume", scope: !3, file: !3, line: 571, type: !3462, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5581 = !DILocalVariable(name: "dev", arg: 1, scope: !5580, file: !3, line: 571, type: !283)
!5582 = !DILocation(line: 571, column: 42, scope: !5580)
!5583 = !DILocation(line: 573, column: 23, scope: !5580)
!5584 = !DILocation(line: 573, column: 9, scope: !5580)
!5585 = !DILocation(line: 573, column: 2, scope: !5580)
!5586 = distinct !DISubprogram(name: "check_root_hub_suspended", scope: !3, file: !3, line: 404, type: !3462, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5587 = !DILocalVariable(name: "dev", arg: 1, scope: !5586, file: !3, line: 404, type: !283)
!5588 = !DILocation(line: 404, column: 52, scope: !5586)
!5589 = !DILocalVariable(name: "hcd", scope: !5586, file: !3, line: 406, type: !4200)
!5590 = !DILocation(line: 406, column: 19, scope: !5586)
!5591 = !DILocation(line: 406, column: 41, scope: !5586)
!5592 = !DILocation(line: 406, column: 25, scope: !5586)
!5593 = !DILocation(line: 408, column: 6, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 408, column: 6)
!5595 = !DILocation(line: 408, column: 6, scope: !5586)
!5596 = !DILocation(line: 409, column: 3, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 408, column: 27)
!5598 = !DILocation(line: 410, column: 3, scope: !5597)
!5599 = !DILocation(line: 412, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 412, column: 6)
!5601 = !DILocation(line: 412, column: 11, scope: !5600)
!5602 = !DILocation(line: 412, column: 6, scope: !5586)
!5603 = !DILocation(line: 413, column: 9, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 412, column: 23)
!5605 = !DILocation(line: 413, column: 14, scope: !5604)
!5606 = !DILocation(line: 413, column: 7, scope: !5604)
!5607 = !DILocation(line: 414, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 414, column: 7)
!5609 = !DILocation(line: 414, column: 7, scope: !5604)
!5610 = !DILocation(line: 415, column: 4, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 414, column: 28)
!5612 = !DILocation(line: 416, column: 4, scope: !5611)
!5613 = !DILocation(line: 418, column: 2, scope: !5604)
!5614 = !DILocation(line: 419, column: 2, scope: !5586)
!5615 = !DILocation(line: 420, column: 1, scope: !5586)
!5616 = distinct !DISubprogram(name: "hcd_pci_restore", scope: !3, file: !3, line: 576, type: !3462, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5617 = !DILocalVariable(name: "dev", arg: 1, scope: !5616, file: !3, line: 576, type: !283)
!5618 = !DILocation(line: 576, column: 43, scope: !5616)
!5619 = !DILocation(line: 578, column: 23, scope: !5616)
!5620 = !DILocation(line: 578, column: 9, scope: !5616)
!5621 = !DILocation(line: 578, column: 2, scope: !5616)
!5622 = distinct !DISubprogram(name: "hcd_pci_suspend_noirq", scope: !3, file: !3, line: 526, type: !3462, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5623 = !DILocalVariable(name: "dev", arg: 1, scope: !5622, file: !3, line: 526, type: !283)
!5624 = !DILocation(line: 526, column: 49, scope: !5622)
!5625 = !DILocalVariable(name: "pci_dev", scope: !5622, file: !3, line: 528, type: !190)
!5626 = !DILocation(line: 528, column: 19, scope: !5622)
!5627 = !DILocalVariable(name: "__mptr", scope: !5628, file: !3, line: 528, type: !176)
!5628 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 528, column: 29)
!5629 = !DILocation(line: 528, column: 29, scope: !5628)
!5630 = !DILocation(line: 528, column: 29, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 528, column: 29)
!5632 = !DILocalVariable(name: "hcd", scope: !5622, file: !3, line: 529, type: !4200)
!5633 = !DILocation(line: 529, column: 19, scope: !5622)
!5634 = !DILocation(line: 529, column: 41, scope: !5622)
!5635 = !DILocation(line: 529, column: 25, scope: !5622)
!5636 = !DILocalVariable(name: "retval", scope: !5622, file: !3, line: 530, type: !180)
!5637 = !DILocation(line: 530, column: 8, scope: !5622)
!5638 = !DILocation(line: 532, column: 36, scope: !5622)
!5639 = !DILocation(line: 532, column: 11, scope: !5622)
!5640 = !DILocation(line: 532, column: 9, scope: !5622)
!5641 = !DILocation(line: 533, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 533, column: 6)
!5643 = !DILocation(line: 533, column: 6, scope: !5622)
!5644 = !DILocation(line: 534, column: 10, scope: !5642)
!5645 = !DILocation(line: 534, column: 3, scope: !5642)
!5646 = !DILocation(line: 536, column: 17, scope: !5622)
!5647 = !DILocation(line: 536, column: 2, scope: !5622)
!5648 = !DILocation(line: 542, column: 6, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 542, column: 6)
!5650 = !DILocation(line: 542, column: 6, scope: !5622)
!5651 = !DILocation(line: 543, column: 28, scope: !5649)
!5652 = !DILocation(line: 543, column: 3, scope: !5649)
!5653 = !DILocation(line: 549, column: 32, scope: !5622)
!5654 = !DILocation(line: 549, column: 11, scope: !5622)
!5655 = !DILocation(line: 549, column: 9, scope: !5622)
!5656 = !DILocation(line: 550, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 550, column: 6)
!5658 = !DILocation(line: 550, column: 13, scope: !5657)
!5659 = !DILocation(line: 550, column: 6, scope: !5622)
!5660 = !DILocation(line: 552, column: 10, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 550, column: 22)
!5662 = !DILocation(line: 553, column: 2, scope: !5661)
!5663 = !DILocation(line: 553, column: 13, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 553, column: 13)
!5665 = !DILocation(line: 553, column: 20, scope: !5664)
!5666 = !DILocation(line: 553, column: 13, scope: !5657)
!5667 = !DILocation(line: 556, column: 2, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 553, column: 26)
!5669 = !DILocation(line: 557, column: 3, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 556, column: 9)
!5671 = !DILocation(line: 557, column: 3, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 557, column: 3)
!5673 = !DILocation(line: 558, column: 10, scope: !5670)
!5674 = !DILocation(line: 558, column: 3, scope: !5670)
!5675 = !DILocation(line: 561, column: 20, scope: !5622)
!5676 = !DILocation(line: 561, column: 2, scope: !5622)
!5677 = !DILocation(line: 562, column: 9, scope: !5622)
!5678 = !DILocation(line: 562, column: 2, scope: !5622)
!5679 = !DILocation(line: 563, column: 1, scope: !5622)
!5680 = distinct !DISubprogram(name: "hcd_pci_resume_noirq", scope: !3, file: !3, line: 565, type: !3462, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5681 = !DILocalVariable(name: "dev", arg: 1, scope: !5680, file: !3, line: 565, type: !283)
!5682 = !DILocation(line: 565, column: 48, scope: !5680)
!5683 = !DILocalVariable(name: "__mptr", scope: !5684, file: !3, line: 567, type: !176)
!5684 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 567, column: 20)
!5685 = !DILocation(line: 567, column: 20, scope: !5684)
!5686 = !DILocation(line: 567, column: 20, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 567, column: 20)
!5688 = !DILocation(line: 567, column: 2, scope: !5680)
!5689 = !DILocation(line: 568, column: 2, scope: !5680)
!5690 = distinct !DISubprogram(name: "hcd_pci_runtime_suspend", scope: !3, file: !3, line: 591, type: !3462, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5691 = !DILocalVariable(name: "dev", arg: 1, scope: !5690, file: !3, line: 591, type: !283)
!5692 = !DILocation(line: 591, column: 51, scope: !5690)
!5693 = !DILocalVariable(name: "retval", scope: !5690, file: !3, line: 593, type: !180)
!5694 = !DILocation(line: 593, column: 6, scope: !5690)
!5695 = !DILocation(line: 595, column: 26, scope: !5690)
!5696 = !DILocation(line: 595, column: 11, scope: !5690)
!5697 = !DILocation(line: 595, column: 9, scope: !5690)
!5698 = !DILocation(line: 596, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 596, column: 6)
!5700 = !DILocation(line: 596, column: 13, scope: !5699)
!5701 = !DILocation(line: 596, column: 6, scope: !5690)
!5702 = !DILocalVariable(name: "__mptr", scope: !5703, file: !3, line: 597, type: !176)
!5703 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 597, column: 21)
!5704 = !DILocation(line: 597, column: 21, scope: !5703)
!5705 = !DILocation(line: 597, column: 21, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 597, column: 21)
!5707 = !DILocation(line: 597, column: 3, scope: !5699)
!5708 = !DILocation(line: 599, column: 9, scope: !5690)
!5709 = !DILocation(line: 599, column: 2, scope: !5690)
!5710 = distinct !DISubprogram(name: "hcd_pci_runtime_resume", scope: !3, file: !3, line: 602, type: !3462, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5711 = !DILocalVariable(name: "dev", arg: 1, scope: !5710, file: !3, line: 602, type: !283)
!5712 = !DILocation(line: 602, column: 50, scope: !5710)
!5713 = !DILocalVariable(name: "retval", scope: !5710, file: !3, line: 604, type: !180)
!5714 = !DILocation(line: 604, column: 6, scope: !5710)
!5715 = !DILocalVariable(name: "__mptr", scope: !5716, file: !3, line: 606, type: !176)
!5716 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 606, column: 20)
!5717 = !DILocation(line: 606, column: 20, scope: !5716)
!5718 = !DILocation(line: 606, column: 20, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 606, column: 20)
!5720 = !DILocation(line: 606, column: 2, scope: !5710)
!5721 = !DILocation(line: 607, column: 25, scope: !5710)
!5722 = !DILocation(line: 607, column: 11, scope: !5710)
!5723 = !DILocation(line: 607, column: 9, scope: !5710)
!5724 = !DILocation(line: 609, column: 9, scope: !5710)
!5725 = !DILocation(line: 609, column: 2, scope: !5710)
!5726 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5727, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{!224, !3760}
!5729 = !DILocalVariable(name: "dev", arg: 1, scope: !5726, file: !73, line: 609, type: !3760)
!5730 = !DILocation(line: 609, column: 57, scope: !5726)
!5731 = !DILocation(line: 612, column: 6, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5726, file: !73, line: 612, column: 6)
!5733 = !DILocation(line: 612, column: 11, scope: !5732)
!5734 = !DILocation(line: 612, column: 6, scope: !5726)
!5735 = !DILocation(line: 613, column: 10, scope: !5732)
!5736 = !DILocation(line: 613, column: 15, scope: !5732)
!5737 = !DILocation(line: 613, column: 3, scope: !5732)
!5738 = !DILocation(line: 615, column: 23, scope: !5726)
!5739 = !DILocation(line: 615, column: 28, scope: !5726)
!5740 = !DILocation(line: 615, column: 9, scope: !5726)
!5741 = !DILocation(line: 615, column: 2, scope: !5726)
!5742 = !DILocation(line: 616, column: 1, scope: !5726)
!5743 = distinct !DISubprogram(name: "kobject_name", scope: !288, file: !288, line: 88, type: !5744, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!224, !5746}
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!5748 = !DILocalVariable(name: "kobj", arg: 1, scope: !5743, file: !288, line: 88, type: !5746)
!5749 = !DILocation(line: 88, column: 62, scope: !5743)
!5750 = !DILocation(line: 90, column: 9, scope: !5743)
!5751 = !DILocation(line: 90, column: 15, scope: !5743)
!5752 = !DILocation(line: 90, column: 2, scope: !5743)
!5753 = distinct !DISubprogram(name: "is_ohci_or_uhci", scope: !3, file: !3, line: 37, type: !4041, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5754 = !DILocalVariable(name: "pdev", arg: 1, scope: !5753, file: !3, line: 37, type: !190)
!5755 = !DILocation(line: 37, column: 51, scope: !5753)
!5756 = !DILocation(line: 39, column: 9, scope: !5753)
!5757 = !DILocation(line: 39, column: 15, scope: !5753)
!5758 = !DILocation(line: 39, column: 21, scope: !5753)
!5759 = !DILocation(line: 39, column: 32, scope: !5753)
!5760 = !DILocation(line: 39, column: 35, scope: !5753)
!5761 = !DILocation(line: 39, column: 41, scope: !5753)
!5762 = !DILocation(line: 39, column: 47, scope: !5753)
!5763 = !DILocation(line: 39, column: 2, scope: !5753)
!5764 = distinct !DISubprogram(name: "device_lock", scope: !73, file: !73, line: 729, type: !3453, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5765 = !DILocalVariable(name: "dev", arg: 1, scope: !5764, file: !73, line: 729, type: !283)
!5766 = !DILocation(line: 729, column: 47, scope: !5764)
!5767 = !DILocation(line: 731, column: 14, scope: !5764)
!5768 = !DILocation(line: 731, column: 19, scope: !5764)
!5769 = !DILocation(line: 731, column: 2, scope: !5764)
!5770 = !DILocation(line: 732, column: 1, scope: !5764)
!5771 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5772, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!176, !3760}
!5774 = !DILocalVariable(name: "dev", arg: 1, scope: !5771, file: !73, line: 655, type: !3760)
!5775 = !DILocation(line: 655, column: 58, scope: !5771)
!5776 = !DILocation(line: 657, column: 9, scope: !5771)
!5777 = !DILocation(line: 657, column: 14, scope: !5771)
!5778 = !DILocation(line: 657, column: 2, scope: !5771)
!5779 = distinct !DISubprogram(name: "device_unlock", scope: !73, file: !73, line: 744, type: !3453, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5780 = !DILocalVariable(name: "dev", arg: 1, scope: !5779, file: !73, line: 744, type: !283)
!5781 = !DILocation(line: 744, column: 49, scope: !5779)
!5782 = !DILocation(line: 746, column: 16, scope: !5779)
!5783 = !DILocation(line: 746, column: 21, scope: !5779)
!5784 = !DILocation(line: 746, column: 2, scope: !5779)
!5785 = !DILocation(line: 747, column: 1, scope: !5779)
!5786 = distinct !DISubprogram(name: "kasan_check_write", scope: !5787, file: !5787, line: 38, type: !5788, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5787 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!547, !5271, !7}
!5790 = !DILocalVariable(name: "p", arg: 1, scope: !5786, file: !5787, line: 38, type: !5271)
!5791 = !DILocation(line: 38, column: 59, scope: !5786)
!5792 = !DILocalVariable(name: "size", arg: 2, scope: !5786, file: !5787, line: 38, type: !7)
!5793 = !DILocation(line: 38, column: 75, scope: !5786)
!5794 = !DILocation(line: 40, column: 2, scope: !5786)
!5795 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5796, file: !5796, line: 178, type: !5797, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5796 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5797 = !DISubroutineType(types: !5798)
!5798 = !{null, !5271, !387, !180}
!5799 = !DILocalVariable(name: "ptr", arg: 1, scope: !5795, file: !5796, line: 178, type: !5271)
!5800 = !DILocation(line: 178, column: 60, scope: !5795)
!5801 = !DILocalVariable(name: "size", arg: 2, scope: !5795, file: !5796, line: 178, type: !387)
!5802 = !DILocation(line: 178, column: 72, scope: !5795)
!5803 = !DILocalVariable(name: "type", arg: 3, scope: !5795, file: !5796, line: 179, type: !180)
!5804 = !DILocation(line: 179, column: 15, scope: !5795)
!5805 = !DILocation(line: 179, column: 23, scope: !5795)
!5806 = distinct !DISubprogram(name: "kasan_check_read", scope: !5787, file: !5787, line: 34, type: !5788, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5807 = !DILocalVariable(name: "p", arg: 1, scope: !5806, file: !5787, line: 34, type: !5271)
!5808 = !DILocation(line: 34, column: 58, scope: !5806)
!5809 = !DILocalVariable(name: "size", arg: 2, scope: !5806, file: !5787, line: 34, type: !7)
!5810 = !DILocation(line: 34, column: 74, scope: !5806)
!5811 = !DILocation(line: 36, column: 2, scope: !5806)
!5812 = distinct !DISubprogram(name: "suspend_common", scope: !3, file: !3, line: 422, type: !5813, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!180, !283, !547}
!5815 = !DILocalVariable(name: "dev", arg: 1, scope: !5812, file: !3, line: 422, type: !283)
!5816 = !DILocation(line: 422, column: 42, scope: !5812)
!5817 = !DILocalVariable(name: "do_wakeup", arg: 2, scope: !5812, file: !3, line: 422, type: !547)
!5818 = !DILocation(line: 422, column: 52, scope: !5812)
!5819 = !DILocalVariable(name: "pci_dev", scope: !5812, file: !3, line: 424, type: !190)
!5820 = !DILocation(line: 424, column: 19, scope: !5812)
!5821 = !DILocalVariable(name: "__mptr", scope: !5822, file: !3, line: 424, type: !176)
!5822 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 424, column: 29)
!5823 = !DILocation(line: 424, column: 29, scope: !5822)
!5824 = !DILocation(line: 424, column: 29, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 424, column: 29)
!5826 = !DILocalVariable(name: "hcd", scope: !5812, file: !3, line: 425, type: !4200)
!5827 = !DILocation(line: 425, column: 19, scope: !5812)
!5828 = !DILocation(line: 425, column: 41, scope: !5812)
!5829 = !DILocation(line: 425, column: 25, scope: !5812)
!5830 = !DILocalVariable(name: "retval", scope: !5812, file: !3, line: 426, type: !180)
!5831 = !DILocation(line: 426, column: 8, scope: !5812)
!5832 = !DILocation(line: 433, column: 36, scope: !5812)
!5833 = !DILocation(line: 433, column: 11, scope: !5812)
!5834 = !DILocation(line: 433, column: 9, scope: !5812)
!5835 = !DILocation(line: 434, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 434, column: 6)
!5837 = !DILocation(line: 434, column: 6, scope: !5812)
!5838 = !DILocation(line: 435, column: 10, scope: !5836)
!5839 = !DILocation(line: 435, column: 3, scope: !5836)
!5840 = !DILocation(line: 437, column: 6, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 437, column: 6)
!5842 = !DILocation(line: 437, column: 11, scope: !5841)
!5843 = !DILocation(line: 437, column: 19, scope: !5841)
!5844 = !DILocation(line: 437, column: 31, scope: !5841)
!5845 = !DILocation(line: 437, column: 35, scope: !5841)
!5846 = !DILocation(line: 437, column: 6, scope: !5812)
!5847 = !DILocation(line: 441, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 441, column: 7)
!5849 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 437, column: 50)
!5850 = !DILocation(line: 441, column: 17, scope: !5848)
!5851 = !DILocation(line: 441, column: 20, scope: !5848)
!5852 = !DILocation(line: 441, column: 7, scope: !5849)
!5853 = !DILocation(line: 442, column: 4, scope: !5848)
!5854 = !DILocation(line: 443, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 443, column: 7)
!5856 = !DILocation(line: 443, column: 17, scope: !5855)
!5857 = !DILocation(line: 443, column: 20, scope: !5855)
!5858 = !DILocation(line: 443, column: 25, scope: !5855)
!5859 = !DILocation(line: 443, column: 36, scope: !5855)
!5860 = !DILocation(line: 444, column: 5, scope: !5855)
!5861 = !DILocation(line: 443, column: 7, scope: !5849)
!5862 = !DILocation(line: 445, column: 4, scope: !5855)
!5863 = !DILocation(line: 446, column: 12, scope: !5849)
!5864 = !DILocation(line: 446, column: 17, scope: !5849)
!5865 = !DILocation(line: 446, column: 25, scope: !5849)
!5866 = !DILocation(line: 446, column: 37, scope: !5849)
!5867 = !DILocation(line: 446, column: 42, scope: !5849)
!5868 = !DILocation(line: 446, column: 10, scope: !5849)
!5869 = !DILocation(line: 447, column: 3, scope: !5849)
!5870 = !DILocation(line: 447, column: 3, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 447, column: 3)
!5872 = !DILocation(line: 450, column: 8, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 450, column: 7)
!5874 = !DILocation(line: 450, column: 15, scope: !5873)
!5875 = !DILocation(line: 450, column: 20, scope: !5873)
!5876 = !DILocation(line: 450, column: 23, scope: !5873)
!5877 = !DILocation(line: 450, column: 33, scope: !5873)
!5878 = !DILocation(line: 450, column: 36, scope: !5873)
!5879 = !DILocation(line: 450, column: 61, scope: !5873)
!5880 = !DILocation(line: 451, column: 6, scope: !5873)
!5881 = !DILocation(line: 451, column: 13, scope: !5873)
!5882 = !DILocation(line: 451, column: 18, scope: !5873)
!5883 = !DILocation(line: 451, column: 21, scope: !5873)
!5884 = !DILocation(line: 451, column: 31, scope: !5873)
!5885 = !DILocation(line: 451, column: 34, scope: !5873)
!5886 = !DILocation(line: 451, column: 39, scope: !5873)
!5887 = !DILocation(line: 451, column: 50, scope: !5873)
!5888 = !DILocation(line: 452, column: 6, scope: !5873)
!5889 = !DILocation(line: 450, column: 7, scope: !5849)
!5890 = !DILocation(line: 453, column: 8, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 453, column: 8)
!5892 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 452, column: 44)
!5893 = !DILocation(line: 453, column: 13, scope: !5891)
!5894 = !DILocation(line: 453, column: 21, scope: !5891)
!5895 = !DILocation(line: 453, column: 8, scope: !5892)
!5896 = !DILocation(line: 454, column: 5, scope: !5891)
!5897 = !DILocation(line: 454, column: 10, scope: !5891)
!5898 = !DILocation(line: 454, column: 18, scope: !5891)
!5899 = !DILocation(line: 454, column: 29, scope: !5891)
!5900 = !DILocation(line: 455, column: 11, scope: !5892)
!5901 = !DILocation(line: 456, column: 3, scope: !5892)
!5902 = !DILocation(line: 457, column: 7, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 457, column: 7)
!5904 = !DILocation(line: 457, column: 7, scope: !5849)
!5905 = !DILocation(line: 458, column: 11, scope: !5903)
!5906 = !DILocation(line: 458, column: 4, scope: !5903)
!5907 = !DILocation(line: 459, column: 2, scope: !5849)
!5908 = !DILocation(line: 465, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 465, column: 6)
!5910 = !DILocation(line: 465, column: 12, scope: !5909)
!5911 = !DILocation(line: 465, column: 6, scope: !5812)
!5912 = !DILocation(line: 466, column: 34, scope: !5909)
!5913 = !DILocation(line: 466, column: 19, scope: !5909)
!5914 = !DILocation(line: 466, column: 3, scope: !5909)
!5915 = !DILocation(line: 473, column: 21, scope: !5812)
!5916 = !DILocation(line: 473, column: 2, scope: !5812)
!5917 = !DILocation(line: 474, column: 9, scope: !5812)
!5918 = !DILocation(line: 474, column: 2, scope: !5812)
!5919 = !DILocation(line: 475, column: 1, scope: !5812)
!5920 = distinct !DISubprogram(name: "device_may_wakeup", scope: !3611, file: !3611, line: 82, type: !5921, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!547, !283}
!5923 = !DILocalVariable(name: "dev", arg: 1, scope: !5920, file: !3611, line: 82, type: !283)
!5924 = !DILocation(line: 82, column: 53, scope: !5920)
!5925 = !DILocation(line: 84, column: 9, scope: !5920)
!5926 = !DILocation(line: 84, column: 14, scope: !5920)
!5927 = !DILocation(line: 84, column: 20, scope: !5920)
!5928 = !DILocation(line: 84, column: 31, scope: !5920)
!5929 = !DILocation(line: 84, column: 36, scope: !5920)
!5930 = !DILocation(line: 84, column: 41, scope: !5920)
!5931 = !DILocation(line: 84, column: 47, scope: !5920)
!5932 = !DILocation(line: 84, column: 35, scope: !5920)
!5933 = !DILocation(line: 84, column: 34, scope: !5920)
!5934 = !DILocation(line: 0, scope: !5920)
!5935 = !DILocation(line: 84, column: 2, scope: !5920)
!5936 = distinct !DISubprogram(name: "resume_common", scope: !3, file: !3, line: 477, type: !5937, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!180, !283, !180}
!5939 = !DILocalVariable(name: "dev", arg: 1, scope: !5936, file: !3, line: 477, type: !283)
!5940 = !DILocation(line: 477, column: 41, scope: !5936)
!5941 = !DILocalVariable(name: "event", arg: 2, scope: !5936, file: !3, line: 477, type: !180)
!5942 = !DILocation(line: 477, column: 50, scope: !5936)
!5943 = !DILocalVariable(name: "pci_dev", scope: !5936, file: !3, line: 479, type: !190)
!5944 = !DILocation(line: 479, column: 19, scope: !5936)
!5945 = !DILocalVariable(name: "__mptr", scope: !5946, file: !3, line: 479, type: !176)
!5946 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 479, column: 29)
!5947 = !DILocation(line: 479, column: 29, scope: !5946)
!5948 = !DILocation(line: 479, column: 29, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 479, column: 29)
!5950 = !DILocalVariable(name: "hcd", scope: !5936, file: !3, line: 480, type: !4200)
!5951 = !DILocation(line: 480, column: 19, scope: !5936)
!5952 = !DILocation(line: 480, column: 41, scope: !5936)
!5953 = !DILocation(line: 480, column: 25, scope: !5936)
!5954 = !DILocalVariable(name: "retval", scope: !5936, file: !3, line: 481, type: !180)
!5955 = !DILocation(line: 481, column: 8, scope: !5936)
!5956 = !DILocation(line: 483, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 483, column: 6)
!5958 = !DILocation(line: 483, column: 26, scope: !5957)
!5959 = !DILocation(line: 484, column: 5, scope: !5957)
!5960 = !DILocation(line: 484, column: 10, scope: !5957)
!5961 = !DILocation(line: 484, column: 21, scope: !5957)
!5962 = !DILocation(line: 485, column: 5, scope: !5957)
!5963 = !DILocation(line: 483, column: 6, scope: !5936)
!5964 = !DILocation(line: 487, column: 3, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 485, column: 39)
!5966 = !DILocation(line: 490, column: 29, scope: !5936)
!5967 = !DILocation(line: 490, column: 11, scope: !5936)
!5968 = !DILocation(line: 490, column: 9, scope: !5936)
!5969 = !DILocation(line: 491, column: 6, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 491, column: 6)
!5971 = !DILocation(line: 491, column: 13, scope: !5970)
!5972 = !DILocation(line: 491, column: 6, scope: !5936)
!5973 = !DILocation(line: 492, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 491, column: 18)
!5975 = !DILocation(line: 493, column: 10, scope: !5974)
!5976 = !DILocation(line: 493, column: 3, scope: !5974)
!5977 = !DILocation(line: 496, column: 17, scope: !5936)
!5978 = !DILocation(line: 496, column: 2, scope: !5936)
!5979 = !DILocation(line: 498, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 498, column: 6)
!5981 = !DILocation(line: 498, column: 11, scope: !5980)
!5982 = !DILocation(line: 498, column: 19, scope: !5980)
!5983 = !DILocation(line: 498, column: 30, scope: !5980)
!5984 = !DILocation(line: 498, column: 34, scope: !5980)
!5985 = !DILocation(line: 498, column: 6, scope: !5936)
!5986 = !DILocation(line: 505, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 505, column: 7)
!5988 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 498, column: 49)
!5989 = !DILocation(line: 505, column: 16, scope: !5987)
!5990 = !DILocation(line: 505, column: 22, scope: !5987)
!5991 = !DILocation(line: 505, column: 33, scope: !5987)
!5992 = !DILocation(line: 505, column: 36, scope: !5987)
!5993 = !DILocation(line: 505, column: 42, scope: !5987)
!5994 = !DILocation(line: 505, column: 7, scope: !5988)
!5995 = !DILocation(line: 506, column: 23, scope: !5987)
!5996 = !DILocation(line: 506, column: 32, scope: !5987)
!5997 = !DILocation(line: 506, column: 4, scope: !5987)
!5998 = !DILocation(line: 509, column: 12, scope: !5988)
!5999 = !DILocation(line: 509, column: 17, scope: !5988)
!6000 = !DILocation(line: 509, column: 25, scope: !5988)
!6001 = !DILocation(line: 509, column: 36, scope: !5988)
!6002 = !DILocation(line: 510, column: 5, scope: !5988)
!6003 = !DILocation(line: 510, column: 11, scope: !5988)
!6004 = !DILocation(line: 509, column: 10, scope: !5988)
!6005 = !DILocation(line: 511, column: 7, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 511, column: 7)
!6007 = !DILocation(line: 511, column: 7, scope: !5988)
!6008 = !DILocation(line: 512, column: 4, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6006, file: !3, line: 511, column: 15)
!6010 = !DILocation(line: 513, column: 16, scope: !6009)
!6011 = !DILocation(line: 513, column: 4, scope: !6009)
!6012 = !DILocation(line: 514, column: 3, scope: !6009)
!6013 = !DILocation(line: 515, column: 2, scope: !5988)
!6014 = !DILocation(line: 516, column: 9, scope: !5936)
!6015 = !DILocation(line: 516, column: 2, scope: !5936)
!6016 = !DILocation(line: 517, column: 1, scope: !5936)
!6017 = distinct !DISubprogram(name: "ehci_wait_for_companions", scope: !3, file: !3, line: 144, type: !5059, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!6018 = !DILocalVariable(name: "pdev", arg: 1, scope: !6017, file: !3, line: 144, type: !190)
!6019 = !DILocation(line: 144, column: 54, scope: !6017)
!6020 = !DILocalVariable(name: "hcd", arg: 2, scope: !6017, file: !3, line: 144, type: !4200)
!6021 = !DILocation(line: 144, column: 76, scope: !6017)
!6022 = !DILocalVariable(name: "companion", arg: 3, scope: !6017, file: !3, line: 145, type: !190)
!6023 = !DILocation(line: 145, column: 19, scope: !6017)
!6024 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !6017, file: !3, line: 145, type: !4200)
!6025 = !DILocation(line: 145, column: 46, scope: !6017)
!6026 = !DILocation(line: 147, column: 22, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 147, column: 6)
!6028 = !DILocation(line: 147, column: 6, scope: !6027)
!6029 = !DILocation(line: 147, column: 6, scope: !6017)
!6030 = !DILocation(line: 148, column: 27, scope: !6027)
!6031 = !DILocation(line: 148, column: 33, scope: !6027)
!6032 = !DILocation(line: 148, column: 39, scope: !6027)
!6033 = !DILocation(line: 148, column: 50, scope: !6027)
!6034 = !DILocation(line: 148, column: 3, scope: !6027)
!6035 = !DILocation(line: 149, column: 1, scope: !6017)
!6036 = distinct !DISubprogram(name: "powermac_set_asic", scope: !3, file: !3, line: 399, type: !6037, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !314)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{null, !190, !180}
!6039 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !6036, file: !3, line: 399, type: !190)
!6040 = !DILocation(line: 399, column: 54, scope: !6036)
!6041 = !DILocalVariable(name: "enable", arg: 2, scope: !6036, file: !3, line: 399, type: !180)
!6042 = !DILocation(line: 399, column: 67, scope: !6036)
!6043 = !DILocation(line: 400, column: 2, scope: !6036)
