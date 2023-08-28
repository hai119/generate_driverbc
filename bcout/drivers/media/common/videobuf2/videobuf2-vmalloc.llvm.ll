; ModuleID = '../bcout/drivers/media/common/videobuf2/videobuf2-vmalloc.llvm.bc'
source_filename = "drivers/media/common/videobuf2/videobuf2-vmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.vb2_mem_ops = type { i8* (%struct.device*, i64, i64, i32, i32)*, void (i8*)*, %struct.dma_buf* (i8*, i64)*, i8* (%struct.device*, i64, i64, i32)*, void (i8*)*, void (i8*)*, void (i8*)*, i8* (%struct.device*, %struct.dma_buf*, i64, i32)*, void (i8*)*, i32 (i8*)*, void (i8*)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*)*, i32 (i8*, %struct.vm_area_struct*)* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.dma_buf = type { i64, %struct.file*, %struct.list_head, %struct.dma_buf_ops*, %struct.mutex, i32, i8*, i8*, i8*, %struct.spinlock, %struct.module*, %struct.list_head, i8*, %struct.dma_resv*, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_ops = type { i8, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, void (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf_attachment*)*, void (%struct.dma_buf_attachment*)*, %struct.sg_table* (%struct.dma_buf_attachment*, i32)*, void (%struct.dma_buf_attachment*, %struct.sg_table*, i32)*, void (%struct.dma_buf*)*, i32 (%struct.dma_buf*, i32)*, i32 (%struct.dma_buf*, i32)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i8* (%struct.dma_buf*)*, void (%struct.dma_buf*, i8*)* }
%struct.dma_buf_attachment = type { %struct.dma_buf*, %struct.device*, %struct.list_head, %struct.sg_table*, i32, i8, %struct.dma_buf_attach_ops*, i8*, i8* }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.dma_buf_attach_ops = type { i8, void (%struct.dma_buf_attachment*)* }
%struct.dma_resv = type opaque
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, %struct.wait_queue_head*, i32 }
%struct.dma_fence_cb = type { %struct.list_head, void (%struct.dma_fence*, %struct.dma_fence_cb*)* }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.65, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.65 = type { %struct.list_head }
%struct.kmem_cache = type opaque
%struct.vb2_vmalloc_buf = type { i8*, %struct.frame_vector*, i32, i64, %struct.refcount_struct, %struct.vb2_vmarea_handler, %struct.dma_buf* }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x i8*] }
%struct.vb2_vmarea_handler = type { %struct.refcount_struct*, void (i8*)*, i8* }
%struct.dma_buf_export_info = type { i8*, %struct.module*, %struct.dma_buf_ops*, i64, i32, %struct.dma_resv*, i8* }
%struct.vb2_vmalloc_attachment = type { %struct.sg_table, i32 }

@vb2_vmalloc_memops = dso_local constant %struct.vb2_mem_ops { i8* (%struct.device*, i64, i64, i32, i32)* @vb2_vmalloc_alloc, void (i8*)* @vb2_vmalloc_put, %struct.dma_buf* (i8*, i64)* @vb2_vmalloc_get_dmabuf, i8* (%struct.device*, i64, i64, i32)* @vb2_vmalloc_get_userptr, void (i8*)* @vb2_vmalloc_put_userptr, void (i8*)* null, void (i8*)* null, i8* (%struct.device*, %struct.dma_buf*, i64, i32)* @vb2_vmalloc_attach_dmabuf, void (i8*)* @vb2_vmalloc_detach_dmabuf, i32 (i8*)* @vb2_vmalloc_map_dmabuf, void (i8*)* @vb2_vmalloc_unmap_dmabuf, i8* (i8*)* @vb2_vmalloc_vaddr, i8* (i8*)* null, i32 (i8*)* @vb2_vmalloc_num_users, i32 (i8*, %struct.vm_area_struct*)* @vb2_vmalloc_mmap }, align 8, !dbg !0
@__UNIQUE_ID_description247 = internal constant [77 x i8] c"videobuf2_vmalloc.description=vmalloc memory handling routines for videobuf2\00", section ".modinfo", align 1, !dbg !3316
@__UNIQUE_ID_author248 = internal constant [57 x i8] c"videobuf2_vmalloc.author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1, !dbg !3321
@__UNIQUE_ID_file249 = internal constant [72 x i8] c"videobuf2_vmalloc.file=drivers/media/common/videobuf2/videobuf2-vmalloc\00", section ".modinfo", align 1, !dbg !3326
@__UNIQUE_ID_license250 = internal constant [30 x i8] c"videobuf2_vmalloc.license=GPL\00", section ".modinfo", align 1, !dbg !3331
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"videobuf2_vmalloc\00", align 1
@vb2_vmalloc_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_vmalloc_dmabuf_ops_attach, void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_vmalloc_dmabuf_ops_detach, i32 (%struct.dma_buf_attachment*)* null, void (%struct.dma_buf_attachment*)* null, %struct.sg_table* (%struct.dma_buf_attachment*, i32)* @vb2_vmalloc_dmabuf_ops_map, void (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* @vb2_vmalloc_dmabuf_ops_unmap, void (%struct.dma_buf*)* @vb2_vmalloc_dmabuf_ops_release, i32 (%struct.dma_buf*, i32)* null, i32 (%struct.dma_buf*, i32)* null, i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @vb2_vmalloc_dmabuf_ops_mmap, i8* (%struct.dma_buf*)* @vb2_vmalloc_dmabuf_ops_vmap, void (%struct.dma_buf*, i8*)* null }, align 8, !dbg !3336
@.str.2 = private unnamed_addr constant [51 x i8] c"drivers/media/common/videobuf2/videobuf2-vmalloc.c\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"\013Address of an unallocated plane requested or cannot map user pointer\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\013No memory to map\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\013Remapping vmalloc memory, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([77 x i8], [77 x i8]* @__UNIQUE_ID_description247, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_author248, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__UNIQUE_ID_file249, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_license250, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_vmalloc_alloc(%struct.device* %dev, i64 %attrs, i64 %size, i32 %dma_dir, i32 %gfp_flags) #0 !dbg !3984 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attrs.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %gfp_flags.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3985, metadata !DIExpression()), !dbg !3986
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !3987, metadata !DIExpression()), !dbg !3988
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3989, metadata !DIExpression()), !dbg !3990
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  store i32 %gfp_flags, i32* %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_flags.addr, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !3995, metadata !DIExpression()), !dbg !4022
  %0 = load i32, i32* %gfp_flags.addr, align 4, !dbg !4023
  %or = or i32 3264, %0, !dbg !4024
  %call = call i8* @kzalloc(i64 72, i32 %or) #8, !dbg !4025
  %1 = bitcast i8* %call to %struct.vb2_vmalloc_buf*, !dbg !4025
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4026
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4027
  %tobool = icmp ne %struct.vb2_vmalloc_buf* %2, null, !dbg !4027
  br i1 %tobool, label %if.end, label %if.then, !dbg !4029

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !4030
  store i8* %call1, i8** %retval, align 8, !dbg !4031
  br label %return, !dbg !4031

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !4032
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4033
  %size2 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 3, !dbg !4034
  store i64 %3, i64* %size2, align 8, !dbg !4035
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4036
  %size3 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %5, i32 0, i32 3, !dbg !4037
  %6 = load i64, i64* %size3, align 8, !dbg !4037
  %call4 = call i8* @vmalloc_user(i64 %6) #8, !dbg !4038
  %7 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4039
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %7, i32 0, i32 0, !dbg !4040
  store i8* %call4, i8** %vaddr, align 8, !dbg !4041
  %8 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4042
  %vaddr5 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %8, i32 0, i32 0, !dbg !4044
  %9 = load i8*, i8** %vaddr5, align 8, !dbg !4044
  %tobool6 = icmp ne i8* %9, null, !dbg !4042
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4045

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !4046
  %10 = load i32, i32* %tmp, align 4, !dbg !4050
  %11 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4051
  %12 = bitcast %struct.vb2_vmalloc_buf* %11 to i8*, !dbg !4051
  call void @kfree(i8* %12) #8, !dbg !4052
  %call8 = call i8* @ERR_PTR(i64 -12) #8, !dbg !4053
  store i8* %call8, i8** %retval, align 8, !dbg !4054
  br label %return, !dbg !4054

if.end9:                                          ; preds = %if.end
  %13 = load i32, i32* %dma_dir.addr, align 4, !dbg !4055
  %14 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4056
  %dma_dir10 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %14, i32 0, i32 2, !dbg !4057
  store i32 %13, i32* %dma_dir10, align 8, !dbg !4058
  %15 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4059
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %15, i32 0, i32 4, !dbg !4060
  %16 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4061
  %handler = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %16, i32 0, i32 5, !dbg !4062
  %refcount11 = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler, i32 0, i32 0, !dbg !4063
  store %struct.refcount_struct* %refcount, %struct.refcount_struct** %refcount11, align 8, !dbg !4064
  %17 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4065
  %handler12 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %17, i32 0, i32 5, !dbg !4066
  %put = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler12, i32 0, i32 1, !dbg !4067
  store void (i8*)* @vb2_vmalloc_put, void (i8*)** %put, align 8, !dbg !4068
  %18 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4069
  %19 = bitcast %struct.vb2_vmalloc_buf* %18 to i8*, !dbg !4069
  %20 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4070
  %handler13 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %20, i32 0, i32 5, !dbg !4071
  %arg = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler13, i32 0, i32 2, !dbg !4072
  store i8* %19, i8** %arg, align 8, !dbg !4073
  %21 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4074
  %refcount14 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %21, i32 0, i32 4, !dbg !4075
  call void @refcount_set(%struct.refcount_struct* %refcount14, i32 1) #8, !dbg !4076
  %22 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4077
  %23 = bitcast %struct.vb2_vmalloc_buf* %22 to i8*, !dbg !4077
  store i8* %23, i8** %retval, align 8, !dbg !4078
  br label %return, !dbg !4078

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %24 = load i8*, i8** %retval, align 8, !dbg !4079
  ret i8* %24, !dbg !4079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_put(i8* %buf_priv) #0 !dbg !4080 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4083, metadata !DIExpression()), !dbg !4084
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4085
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4085
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4084
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4086
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 4, !dbg !4088
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #8, !dbg !4089
  br i1 %call, label %if.then, label %if.end, !dbg !4090

if.then:                                          ; preds = %entry
  %3 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4091
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %3, i32 0, i32 0, !dbg !4093
  %4 = load i8*, i8** %vaddr, align 8, !dbg !4093
  call void @vfree(i8* %4) #8, !dbg !4094
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4095
  %6 = bitcast %struct.vb2_vmalloc_buf* %5 to i8*, !dbg !4095
  call void @kfree(i8* %6) #8, !dbg !4096
  br label %if.end, !dbg !4097

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_buf* @vb2_vmalloc_get_dmabuf(i8* %buf_priv, i64 %flags) #0 !dbg !4099 {
entry:
  %retval = alloca %struct.dma_buf*, align 8
  %buf_priv.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %dbuf = alloca %struct.dma_buf*, align 8
  %exp_info = alloca %struct.dma_buf_export_info, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4100, metadata !DIExpression()), !dbg !4101
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4104, metadata !DIExpression()), !dbg !4105
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4106
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4106
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4105
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.declare(metadata %struct.dma_buf_export_info* %exp_info, metadata !4109, metadata !DIExpression()), !dbg !4119
  %2 = bitcast %struct.dma_buf_export_info* %exp_info to i8*, !dbg !4119
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 56, i1 false), !dbg !4119
  %3 = bitcast i8* %2 to %struct.dma_buf_export_info*, !dbg !4119
  %4 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %3, i32 0, i32 0, !dbg !4119
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8** %4, align 8, !dbg !4119
  %ops = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 2, !dbg !4120
  store %struct.dma_buf_ops* @vb2_vmalloc_dmabuf_ops, %struct.dma_buf_ops** %ops, align 8, !dbg !4121
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4122
  %size = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %5, i32 0, i32 3, !dbg !4123
  %6 = load i64, i64* %size, align 8, !dbg !4123
  %size1 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 3, !dbg !4124
  store i64 %6, i64* %size1, align 8, !dbg !4125
  %7 = load i64, i64* %flags.addr, align 8, !dbg !4126
  %conv = trunc i64 %7 to i32, !dbg !4126
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 4, !dbg !4127
  store i32 %conv, i32* %flags2, align 8, !dbg !4128
  %8 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4129
  %9 = bitcast %struct.vb2_vmalloc_buf* %8 to i8*, !dbg !4129
  %priv = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 6, !dbg !4130
  store i8* %9, i8** %priv, align 8, !dbg !4131
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4132, metadata !DIExpression()), !dbg !4135
  %10 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4135
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %10, i32 0, i32 0, !dbg !4135
  %11 = load i8*, i8** %vaddr, align 8, !dbg !4135
  %tobool = icmp ne i8* %11, null, !dbg !4135
  %lnot = xor i1 %tobool, true, !dbg !4135
  %lnot3 = xor i1 %lnot, true, !dbg !4135
  %lnot4 = xor i1 %lnot3, true, !dbg !4135
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4135
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4135
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !4136
  %tobool5 = icmp ne i32 %12, 0, !dbg !4136
  %lnot6 = xor i1 %tobool5, true, !dbg !4136
  %lnot8 = xor i1 %lnot6, true, !dbg !4136
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4136
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !4136
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !4136
  br i1 %tobool11, label %if.then, label %if.end, !dbg !4135

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4136

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !4138

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !4140

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !4138

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 351, i32 2305, i64 12) #9, !dbg !4142, !srcloc !4144
  br label %do.end14, !dbg !4142

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 246) #9, !dbg !4145, !srcloc !4147
  br label %do.body15, !dbg !4138

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4148

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !4138

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !4138

if.end:                                           ; preds = %do.end17, %entry
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !4135
  %tobool18 = icmp ne i32 %13, 0, !dbg !4135
  %lnot19 = xor i1 %tobool18, true, !dbg !4135
  %lnot21 = xor i1 %lnot19, true, !dbg !4135
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4135
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4135
  store i64 %conv23, i64* %tmp, align 8, !dbg !4136
  %14 = load i64, i64* %tmp, align 8, !dbg !4135
  %tobool24 = icmp ne i64 %14, 0, !dbg !4150
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4151

if.then25:                                        ; preds = %if.end
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4152
  br label %return, !dbg !4152

if.end26:                                         ; preds = %if.end
  %call = call %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info* %exp_info) #8, !dbg !4153
  store %struct.dma_buf* %call, %struct.dma_buf** %dbuf, align 8, !dbg !4154
  %15 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4155
  %16 = bitcast %struct.dma_buf* %15 to i8*, !dbg !4155
  %call27 = call zeroext i1 @IS_ERR(i8* %16) #8, !dbg !4157
  br i1 %call27, label %if.then28, label %if.end29, !dbg !4158

if.then28:                                        ; preds = %if.end26
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4159
  br label %return, !dbg !4159

if.end29:                                         ; preds = %if.end26
  %17 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4160
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %17, i32 0, i32 4, !dbg !4161
  call void @refcount_inc(%struct.refcount_struct* %refcount) #8, !dbg !4162
  %18 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4163
  store %struct.dma_buf* %18, %struct.dma_buf** %retval, align 8, !dbg !4164
  br label %return, !dbg !4164

return:                                           ; preds = %if.end29, %if.then28, %if.then25
  %19 = load %struct.dma_buf*, %struct.dma_buf** %retval, align 8, !dbg !4165
  ret %struct.dma_buf* %19, !dbg !4165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_vmalloc_get_userptr(%struct.device* %dev, i64 %vaddr, i64 %size, i32 %dma_dir) #0 !dbg !4166 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %vaddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %vec = alloca %struct.frame_vector*, align 8
  %n_pages = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %nums = alloca i64*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4167, metadata !DIExpression()), !dbg !4168
  store i64 %vaddr, i64* %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vaddr.addr, metadata !4169, metadata !DIExpression()), !dbg !4170
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4171, metadata !DIExpression()), !dbg !4172
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.declare(metadata i32* %n_pages, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i32 -12, i32* %ret, align 4, !dbg !4186
  %call = call i8* @kzalloc(i64 72, i32 3264) #8, !dbg !4187
  %0 = bitcast i8* %call to %struct.vb2_vmalloc_buf*, !dbg !4187
  store %struct.vb2_vmalloc_buf* %0, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4188
  %1 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4189
  %tobool = icmp ne %struct.vb2_vmalloc_buf* %1, null, !dbg !4189
  br i1 %tobool, label %if.end, label %if.then, !dbg !4191

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !4192
  store i8* %call1, i8** %retval, align 8, !dbg !4193
  br label %return, !dbg !4193

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %dma_dir.addr, align 4, !dbg !4194
  %3 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4195
  %dma_dir2 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %3, i32 0, i32 2, !dbg !4196
  store i32 %2, i32* %dma_dir2, align 8, !dbg !4197
  %4 = load i64, i64* %vaddr.addr, align 8, !dbg !4198
  %and = and i64 %4, 4095, !dbg !4199
  %conv = trunc i64 %and to i32, !dbg !4198
  store i32 %conv, i32* %offset, align 4, !dbg !4200
  %5 = load i64, i64* %size.addr, align 8, !dbg !4201
  %6 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4202
  %size3 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %6, i32 0, i32 3, !dbg !4203
  store i64 %5, i64* %size3, align 8, !dbg !4204
  %7 = load i64, i64* %vaddr.addr, align 8, !dbg !4205
  %8 = load i64, i64* %size.addr, align 8, !dbg !4206
  %call4 = call %struct.frame_vector* @vb2_create_framevec(i64 %7, i64 %8) #8, !dbg !4207
  store %struct.frame_vector* %call4, %struct.frame_vector** %vec, align 8, !dbg !4208
  %9 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4209
  %10 = bitcast %struct.frame_vector* %9 to i8*, !dbg !4209
  %call5 = call zeroext i1 @IS_ERR(i8* %10) #8, !dbg !4211
  br i1 %call5, label %if.then6, label %if.end9, !dbg !4212

if.then6:                                         ; preds = %if.end
  %11 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4213
  %12 = bitcast %struct.frame_vector* %11 to i8*, !dbg !4213
  %call7 = call i64 @PTR_ERR(i8* %12) #8, !dbg !4215
  %conv8 = trunc i64 %call7 to i32, !dbg !4215
  store i32 %conv8, i32* %ret, align 4, !dbg !4216
  br label %fail_pfnvec_create, !dbg !4217

if.end9:                                          ; preds = %if.end
  %13 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4218
  %14 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4219
  %vec10 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %14, i32 0, i32 1, !dbg !4220
  store %struct.frame_vector* %13, %struct.frame_vector** %vec10, align 8, !dbg !4221
  %15 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4222
  %call11 = call i32 @frame_vector_count(%struct.frame_vector* %15) #8, !dbg !4223
  store i32 %call11, i32* %n_pages, align 4, !dbg !4224
  %16 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4225
  %call12 = call i32 @frame_vector_to_pages(%struct.frame_vector* %16) #8, !dbg !4227
  %cmp = icmp slt i32 %call12, 0, !dbg !4228
  br i1 %cmp, label %if.then14, label %if.else, !dbg !4229

if.then14:                                        ; preds = %if.end9
  call void @llvm.dbg.declare(metadata i64** %nums, metadata !4230, metadata !DIExpression()), !dbg !4232
  %17 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4233
  %call15 = call i64* @frame_vector_pfns(%struct.frame_vector* %17) #8, !dbg !4234
  store i64* %call15, i64** %nums, align 8, !dbg !4232
  store i32 1, i32* %i, align 4, !dbg !4235
  br label %for.cond, !dbg !4237

for.cond:                                         ; preds = %for.inc, %if.then14
  %18 = load i32, i32* %i, align 4, !dbg !4238
  %19 = load i32, i32* %n_pages, align 4, !dbg !4240
  %cmp16 = icmp slt i32 %18, %19, !dbg !4241
  br i1 %cmp16, label %for.body, label %for.end, !dbg !4242

for.body:                                         ; preds = %for.cond
  %20 = load i64*, i64** %nums, align 8, !dbg !4243
  %21 = load i32, i32* %i, align 4, !dbg !4245
  %sub = sub i32 %21, 1, !dbg !4246
  %idxprom = sext i32 %sub to i64, !dbg !4243
  %arrayidx = getelementptr i64, i64* %20, i64 %idxprom, !dbg !4243
  %22 = load i64, i64* %arrayidx, align 8, !dbg !4243
  %add = add i64 %22, 1, !dbg !4247
  %23 = load i64*, i64** %nums, align 8, !dbg !4248
  %24 = load i32, i32* %i, align 4, !dbg !4249
  %idxprom18 = sext i32 %24 to i64, !dbg !4248
  %arrayidx19 = getelementptr i64, i64* %23, i64 %idxprom18, !dbg !4248
  %25 = load i64, i64* %arrayidx19, align 8, !dbg !4248
  %cmp20 = icmp ne i64 %add, %25, !dbg !4250
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4251

if.then22:                                        ; preds = %for.body
  br label %fail_map, !dbg !4252

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !4253

for.inc:                                          ; preds = %if.end23
  %26 = load i32, i32* %i, align 4, !dbg !4254
  %inc = add i32 %26, 1, !dbg !4254
  store i32 %inc, i32* %i, align 4, !dbg !4254
  br label %for.cond, !dbg !4255, !llvm.loop !4256

for.end:                                          ; preds = %for.cond
  %27 = load i64*, i64** %nums, align 8, !dbg !4258
  %arrayidx24 = getelementptr i64, i64* %27, i64 0, !dbg !4258
  %28 = load i64, i64* %arrayidx24, align 8, !dbg !4258
  %shl = shl i64 %28, 12, !dbg !4258
  %29 = load i64, i64* %size.addr, align 8, !dbg !4259
  %30 = load i32, i32* %offset, align 4, !dbg !4260
  %conv25 = sext i32 %30 to i64, !dbg !4260
  %add26 = add i64 %29, %conv25, !dbg !4261
  %call27 = call i8* @ioremap(i64 %shl, i64 %add26) #8, !dbg !4262
  %31 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4263
  %vaddr28 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %31, i32 0, i32 0, !dbg !4264
  store i8* %call27, i8** %vaddr28, align 8, !dbg !4265
  br label %if.end32, !dbg !4266

if.else:                                          ; preds = %if.end9
  %32 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4267
  %call29 = call %struct.page** @frame_vector_pages(%struct.frame_vector* %32) #8, !dbg !4269
  %33 = load i32, i32* %n_pages, align 4, !dbg !4270
  %call30 = call i8* @vm_map_ram(%struct.page** %call29, i32 %33, i32 -1) #8, !dbg !4271
  %34 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4272
  %vaddr31 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %34, i32 0, i32 0, !dbg !4273
  store i8* %call30, i8** %vaddr31, align 8, !dbg !4274
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  %35 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4275
  %vaddr33 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %35, i32 0, i32 0, !dbg !4277
  %36 = load i8*, i8** %vaddr33, align 8, !dbg !4277
  %tobool34 = icmp ne i8* %36, null, !dbg !4275
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4278

if.then35:                                        ; preds = %if.end32
  br label %fail_map, !dbg !4279

if.end36:                                         ; preds = %if.end32
  %37 = load i32, i32* %offset, align 4, !dbg !4280
  %38 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4281
  %vaddr37 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %38, i32 0, i32 0, !dbg !4282
  %39 = load i8*, i8** %vaddr37, align 8, !dbg !4283
  %idx.ext = sext i32 %37 to i64, !dbg !4283
  %add.ptr = getelementptr i8, i8* %39, i64 %idx.ext, !dbg !4283
  store i8* %add.ptr, i8** %vaddr37, align 8, !dbg !4283
  %40 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4284
  %41 = bitcast %struct.vb2_vmalloc_buf* %40 to i8*, !dbg !4284
  store i8* %41, i8** %retval, align 8, !dbg !4285
  br label %return, !dbg !4285

fail_map:                                         ; preds = %if.then35, %if.then22
  call void @llvm.dbg.label(metadata !4286), !dbg !4287
  %42 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4288
  call void @vb2_destroy_framevec(%struct.frame_vector* %42) #8, !dbg !4289
  br label %fail_pfnvec_create, !dbg !4289

fail_pfnvec_create:                               ; preds = %fail_map, %if.then6
  call void @llvm.dbg.label(metadata !4290), !dbg !4291
  %43 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4292
  %44 = bitcast %struct.vb2_vmalloc_buf* %43 to i8*, !dbg !4292
  call void @kfree(i8* %44) #8, !dbg !4293
  %45 = load i32, i32* %ret, align 4, !dbg !4294
  %conv38 = sext i32 %45 to i64, !dbg !4294
  %call39 = call i8* @ERR_PTR(i64 %conv38) #8, !dbg !4295
  store i8* %call39, i8** %retval, align 8, !dbg !4296
  br label %return, !dbg !4296

return:                                           ; preds = %fail_pfnvec_create, %if.end36, %if.then
  %46 = load i8*, i8** %retval, align 8, !dbg !4297
  ret i8* %46, !dbg !4297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_put_userptr(i8* %buf_priv) #0 !dbg !4298 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %vaddr = alloca i64, align 8
  %i = alloca i32, align 4
  %pages = alloca %struct.page**, align 8
  %n_pages = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4301, metadata !DIExpression()), !dbg !4302
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4303
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4303
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4302
  call void @llvm.dbg.declare(metadata i64* %vaddr, metadata !4304, metadata !DIExpression()), !dbg !4305
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4306
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 0, !dbg !4307
  %3 = load i8*, i8** %vaddr1, align 8, !dbg !4307
  %4 = ptrtoint i8* %3 to i64, !dbg !4308
  %and = and i64 %4, -4096, !dbg !4309
  store i64 %and, i64* %vaddr, align 8, !dbg !4305
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata %struct.page*** %pages, metadata !4312, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.declare(metadata i32* %n_pages, metadata !4314, metadata !DIExpression()), !dbg !4315
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4316
  %vec = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %5, i32 0, i32 1, !dbg !4318
  %6 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4318
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %6, i32 0, i32 3, !dbg !4319
  %7 = load i8, i8* %is_pfns, align 1, !dbg !4319
  %tobool = trunc i8 %7 to i1, !dbg !4319
  br i1 %tobool, label %if.else, label %if.then, !dbg !4320

if.then:                                          ; preds = %entry
  %8 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4321
  %vec2 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %8, i32 0, i32 1, !dbg !4323
  %9 = load %struct.frame_vector*, %struct.frame_vector** %vec2, align 8, !dbg !4323
  %call = call i32 @frame_vector_count(%struct.frame_vector* %9) #8, !dbg !4324
  store i32 %call, i32* %n_pages, align 4, !dbg !4325
  %10 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4326
  %vec3 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %10, i32 0, i32 1, !dbg !4327
  %11 = load %struct.frame_vector*, %struct.frame_vector** %vec3, align 8, !dbg !4327
  %call4 = call %struct.page** @frame_vector_pages(%struct.frame_vector* %11) #8, !dbg !4328
  store %struct.page** %call4, %struct.page*** %pages, align 8, !dbg !4329
  %12 = load i64, i64* %vaddr, align 8, !dbg !4330
  %tobool5 = icmp ne i64 %12, 0, !dbg !4330
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4332

if.then6:                                         ; preds = %if.then
  %13 = load i64, i64* %vaddr, align 8, !dbg !4333
  %14 = inttoptr i64 %13 to i8*, !dbg !4334
  %15 = load i32, i32* %n_pages, align 4, !dbg !4335
  call void @vm_unmap_ram(i8* %14, i32 %15) #8, !dbg !4336
  br label %if.end, !dbg !4336

if.end:                                           ; preds = %if.then6, %if.then
  %16 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4337
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %16, i32 0, i32 2, !dbg !4339
  %17 = load i32, i32* %dma_dir, align 8, !dbg !4339
  %cmp = icmp eq i32 %17, 2, !dbg !4340
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !4341

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4342
  %dma_dir7 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %18, i32 0, i32 2, !dbg !4343
  %19 = load i32, i32* %dma_dir7, align 8, !dbg !4343
  %cmp8 = icmp eq i32 %19, 0, !dbg !4344
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !4345

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %i, align 4, !dbg !4346
  br label %for.cond, !dbg !4348

for.cond:                                         ; preds = %for.inc, %if.then9
  %20 = load i32, i32* %i, align 4, !dbg !4349
  %21 = load i32, i32* %n_pages, align 4, !dbg !4351
  %cmp10 = icmp ult i32 %20, %21, !dbg !4352
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4353

for.body:                                         ; preds = %for.cond
  %22 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4354
  %23 = load i32, i32* %i, align 4, !dbg !4355
  %idxprom = zext i32 %23 to i64, !dbg !4354
  %arrayidx = getelementptr %struct.page*, %struct.page** %22, i64 %idxprom, !dbg !4354
  %24 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4354
  %call11 = call i32 @set_page_dirty_lock(%struct.page* %24) #8, !dbg !4356
  br label %for.inc, !dbg !4356

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !4357
  %inc = add i32 %25, 1, !dbg !4357
  store i32 %inc, i32* %i, align 4, !dbg !4357
  br label %for.cond, !dbg !4358, !llvm.loop !4359

for.end:                                          ; preds = %for.cond
  br label %if.end12, !dbg !4360

if.end12:                                         ; preds = %for.end, %lor.lhs.false
  br label %if.end14, !dbg !4361

if.else:                                          ; preds = %entry
  %26 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4362
  %vaddr13 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %26, i32 0, i32 0, !dbg !4364
  %27 = load i8*, i8** %vaddr13, align 8, !dbg !4364
  call void @iounmap(i8* %27) #8, !dbg !4365
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end12
  %28 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4366
  %vec15 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %28, i32 0, i32 1, !dbg !4367
  %29 = load %struct.frame_vector*, %struct.frame_vector** %vec15, align 8, !dbg !4367
  call void @vb2_destroy_framevec(%struct.frame_vector* %29) #8, !dbg !4368
  %30 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4369
  %31 = bitcast %struct.vb2_vmalloc_buf* %30 to i8*, !dbg !4369
  call void @kfree(i8* %31) #8, !dbg !4370
  ret void, !dbg !4371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_vmalloc_attach_dmabuf(%struct.device* %dev, %struct.dma_buf* %dbuf, i64 %size, i32 %dma_dir) #0 !dbg !4372 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4373, metadata !DIExpression()), !dbg !4374
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4381, metadata !DIExpression()), !dbg !4382
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4383
  %size1 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 0, !dbg !4385
  %1 = load i64, i64* %size1, align 8, !dbg !4385
  %2 = load i64, i64* %size.addr, align 8, !dbg !4386
  %cmp = icmp ult i64 %1, %2, !dbg !4387
  br i1 %cmp, label %if.then, label %if.end, !dbg !4388

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -14) #8, !dbg !4389
  store i8* %call, i8** %retval, align 8, !dbg !4390
  br label %return, !dbg !4390

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 72, i32 3264) #8, !dbg !4391
  %3 = bitcast i8* %call2 to %struct.vb2_vmalloc_buf*, !dbg !4391
  store %struct.vb2_vmalloc_buf* %3, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4392
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4393
  %tobool = icmp ne %struct.vb2_vmalloc_buf* %4, null, !dbg !4393
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !4395

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -12) #8, !dbg !4396
  store i8* %call4, i8** %retval, align 8, !dbg !4397
  br label %return, !dbg !4397

if.end5:                                          ; preds = %if.end
  %5 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4398
  %6 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4399
  %dbuf6 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %6, i32 0, i32 6, !dbg !4400
  store %struct.dma_buf* %5, %struct.dma_buf** %dbuf6, align 8, !dbg !4401
  %7 = load i32, i32* %dma_dir.addr, align 4, !dbg !4402
  %8 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4403
  %dma_dir7 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %8, i32 0, i32 2, !dbg !4404
  store i32 %7, i32* %dma_dir7, align 8, !dbg !4405
  %9 = load i64, i64* %size.addr, align 8, !dbg !4406
  %10 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4407
  %size8 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %10, i32 0, i32 3, !dbg !4408
  store i64 %9, i64* %size8, align 8, !dbg !4409
  %11 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4410
  %12 = bitcast %struct.vb2_vmalloc_buf* %11 to i8*, !dbg !4410
  store i8* %12, i8** %retval, align 8, !dbg !4411
  br label %return, !dbg !4411

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !4412
  ret i8* %13, !dbg !4412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_detach_dmabuf(i8* %mem_priv) #0 !dbg !4413 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4416, metadata !DIExpression()), !dbg !4417
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4418
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4418
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4417
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4419
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 0, !dbg !4421
  %3 = load i8*, i8** %vaddr, align 8, !dbg !4421
  %tobool = icmp ne i8* %3, null, !dbg !4419
  br i1 %tobool, label %if.then, label %if.end, !dbg !4422

if.then:                                          ; preds = %entry
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4423
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 6, !dbg !4424
  %5 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4424
  %6 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4425
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %6, i32 0, i32 0, !dbg !4426
  %7 = load i8*, i8** %vaddr1, align 8, !dbg !4426
  call void @dma_buf_vunmap(%struct.dma_buf* %5, i8* %7) #8, !dbg !4427
  br label %if.end, !dbg !4427

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4428
  %9 = bitcast %struct.vb2_vmalloc_buf* %8 to i8*, !dbg !4428
  call void @kfree(i8* %9) #8, !dbg !4429
  ret void, !dbg !4430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_vmalloc_map_dmabuf(i8* %mem_priv) #0 !dbg !4431 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4436
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4436
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4435
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4437
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 6, !dbg !4438
  %3 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4438
  %call = call i8* @dma_buf_vmap(%struct.dma_buf* %3) #8, !dbg !4439
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4440
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 0, !dbg !4441
  store i8* %call, i8** %vaddr, align 8, !dbg !4442
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4443
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %5, i32 0, i32 0, !dbg !4444
  %6 = load i8*, i8** %vaddr1, align 8, !dbg !4444
  %tobool = icmp ne i8* %6, null, !dbg !4443
  %7 = zext i1 %tobool to i64, !dbg !4443
  %cond = select i1 %tobool, i32 0, i32 -14, !dbg !4443
  ret i32 %cond, !dbg !4445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_unmap_dmabuf(i8* %mem_priv) #0 !dbg !4446 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4449, metadata !DIExpression()), !dbg !4450
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4451
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4451
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4450
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4452
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 6, !dbg !4453
  %3 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4453
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4454
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 0, !dbg !4455
  %5 = load i8*, i8** %vaddr, align 8, !dbg !4455
  call void @dma_buf_vunmap(%struct.dma_buf* %3, i8* %5) #8, !dbg !4456
  %6 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4457
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %6, i32 0, i32 0, !dbg !4458
  store i8* null, i8** %vaddr1, align 8, !dbg !4459
  ret void, !dbg !4460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_vmalloc_vaddr(i8* %buf_priv) #0 !dbg !4461 {
entry:
  %retval = alloca i8*, align 8
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4464, metadata !DIExpression()), !dbg !4465
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4466
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4466
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4465
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4467
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 0, !dbg !4469
  %3 = load i8*, i8** %vaddr, align 8, !dbg !4469
  %tobool = icmp ne i8* %3, null, !dbg !4467
  br i1 %tobool, label %if.end, label %if.then, !dbg !4470

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4471
  store i8* null, i8** %retval, align 8, !dbg !4473
  br label %return, !dbg !4473

if.end:                                           ; preds = %entry
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4474
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 0, !dbg !4475
  %5 = load i8*, i8** %vaddr1, align 8, !dbg !4475
  store i8* %5, i8** %retval, align 8, !dbg !4476
  br label %return, !dbg !4476

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8, !dbg !4477
  ret i8* %6, !dbg !4477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_vmalloc_num_users(i8* %buf_priv) #0 !dbg !4478 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4481, metadata !DIExpression()), !dbg !4482
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4483
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4483
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4482
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4484
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %2, i32 0, i32 4, !dbg !4485
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #8, !dbg !4486
  ret i32 %call, !dbg !4487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_vmalloc_mmap(i8* %buf_priv, %struct.vm_area_struct* %vma) #0 !dbg !4488 {
entry:
  %retval = alloca i32, align 4
  %buf_priv.addr = alloca i8*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %ret = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !4493, metadata !DIExpression()), !dbg !4494
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4495
  %1 = bitcast i8* %0 to %struct.vb2_vmalloc_buf*, !dbg !4495
  store %struct.vb2_vmalloc_buf* %1, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4494
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4496, metadata !DIExpression()), !dbg !4497
  %2 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4498
  %tobool = icmp ne %struct.vb2_vmalloc_buf* %2, null, !dbg !4498
  br i1 %tobool, label %if.end, label %if.then, !dbg !4500

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !4501
  store i32 -22, i32* %retval, align 4, !dbg !4503
  br label %return, !dbg !4503

if.end:                                           ; preds = %entry
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4504
  %4 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4505
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %4, i32 0, i32 0, !dbg !4506
  %5 = load i8*, i8** %vaddr, align 8, !dbg !4506
  %call1 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %3, i8* %5, i64 0) #8, !dbg !4507
  store i32 %call1, i32* %ret, align 4, !dbg !4508
  %6 = load i32, i32* %ret, align 4, !dbg !4509
  %tobool2 = icmp ne i32 %6, 0, !dbg !4509
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4511

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !4512
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %7) #10, !dbg !4512
  %8 = load i32, i32* %ret, align 4, !dbg !4514
  store i32 %8, i32* %retval, align 4, !dbg !4515
  br label %return, !dbg !4515

if.end5:                                          ; preds = %if.end
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4516
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 8, !dbg !4517
  %10 = load i64, i64* %vm_flags, align 8, !dbg !4518
  %or = or i64 %10, 262144, !dbg !4518
  store i64 %or, i64* %vm_flags, align 8, !dbg !4518
  %11 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !4519
  %handler = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %11, i32 0, i32 5, !dbg !4520
  %12 = bitcast %struct.vb2_vmarea_handler* %handler to i8*, !dbg !4521
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4522
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 15, !dbg !4523
  store i8* %12, i8** %vm_private_data, align 8, !dbg !4524
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4525
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 12, !dbg !4526
  store %struct.vm_operations_struct* @vb2_common_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8, !dbg !4527
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4528
  %vm_ops6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 12, !dbg !4529
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops6, align 8, !dbg !4529
  %open = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %16, i32 0, i32 0, !dbg !4530
  %17 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open, align 8, !dbg !4530
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4531
  call void %17(%struct.vm_area_struct* %18) #8, !dbg !4528
  store i32 0, i32* %retval, align 4, !dbg !4532
  br label %return, !dbg !4532

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4533
  ret i32 %19, !dbg !4533
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4534 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4537, metadata !DIExpression()), !dbg !4541
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4547, metadata !DIExpression()), !dbg !4548
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4549, metadata !DIExpression()), !dbg !4550
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4551, metadata !DIExpression()), !dbg !4552
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4553, metadata !DIExpression()), !dbg !4557
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4559, metadata !DIExpression()), !dbg !4563
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4565, metadata !DIExpression()), !dbg !4569
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4580, metadata !DIExpression()), !dbg !4581
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4586, metadata !DIExpression()), !dbg !4587
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4588, metadata !DIExpression()), !dbg !4589
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load i64, i64* %size.addr, align 8, !dbg !4594
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4595
  %or = or i32 %1, 256, !dbg !4596
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4597
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4598
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4599

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4600
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4601
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4602

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4603
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4604
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4605
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4606
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4583
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4607
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4608
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4609
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4610
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4611
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4612
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4613
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4613
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4613
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4613
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4613
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4614
  br label %kmalloc.exit, !dbg !4614

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4615
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4616
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4618

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4619
  br label %kmalloc_index.exit.i, !dbg !4619

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4620
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4622
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4623

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4624
  br label %kmalloc_index.exit.i, !dbg !4624

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4625
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4627
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4628

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4629
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4630
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4631

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4632
  br label %kmalloc_index.exit.i, !dbg !4632

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4633
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4635
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4636

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4638
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4639

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4643
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4644

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4648
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4649

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4650
  br label %kmalloc_index.exit.i, !dbg !4650

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4651
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4653
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4654

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4658
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4659

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4660
  br label %kmalloc_index.exit.i, !dbg !4660

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4663
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4664

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4668
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4669

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4673
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4674

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4678
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4679

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4683
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4684

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4688
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4689

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4693
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4694

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4698
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4699

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4703
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4704

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4708
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4709

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4713
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4714

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4718
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4719

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4723
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4724

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4728
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4729

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4733
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4734

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4738
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4739

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4743
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4744

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4748
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4749

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4753
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4754

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4758
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4759

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4761, !srcloc !4764
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #9, !dbg !4765, !srcloc !4768
  unreachable, !dbg !4769

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4770
  store i32 %45, i32* %index.i, align 4, !dbg !4771
  %46 = load i32, i32* %index.i, align 4, !dbg !4772
  %tobool.i = icmp ne i32 %46, 0, !dbg !4772
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4774

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4775
  br label %kmalloc.exit, !dbg !4775

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4776
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4777
  %and.i.i = and i32 %48, 17, !dbg !4777
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4777
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4777
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4777
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4777
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4779

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4780
  br label %kmalloc_type.exit.i, !dbg !4780

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4781
  %and2.i.i = and i32 %49, 1, !dbg !4782
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4781
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4781
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4781
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4783
  br label %kmalloc_type.exit.i, !dbg !4783

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4784
  %idxprom.i = zext i32 %51 to i64, !dbg !4785
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4785
  %52 = load i32, i32* %index.i, align 4, !dbg !4786
  %idxprom6.i = zext i32 %52 to i64, !dbg !4785
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4785
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4785
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4787
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4788
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4789
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4790
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4791
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4791
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4791
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4791
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4791
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4552
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4792
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4793
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4794
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4795
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4796
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4797
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4798
  store i8* %62, i8** %retval.i, align 8, !dbg !4799
  br label %kmalloc.exit, !dbg !4799

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4800
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4801
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4802
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4802
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4802
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4802
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4802
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4803
  br label %kmalloc.exit, !dbg !4803

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4804
  ret i8* %65, !dbg !4805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4806 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  %0 = load i64, i64* %error.addr, align 8, !dbg !4812
  %1 = inttoptr i64 %0 to i8*, !dbg !4813
  ret i8* %1, !dbg !4814
}

; Function Attrs: noredzone
declare dso_local i8* @vmalloc_user(i64) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !4815 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4818, metadata !DIExpression()), !dbg !4824
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4829, metadata !DIExpression()), !dbg !4830
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4831, metadata !DIExpression()), !dbg !4839
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4841, metadata !DIExpression()), !dbg !4842
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4843, metadata !DIExpression()), !dbg !4844
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4845, metadata !DIExpression()), !dbg !4846
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4851
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !4852
  %1 = load i32, i32* %n.addr, align 4, !dbg !4853
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4854
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4854
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4855
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4856
  %conv.i.i = trunc i64 %5 to i32, !dbg !4856
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !4857
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4858
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4858
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !4858
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4859
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !4860
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4861
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4861
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !4861
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !4861
  ret void, !dbg !4863
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !4864 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4868, metadata !DIExpression()), !dbg !4873
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4875, metadata !DIExpression()), !dbg !4876
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load i64, i64* %size.addr, align 8, !dbg !4879
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4881
  br i1 %1, label %if.then, label %if.end447, !dbg !4882

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4883
  %tobool = icmp ne i64 %2, 0, !dbg !4883
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4886

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4887
  br label %return, !dbg !4887

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4888
  %cmp = icmp ult i64 %3, 4096, !dbg !4890
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4891

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4892
  br label %return, !dbg !4892

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub = sub i64 %4, 1, !dbg !4893
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4893
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4893

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub4 = sub i64 %6, 1, !dbg !4893
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4893
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4893

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub6 = sub i64 %8, 1, !dbg !4893
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4893
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4893

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4893

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub9 = sub i64 %9, 1, !dbg !4893
  %and = and i64 %sub9, -9223372036854775808, !dbg !4893
  %tobool10 = icmp ne i64 %and, 0, !dbg !4893
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4893

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4893

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub13 = sub i64 %10, 1, !dbg !4893
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4893
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4893
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4893

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4893

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub18 = sub i64 %11, 1, !dbg !4893
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4893
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4893
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4893

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4893

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub23 = sub i64 %12, 1, !dbg !4893
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4893
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4893
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4893

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4893

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub28 = sub i64 %13, 1, !dbg !4893
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4893
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4893
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4893

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4893

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub33 = sub i64 %14, 1, !dbg !4893
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4893
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4893
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4893

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4893

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub38 = sub i64 %15, 1, !dbg !4893
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4893
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4893
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4893

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4893

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub43 = sub i64 %16, 1, !dbg !4893
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4893
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4893
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4893

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4893

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub48 = sub i64 %17, 1, !dbg !4893
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4893
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4893
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4893

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4893

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub53 = sub i64 %18, 1, !dbg !4893
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4893
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4893
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4893

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4893

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub58 = sub i64 %19, 1, !dbg !4893
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4893
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4893
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4893

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4893

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub63 = sub i64 %20, 1, !dbg !4893
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4893
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4893
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4893

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4893

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub68 = sub i64 %21, 1, !dbg !4893
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4893
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4893
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4893

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4893

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub73 = sub i64 %22, 1, !dbg !4893
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4893
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4893
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4893

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4893

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub78 = sub i64 %23, 1, !dbg !4893
  %and79 = and i64 %sub78, 562949953421312, !dbg !4893
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4893
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4893

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4893

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub83 = sub i64 %24, 1, !dbg !4893
  %and84 = and i64 %sub83, 281474976710656, !dbg !4893
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4893
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4893

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4893

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub88 = sub i64 %25, 1, !dbg !4893
  %and89 = and i64 %sub88, 140737488355328, !dbg !4893
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4893
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4893

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4893

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub93 = sub i64 %26, 1, !dbg !4893
  %and94 = and i64 %sub93, 70368744177664, !dbg !4893
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4893
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4893

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4893

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub98 = sub i64 %27, 1, !dbg !4893
  %and99 = and i64 %sub98, 35184372088832, !dbg !4893
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4893
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4893

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4893

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub103 = sub i64 %28, 1, !dbg !4893
  %and104 = and i64 %sub103, 17592186044416, !dbg !4893
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4893
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4893

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4893

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub108 = sub i64 %29, 1, !dbg !4893
  %and109 = and i64 %sub108, 8796093022208, !dbg !4893
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4893
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4893

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4893

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub113 = sub i64 %30, 1, !dbg !4893
  %and114 = and i64 %sub113, 4398046511104, !dbg !4893
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4893
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4893

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4893

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub118 = sub i64 %31, 1, !dbg !4893
  %and119 = and i64 %sub118, 2199023255552, !dbg !4893
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4893
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4893

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4893

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub123 = sub i64 %32, 1, !dbg !4893
  %and124 = and i64 %sub123, 1099511627776, !dbg !4893
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4893
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4893

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4893

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub128 = sub i64 %33, 1, !dbg !4893
  %and129 = and i64 %sub128, 549755813888, !dbg !4893
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4893
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4893

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4893

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub133 = sub i64 %34, 1, !dbg !4893
  %and134 = and i64 %sub133, 274877906944, !dbg !4893
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4893
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4893

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4893

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub138 = sub i64 %35, 1, !dbg !4893
  %and139 = and i64 %sub138, 137438953472, !dbg !4893
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4893
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4893

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4893

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub143 = sub i64 %36, 1, !dbg !4893
  %and144 = and i64 %sub143, 68719476736, !dbg !4893
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4893
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4893

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4893

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub148 = sub i64 %37, 1, !dbg !4893
  %and149 = and i64 %sub148, 34359738368, !dbg !4893
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4893
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4893

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4893

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub153 = sub i64 %38, 1, !dbg !4893
  %and154 = and i64 %sub153, 17179869184, !dbg !4893
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4893
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4893

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4893

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub158 = sub i64 %39, 1, !dbg !4893
  %and159 = and i64 %sub158, 8589934592, !dbg !4893
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4893
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4893

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4893

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub163 = sub i64 %40, 1, !dbg !4893
  %and164 = and i64 %sub163, 4294967296, !dbg !4893
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4893
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4893

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4893

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub168 = sub i64 %41, 1, !dbg !4893
  %and169 = and i64 %sub168, 2147483648, !dbg !4893
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4893
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4893

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4893

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub173 = sub i64 %42, 1, !dbg !4893
  %and174 = and i64 %sub173, 1073741824, !dbg !4893
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4893
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4893

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4893

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub178 = sub i64 %43, 1, !dbg !4893
  %and179 = and i64 %sub178, 536870912, !dbg !4893
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4893
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4893

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4893

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub183 = sub i64 %44, 1, !dbg !4893
  %and184 = and i64 %sub183, 268435456, !dbg !4893
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4893
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4893

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4893

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub188 = sub i64 %45, 1, !dbg !4893
  %and189 = and i64 %sub188, 134217728, !dbg !4893
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4893
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4893

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4893

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub193 = sub i64 %46, 1, !dbg !4893
  %and194 = and i64 %sub193, 67108864, !dbg !4893
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4893
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4893

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4893

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub198 = sub i64 %47, 1, !dbg !4893
  %and199 = and i64 %sub198, 33554432, !dbg !4893
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4893
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4893

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4893

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub203 = sub i64 %48, 1, !dbg !4893
  %and204 = and i64 %sub203, 16777216, !dbg !4893
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4893
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4893

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4893

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub208 = sub i64 %49, 1, !dbg !4893
  %and209 = and i64 %sub208, 8388608, !dbg !4893
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4893
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4893

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4893

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub213 = sub i64 %50, 1, !dbg !4893
  %and214 = and i64 %sub213, 4194304, !dbg !4893
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4893
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4893

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4893

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub218 = sub i64 %51, 1, !dbg !4893
  %and219 = and i64 %sub218, 2097152, !dbg !4893
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4893
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4893

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4893

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub223 = sub i64 %52, 1, !dbg !4893
  %and224 = and i64 %sub223, 1048576, !dbg !4893
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4893
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4893

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4893

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub228 = sub i64 %53, 1, !dbg !4893
  %and229 = and i64 %sub228, 524288, !dbg !4893
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4893
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4893

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4893

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub233 = sub i64 %54, 1, !dbg !4893
  %and234 = and i64 %sub233, 262144, !dbg !4893
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4893
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4893

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4893

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub238 = sub i64 %55, 1, !dbg !4893
  %and239 = and i64 %sub238, 131072, !dbg !4893
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4893
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4893

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4893

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub243 = sub i64 %56, 1, !dbg !4893
  %and244 = and i64 %sub243, 65536, !dbg !4893
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4893
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4893

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4893

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub248 = sub i64 %57, 1, !dbg !4893
  %and249 = and i64 %sub248, 32768, !dbg !4893
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4893
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4893

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4893

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub253 = sub i64 %58, 1, !dbg !4893
  %and254 = and i64 %sub253, 16384, !dbg !4893
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4893
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4893

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4893

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub258 = sub i64 %59, 1, !dbg !4893
  %and259 = and i64 %sub258, 8192, !dbg !4893
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4893
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4893

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4893

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub263 = sub i64 %60, 1, !dbg !4893
  %and264 = and i64 %sub263, 4096, !dbg !4893
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4893
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4893

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4893

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub268 = sub i64 %61, 1, !dbg !4893
  %and269 = and i64 %sub268, 2048, !dbg !4893
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4893
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4893

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4893

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub273 = sub i64 %62, 1, !dbg !4893
  %and274 = and i64 %sub273, 1024, !dbg !4893
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4893
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4893

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4893

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub278 = sub i64 %63, 1, !dbg !4893
  %and279 = and i64 %sub278, 512, !dbg !4893
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4893
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4893

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4893

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub283 = sub i64 %64, 1, !dbg !4893
  %and284 = and i64 %sub283, 256, !dbg !4893
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4893
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4893

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4893

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub288 = sub i64 %65, 1, !dbg !4893
  %and289 = and i64 %sub288, 128, !dbg !4893
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4893
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4893

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4893

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub293 = sub i64 %66, 1, !dbg !4893
  %and294 = and i64 %sub293, 64, !dbg !4893
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4893
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4893

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4893

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub298 = sub i64 %67, 1, !dbg !4893
  %and299 = and i64 %sub298, 32, !dbg !4893
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4893
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4893

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4893

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub303 = sub i64 %68, 1, !dbg !4893
  %and304 = and i64 %sub303, 16, !dbg !4893
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4893
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4893

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4893

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub308 = sub i64 %69, 1, !dbg !4893
  %and309 = and i64 %sub308, 8, !dbg !4893
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4893
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4893

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4893

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub313 = sub i64 %70, 1, !dbg !4893
  %and314 = and i64 %sub313, 4, !dbg !4893
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4893
  %71 = zext i1 %tobool315 to i64, !dbg !4893
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4893
  br label %cond.end, !dbg !4893

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4893
  br label %cond.end317, !dbg !4893

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4893
  br label %cond.end319, !dbg !4893

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4893
  br label %cond.end321, !dbg !4893

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4893
  br label %cond.end323, !dbg !4893

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4893
  br label %cond.end325, !dbg !4893

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4893
  br label %cond.end327, !dbg !4893

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4893
  br label %cond.end329, !dbg !4893

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4893
  br label %cond.end331, !dbg !4893

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4893
  br label %cond.end333, !dbg !4893

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4893
  br label %cond.end335, !dbg !4893

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4893
  br label %cond.end337, !dbg !4893

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4893
  br label %cond.end339, !dbg !4893

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4893
  br label %cond.end341, !dbg !4893

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4893
  br label %cond.end343, !dbg !4893

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4893
  br label %cond.end345, !dbg !4893

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4893
  br label %cond.end347, !dbg !4893

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4893
  br label %cond.end349, !dbg !4893

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4893
  br label %cond.end351, !dbg !4893

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4893
  br label %cond.end353, !dbg !4893

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4893
  br label %cond.end355, !dbg !4893

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4893
  br label %cond.end357, !dbg !4893

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4893
  br label %cond.end359, !dbg !4893

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4893
  br label %cond.end361, !dbg !4893

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4893
  br label %cond.end363, !dbg !4893

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4893
  br label %cond.end365, !dbg !4893

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4893
  br label %cond.end367, !dbg !4893

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4893
  br label %cond.end369, !dbg !4893

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4893
  br label %cond.end371, !dbg !4893

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4893
  br label %cond.end373, !dbg !4893

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4893
  br label %cond.end375, !dbg !4893

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4893
  br label %cond.end377, !dbg !4893

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4893
  br label %cond.end379, !dbg !4893

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4893
  br label %cond.end381, !dbg !4893

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4893
  br label %cond.end383, !dbg !4893

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4893
  br label %cond.end385, !dbg !4893

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4893
  br label %cond.end387, !dbg !4893

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4893
  br label %cond.end389, !dbg !4893

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4893
  br label %cond.end391, !dbg !4893

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4893
  br label %cond.end393, !dbg !4893

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4893
  br label %cond.end395, !dbg !4893

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4893
  br label %cond.end397, !dbg !4893

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4893
  br label %cond.end399, !dbg !4893

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4893
  br label %cond.end401, !dbg !4893

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4893
  br label %cond.end403, !dbg !4893

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4893
  br label %cond.end405, !dbg !4893

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4893
  br label %cond.end407, !dbg !4893

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4893
  br label %cond.end409, !dbg !4893

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4893
  br label %cond.end411, !dbg !4893

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4893
  br label %cond.end413, !dbg !4893

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4893
  br label %cond.end415, !dbg !4893

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4893
  br label %cond.end417, !dbg !4893

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4893
  br label %cond.end419, !dbg !4893

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4893
  br label %cond.end421, !dbg !4893

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4893
  br label %cond.end423, !dbg !4893

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4893
  br label %cond.end425, !dbg !4893

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4893
  br label %cond.end427, !dbg !4893

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4893
  br label %cond.end429, !dbg !4893

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4893
  br label %cond.end431, !dbg !4893

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4893
  br label %cond.end433, !dbg !4893

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4893
  br label %cond.end435, !dbg !4893

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4893
  br label %cond.end437, !dbg !4893

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4893
  br label %cond.end440, !dbg !4893

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4893

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4893
  br label %cond.end444, !dbg !4893

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4893
  %sub443 = sub i64 %72, 1, !dbg !4893
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4893
  br label %cond.end444, !dbg !4893

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4893
  %sub446 = sub i32 %cond445, 12, !dbg !4894
  %add = add i32 %sub446, 1, !dbg !4895
  store i32 %add, i32* %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4897
  %dec = add i64 %73, -1, !dbg !4897
  store i64 %dec, i64* %size.addr, align 8, !dbg !4897
  %74 = load i64, i64* %size.addr, align 8, !dbg !4898
  %shr = lshr i64 %74, 12, !dbg !4898
  store i64 %shr, i64* %size.addr, align 8, !dbg !4898
  %75 = load i64, i64* %size.addr, align 8, !dbg !4899
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4876
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4900
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4901
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4900, !srcloc !4902
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4900
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4903
  %add.i = add i32 %79, 1, !dbg !4904
  store i32 %add.i, i32* %retval, align 4, !dbg !4905
  br label %return, !dbg !4905

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4906
  ret i32 %80, !dbg !4906
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !4907 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4868, metadata !DIExpression()), !dbg !4911
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4875, metadata !DIExpression()), !dbg !4913
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  %0 = load i64, i64* %n.addr, align 8, !dbg !4916
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4913
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4917
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4918
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4917, !srcloc !4902
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4917
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4919
  %add.i = add i32 %4, 1, !dbg !4920
  %sub = sub i32 %add.i, 1, !dbg !4921
  ret i32 %sub, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4923 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4935
  ret i8* %0, !dbg !4936
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4937 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  ret i1 true, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4946 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  ret void, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !4957 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4962
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #8, !dbg !4963
  ret i1 %call, !dbg !4964
}

; Function Attrs: noredzone
declare dso_local void @vfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4965 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4972
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4973
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !4974
  ret i1 %call, !dbg !4975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4976 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4979, metadata !DIExpression()), !dbg !4983
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4987, metadata !DIExpression()), !dbg !4988
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4989, metadata !DIExpression()), !dbg !4991
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4992, metadata !DIExpression()), !dbg !4994
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4996, metadata !DIExpression()), !dbg !4997
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4998, metadata !DIExpression()), !dbg !4999
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5000, metadata !DIExpression()), !dbg !5001
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load i32, i32* %i.addr, align 4, !dbg !5010
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5011
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5012
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5013
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5013
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5014
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5015
  %conv.i.i = trunc i64 %5 to i32, !dbg !5015
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5016
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5017
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5017
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5017
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5018
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5019
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4991
  %sub.i.i = sub i32 0, %10, !dbg !4991
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !4991
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4991
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4991
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4991
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !4991, !srcloc !5020
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4991
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4991
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4991
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4991
  store i32 %15, i32* %old, align 4, !dbg !5009
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5021
  %tobool = icmp ne i32* %16, null, !dbg !5021
  br i1 %tobool, label %if.then, label %if.end, !dbg !5023

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5024
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5025
  store i32 %17, i32* %18, align 4, !dbg !5026
  br label %if.end, !dbg !5027

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5028
  %20 = load i32, i32* %i.addr, align 4, !dbg !5030
  %cmp = icmp eq i32 %19, %20, !dbg !5031
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5032

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5033, !srcloc !5035
  store i1 true, i1* %retval, align 1, !dbg !5036
  br label %return, !dbg !5036

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5037
  %cmp3 = icmp slt i32 %21, 0, !dbg !5037
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5037

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5037
  %23 = load i32, i32* %i.addr, align 4, !dbg !5037
  %sub = sub i32 %22, %23, !dbg !5037
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5037
  br label %lor.end, !dbg !5037

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5037
  %lnot5 = xor i1 %lnot, true, !dbg !5037
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5037
  %conv = sext i32 %lnot.ext to i64, !dbg !5037
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5037
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5039

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5040
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #8, !dbg !5041
  br label %if.end8, !dbg !5041

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5042
  br label %return, !dbg !5042

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5043
  ret i1 %26, !dbg !5043
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone
declare dso_local %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5044 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5049
  %1 = ptrtoint i8* %0 to i64, !dbg !5049
  %2 = inttoptr i64 %1 to i8*, !dbg !5049
  %3 = ptrtoint i8* %2 to i64, !dbg !5049
  %cmp = icmp uge i64 %3, -4095, !dbg !5049
  %lnot = xor i1 %cmp, true, !dbg !5049
  %lnot1 = xor i1 %lnot, true, !dbg !5049
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5049
  %conv = sext i32 %lnot.ext to i64, !dbg !5049
  %tobool = icmp ne i64 %conv, 0, !dbg !5049
  ret i1 %tobool, !dbg !5050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5051 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5056
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #8, !dbg !5057
  ret void, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_vmalloc_dmabuf_ops_attach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %dbuf_attach) #0 !dbg !5059 {
entry:
  %retval = alloca i32, align 4
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %dbuf_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_vmalloc_attachment*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  %num_pages = alloca i32, align 4
  %sgt = alloca %struct.sg_table*, align 8
  %sg = alloca %struct.scatterlist*, align 8
  %vaddr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %page = alloca %struct.page*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store %struct.dma_buf_attachment* %dbuf_attach, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %dbuf_attach.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_attachment** %attach, metadata !5064, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !5071, metadata !DIExpression()), !dbg !5072
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5073
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5074
  %1 = load i8*, i8** %priv, align 8, !dbg !5074
  %2 = bitcast i8* %1 to %struct.vb2_vmalloc_buf*, !dbg !5073
  store %struct.vb2_vmalloc_buf* %2, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %num_pages, metadata !5075, metadata !DIExpression()), !dbg !5076
  %3 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !5077
  %size = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %3, i32 0, i32 3, !dbg !5077
  %4 = load i64, i64* %size, align 8, !dbg !5077
  %add = add i64 %4, 4095, !dbg !5077
  %and = and i64 %add, -4096, !dbg !5077
  %div = udiv i64 %and, 4096, !dbg !5078
  %conv = trunc i64 %div to i32, !dbg !5077
  store i32 %conv, i32* %num_pages, align 4, !dbg !5076
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5079, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !5081, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.declare(metadata i8** %vaddr, metadata !5083, metadata !DIExpression()), !dbg !5084
  %5 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !5085
  %vaddr1 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %5, i32 0, i32 0, !dbg !5086
  %6 = load i8*, i8** %vaddr1, align 8, !dbg !5086
  store i8* %6, i8** %vaddr, align 8, !dbg !5084
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5089, metadata !DIExpression()), !dbg !5090
  %call = call i8* @kzalloc(i64 24, i32 3264) #8, !dbg !5091
  %7 = bitcast i8* %call to %struct.vb2_vmalloc_attachment*, !dbg !5091
  store %struct.vb2_vmalloc_attachment* %7, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5092
  %8 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5093
  %tobool = icmp ne %struct.vb2_vmalloc_attachment* %8, null, !dbg !5093
  br i1 %tobool, label %if.end, label %if.then, !dbg !5095

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end:                                           ; preds = %entry
  %9 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5097
  %sgt2 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %9, i32 0, i32 0, !dbg !5098
  store %struct.sg_table* %sgt2, %struct.sg_table** %sgt, align 8, !dbg !5099
  %10 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5100
  %11 = load i32, i32* %num_pages, align 4, !dbg !5101
  %call3 = call i32 @sg_alloc_table(%struct.sg_table* %10, i32 %11, i32 3264) #8, !dbg !5102
  store i32 %call3, i32* %ret, align 4, !dbg !5103
  %12 = load i32, i32* %ret, align 4, !dbg !5104
  %tobool4 = icmp ne i32 %12, 0, !dbg !5104
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5106

if.then5:                                         ; preds = %if.end
  %13 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5107
  %14 = bitcast %struct.vb2_vmalloc_attachment* %13 to i8*, !dbg !5107
  call void @kfree(i8* %14) #8, !dbg !5109
  %15 = load i32, i32* %ret, align 4, !dbg !5110
  store i32 %15, i32* %retval, align 4, !dbg !5111
  br label %return, !dbg !5111

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5112
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5112
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %16, i32 0, i32 0, !dbg !5112
  %17 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5112
  store %struct.scatterlist* %17, %struct.scatterlist** %sg, align 8, !dbg !5112
  br label %for.cond, !dbg !5112

for.cond:                                         ; preds = %for.inc, %if.end6
  %18 = load i32, i32* %i, align 4, !dbg !5114
  %19 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5114
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 2, !dbg !5114
  %20 = load i32, i32* %orig_nents, align 4, !dbg !5114
  %cmp = icmp ult i32 %18, %20, !dbg !5114
  br i1 %cmp, label %for.body, label %for.end, !dbg !5112

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !5116, metadata !DIExpression()), !dbg !5118
  %21 = load i8*, i8** %vaddr, align 8, !dbg !5119
  %call8 = call %struct.page* @vmalloc_to_page(i8* %21) #8, !dbg !5120
  store %struct.page* %call8, %struct.page** %page, align 8, !dbg !5118
  %22 = load %struct.page*, %struct.page** %page, align 8, !dbg !5121
  %tobool9 = icmp ne %struct.page* %22, null, !dbg !5121
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5123

if.then10:                                        ; preds = %for.body
  %23 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5124
  call void @sg_free_table(%struct.sg_table* %23) #8, !dbg !5126
  %24 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5127
  %25 = bitcast %struct.vb2_vmalloc_attachment* %24 to i8*, !dbg !5127
  call void @kfree(i8* %25) #8, !dbg !5128
  store i32 -12, i32* %retval, align 4, !dbg !5129
  br label %return, !dbg !5129

if.end11:                                         ; preds = %for.body
  %26 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !5130
  %27 = load %struct.page*, %struct.page** %page, align 8, !dbg !5131
  call void @sg_set_page(%struct.scatterlist* %26, %struct.page* %27, i32 4096, i32 0) #8, !dbg !5132
  %28 = load i8*, i8** %vaddr, align 8, !dbg !5133
  %add.ptr = getelementptr i8, i8* %28, i64 4096, !dbg !5133
  store i8* %add.ptr, i8** %vaddr, align 8, !dbg !5133
  br label %for.inc, !dbg !5134

for.inc:                                          ; preds = %if.end11
  %29 = load i32, i32* %i, align 4, !dbg !5114
  %inc = add i32 %29, 1, !dbg !5114
  store i32 %inc, i32* %i, align 4, !dbg !5114
  %30 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !5114
  %call12 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %30) #8, !dbg !5114
  store %struct.scatterlist* %call12, %struct.scatterlist** %sg, align 8, !dbg !5114
  br label %for.cond, !dbg !5114, !llvm.loop !5135

for.end:                                          ; preds = %for.cond
  %31 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5137
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %31, i32 0, i32 1, !dbg !5138
  store i32 3, i32* %dma_dir, align 8, !dbg !5139
  %32 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5140
  %33 = bitcast %struct.vb2_vmalloc_attachment* %32 to i8*, !dbg !5140
  %34 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8, !dbg !5141
  %priv13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %34, i32 0, i32 8, !dbg !5142
  store i8* %33, i8** %priv13, align 8, !dbg !5143
  store i32 0, i32* %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

return:                                           ; preds = %for.end, %if.then10, %if.then5, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5145
  ret i32 %35, !dbg !5145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_dmabuf_ops_detach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %db_attach) #0 !dbg !5146 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_vmalloc_attachment*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_attachment** %attach, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5153
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !5154
  %1 = load i8*, i8** %priv, align 8, !dbg !5154
  %2 = bitcast i8* %1 to %struct.vb2_vmalloc_attachment*, !dbg !5153
  store %struct.vb2_vmalloc_attachment* %2, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5152
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5155, metadata !DIExpression()), !dbg !5156
  %3 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5157
  %tobool = icmp ne %struct.vb2_vmalloc_attachment* %3, null, !dbg !5157
  br i1 %tobool, label %if.end, label %if.then, !dbg !5159

if.then:                                          ; preds = %entry
  br label %return, !dbg !5160

if.end:                                           ; preds = %entry
  %4 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5161
  %sgt1 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %4, i32 0, i32 0, !dbg !5162
  store %struct.sg_table* %sgt1, %struct.sg_table** %sgt, align 8, !dbg !5163
  %5 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5164
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %5, i32 0, i32 1, !dbg !5166
  %6 = load i32, i32* %dma_dir, align 8, !dbg !5166
  %cmp = icmp ne i32 %6, 3, !dbg !5167
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5168

if.then2:                                         ; preds = %if.end
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5169
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 1, !dbg !5170
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5170
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5171
  %10 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5172
  %dma_dir3 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %10, i32 0, i32 1, !dbg !5173
  %11 = load i32, i32* %dma_dir3, align 8, !dbg !5173
  call void @dma_unmap_sgtable(%struct.device* %8, %struct.sg_table* %9, i32 %11, i64 0) #8, !dbg !5174
  br label %if.end4, !dbg !5174

if.end4:                                          ; preds = %if.then2, %if.end
  %12 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5175
  call void @sg_free_table(%struct.sg_table* %12) #8, !dbg !5176
  %13 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5177
  %14 = bitcast %struct.vb2_vmalloc_attachment* %13 to i8*, !dbg !5177
  call void @kfree(i8* %14) #8, !dbg !5178
  %15 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5179
  %priv5 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %15, i32 0, i32 8, !dbg !5180
  store i8* null, i8** %priv5, align 8, !dbg !5181
  br label %return, !dbg !5182

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sg_table* @vb2_vmalloc_dmabuf_ops_map(%struct.dma_buf_attachment* %db_attach, i32 %dma_dir) #0 !dbg !5183 {
entry:
  %retval = alloca %struct.sg_table*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %dma_dir.addr = alloca i32, align 4
  %attach = alloca %struct.vb2_vmalloc_attachment*, align 8
  %lock = alloca %struct.mutex*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5184, metadata !DIExpression()), !dbg !5185
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_attachment** %attach, metadata !5188, metadata !DIExpression()), !dbg !5189
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5190
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !5191
  %1 = load i8*, i8** %priv, align 8, !dbg !5191
  %2 = bitcast i8* %1 to %struct.vb2_vmalloc_attachment*, !dbg !5190
  store %struct.vb2_vmalloc_attachment* %2, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5189
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock, metadata !5192, metadata !DIExpression()), !dbg !5194
  %3 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5195
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %3, i32 0, i32 0, !dbg !5196
  %4 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !5196
  %lock1 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 4, !dbg !5197
  store %struct.mutex* %lock1, %struct.mutex** %lock, align 8, !dbg !5194
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5198, metadata !DIExpression()), !dbg !5199
  %5 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5200
  call void @mutex_lock(%struct.mutex* %5) #8, !dbg !5201
  %6 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5202
  %sgt2 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %6, i32 0, i32 0, !dbg !5203
  store %struct.sg_table* %sgt2, %struct.sg_table** %sgt, align 8, !dbg !5204
  %7 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5205
  %dma_dir3 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %7, i32 0, i32 1, !dbg !5207
  %8 = load i32, i32* %dma_dir3, align 8, !dbg !5207
  %9 = load i32, i32* %dma_dir.addr, align 4, !dbg !5208
  %cmp = icmp eq i32 %8, %9, !dbg !5209
  br i1 %cmp, label %if.then, label %if.end, !dbg !5210

if.then:                                          ; preds = %entry
  %10 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5211
  call void @mutex_unlock(%struct.mutex* %10) #8, !dbg !5213
  %11 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5214
  store %struct.sg_table* %11, %struct.sg_table** %retval, align 8, !dbg !5215
  br label %return, !dbg !5215

if.end:                                           ; preds = %entry
  %12 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5216
  %dma_dir4 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %12, i32 0, i32 1, !dbg !5218
  %13 = load i32, i32* %dma_dir4, align 8, !dbg !5218
  %cmp5 = icmp ne i32 %13, 3, !dbg !5219
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !5220

if.then6:                                         ; preds = %if.end
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5221
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 1, !dbg !5223
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5223
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5224
  %17 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5225
  %dma_dir7 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %17, i32 0, i32 1, !dbg !5226
  %18 = load i32, i32* %dma_dir7, align 8, !dbg !5226
  call void @dma_unmap_sgtable(%struct.device* %15, %struct.sg_table* %16, i32 %18, i64 0) #8, !dbg !5227
  %19 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5228
  %dma_dir8 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %19, i32 0, i32 1, !dbg !5229
  store i32 3, i32* %dma_dir8, align 8, !dbg !5230
  br label %if.end9, !dbg !5231

if.end9:                                          ; preds = %if.then6, %if.end
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5232
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %20, i32 0, i32 1, !dbg !5234
  %21 = load %struct.device*, %struct.device** %dev10, align 8, !dbg !5234
  %22 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5235
  %23 = load i32, i32* %dma_dir.addr, align 4, !dbg !5236
  %call = call i32 @dma_map_sgtable(%struct.device* %21, %struct.sg_table* %22, i32 %23, i64 0) #8, !dbg !5237
  %tobool = icmp ne i32 %call, 0, !dbg !5237
  br i1 %tobool, label %if.then11, label %if.end14, !dbg !5238

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !5239
  %24 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5241
  call void @mutex_unlock(%struct.mutex* %24) #8, !dbg !5242
  %call13 = call i8* @ERR_PTR(i64 -5) #8, !dbg !5243
  %25 = bitcast i8* %call13 to %struct.sg_table*, !dbg !5243
  store %struct.sg_table* %25, %struct.sg_table** %retval, align 8, !dbg !5244
  br label %return, !dbg !5244

if.end14:                                         ; preds = %if.end9
  %26 = load i32, i32* %dma_dir.addr, align 4, !dbg !5245
  %27 = load %struct.vb2_vmalloc_attachment*, %struct.vb2_vmalloc_attachment** %attach, align 8, !dbg !5246
  %dma_dir15 = getelementptr inbounds %struct.vb2_vmalloc_attachment, %struct.vb2_vmalloc_attachment* %27, i32 0, i32 1, !dbg !5247
  store i32 %26, i32* %dma_dir15, align 8, !dbg !5248
  %28 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5249
  call void @mutex_unlock(%struct.mutex* %28) #8, !dbg !5250
  %29 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5251
  store %struct.sg_table* %29, %struct.sg_table** %retval, align 8, !dbg !5252
  br label %return, !dbg !5252

return:                                           ; preds = %if.end14, %if.then11, %if.then
  %30 = load %struct.sg_table*, %struct.sg_table** %retval, align 8, !dbg !5253
  ret %struct.sg_table* %30, !dbg !5253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_dmabuf_ops_unmap(%struct.dma_buf_attachment* %db_attach, %struct.sg_table* %sgt, i32 %dma_dir) #0 !dbg !5254 {
entry:
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dma_dir.addr = alloca i32, align 4
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  ret void, !dbg !5261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_vmalloc_dmabuf_ops_release(%struct.dma_buf* %dbuf) #0 !dbg !5262 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5265
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5266
  %1 = load i8*, i8** %priv, align 8, !dbg !5266
  call void @vb2_vmalloc_put(i8* %1) #8, !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_vmalloc_dmabuf_ops_mmap(%struct.dma_buf* %dbuf, %struct.vm_area_struct* %vma) #0 !dbg !5269 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5274
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5275
  %1 = load i8*, i8** %priv, align 8, !dbg !5275
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5276
  %call = call i32 @vb2_vmalloc_mmap(i8* %1, %struct.vm_area_struct* %2) #8, !dbg !5277
  ret i32 %call, !dbg !5278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_vmalloc_dmabuf_ops_vmap(%struct.dma_buf* %dbuf) #0 !dbg !5279 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %buf = alloca %struct.vb2_vmalloc_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata %struct.vb2_vmalloc_buf** %buf, metadata !5282, metadata !DIExpression()), !dbg !5283
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5284
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5285
  %1 = load i8*, i8** %priv, align 8, !dbg !5285
  %2 = bitcast i8* %1 to %struct.vb2_vmalloc_buf*, !dbg !5284
  store %struct.vb2_vmalloc_buf* %2, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !5283
  %3 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %buf, align 8, !dbg !5286
  %vaddr = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %3, i32 0, i32 0, !dbg !5287
  %4 = load i8*, i8** %vaddr, align 8, !dbg !5287
  ret i8* %4, !dbg !5288
}

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.page* @vmalloc_to_page(i8*) #2

; Function Attrs: noredzone
declare dso_local void @sg_free_table(%struct.sg_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_set_page(%struct.scatterlist* %sg, %struct.page* %page, i32 %len, i32 %offset) #0 !dbg !5289 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5300
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5301
  call void @sg_assign_page(%struct.scatterlist* %0, %struct.page* %1) #8, !dbg !5302
  %2 = load i32, i32* %offset.addr, align 4, !dbg !5303
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5304
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %3, i32 0, i32 1, !dbg !5305
  store i32 %2, i32* %offset1, align 8, !dbg !5306
  %4 = load i32, i32* %len.addr, align 4, !dbg !5307
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5308
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %5, i32 0, i32 2, !dbg !5309
  store i32 %4, i32* %length, align 4, !dbg !5310
  ret void, !dbg !5311
}

; Function Attrs: noredzone
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_assign_page(%struct.scatterlist* %sg, %struct.page* %page) #0 !dbg !5312 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %page_link = alloca i64, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.declare(metadata i64* %page_link, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5321
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !5322
  %1 = load i64, i64* %page_link1, align 8, !dbg !5322
  %and = and i64 %1, 3, !dbg !5323
  store i64 %and, i64* %page_link, align 8, !dbg !5320
  br label %do.body, !dbg !5324

do.body:                                          ; preds = %entry
  %2 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5325
  %3 = ptrtoint %struct.page* %2 to i64, !dbg !5325
  %and2 = and i64 %3, 3, !dbg !5325
  %tobool = icmp ne i64 %and2, 0, !dbg !5325
  %lnot = xor i1 %tobool, true, !dbg !5325
  %lnot3 = xor i1 %lnot, true, !dbg !5325
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5325
  %conv = sext i32 %lnot.ext to i64, !dbg !5325
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5325
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5328

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5325

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5329

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !5331

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !5329

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 95, i32 0, i64 12) #9, !dbg !5333, !srcloc !5335
  br label %do.end8, !dbg !5333

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !5329

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 226) #9, !dbg !5336, !srcloc !5339
  unreachable, !dbg !5340

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !5329

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !5329

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !5328

do.end12:                                         ; preds = %if.end
  %4 = load i64, i64* %page_link, align 8, !dbg !5341
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !5342
  %6 = ptrtoint %struct.page* %5 to i64, !dbg !5343
  %or = or i64 %4, %6, !dbg !5344
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5345
  %page_link13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0, !dbg !5346
  store i64 %or, i64* %page_link13, align 8, !dbg !5347
  ret void, !dbg !5348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_unmap_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !5349 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5361
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5362
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !5363
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5363
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5364
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !5365
  %4 = load i32, i32* %orig_nents, align 4, !dbg !5365
  %5 = load i32, i32* %dir.addr, align 4, !dbg !5366
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !5367
  call void @dma_unmap_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #8, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noredzone
declare dso_local void @dma_unmap_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_map_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !5370 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %nents = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata i32* %nents, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5383
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5384
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !5385
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5385
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5386
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !5387
  %4 = load i32, i32* %orig_nents, align 4, !dbg !5387
  %5 = load i32, i32* %dir.addr, align 4, !dbg !5388
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !5389
  %call = call i32 @dma_map_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #8, !dbg !5390
  store i32 %call, i32* %nents, align 4, !dbg !5391
  %7 = load i32, i32* %nents, align 4, !dbg !5392
  %cmp = icmp sle i32 %7, 0, !dbg !5394
  br i1 %cmp, label %if.then, label %if.end, !dbg !5395

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5396
  br label %return, !dbg !5396

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %nents, align 4, !dbg !5397
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5398
  %nents1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1, !dbg !5399
  store i32 %8, i32* %nents1, align 8, !dbg !5400
  store i32 0, i32* %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5402
  ret i32 %10, !dbg !5402
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noredzone
declare dso_local i32 @dma_map_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5403 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5410
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5411
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5412
  ret void, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5414 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5417, metadata !DIExpression()), !dbg !5419
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5423, metadata !DIExpression()), !dbg !5424
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5425, metadata !DIExpression()), !dbg !5427
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4992, metadata !DIExpression()), !dbg !5428
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4996, metadata !DIExpression()), !dbg !5430
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5431, metadata !DIExpression()), !dbg !5432
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5433, metadata !DIExpression()), !dbg !5434
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load i32, i32* %i.addr, align 4, !dbg !5443
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5444
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5445
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5446
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5446
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5447
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5448
  %conv.i.i = trunc i64 %5 to i32, !dbg !5448
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5449
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5450
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5450
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5450
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5451
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5452
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5427
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5427
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5427
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5427
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5427
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !5427, !srcloc !5453
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5427
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5427
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5427
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5427
  store i32 %15, i32* %old, align 4, !dbg !5442
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5454
  %tobool = icmp ne i32* %16, null, !dbg !5454
  br i1 %tobool, label %if.then, label %if.end, !dbg !5456

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5457
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5458
  store i32 %17, i32* %18, align 4, !dbg !5459
  br label %if.end, !dbg !5460

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5461
  %tobool1 = icmp ne i32 %19, 0, !dbg !5461
  %lnot = xor i1 %tobool1, true, !dbg !5461
  %lnot2 = xor i1 %lnot, true, !dbg !5461
  %lnot3 = xor i1 %lnot2, true, !dbg !5461
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5461
  %conv = sext i32 %lnot.ext to i64, !dbg !5461
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5461
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5463

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5464
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #8, !dbg !5465
  br label %if.end17, !dbg !5465

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5466
  %cmp = icmp slt i32 %21, 0, !dbg !5466
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5466

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5466
  %23 = load i32, i32* %i.addr, align 4, !dbg !5466
  %add = add i32 %22, %23, !dbg !5466
  %cmp7 = icmp slt i32 %add, 0, !dbg !5466
  br label %lor.end, !dbg !5466

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5466
  %lnot11 = xor i1 %lnot9, true, !dbg !5466
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5466
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5466
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5466
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5468

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5469
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #8, !dbg !5470
  br label %if.end16, !dbg !5470

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5471
}

; Function Attrs: noredzone
declare dso_local %struct.frame_vector* @vb2_create_framevec(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5472 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5477
  %1 = ptrtoint i8* %0 to i64, !dbg !5478
  ret i64 %1, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @frame_vector_count(%struct.frame_vector* %vec) #0 !dbg !5480 {
entry:
  %vec.addr = alloca %struct.frame_vector*, align 8
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5485
  %nr_frames = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 1, !dbg !5486
  %1 = load i32, i32* %nr_frames, align 4, !dbg !5486
  ret i32 %1, !dbg !5487
}

; Function Attrs: noredzone
declare dso_local i32 @frame_vector_to_pages(%struct.frame_vector*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64* @frame_vector_pfns(%struct.frame_vector* %vec) #0 !dbg !5488 {
entry:
  %vec.addr = alloca %struct.frame_vector*, align 8
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5493
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 3, !dbg !5495
  %1 = load i8, i8* %is_pfns, align 1, !dbg !5495
  %tobool = trunc i8 %1 to i1, !dbg !5495
  br i1 %tobool, label %if.end, label %if.then, !dbg !5496

if.then:                                          ; preds = %entry
  %2 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5497
  call void @frame_vector_to_pfns(%struct.frame_vector* %2) #8, !dbg !5498
  br label %if.end, !dbg !5498

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5499
  %ptrs = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %3, i32 0, i32 4, !dbg !5500
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %ptrs, i64 0, i64 0, !dbg !5501
  %4 = bitcast i8** %arraydecay to i64*, !dbg !5502
  ret i64* %4, !dbg !5503
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @vm_map_ram(%struct.page**, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page** @frame_vector_pages(%struct.frame_vector* %vec) #0 !dbg !5504 {
entry:
  %retval = alloca %struct.page**, align 8
  %vec.addr = alloca %struct.frame_vector*, align 8
  %err = alloca i32, align 4
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5509
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 3, !dbg !5511
  %1 = load i8, i8* %is_pfns, align 1, !dbg !5511
  %tobool = trunc i8 %1 to i1, !dbg !5511
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5512

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5513, metadata !DIExpression()), !dbg !5515
  %2 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5516
  %call = call i32 @frame_vector_to_pages(%struct.frame_vector* %2) #8, !dbg !5517
  store i32 %call, i32* %err, align 4, !dbg !5515
  %3 = load i32, i32* %err, align 4, !dbg !5518
  %tobool1 = icmp ne i32 %3, 0, !dbg !5518
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5520

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %err, align 4, !dbg !5521
  %conv = sext i32 %4 to i64, !dbg !5521
  %call3 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !5522
  %5 = bitcast i8* %call3 to %struct.page**, !dbg !5522
  store %struct.page** %5, %struct.page*** %retval, align 8, !dbg !5523
  br label %return, !dbg !5523

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !5524

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !5525
  %ptrs = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %6, i32 0, i32 4, !dbg !5526
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %ptrs, i64 0, i64 0, !dbg !5527
  %7 = bitcast i8** %arraydecay to %struct.page**, !dbg !5528
  store %struct.page** %7, %struct.page*** %retval, align 8, !dbg !5529
  br label %return, !dbg !5529

return:                                           ; preds = %if.end4, %if.then2
  %8 = load %struct.page**, %struct.page*** %retval, align 8, !dbg !5530
  ret %struct.page** %8, !dbg !5530
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @vb2_destroy_framevec(%struct.frame_vector*) #2

; Function Attrs: noredzone
declare dso_local void @frame_vector_to_pfns(%struct.frame_vector*) #2

; Function Attrs: noredzone
declare dso_local void @vm_unmap_ram(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @set_page_dirty_lock(%struct.page*) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @dma_buf_vunmap(%struct.dma_buf*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @dma_buf_vmap(%struct.dma_buf*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !5531 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5536, metadata !DIExpression()), !dbg !5542
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5546, metadata !DIExpression()), !dbg !5548
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5550, metadata !DIExpression()), !dbg !5551
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5552, metadata !DIExpression()), !dbg !5553
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5556
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5557
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5558
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5558
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5559
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5560
  %conv.i.i = trunc i64 %4 to i32, !dbg !5560
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !5561
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5562
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5562
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5562
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5563
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5564
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5564
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5564
  ret i32 %9, !dbg !5565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5566 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5569, metadata !DIExpression()), !dbg !5570
  ret i1 true, !dbg !5571
}

; Function Attrs: noredzone
declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i8*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3979, !3980, !3981, !3982}
!llvm.ident = !{!3983}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vb2_vmalloc_memops", scope: !2, file: !3, line: 417, type: !3936, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !3315, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/common/videobuf2/videobuf2-vmalloc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !107, !112}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !94, line: 5, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !101, line: 305, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 10, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !113, line: 119, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!120 = !{!121, !123, !124, !127, !128, !134, !135, !136, !3313}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !122, line: 148, baseType: !7)
!122 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !122, line: 153, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !130, line: 23, baseType: !131)
!130 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !139, line: 68, size: 512, align: 128, elements: !140)
!139 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !142, !3305, !3312}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !139, line: 69, baseType: !127, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 77, baseType: !143, size: 320, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 77, size: 320, elements: !144)
!144 = !{!145, !3179, !3184, !3210, !3218, !3224, !3236, !3304}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 78, baseType: !146, size: 320)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 78, size: 320, elements: !147)
!147 = !{!148, !154, !3177, !3178}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !146, file: !139, line: 84, baseType: !149, size: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !122, line: 178, size: 128, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !122, line: 179, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !122, line: 179, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !146, file: !139, line: 86, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !157)
!157 = !{!158, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3172, !3173, !3174, !3175, !3176}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !156, file: !44, line: 452, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !161)
!161 = !{!162, !165, !166, !175, !182, !183, !2699, !2700, !2701, !2702, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2743, !2751, !2752, !2753, !3067, !3068, !3069, !3070}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !160, file: !44, line: 611, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !122, line: 19, baseType: !164)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !160, file: !44, line: 612, baseType: !164, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !160, file: !44, line: 613, baseType: !167, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !168, line: 23, baseType: !169)
!168 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 21, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !168, line: 22, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !122, line: 32, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !174, line: 49, baseType: !7)
!174 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !160, file: !44, line: 614, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !168, line: 28, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 26, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !168, line: 27, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !122, line: 33, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !174, line: 50, baseType: !7)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !160, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !160, file: !44, line: 622, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !187)
!187 = !{!188, !2573, !2586, !2590, !2596, !2600, !2604, !2608, !2612, !2616, !2620, !2621, !2625, !2629, !2649, !2675, !2679, !2685, !2690, !2694, !2695}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !186, file: !44, line: 1865, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !159, !192, !7}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !194, line: 89, size: 1536, elements: !195)
!194 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197, !207, !215, !216, !234, !235, !239, !266, !340, !2558, !2559, !2560, !2565, !2566, !2567}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !193, file: !194, line: 91, baseType: !7, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !193, file: !194, line: 92, baseType: !198, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !199, line: 277, baseType: !200)
!199 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !199, line: 277, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !200, file: !199, line: 277, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !199, line: 70, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !199, line: 65, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !204, file: !199, line: 66, baseType: !7, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !193, file: !194, line: 93, baseType: !208, size: 128, offset: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !209, line: 38, size: 128, elements: !210)
!209 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !209, line: 39, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !208, file: !209, line: 39, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !193, file: !194, line: 94, baseType: !192, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !193, file: !194, line: 95, baseType: !217, size: 128, offset: 256)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !194, line: 47, size: 128, elements: !218)
!218 = !{!219, !230}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !194, line: 48, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !194, line: 48, size: 64, elements: !221)
!221 = !{!222, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !194, line: 49, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !194, line: 49, size: 64, elements: !224)
!224 = !{!225, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !223, file: !194, line: 50, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !130, line: 21, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !223, file: !194, line: 50, baseType: !226, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !220, file: !194, line: 52, baseType: !129, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !194, line: 54, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !193, file: !194, line: 96, baseType: !159, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !193, file: !194, line: 98, baseType: !236, size: 256, offset: 448)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !193, file: !194, line: 101, baseType: !240, size: 32, offset: 704)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !241, line: 25, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !241, line: 26, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !241, line: 26, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !241, line: 30, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !241, line: 30, size: 32, elements: !248)
!248 = !{!249, !265}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !247, file: !241, line: 31, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !251, line: 83, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !251, line: 71, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !251, line: 72, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 72, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !255, file: !251, line: 73, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 20, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !258, file: !251, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !262, line: 25, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 25, elements: !264)
!264 = !{}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !247, file: !241, line: 32, baseType: !126, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !193, file: !194, line: 102, baseType: !267, size: 64, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !194, line: 135, size: 1024, align: 512, elements: !270)
!270 = !{!271, !275, !276, !283, !292, !296, !300, !304, !305, !309, !314, !326, !334}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !269, file: !194, line: 136, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!126, !192, !7}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !269, file: !194, line: 137, baseType: !272, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !269, file: !194, line: 138, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!126, !280, !282}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !269, file: !194, line: 139, baseType: !284, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!126, !280, !7, !287, !290}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !269, file: !194, line: 141, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!126, !280}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !269, file: !194, line: 142, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!126, !192}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !269, file: !194, line: 143, baseType: !301, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !192}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !269, file: !194, line: 144, baseType: !301, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !269, file: !194, line: 145, baseType: !306, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !192, !159}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !269, file: !194, line: 146, baseType: !310, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !192, !313, !126}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !269, file: !194, line: 147, baseType: !315, size: 64, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !194, line: 18, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !322, line: 8, size: 128, elements: !323)
!322 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !321, file: !322, line: 9, baseType: !318, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !321, file: !322, line: 10, baseType: !192, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !269, file: !194, line: 148, baseType: !327, size: 64, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!126, !330, !332}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !122, line: 30, baseType: !333)
!333 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !269, file: !194, line: 149, baseType: !335, size: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!192, !192, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !193, file: !194, line: 103, baseType: !341, size: 64, offset: 832)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !343)
!343 = !{!344, !345, !348, !349, !350, !354, !406, !489, !591, !674, !678, !679, !680, !681, !682, !691, !692, !693, !698, !702, !703, !706, !710, !713, !714, !715, !756, !2487, !2488, !2489, !2490, !2491, !2492, !2495, !2497, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2525, !2526, !2527, !2528, !2529, !2532, !2533, !2534, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !342, file: !44, line: 1417, baseType: !149, size: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !342, file: !44, line: 1418, baseType: !346, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !122, line: 16, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !122, line: 13, baseType: !226)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !342, file: !44, line: 1419, baseType: !233, size: 8, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !342, file: !44, line: 1420, baseType: !127, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !342, file: !44, line: 1421, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !122, line: 46, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !174, line: 88, baseType: !353)
!353 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !342, file: !44, line: 1422, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !357)
!357 = !{!358, !359, !360, !367, !371, !375, !379, !383, !384, !394, !397, !398, !399, !403, !404, !405}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !44, line: 2229, baseType: !287, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !356, file: !44, line: 2230, baseType: !126, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !356, file: !44, line: 2238, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!126, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !366, line: 28, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !356, file: !44, line: 2239, baseType: !368, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !356, file: !44, line: 2240, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!192, !355, !126, !287, !123}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !356, file: !44, line: 2242, baseType: !376, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !341}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !356, file: !44, line: 2243, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !382, line: 76, flags: DIFlagFwdDecl)
!382 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !44, line: 2244, baseType: !355, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !356, file: !44, line: 2245, baseType: !385, size: 64, offset: 512)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !122, line: 182, size: 64, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !385, file: !122, line: 183, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !122, line: 186, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !122, line: 187, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !389, file: !122, line: 187, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !356, file: !44, line: 2247, baseType: !395, offset: 576)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !396, line: 187, elements: !264)
!396 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !356, file: !44, line: 2248, baseType: !395, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !356, file: !44, line: 2249, baseType: !395, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !356, file: !44, line: 2250, baseType: !400, offset: 576)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 3)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !356, file: !44, line: 2252, baseType: !395, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !356, file: !44, line: 2253, baseType: !395, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !356, file: !44, line: 2254, baseType: !395, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !342, file: !44, line: 1423, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !410)
!410 = !{!411, !415, !419, !420, !424, !430, !434, !435, !436, !440, !444, !445, !446, !447, !453, !458, !459, !466, !467, !468, !469, !473, !488}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !409, file: !44, line: 1936, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!159, !341}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !409, file: !44, line: 1937, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !159}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !409, file: !44, line: 1938, baseType: !416, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !409, file: !44, line: 1940, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !159, !126}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !409, file: !44, line: 1941, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!126, !159, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !409, file: !44, line: 1942, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!126, !159}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !409, file: !44, line: 1943, baseType: !416, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !409, file: !44, line: 1944, baseType: !376, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !409, file: !44, line: 1945, baseType: !437, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!126, !341, !126}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !409, file: !44, line: 1946, baseType: !441, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!126, !341}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !409, file: !44, line: 1947, baseType: !441, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !409, file: !44, line: 1948, baseType: !441, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !409, file: !44, line: 1949, baseType: !441, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !409, file: !44, line: 1950, baseType: !448, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!126, !192, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !409, file: !44, line: 1951, baseType: !454, size: 64, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!126, !341, !457, !313}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !409, file: !44, line: 1952, baseType: !376, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !409, file: !44, line: 1954, baseType: !460, size: 64, offset: 1024)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!126, !463, !192}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !465, line: 539, flags: DIFlagFwdDecl)
!465 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !409, file: !44, line: 1955, baseType: !460, size: 64, offset: 1088)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !409, file: !44, line: 1956, baseType: !460, size: 64, offset: 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !409, file: !44, line: 1957, baseType: !460, size: 64, offset: 1216)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !409, file: !44, line: 1963, baseType: !470, size: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!126, !341, !137, !121}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !409, file: !44, line: 1964, baseType: !474, size: 64, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!134, !341, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !479, line: 12, size: 256, elements: !480)
!479 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482, !483, !484, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !478, file: !479, line: 13, baseType: !121, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !478, file: !479, line: 16, baseType: !126, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !478, file: !479, line: 23, baseType: !127, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !478, file: !479, line: 30, baseType: !127, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !478, file: !479, line: 33, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !139, line: 27, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !409, file: !44, line: 1966, baseType: !474, size: 64, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !342, file: !44, line: 1424, baseType: !490, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !493)
!493 = !{!494, !560, !564, !568, !569, !570, !571, !572, !577, !582, !586}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !492, file: !38, line: 323, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!126, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !520, !521, !526, !527, !543, !544, !545}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !499, file: !38, line: 295, baseType: !389, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !499, file: !38, line: 296, baseType: !149, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !499, file: !38, line: 297, baseType: !149, size: 128, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !499, file: !38, line: 298, baseType: !149, size: 128, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !499, file: !38, line: 299, baseType: !506, size: 192, offset: 512)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !507, line: 53, size: 192, elements: !508)
!507 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !518, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !506, file: !507, line: 54, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !511, line: 13, baseType: !512)
!511 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !122, line: 175, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 173, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !513, file: !122, line: 174, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !130, line: 22, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !353)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !506, file: !507, line: 55, baseType: !250, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !506, file: !507, line: 59, baseType: !149, size: 128, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !499, file: !38, line: 300, baseType: !250, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !499, file: !38, line: 301, baseType: !522, size: 32, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !122, line: 168, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 166, size: 32, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !523, file: !122, line: 167, baseType: !126, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !499, file: !38, line: 302, baseType: !341, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !499, file: !38, line: 303, baseType: !528, size: 64, offset: 832)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !529)
!529 = !{!530, !542}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !38, line: 69, baseType: !531, size: 32)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !38, line: 69, size: 32, elements: !532)
!532 = !{!533, !534, !535}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !531, file: !38, line: 70, baseType: !167, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !531, file: !38, line: 71, baseType: !176, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !531, file: !38, line: 72, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !537, line: 24, baseType: !538)
!537 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 22, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !537, line: 23, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !537, line: 20, baseType: !173)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !528, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !499, file: !38, line: 304, baseType: !351, size: 64, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !499, file: !38, line: 305, baseType: !127, size: 64, offset: 960)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !499, file: !38, line: 306, baseType: !546, size: 576, offset: 1024)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !547)
!547 = !{!548, !550, !551, !552, !553, !554, !555, !556, !559}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !546, file: !38, line: 206, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !353)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !546, file: !38, line: 207, baseType: !549, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !546, file: !38, line: 208, baseType: !549, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !546, file: !38, line: 209, baseType: !549, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !546, file: !38, line: 210, baseType: !549, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !546, file: !38, line: 211, baseType: !549, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !546, file: !38, line: 212, baseType: !549, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !546, file: !38, line: 213, baseType: !557, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !517)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !546, file: !38, line: 214, baseType: !557, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !492, file: !38, line: 324, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!498, !341, !126}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !492, file: !38, line: 325, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !498}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !492, file: !38, line: 326, baseType: !495, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !492, file: !38, line: 327, baseType: !495, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !492, file: !38, line: 328, baseType: !495, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !492, file: !38, line: 329, baseType: !437, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !492, file: !38, line: 332, baseType: !573, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !159}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !492, file: !38, line: 333, baseType: !578, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!126, !159, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !492, file: !38, line: 335, baseType: !583, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!126, !159, !576}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !492, file: !38, line: 337, baseType: !587, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!126, !341, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !342, file: !44, line: 1425, baseType: !592, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !595)
!595 = !{!596, !600, !601, !605, !606, !607, !622, !645, !649, !650, !673}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !594, file: !38, line: 429, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!126, !341, !126, !126, !330}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !594, file: !38, line: 430, baseType: !437, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !594, file: !38, line: 431, baseType: !602, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!126, !341, !7}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !594, file: !38, line: 432, baseType: !602, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !594, file: !38, line: 433, baseType: !437, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !594, file: !38, line: 434, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!126, !341, !126, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !612, file: !38, line: 416, baseType: !126, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !612, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !612, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !612, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !612, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !612, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !612, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !612, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !594, file: !38, line: 435, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!126, !341, !528, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !627, file: !38, line: 344, baseType: !126, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !627, file: !38, line: 345, baseType: !129, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !627, file: !38, line: 346, baseType: !129, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !627, file: !38, line: 347, baseType: !129, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !627, file: !38, line: 348, baseType: !129, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !627, file: !38, line: 349, baseType: !129, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !627, file: !38, line: 350, baseType: !129, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !627, file: !38, line: 351, baseType: !516, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !627, file: !38, line: 353, baseType: !516, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !627, file: !38, line: 354, baseType: !126, size: 32, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !627, file: !38, line: 355, baseType: !126, size: 32, offset: 608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !627, file: !38, line: 356, baseType: !129, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !627, file: !38, line: 357, baseType: !129, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !627, file: !38, line: 358, baseType: !129, size: 64, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !627, file: !38, line: 359, baseType: !516, size: 64, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !627, file: !38, line: 360, baseType: !126, size: 32, offset: 896)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !594, file: !38, line: 436, baseType: !646, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!126, !341, !590, !626}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !594, file: !38, line: 438, baseType: !623, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !594, file: !38, line: 439, baseType: !651, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!126, !341, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !655, file: !38, line: 410, baseType: !7, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !655, file: !38, line: 411, baseType: !659, size: 1344, offset: 64)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 1344, elements: !401)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !672}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !38, line: 396, baseType: !7, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !660, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !660, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !660, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !660, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !660, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !660, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !660, file: !38, line: 404, baseType: !133, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !660, file: !38, line: 405, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !122, line: 126, baseType: !129)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !660, file: !38, line: 406, baseType: !671, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !594, file: !38, line: 440, baseType: !602, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !342, file: !44, line: 1426, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !342, file: !44, line: 1427, baseType: !127, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !342, file: !44, line: 1428, baseType: !127, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !342, file: !44, line: 1429, baseType: !127, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !342, file: !44, line: 1430, baseType: !192, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !342, file: !44, line: 1431, baseType: !683, size: 256, offset: 896)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !684, line: 35, size: 256, elements: !685)
!684 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !687, !688, !690}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !683, file: !684, line: 36, baseType: !510, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !683, file: !684, line: 42, baseType: !510, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !683, file: !684, line: 46, baseType: !689, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 29, baseType: !258)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !683, file: !684, line: 47, baseType: !149, size: 128, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !342, file: !44, line: 1432, baseType: !126, size: 32, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !342, file: !44, line: 1433, baseType: !522, size: 32, offset: 1184)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !342, file: !44, line: 1437, baseType: !694, size: 64, offset: 1216)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !342, file: !44, line: 1449, baseType: !699, size: 64, offset: 1280)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !209, line: 34, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !699, file: !209, line: 35, baseType: !212, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !342, file: !44, line: 1450, baseType: !149, size: 128, offset: 1344)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !342, file: !44, line: 1451, baseType: !704, size: 64, offset: 1472)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !342, file: !44, line: 1452, baseType: !707, size: 64, offset: 1536)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !709, line: 40, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !342, file: !44, line: 1453, baseType: !711, size: 64, offset: 1600)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !342, file: !44, line: 1454, baseType: !389, size: 128, offset: 1664)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !342, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !342, file: !44, line: 1456, baseType: !716, size: 2432, offset: 1856)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !717)
!717 = !{!718, !719, !720, !722, !754}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !38, line: 519, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !716, file: !38, line: 520, baseType: !683, size: 256, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !716, file: !38, line: 521, baseType: !721, size: 192, offset: 320)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 192, elements: !401)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !716, file: !38, line: 522, baseType: !723, size: 1728, offset: 512)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 1728, elements: !401)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !725)
!725 = !{!726, !746, !747, !748, !749, !750, !751, !752, !753}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !724, file: !38, line: 223, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !729)
!729 = !{!730, !731, !744, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !728, file: !38, line: 444, baseType: !126, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !728, file: !38, line: 445, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !734, file: !38, line: 311, baseType: !437, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !734, file: !38, line: 312, baseType: !437, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !734, file: !38, line: 313, baseType: !437, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !734, file: !38, line: 314, baseType: !437, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !734, file: !38, line: 315, baseType: !495, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !734, file: !38, line: 316, baseType: !495, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !734, file: !38, line: 317, baseType: !495, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !734, file: !38, line: 318, baseType: !587, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !728, file: !38, line: 446, baseType: !380, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !728, file: !38, line: 447, baseType: !727, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !724, file: !38, line: 224, baseType: !126, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !724, file: !38, line: 226, baseType: !149, size: 128, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !724, file: !38, line: 227, baseType: !127, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !724, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !724, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !724, file: !38, line: 230, baseType: !549, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !724, file: !38, line: 231, baseType: !549, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !724, file: !38, line: 232, baseType: !123, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !716, file: !38, line: 523, baseType: !755, size: 192, offset: 2240)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 192, elements: !401)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !342, file: !44, line: 1458, baseType: !757, size: 2112, offset: 4288)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !758)
!758 = !{!759, !760, !767}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !757, file: !44, line: 1411, baseType: !126, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !757, file: !44, line: 1412, baseType: !761, size: 128, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !762, line: 40, baseType: !763)
!762 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !762, line: 36, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !762, line: 37, baseType: !250)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !763, file: !762, line: 38, baseType: !149, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !757, file: !44, line: 1413, baseType: !768, size: 1920, offset: 192)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 1920, elements: !401)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !770, line: 12, size: 640, elements: !771)
!770 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !788, !790, !2485, !2486}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !769, file: !770, line: 13, baseType: !773, size: 320)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !774, line: 17, size: 320, elements: !775)
!774 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776, !777, !778, !779}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !773, file: !774, line: 18, baseType: !126, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !773, file: !774, line: 19, baseType: !126, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !773, file: !774, line: 20, baseType: !761, size: 128, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !773, file: !774, line: 22, baseType: !780, size: 128, align: 64, offset: 192)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !122, line: 216, size: 128, align: 64, elements: !781)
!781 = !{!782, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !122, line: 217, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !780, file: !122, line: 218, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !783}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !769, file: !770, line: 14, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !769, file: !770, line: 15, baseType: !791, size: 64, offset: 384)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !792, line: 16, size: 64, elements: !793)
!792 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !791, file: !792, line: 17, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !709, line: 640, size: 48640, elements: !797)
!797 = !{!798, !804, !806, !807, !812, !813, !814, !815, !816, !817, !818, !819, !823, !848, !859, !951, !952, !953, !964, !965, !967, !968, !1774, !1775, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1857, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1872, !1873, !1874, !1876, !1877, !1878, !1879, !1880, !1881, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1905, !1910, !1911, !1912, !1913, !1914, !1918, !1921, !1924, !1927, !1930, !1934, !2035, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2083, !2084, !2085, !2086, !2087, !2092, !2093, !2094, !2097, !2098, !2101, !2104, !2107, !2108, !2148, !2151, !2152, !2231, !2232, !2235, !2236, !2239, !2240, !2241, !2245, !2246, !2247, !2260, !2261, !2262, !2272, !2277, !2278, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !796, file: !709, line: 646, baseType: !799, size: 128)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !800, line: 56, size: 128, elements: !801)
!800 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !800, line: 57, baseType: !127, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !799, file: !800, line: 58, baseType: !226, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !796, file: !709, line: 649, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !134)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !796, file: !709, line: 657, baseType: !123, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !709, line: 658, baseType: !808, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !113, line: 113, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !113, line: 111, size: 32, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !809, file: !113, line: 112, baseType: !522, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !709, line: 660, baseType: !7, size: 32, offset: 288)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !796, file: !709, line: 661, baseType: !7, size: 32, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !796, file: !709, line: 684, baseType: !126, size: 32, offset: 352)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !796, file: !709, line: 686, baseType: !126, size: 32, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !796, file: !709, line: 687, baseType: !126, size: 32, offset: 416)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !796, file: !709, line: 688, baseType: !126, size: 32, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !796, file: !709, line: 689, baseType: !7, size: 32, offset: 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !796, file: !709, line: 691, baseType: !820, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !709, line: 691, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !796, file: !709, line: 692, baseType: !824, size: 832, offset: 576)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !709, line: 451, size: 832, elements: !825)
!825 = !{!826, !831, !839, !840, !841, !842, !843, !844, !845, !846}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !824, file: !709, line: 453, baseType: !827, size: 128)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !709, line: 325, size: 128, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !827, file: !709, line: 326, baseType: !127, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !827, file: !709, line: 327, baseType: !226, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !824, file: !709, line: 454, baseType: !832, size: 192, align: 64, offset: 128)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !833, line: 24, size: 192, align: 64, elements: !834)
!833 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !836, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !832, file: !833, line: 25, baseType: !127, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !832, file: !833, line: 26, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !832, file: !833, line: 27, baseType: !837, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !824, file: !709, line: 455, baseType: !149, size: 128, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !824, file: !709, line: 456, baseType: !7, size: 32, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !824, file: !709, line: 458, baseType: !129, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !824, file: !709, line: 459, baseType: !129, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !824, file: !709, line: 460, baseType: !129, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !824, file: !709, line: 461, baseType: !129, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !824, file: !709, line: 463, baseType: !129, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !824, file: !709, line: 465, baseType: !847, offset: 832)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !709, line: 415, elements: !264)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !796, file: !709, line: 693, baseType: !849, size: 384, offset: 1408)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !709, line: 489, size: 384, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !849, file: !709, line: 490, baseType: !149, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !849, file: !709, line: 491, baseType: !127, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !849, file: !709, line: 492, baseType: !127, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !849, file: !709, line: 493, baseType: !7, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !849, file: !709, line: 494, baseType: !164, size: 16, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !849, file: !709, line: 495, baseType: !164, size: 16, offset: 304)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !849, file: !709, line: 497, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !796, file: !709, line: 697, baseType: !860, size: 1792, offset: 1792)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !709, line: 507, size: 1792, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !948, !949}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !860, file: !709, line: 508, baseType: !832, size: 192, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !860, file: !709, line: 515, baseType: !129, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !860, file: !709, line: 516, baseType: !129, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !860, file: !709, line: 517, baseType: !129, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !860, file: !709, line: 518, baseType: !129, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !860, file: !709, line: 519, baseType: !129, size: 64, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !860, file: !709, line: 526, baseType: !516, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !860, file: !709, line: 527, baseType: !129, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !709, line: 528, baseType: !7, size: 32, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !860, file: !709, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !860, file: !709, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !860, file: !709, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !860, file: !709, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !860, file: !709, line: 563, baseType: !876, size: 512, offset: 704)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !877)
!877 = !{!878, !886, !887, !892, !942, !945, !946, !947}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !876, file: !20, line: 119, baseType: !879, size: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !880, line: 9, size: 256, elements: !881)
!880 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !879, file: !880, line: 10, baseType: !832, size: 192, align: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !879, file: !880, line: 11, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !885, line: 29, baseType: !516)
!885 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !876, file: !20, line: 120, baseType: !884, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !876, file: !20, line: 121, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!19, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !876, file: !20, line: 122, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !895)
!895 = !{!896, !916, !917, !920, !925, !926, !937, !941}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !894, file: !20, line: 160, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !20, line: 215, baseType: !689)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !898, file: !20, line: 216, baseType: !7, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !898, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !898, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !898, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !898, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !898, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !898, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !898, file: !20, line: 233, baseType: !884, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !898, file: !20, line: 234, baseType: !891, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !898, file: !20, line: 235, baseType: !884, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !898, file: !20, line: 236, baseType: !891, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !898, file: !20, line: 237, baseType: !913, size: 4096, offset: 512)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 4096, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 8)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !894, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !894, file: !20, line: 162, baseType: !918, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !122, line: 27, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !174, line: 96, baseType: !126)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !894, file: !20, line: 163, baseType: !921, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !199, line: 276, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !199, line: 276, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !922, file: !199, line: 276, baseType: !203, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !894, file: !20, line: 164, baseType: !891, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !894, file: !20, line: 165, baseType: !927, size: 128, offset: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !880, line: 14, size: 128, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !927, file: !880, line: 15, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !833, line: 125, size: 128, elements: !931)
!931 = !{!932, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !930, file: !833, line: 126, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !833, line: 31, size: 64, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !933, file: !833, line: 32, baseType: !837, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !930, file: !833, line: 127, baseType: !837, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !894, file: !20, line: 166, baseType: !938, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!884}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !894, file: !20, line: 167, baseType: !884, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !876, file: !20, line: 123, baseType: !943, size: 8, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !130, line: 17, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !233)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !876, file: !20, line: 124, baseType: !943, size: 8, offset: 456)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !876, file: !20, line: 125, baseType: !943, size: 8, offset: 464)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !876, file: !20, line: 126, baseType: !943, size: 8, offset: 472)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !860, file: !709, line: 572, baseType: !876, size: 512, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !860, file: !709, line: 580, baseType: !950, size: 64, offset: 1728)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !796, file: !709, line: 721, baseType: !7, size: 32, offset: 3584)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !796, file: !709, line: 722, baseType: !126, size: 32, offset: 3616)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !796, file: !709, line: 723, baseType: !954, size: 64, offset: 3648)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !957, line: 17, baseType: !958)
!957 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !957, line: 17, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !958, file: !957, line: 17, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 1)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !796, file: !709, line: 724, baseType: !956, size: 64, offset: 3712)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !796, file: !709, line: 749, baseType: !966, offset: 3776)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !709, line: 290, elements: !264)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !796, file: !709, line: 751, baseType: !149, size: 128, offset: 3776)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !796, file: !709, line: 757, baseType: !969, size: 64, offset: 3904)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !139, line: 388, size: 7296, elements: !971)
!971 = !{!972, !1770}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !139, line: 389, baseType: !973, size: 7296)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !139, line: 389, size: 7296, elements: !974)
!974 = !{!975, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1672, !1678, !1681, !1720, !1721, !1743, !1744, !1747, !1748, !1749, !1752, !1753, !1754, !1757, !1769}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !973, file: !139, line: 390, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !139, line: 305, size: 1472, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !993, !994, !999, !1000, !1003, !1088, !1089, !1620, !1621, !1622}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !977, file: !139, line: 308, baseType: !127, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !977, file: !139, line: 309, baseType: !127, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !977, file: !139, line: 313, baseType: !976, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !977, file: !139, line: 313, baseType: !976, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !977, file: !139, line: 315, baseType: !832, size: 192, align: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !977, file: !139, line: 323, baseType: !127, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !977, file: !139, line: 327, baseType: !969, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !977, file: !139, line: 333, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !465, line: 284, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !465, line: 284, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !988, file: !465, line: 284, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !992, line: 19, baseType: !127)
!992 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !977, file: !139, line: 334, baseType: !127, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !977, file: !139, line: 343, baseType: !995, size: 256, offset: 704)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !139, line: 340, size: 256, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !995, file: !139, line: 341, baseType: !832, size: 192, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !995, file: !139, line: 342, baseType: !127, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !977, file: !139, line: 351, baseType: !149, size: 128, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !977, file: !139, line: 353, baseType: !1001, size: 64, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !139, line: 353, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !977, file: !139, line: 356, baseType: !1004, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1007)
!1007 = !{!1008, !1012, !1013, !1017, !1021, !1062, !1066, !1070, !1074, !1075, !1076, !1080, !1084}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1006, file: !14, line: 558, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !976}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1006, file: !14, line: 559, baseType: !1009, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1006, file: !14, line: 560, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!126, !976, !127}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1006, file: !14, line: 561, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!126, !976}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1006, file: !14, line: 562, baseType: !1022, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !139, line: 682, baseType: !7)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1041, !1048, !1054, !1055, !1056, !1058, !1060}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1027, file: !14, line: 509, baseType: !976, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1027, file: !14, line: 511, baseType: !121, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1027, file: !14, line: 512, baseType: !127, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1027, file: !14, line: 513, baseType: !127, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1027, file: !14, line: 514, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !465, line: 385, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 385, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1037, file: !465, line: 385, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !992, line: 15, baseType: !127)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1027, file: !14, line: 516, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !465, line: 359, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 359, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1044, file: !465, line: 359, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !992, line: 16, baseType: !127)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1027, file: !14, line: 519, baseType: !1049, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !992, line: 21, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !992, line: 21, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1050, file: !992, line: 21, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !992, line: 14, baseType: !127)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1027, file: !14, line: 521, baseType: !137, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1027, file: !14, line: 522, baseType: !137, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1027, file: !14, line: 528, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1027, file: !14, line: 532, baseType: !1059, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1027, file: !14, line: 536, baseType: !1061, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !465, line: 509, baseType: !137)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1006, file: !14, line: 563, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1025, !1026, !13}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1006, file: !14, line: 565, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1026, !127, !127}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1006, file: !14, line: 567, baseType: !1071, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!127, !976}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1006, file: !14, line: 571, baseType: !1022, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1006, file: !14, line: 574, baseType: !1022, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1006, file: !14, line: 579, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!126, !976, !127, !123, !126, !126}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !14, line: 585, baseType: !1081, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!287, !976}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1006, file: !14, line: 615, baseType: !1085, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!137, !976, !127}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !977, file: !139, line: 359, baseType: !127, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !977, file: !139, line: 361, baseType: !1090, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !1092)
!1092 = !{!1093, !1103, !1104, !1105, !1376, !1377, !1378, !1379, !1380, !1382, !1383, !1384, !1414, !1602, !1611, !1612, !1613, !1614, !1615, !1616, !1619}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1091, file: !44, line: 920, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !44, line: 917, size: 128, elements: !1095)
!1095 = !{!1096, !1102}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1094, file: !44, line: 918, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1098, line: 58, size: 64, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !1098, line: 59, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1094, file: !44, line: 919, baseType: !780, size: 128, align: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1091, file: !44, line: 921, baseType: !321, size: 128, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1091, file: !44, line: 922, baseType: !159, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1091, file: !44, line: 923, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1109)
!1109 = !{!1110, !1111, !1115, !1126, !1130, !1158, !1159, !1163, !1176, !1177, !1194, !1198, !1199, !1203, !1204, !1208, !1213, !1214, !1218, !1222, !1331, !1335, !1339, !1343, !1344, !1350, !1354, !1359, !1363, !1367, !1371, !1375}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1108, file: !44, line: 1823, baseType: !380, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1108, file: !44, line: 1824, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!351, !1090, !351, !126}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1108, file: !44, line: 1825, baseType: !1116, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1119, !1090, !313, !1122, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !122, line: 60, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !174, line: 73, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !174, line: 15, baseType: !134)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 55, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !174, line: 72, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !174, line: 16, baseType: !127)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1108, file: !44, line: 1826, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1119, !1090, !287, !1122, !1125}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1108, file: !44, line: 1827, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1119, !1134, !1156}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1143, !1144, !1145, !1148, !1149}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1135, file: !44, line: 321, baseType: !1090, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1135, file: !44, line: 326, baseType: !351, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1135, file: !44, line: 327, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1134, !134, !134}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1135, file: !44, line: 328, baseType: !123, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1135, file: !44, line: 329, baseType: !126, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1135, file: !44, line: 330, baseType: !1146, size: 16, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !130, line: 19, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !164)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1135, file: !44, line: 331, baseType: !1146, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !44, line: 332, baseType: !1150, size: 64, offset: 320)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !44, line: 332, size: 64, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1150, file: !44, line: 333, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1150, file: !44, line: 334, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1108, file: !44, line: 1828, baseType: !1131, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1108, file: !44, line: 1829, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!126, !1134, !332}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1108, file: !44, line: 1830, baseType: !1164, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!126, !1090, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1169)
!1169 = !{!1170, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1168, file: !44, line: 1777, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!126, !1167, !287, !126, !351, !129, !7}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1168, file: !44, line: 1778, baseType: !351, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1108, file: !44, line: 1831, baseType: !1164, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1108, file: !44, line: 1832, baseType: !1178, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !1090, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1182, line: 52, baseType: !7)
!1182 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1185, line: 43, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1193}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1184, file: !1185, line: 44, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1185, line: 37, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !1090, !1192, !1183}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1184, file: !1185, line: 45, baseType: !1181, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1108, file: !44, line: 1833, baseType: !1195, size: 64, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!134, !1090, !7, !127}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1108, file: !44, line: 1834, baseType: !1195, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1108, file: !44, line: 1835, baseType: !1200, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!126, !1090, !976}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1108, file: !44, line: 1836, baseType: !127, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1108, file: !44, line: 1837, baseType: !1205, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!126, !159, !1090}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1108, file: !44, line: 1838, baseType: !1209, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!126, !1090, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !123)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1108, file: !44, line: 1839, baseType: !1205, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1108, file: !44, line: 1840, baseType: !1215, size: 64, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!126, !1090, !351, !351, !126}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1108, file: !44, line: 1841, baseType: !1219, size: 64, offset: 1152)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!126, !126, !1090, !126}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1108, file: !44, line: 1842, baseType: !1223, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!126, !1090, !126, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1260, !1261, !1262, !1275, !1307}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1227, file: !44, line: 1063, baseType: !1226, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1227, file: !44, line: 1064, baseType: !149, size: 128, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1227, file: !44, line: 1065, baseType: !389, size: 128, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1227, file: !44, line: 1066, baseType: !149, size: 128, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1227, file: !44, line: 1069, baseType: !149, size: 128, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1227, file: !44, line: 1072, baseType: !1212, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1227, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1227, file: !44, line: 1074, baseType: !233, size: 8, offset: 672)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1227, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1227, file: !44, line: 1076, baseType: !126, size: 32, offset: 736)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1227, file: !44, line: 1077, baseType: !761, size: 128, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1227, file: !44, line: 1078, baseType: !1090, size: 64, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1227, file: !44, line: 1079, baseType: !351, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1227, file: !44, line: 1080, baseType: !351, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1227, file: !44, line: 1082, baseType: !1244, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1246)
!1246 = !{!1247, !1255, !1256, !1257, !1258, !1259}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1245, file: !44, line: 1315, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1249, line: 20, baseType: !1250)
!1249 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1249, line: 11, elements: !1251)
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1250, file: !1249, line: 12, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !262, line: 33, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 31, elements: !264)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1245, file: !44, line: 1316, baseType: !126, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1245, file: !44, line: 1317, baseType: !126, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1245, file: !44, line: 1318, baseType: !1244, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1245, file: !44, line: 1319, baseType: !1090, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1245, file: !44, line: 1320, baseType: !780, size: 128, align: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1227, file: !44, line: 1084, baseType: !127, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1227, file: !44, line: 1085, baseType: !127, size: 64, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1227, file: !44, line: 1087, baseType: !1263, size: 64, offset: 1280)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1266)
!1266 = !{!1267, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1265, file: !44, line: 1012, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1226, !1226}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1265, file: !44, line: 1013, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1226}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1227, file: !44, line: 1088, baseType: !1276, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1279)
!1279 = !{!1280, !1284, !1288, !1289, !1293, !1297, !1301, !1306}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1278, file: !44, line: 1017, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1212, !1212}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1278, file: !44, line: 1018, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1212}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1278, file: !44, line: 1019, baseType: !1272, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1278, file: !44, line: 1020, baseType: !1290, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!126, !1226, !126}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1278, file: !44, line: 1021, baseType: !1294, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!332, !1226}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1278, file: !44, line: 1022, baseType: !1298, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!126, !1226, !126, !152}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1278, file: !44, line: 1023, baseType: !1302, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1226, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1278, file: !44, line: 1024, baseType: !1294, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1227, file: !44, line: 1097, baseType: !1308, size: 256, offset: 1408)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1227, file: !44, line: 1089, size: 256, elements: !1309)
!1309 = !{!1310, !1319, !1325}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1308, file: !44, line: 1090, baseType: !1311, size: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1312, line: 10, size: 256, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !{!1314, !1315, !1318}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1311, file: !1312, line: 11, baseType: !226, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1311, file: !1312, line: 12, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1312, line: 5, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1311, file: !1312, line: 13, baseType: !149, size: 128, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1308, file: !44, line: 1091, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1312, line: 17, size: 64, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1320, file: !1312, line: 18, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1312, line: 16, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1308, file: !44, line: 1096, baseType: !1326, size: 192)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !44, line: 1092, size: 192, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1326, file: !44, line: 1093, baseType: !149, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1326, file: !44, line: 1094, baseType: !126, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1326, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1108, file: !44, line: 1843, baseType: !1332, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1119, !1090, !137, !126, !1122, !1125, !126}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1108, file: !44, line: 1844, baseType: !1336, size: 64, offset: 1344)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!127, !1090, !127, !127, !127, !127}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1108, file: !44, line: 1845, baseType: !1340, size: 64, offset: 1408)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!126, !126}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1108, file: !44, line: 1846, baseType: !1223, size: 64, offset: 1472)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1108, file: !44, line: 1847, baseType: !1345, size: 64, offset: 1536)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1119, !1348, !1090, !1125, !1122, !7}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !709, line: 53, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1108, file: !44, line: 1848, baseType: !1351, size: 64, offset: 1600)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1119, !1090, !1125, !1348, !1122, !7}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1108, file: !44, line: 1849, baseType: !1355, size: 64, offset: 1664)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!126, !1090, !134, !1358, !1305}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1108, file: !44, line: 1850, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!134, !1090, !126, !351, !351}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1108, file: !44, line: 1852, baseType: !1364, size: 64, offset: 1792)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !463, !1090}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1108, file: !44, line: 1856, baseType: !1368, size: 64, offset: 1856)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1119, !1090, !351, !1090, !351, !1122, !7}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1108, file: !44, line: 1858, baseType: !1372, size: 64, offset: 1920)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!351, !1090, !351, !1090, !351, !351, !7}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1108, file: !44, line: 1861, baseType: !1215, size: 64, offset: 1984)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1091, file: !44, line: 929, baseType: !250, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1091, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1091, file: !44, line: 931, baseType: !510, size: 64, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1091, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1091, file: !44, line: 933, baseType: !1381, size: 32, offset: 544)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !122, line: 150, baseType: !7)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1091, file: !44, line: 934, baseType: !506, size: 192, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1091, file: !44, line: 935, baseType: !351, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1091, file: !44, line: 936, baseType: !1385, size: 192, offset: 832)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !1386)
!1386 = !{!1387, !1388, !1410, !1411, !1412, !1413}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !44, line: 886, baseType: !1248)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1385, file: !44, line: 887, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1399, !1400, !1401, !1402}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1390, file: !53, line: 61, baseType: !808, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1390, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !53, line: 63, baseType: !250, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1390, file: !53, line: 65, baseType: !1396, size: 256, offset: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 4)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1390, file: !53, line: 66, baseType: !385, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1390, file: !53, line: 68, baseType: !761, size: 128, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !53, line: 69, baseType: !780, size: 128, align: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1390, file: !53, line: 70, baseType: !1403, size: 128, offset: 640)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 128, elements: !962)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1404, file: !53, line: 55, baseType: !126, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1404, file: !53, line: 56, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1385, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1385, file: !44, line: 889, baseType: !167, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1385, file: !44, line: 889, baseType: !167, size: 32, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1385, file: !44, line: 890, baseType: !126, size: 32, offset: 160)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1091, file: !44, line: 937, baseType: !1415, size: 64, offset: 1024)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1418, line: 111, size: 1280, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1439, !1440, !1441, !1442, !1443, !1444, !1555, !1556, !1557, !1558, !1584, !1587, !1597}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1417, file: !1418, line: 112, baseType: !522, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1417, file: !1418, line: 120, baseType: !167, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1417, file: !1418, line: 121, baseType: !176, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1417, file: !1418, line: 122, baseType: !167, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1417, file: !1418, line: 123, baseType: !176, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1417, file: !1418, line: 124, baseType: !167, size: 32, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1417, file: !1418, line: 125, baseType: !176, size: 32, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1417, file: !1418, line: 126, baseType: !167, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1417, file: !1418, line: 127, baseType: !176, size: 32, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1417, file: !1418, line: 128, baseType: !7, size: 32, offset: 288)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1417, file: !1418, line: 129, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1432, line: 26, baseType: !1433)
!1432 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1432, line: 24, size: 64, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1433, file: !1432, line: 25, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 2)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1417, file: !1418, line: 130, baseType: !1431, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1417, file: !1418, line: 131, baseType: !1431, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1417, file: !1418, line: 132, baseType: !1431, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1417, file: !1418, line: 133, baseType: !1431, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1417, file: !1418, line: 135, baseType: !233, size: 8, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1417, file: !1418, line: 137, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1447, line: 189, size: 1664, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450, !1455, !1460, !1461, !1464, !1465, !1470, !1471, !1472, !1473, !1476, !1477, !1478, !1480, !1481, !1519, !1540}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1447, line: 190, baseType: !808, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1446, file: !1447, line: 191, baseType: !1451, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1447, line: 28, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !122, line: 98, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !130, line: 20, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !126)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 192, baseType: !1456, size: 192, offset: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 192, size: 192, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1456, file: !1447, line: 193, baseType: !149, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1456, file: !1447, line: 194, baseType: !832, size: 192, align: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1446, file: !1447, line: 199, baseType: !683, size: 256, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1446, file: !1447, line: 200, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1447, line: 200, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1447, line: 201, baseType: !123, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 202, baseType: !1466, size: 64, offset: 640)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 202, size: 64, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1466, file: !1447, line: 203, baseType: !557, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1466, file: !1447, line: 204, baseType: !557, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1446, file: !1447, line: 206, baseType: !557, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1446, file: !1447, line: 207, baseType: !167, size: 32, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1446, file: !1447, line: 208, baseType: !176, size: 32, offset: 800)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1446, file: !1447, line: 209, baseType: !1474, size: 32, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1447, line: 31, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 104, baseType: !226)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1446, file: !1447, line: 210, baseType: !164, size: 16, offset: 864)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1446, file: !1447, line: 211, baseType: !164, size: 16, offset: 880)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1446, file: !1447, line: 215, baseType: !1479, size: 16, offset: 896)
!1479 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1447, line: 222, baseType: !127, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 239, baseType: !1482, size: 320, offset: 1024)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 239, size: 320, elements: !1483)
!1483 = !{!1484, !1511}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1482, file: !1447, line: 240, baseType: !1485, size: 320)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1447, line: 108, size: 320, elements: !1486)
!1486 = !{!1487, !1488, !1500, !1503, !1510}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1485, file: !1447, line: 110, baseType: !127, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1447, line: 111, baseType: !1489, size: 64, offset: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1447, line: 111, size: 64, elements: !1490)
!1490 = !{!1491, !1499}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1447, line: 112, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1447, line: 112, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1492, file: !1447, line: 114, baseType: !1146, size: 16)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1492, file: !1447, line: 115, baseType: !1496, size: 48, offset: 16)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 48, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 6)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1489, file: !1447, line: 121, baseType: !127, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1485, file: !1447, line: 123, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1447, line: 96, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1485, file: !1447, line: 124, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1447, line: 102, size: 192, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !1447, line: 103, baseType: !780, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1505, file: !1447, line: 104, baseType: !808, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1505, file: !1447, line: 105, baseType: !332, size: 8, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1485, file: !1447, line: 125, baseType: !287, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1447, line: 241, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !1447, line: 241, size: 320, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1512, file: !1447, line: 242, baseType: !127, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1512, file: !1447, line: 243, baseType: !127, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !1447, line: 244, baseType: !1501, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1512, file: !1447, line: 245, baseType: !1504, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1512, file: !1447, line: 246, baseType: !313, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 254, baseType: !1520, size: 256, offset: 1344)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 254, size: 256, elements: !1521)
!1521 = !{!1522, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1520, file: !1447, line: 255, baseType: !1523, size: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1447, line: 128, size: 256, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1523, file: !1447, line: 129, baseType: !123, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1447, line: 130, baseType: !1527, size: 256)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !1397)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1447, line: 256, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1447, line: 256, size: 256, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1529, file: !1447, line: 258, baseType: !149, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1529, file: !1447, line: 259, baseType: !1533, size: 128, offset: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1534, line: 22, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1533, file: !1534, line: 23, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1534, line: 23, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1533, file: !1534, line: 24, baseType: !127, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1446, file: !1447, line: 274, baseType: !1541, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1447, line: 170, size: 192, elements: !1543)
!1543 = !{!1544, !1553, !1554}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1542, file: !1447, line: 171, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1447, line: 165, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!126, !1445, !1549, !1551, !1445}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1542, file: !1447, line: 172, baseType: !1445, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1542, file: !1447, line: 173, baseType: !1501, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1417, file: !1418, line: 138, baseType: !1445, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1417, file: !1418, line: 139, baseType: !1445, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1417, file: !1418, line: 140, baseType: !1445, size: 64, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1417, file: !1418, line: 145, baseType: !1559, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1561, line: 13, size: 896, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1560, file: !1561, line: 14, baseType: !808, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1560, file: !1561, line: 15, baseType: !522, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1560, file: !1561, line: 16, baseType: !522, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1560, file: !1561, line: 21, baseType: !510, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1560, file: !1561, line: 27, baseType: !127, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1560, file: !1561, line: 28, baseType: !127, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1560, file: !1561, line: 29, baseType: !510, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1560, file: !1561, line: 32, baseType: !389, size: 128, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 33, baseType: !167, size: 32, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1560, file: !1561, line: 37, baseType: !510, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1560, file: !1561, line: 44, baseType: !1574, size: 256, offset: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1575, line: 15, size: 256, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1574, file: !1575, line: 16, baseType: !689)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1574, file: !1575, line: 18, baseType: !126, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1574, file: !1575, line: 19, baseType: !126, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1574, file: !1575, line: 20, baseType: !126, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1574, file: !1575, line: 21, baseType: !126, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1574, file: !1575, line: 22, baseType: !127, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 23, baseType: !127, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1417, file: !1418, line: 146, baseType: !1585, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !168, line: 18, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1417, file: !1418, line: 147, baseType: !1588, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1418, line: 25, size: 64, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1418, line: 26, baseType: !522, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1589, file: !1418, line: 27, baseType: !126, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1418, line: 28, baseType: !1594, offset: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1418, line: 149, baseType: !1598, size: 128, offset: 1152)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1418, line: 149, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1598, file: !1418, line: 150, baseType: !126, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !1418, line: 151, baseType: !780, size: 128, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1091, file: !44, line: 938, baseType: !1603, size: 256, offset: 1088)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1603, file: !44, line: 897, baseType: !127, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1603, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1603, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1603, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1603, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1603, file: !44, line: 904, baseType: !351, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1091, file: !44, line: 940, baseType: !129, size: 64, offset: 1344)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1091, file: !44, line: 945, baseType: !123, size: 64, offset: 1408)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1091, file: !44, line: 949, baseType: !149, size: 128, offset: 1472)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1091, file: !44, line: 950, baseType: !149, size: 128, offset: 1600)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1091, file: !44, line: 952, baseType: !155, size: 64, offset: 1728)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1091, file: !44, line: 953, baseType: !1617, size: 32, offset: 1792)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1618, line: 8, baseType: !226)
!1618 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1091, file: !44, line: 954, baseType: !1617, size: 32, offset: 1824)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !977, file: !139, line: 362, baseType: !123, size: 64, offset: 1344)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !977, file: !139, line: 365, baseType: !510, size: 64, offset: 1408)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !977, file: !139, line: 373, baseType: !1623, offset: 1472)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !139, line: 296, elements: !264)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !973, file: !139, line: 391, baseType: !933, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !973, file: !139, line: 392, baseType: !129, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !973, file: !139, line: 394, baseType: !1336, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !973, file: !139, line: 398, baseType: !127, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !973, file: !139, line: 399, baseType: !127, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !973, file: !139, line: 405, baseType: !127, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !973, file: !139, line: 406, baseType: !127, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !973, file: !139, line: 407, baseType: !1632, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !465, line: 286, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 286, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1634, file: !465, line: 286, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !992, line: 18, baseType: !127)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !973, file: !139, line: 416, baseType: !522, size: 32, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !973, file: !139, line: 428, baseType: !522, size: 32, offset: 608)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !973, file: !139, line: 437, baseType: !522, size: 32, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !973, file: !139, line: 447, baseType: !522, size: 32, offset: 672)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !973, file: !139, line: 450, baseType: !510, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !973, file: !139, line: 452, baseType: !126, size: 32, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !973, file: !139, line: 454, baseType: !250, offset: 800)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !973, file: !139, line: 457, baseType: !683, size: 256, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !973, file: !139, line: 459, baseType: !149, size: 128, offset: 1088)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !973, file: !139, line: 466, baseType: !127, size: 64, offset: 1216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !973, file: !139, line: 467, baseType: !127, size: 64, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !973, file: !139, line: 469, baseType: !127, size: 64, offset: 1344)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !973, file: !139, line: 470, baseType: !127, size: 64, offset: 1408)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !973, file: !139, line: 471, baseType: !512, size: 64, offset: 1472)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !973, file: !139, line: 472, baseType: !127, size: 64, offset: 1536)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !973, file: !139, line: 473, baseType: !127, size: 64, offset: 1600)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !973, file: !139, line: 474, baseType: !127, size: 64, offset: 1664)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !973, file: !139, line: 475, baseType: !127, size: 64, offset: 1728)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !973, file: !139, line: 477, baseType: !250, offset: 1792)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !973, file: !139, line: 478, baseType: !127, size: 64, offset: 1792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !973, file: !139, line: 478, baseType: !127, size: 64, offset: 1856)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !973, file: !139, line: 478, baseType: !127, size: 64, offset: 1920)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !973, file: !139, line: 478, baseType: !127, size: 64, offset: 1984)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !973, file: !139, line: 479, baseType: !127, size: 64, offset: 2048)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !973, file: !139, line: 479, baseType: !127, size: 64, offset: 2112)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !973, file: !139, line: 479, baseType: !127, size: 64, offset: 2176)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !973, file: !139, line: 480, baseType: !127, size: 64, offset: 2240)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !973, file: !139, line: 480, baseType: !127, size: 64, offset: 2304)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !973, file: !139, line: 480, baseType: !127, size: 64, offset: 2368)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !973, file: !139, line: 480, baseType: !127, size: 64, offset: 2432)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !973, file: !139, line: 482, baseType: !1669, size: 2816, offset: 2496)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 2816, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 44)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !973, file: !139, line: 488, baseType: !1673, size: 256, offset: 5312)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1674, line: 60, size: 256, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1673, file: !1674, line: 61, baseType: !1677, size: 256)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 256, elements: !1397)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !973, file: !139, line: 490, baseType: !1679, size: 64, offset: 5568)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !139, line: 490, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !973, file: !139, line: 493, baseType: !1682, size: 896, offset: 5632)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1683, line: 53, baseType: !1684)
!1683 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 13, size: 896, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1692, !1693, !1694, !1695, !1715, !1716, !1717}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1684, file: !1683, line: 18, baseType: !129, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1684, file: !1683, line: 28, baseType: !512, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1684, file: !1683, line: 31, baseType: !683, size: 256, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1684, file: !1683, line: 32, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1683, line: 32, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1684, file: !1683, line: 37, baseType: !164, size: 16, offset: 448)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !1683, line: 40, baseType: !506, size: 192, offset: 512)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1684, file: !1683, line: 41, baseType: !123, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1684, file: !1683, line: 42, baseType: !1696, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1699, line: 13, size: 896, elements: !1700)
!1699 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1698, file: !1699, line: 14, baseType: !123, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1698, file: !1699, line: 15, baseType: !127, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1698, file: !1699, line: 17, baseType: !127, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1698, file: !1699, line: 17, baseType: !127, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1698, file: !1699, line: 19, baseType: !134, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1698, file: !1699, line: 21, baseType: !134, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1698, file: !1699, line: 22, baseType: !134, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1698, file: !1699, line: 23, baseType: !134, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1698, file: !1699, line: 24, baseType: !134, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1698, file: !1699, line: 25, baseType: !134, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1698, file: !1699, line: 26, baseType: !134, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1698, file: !1699, line: 27, baseType: !134, size: 64, offset: 704)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1698, file: !1699, line: 28, baseType: !134, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1698, file: !1699, line: 29, baseType: !134, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1684, file: !1683, line: 44, baseType: !522, size: 32, offset: 832)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1684, file: !1683, line: 50, baseType: !1146, size: 16, offset: 864)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1684, file: !1683, line: 51, baseType: !1718, size: 16, offset: 880)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !130, line: 18, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1479)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !139, line: 495, baseType: !127, size: 64, offset: 6528)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !973, file: !139, line: 497, baseType: !1722, size: 64, offset: 6592)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !139, line: 381, size: 384, elements: !1724)
!1724 = !{!1725, !1726, !1732}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1723, file: !139, line: 382, baseType: !522, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1723, file: !139, line: 383, baseType: !1727, size: 128, offset: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !139, line: 376, size: 128, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1727, file: !139, line: 377, baseType: !795, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1727, file: !139, line: 378, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1723, file: !139, line: 384, baseType: !1733, size: 192, offset: 192)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1734, line: 26, size: 192, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1733, file: !1734, line: 27, baseType: !7, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1733, file: !1734, line: 28, baseType: !1738, size: 128, offset: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1739, line: 43, size: 128, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1738, file: !1739, line: 44, baseType: !689)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1738, file: !1739, line: 45, baseType: !149, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !973, file: !139, line: 500, baseType: !250, offset: 6656)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !973, file: !139, line: 501, baseType: !1745, size: 64, offset: 6656)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !139, line: 387, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !973, file: !139, line: 516, baseType: !1585, size: 64, offset: 6720)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !973, file: !139, line: 519, baseType: !1090, size: 64, offset: 6784)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !973, file: !139, line: 521, baseType: !1750, size: 64, offset: 6848)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !139, line: 521, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !973, file: !139, line: 545, baseType: !522, size: 32, offset: 6912)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !973, file: !139, line: 548, baseType: !332, size: 8, offset: 6944)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !973, file: !139, line: 550, baseType: !1755, offset: 6952)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1756, line: 142, elements: !264)
!1756 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !973, file: !139, line: 554, baseType: !1758, size: 256, offset: 6976)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1759, line: 102, size: 256, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1758, file: !1759, line: 103, baseType: !510, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1758, file: !1759, line: 104, baseType: !149, size: 128, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1758, file: !1759, line: 105, baseType: !1764, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1759, line: 21, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !973, file: !139, line: 557, baseType: !226, size: 32, offset: 7232)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !970, file: !139, line: 565, baseType: !1771, offset: 7296)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: -1)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !796, file: !709, line: 758, baseType: !969, size: 64, offset: 3968)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !796, file: !709, line: 761, baseType: !1776, size: 320, offset: 4032)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1674, line: 34, size: 320, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1776, file: !1674, line: 35, baseType: !129, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1776, file: !1674, line: 36, baseType: !1780, size: 256, offset: 64)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 256, elements: !1397)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !796, file: !709, line: 766, baseType: !126, size: 32, offset: 4352)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !796, file: !709, line: 767, baseType: !126, size: 32, offset: 4384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !796, file: !709, line: 768, baseType: !126, size: 32, offset: 4416)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !796, file: !709, line: 770, baseType: !126, size: 32, offset: 4448)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !796, file: !709, line: 772, baseType: !127, size: 64, offset: 4480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !796, file: !709, line: 775, baseType: !7, size: 32, offset: 4544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !796, file: !709, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !796, file: !709, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !796, file: !709, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !796, file: !709, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !796, file: !709, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !796, file: !709, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !796, file: !709, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !796, file: !709, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !796, file: !709, line: 831, baseType: !127, size: 64, offset: 4672)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !796, file: !709, line: 833, baseType: !1797, size: 384, offset: 4736)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1798)
!1798 = !{!1799, !1804}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1797, file: !25, line: 26, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!134, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !25, line: 27, baseType: !1805, size: 320, offset: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !25, line: 27, size: 320, elements: !1806)
!1806 = !{!1807, !1817, !1842}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1805, file: !25, line: 36, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !25, line: 29, size: 320, elements: !1809)
!1809 = !{!1810, !1812, !1813, !1814, !1815, !1816}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1808, file: !25, line: 30, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1808, file: !25, line: 31, baseType: !226, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !25, line: 32, baseType: !226, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1808, file: !25, line: 33, baseType: !226, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1808, file: !25, line: 34, baseType: !129, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1808, file: !25, line: 35, baseType: !1811, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1805, file: !25, line: 46, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !25, line: 38, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1841}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1818, file: !25, line: 39, baseType: !918, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1818, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !25, line: 41, baseType: !1823, size: 64, offset: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !25, line: 41, size: 64, elements: !1824)
!1824 = !{!1825, !1833}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1823, file: !25, line: 42, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1828, line: 7, size: 128, elements: !1829)
!1828 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1827, file: !1828, line: 8, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !174, line: 93, baseType: !353)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1827, file: !1828, line: 9, baseType: !353, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1823, file: !25, line: 43, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1836, line: 7, size: 64, elements: !1837)
!1836 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1835, file: !1836, line: 8, baseType: !1839, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1836, line: 5, baseType: !1453)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1835, file: !1836, line: 9, baseType: !1453, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1818, file: !25, line: 45, baseType: !129, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1805, file: !25, line: 54, baseType: !1843, size: 256)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !25, line: 48, size: 256, elements: !1844)
!1844 = !{!1845, !1853, !1854, !1855, !1856}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1843, file: !25, line: 49, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1848, line: 36, size: 64, elements: !1849)
!1848 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1847, file: !1848, line: 37, baseType: !126, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1847, file: !1848, line: 38, baseType: !1479, size: 16, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1847, file: !1848, line: 39, baseType: !1479, size: 16, offset: 48)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1843, file: !25, line: 50, baseType: !126, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1843, file: !25, line: 51, baseType: !126, size: 32, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1843, file: !25, line: 52, baseType: !127, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1843, file: !25, line: 53, baseType: !127, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !796, file: !709, line: 835, baseType: !1858, size: 32, offset: 5120)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !122, line: 22, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !174, line: 28, baseType: !126)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !796, file: !709, line: 836, baseType: !1858, size: 32, offset: 5152)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !796, file: !709, line: 840, baseType: !127, size: 64, offset: 5184)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !796, file: !709, line: 849, baseType: !795, size: 64, offset: 5248)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !796, file: !709, line: 852, baseType: !795, size: 64, offset: 5312)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !796, file: !709, line: 857, baseType: !149, size: 128, offset: 5376)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !796, file: !709, line: 858, baseType: !149, size: 128, offset: 5504)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !796, file: !709, line: 859, baseType: !795, size: 64, offset: 5632)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !796, file: !709, line: 867, baseType: !149, size: 128, offset: 5696)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !796, file: !709, line: 868, baseType: !149, size: 128, offset: 5824)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !796, file: !709, line: 871, baseType: !1389, size: 64, offset: 5952)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !796, file: !709, line: 872, baseType: !1871, size: 512, offset: 6016)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 512, elements: !1397)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !796, file: !709, line: 873, baseType: !149, size: 128, offset: 6528)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !796, file: !709, line: 874, baseType: !149, size: 128, offset: 6656)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !796, file: !709, line: 876, baseType: !1875, size: 64, offset: 6784)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !796, file: !709, line: 879, baseType: !457, size: 64, offset: 6848)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !796, file: !709, line: 882, baseType: !457, size: 64, offset: 6912)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !796, file: !709, line: 884, baseType: !129, size: 64, offset: 6976)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !796, file: !709, line: 885, baseType: !129, size: 64, offset: 7040)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !796, file: !709, line: 890, baseType: !129, size: 64, offset: 7104)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !796, file: !709, line: 891, baseType: !1882, size: 128, offset: 7168)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !709, line: 242, size: 128, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1882, file: !709, line: 244, baseType: !129, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1882, file: !709, line: 245, baseType: !129, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1882, file: !709, line: 246, baseType: !689, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !796, file: !709, line: 900, baseType: !127, size: 64, offset: 7296)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !796, file: !709, line: 901, baseType: !127, size: 64, offset: 7360)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !796, file: !709, line: 904, baseType: !129, size: 64, offset: 7424)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !796, file: !709, line: 907, baseType: !129, size: 64, offset: 7488)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !796, file: !709, line: 910, baseType: !127, size: 64, offset: 7552)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !796, file: !709, line: 911, baseType: !127, size: 64, offset: 7616)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !796, file: !709, line: 914, baseType: !1894, size: 640, offset: 7680)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1895, line: 123, size: 640, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1903, !1904}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1894, file: !1895, line: 124, baseType: !1898, size: 576)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 576, elements: !401)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1895, line: 108, size: 192, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1899, file: !1895, line: 109, baseType: !129, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1899, file: !1895, line: 110, baseType: !927, size: 128, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1894, file: !1895, line: 125, baseType: !7, size: 32, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1894, file: !1895, line: 126, baseType: !7, size: 32, offset: 608)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !796, file: !709, line: 917, baseType: !1906, size: 192, offset: 8320)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1895, line: 134, size: 192, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1906, file: !1895, line: 135, baseType: !780, size: 128, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1906, file: !1895, line: 136, baseType: !7, size: 32, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !796, file: !709, line: 923, baseType: !1415, size: 64, offset: 8512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !796, file: !709, line: 926, baseType: !1415, size: 64, offset: 8576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !796, file: !709, line: 929, baseType: !1415, size: 64, offset: 8640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !796, file: !709, line: 933, baseType: !1445, size: 64, offset: 8704)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !796, file: !709, line: 943, baseType: !1915, size: 128, offset: 8768)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 128, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !796, file: !709, line: 945, baseType: !1919, size: 64, offset: 8896)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !709, line: 49, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !796, file: !709, line: 956, baseType: !1922, size: 64, offset: 8960)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !709, line: 45, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !796, file: !709, line: 959, baseType: !1925, size: 64, offset: 9024)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !709, line: 959, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !796, file: !709, line: 962, baseType: !1928, size: 64, offset: 9088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !709, line: 66, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !796, file: !709, line: 966, baseType: !1931, size: 64, offset: 9152)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1933, line: 35, flags: DIFlagFwdDecl)
!1933 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !796, file: !709, line: 969, baseType: !1935, size: 64, offset: 9216)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1937, line: 82, size: 7296, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1974, !1983, !1984, !1986, !1987, !1988, !1991, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2021, !2022, !2029, !2030, !2031, !2032, !2033, !2034}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1936, file: !1937, line: 83, baseType: !808, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1936, file: !1937, line: 84, baseType: !522, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1936, file: !1937, line: 85, baseType: !126, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1936, file: !1937, line: 86, baseType: !149, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1936, file: !1937, line: 88, baseType: !761, size: 128, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1936, file: !1937, line: 91, baseType: !795, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1936, file: !1937, line: 94, baseType: !1946, size: 192, offset: 448)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1947, line: 30, size: 192, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1946, file: !1947, line: 31, baseType: !149, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1946, file: !1947, line: 32, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1952, line: 25, baseType: !1953)
!1952 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1952, line: 23, size: 64, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1953, file: !1952, line: 24, baseType: !961, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1936, file: !1937, line: 97, baseType: !385, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1936, file: !1937, line: 100, baseType: !126, size: 32, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1936, file: !1937, line: 106, baseType: !126, size: 32, offset: 736)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1936, file: !1937, line: 107, baseType: !795, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1936, file: !1937, line: 110, baseType: !126, size: 32, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1937, line: 111, baseType: !7, size: 32, offset: 864)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1936, file: !1937, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1936, file: !1937, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1936, file: !1937, line: 128, baseType: !126, size: 32, offset: 928)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1936, file: !1937, line: 129, baseType: !149, size: 128, offset: 960)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1936, file: !1937, line: 132, baseType: !876, size: 512, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1936, file: !1937, line: 133, baseType: !884, size: 64, offset: 1600)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1936, file: !1937, line: 140, baseType: !1969, size: 256, offset: 1664)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 256, elements: !1437)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1937, line: 38, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1970, file: !1937, line: 39, baseType: !129, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1970, file: !1937, line: 40, baseType: !129, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1936, file: !1937, line: 146, baseType: !1975, size: 192, offset: 1920)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1937, line: 66, size: 192, elements: !1976)
!1976 = !{!1977}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1975, file: !1937, line: 67, baseType: !1978, size: 192)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1937, line: 47, size: 192, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1978, file: !1937, line: 48, baseType: !512, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1978, file: !1937, line: 49, baseType: !512, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1978, file: !1937, line: 50, baseType: !512, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1936, file: !1937, line: 150, baseType: !1894, size: 640, offset: 2112)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1936, file: !1937, line: 153, baseType: !1985, size: 256, offset: 2752)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 256, elements: !1397)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1936, file: !1937, line: 159, baseType: !1389, size: 64, offset: 3008)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1936, file: !1937, line: 162, baseType: !126, size: 32, offset: 3072)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1936, file: !1937, line: 164, baseType: !1989, size: 64, offset: 3136)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1937, line: 164, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1936, file: !1937, line: 175, baseType: !1992, size: 32, offset: 3200)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !199, line: 805, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 798, size: 32, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1993, file: !199, line: 803, baseType: !198, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1993, file: !199, line: 804, baseType: !250, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1936, file: !1937, line: 176, baseType: !129, size: 64, offset: 3264)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1936, file: !1937, line: 176, baseType: !129, size: 64, offset: 3328)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1936, file: !1937, line: 176, baseType: !129, size: 64, offset: 3392)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1936, file: !1937, line: 176, baseType: !129, size: 64, offset: 3456)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1936, file: !1937, line: 177, baseType: !129, size: 64, offset: 3520)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1936, file: !1937, line: 178, baseType: !129, size: 64, offset: 3584)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1936, file: !1937, line: 179, baseType: !1882, size: 128, offset: 3648)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1936, file: !1937, line: 180, baseType: !127, size: 64, offset: 3776)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1936, file: !1937, line: 180, baseType: !127, size: 64, offset: 3840)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1936, file: !1937, line: 180, baseType: !127, size: 64, offset: 3904)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1936, file: !1937, line: 180, baseType: !127, size: 64, offset: 3968)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1936, file: !1937, line: 181, baseType: !127, size: 64, offset: 4032)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1936, file: !1937, line: 181, baseType: !127, size: 64, offset: 4096)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1936, file: !1937, line: 181, baseType: !127, size: 64, offset: 4160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1936, file: !1937, line: 181, baseType: !127, size: 64, offset: 4224)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1936, file: !1937, line: 182, baseType: !127, size: 64, offset: 4288)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1936, file: !1937, line: 182, baseType: !127, size: 64, offset: 4352)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1936, file: !1937, line: 182, baseType: !127, size: 64, offset: 4416)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1936, file: !1937, line: 182, baseType: !127, size: 64, offset: 4480)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1936, file: !1937, line: 183, baseType: !127, size: 64, offset: 4544)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1936, file: !1937, line: 183, baseType: !127, size: 64, offset: 4608)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1936, file: !1937, line: 184, baseType: !2019, offset: 4672)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2020, line: 12, elements: !264)
!2020 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1936, file: !1937, line: 192, baseType: !133, size: 64, offset: 4672)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1936, file: !1937, line: 203, baseType: !2023, size: 2048, offset: 4736)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 2048, elements: !1916)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2025, line: 43, size: 128, elements: !2026)
!2025 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2024, file: !2025, line: 44, baseType: !1124, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2024, file: !2025, line: 45, baseType: !1124, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1936, file: !1937, line: 220, baseType: !332, size: 8, offset: 6784)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1936, file: !1937, line: 221, baseType: !1479, size: 16, offset: 6800)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1936, file: !1937, line: 222, baseType: !1479, size: 16, offset: 6816)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1936, file: !1937, line: 224, baseType: !969, size: 64, offset: 6848)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1936, file: !1937, line: 227, baseType: !506, size: 192, offset: 6912)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1936, file: !1937, line: 233, baseType: !506, size: 192, offset: 7104)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !796, file: !709, line: 970, baseType: !2036, size: 64, offset: 9280)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1937, line: 20, size: 16576, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2037, file: !1937, line: 21, baseType: !250)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2037, file: !1937, line: 22, baseType: !808, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2037, file: !1937, line: 23, baseType: !761, size: 128, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2037, file: !1937, line: 24, baseType: !2043, size: 16384, offset: 192)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, size: 16384, elements: !2064)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1947, line: 49, size: 256, elements: !2045)
!2045 = !{!2046}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2044, file: !1947, line: 50, baseType: !2047, size: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1947, line: 35, size: 256, elements: !2048)
!2048 = !{!2049, !2056, !2057, !2063}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2047, file: !1947, line: 37, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2051, line: 19, baseType: !2052)
!2051 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2051, line: 18, baseType: !2054)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !126}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2047, file: !1947, line: 38, baseType: !127, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2047, file: !1947, line: 44, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2051, line: 22, baseType: !2059)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2051, line: 21, baseType: !2061)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2047, file: !1947, line: 46, baseType: !1951, size: 64, offset: 192)
!2064 = !{!2065}
!2065 = !DISubrange(count: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !796, file: !709, line: 971, baseType: !1951, size: 64, offset: 9344)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !796, file: !709, line: 972, baseType: !1951, size: 64, offset: 9408)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !796, file: !709, line: 974, baseType: !1951, size: 64, offset: 9472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !796, file: !709, line: 975, baseType: !1946, size: 192, offset: 9536)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !796, file: !709, line: 976, baseType: !127, size: 64, offset: 9728)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !796, file: !709, line: 977, baseType: !1122, size: 64, offset: 9792)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !796, file: !709, line: 978, baseType: !7, size: 32, offset: 9856)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !796, file: !709, line: 980, baseType: !783, size: 64, offset: 9920)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !796, file: !709, line: 989, baseType: !2075, size: 128, offset: 9984)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2076, line: 35, size: 128, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2075, file: !2076, line: 36, baseType: !126, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2075, file: !2076, line: 37, baseType: !522, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2075, file: !2076, line: 38, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2076, line: 23, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !796, file: !709, line: 992, baseType: !129, size: 64, offset: 10112)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !796, file: !709, line: 993, baseType: !129, size: 64, offset: 10176)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !796, file: !709, line: 996, baseType: !250, offset: 10240)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !796, file: !709, line: 999, baseType: !689, offset: 10240)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !796, file: !709, line: 1001, baseType: !2088, size: 64, offset: 10240)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !709, line: 636, size: 64, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2088, file: !709, line: 637, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !796, file: !709, line: 1005, baseType: !930, size: 128, offset: 10304)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !796, file: !709, line: 1007, baseType: !795, size: 64, offset: 10432)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !796, file: !709, line: 1009, baseType: !2095, size: 64, offset: 10496)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !709, line: 1009, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !796, file: !709, line: 1043, baseType: !123, size: 64, offset: 10560)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !796, file: !709, line: 1046, baseType: !2099, size: 64, offset: 10624)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !709, line: 41, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !796, file: !709, line: 1050, baseType: !2102, size: 64, offset: 10688)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !709, line: 42, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !796, file: !709, line: 1054, baseType: !2105, size: 64, offset: 10752)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !709, line: 55, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !796, file: !709, line: 1056, baseType: !707, size: 64, offset: 10816)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !796, file: !709, line: 1058, baseType: !2109, size: 64, offset: 10880)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2111, line: 99, size: 704, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2125, !2146, !2147}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2110, file: !2111, line: 100, baseType: !510, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2110, file: !2111, line: 101, baseType: !522, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2110, file: !2111, line: 102, baseType: !522, size: 32, offset: 96)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2110, file: !2111, line: 105, baseType: !250, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2110, file: !2111, line: 107, baseType: !164, size: 16, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2110, file: !2111, line: 109, baseType: !2119, size: 128, offset: 192)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2120, line: 292, size: 128, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2119, file: !2120, line: 293, baseType: !250)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2119, file: !2120, line: 295, baseType: !121, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2119, file: !2120, line: 296, baseType: !123, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2110, file: !2111, line: 110, baseType: !2126, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2111, line: 73, size: 448, elements: !2128)
!2128 = !{!2129, !2132, !2133, !2140, !2145}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2127, file: !2111, line: 74, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2111, line: 74, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2127, file: !2111, line: 75, baseType: !2109, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !2111, line: 83, baseType: !2134, size: 128, offset: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !2111, line: 83, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2134, file: !2111, line: 84, baseType: !149, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2134, file: !2111, line: 85, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !139, line: 117, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !2111, line: 87, baseType: !2141, size: 128, offset: 256)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !2111, line: 87, size: 128, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2141, file: !2111, line: 88, baseType: !389, size: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2141, file: !2111, line: 89, baseType: !780, size: 128, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2111, line: 92, baseType: !7, size: 32, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2110, file: !2111, line: 111, baseType: !385, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2110, file: !2111, line: 113, baseType: !1758, size: 256, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !796, file: !709, line: 1061, baseType: !2149, size: 64, offset: 10944)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !709, line: 43, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !796, file: !709, line: 1064, baseType: !127, size: 64, offset: 11008)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !796, file: !709, line: 1065, baseType: !2153, size: 64, offset: 11072)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1947, line: 14, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1947, line: 12, size: 384, elements: !2156)
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !1947, line: 13, baseType: !2158, size: 384)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !1947, line: 13, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2158, file: !1947, line: 13, baseType: !126, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2158, file: !1947, line: 13, baseType: !126, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2158, file: !1947, line: 13, baseType: !126, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2158, file: !1947, line: 13, baseType: !2164, size: 256, offset: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2165, line: 32, size: 256, elements: !2166)
!2165 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2172, !2185, !2191, !2200, !2220, !2225}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2164, file: !2165, line: 37, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 34, size: 64, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2168, file: !2165, line: 35, baseType: !1859, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2168, file: !2165, line: 36, baseType: !173, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2164, file: !2165, line: 45, baseType: !2173, size: 192)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 40, size: 192, elements: !2174)
!2174 = !{!2175, !2177, !2178, !2184}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2173, file: !2165, line: 41, baseType: !2176, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !174, line: 95, baseType: !126)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2173, file: !2165, line: 42, baseType: !126, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2173, file: !2165, line: 43, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2165, line: 11, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2165, line: 8, size: 64, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2180, file: !2165, line: 9, baseType: !126, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2180, file: !2165, line: 10, baseType: !123, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2173, file: !2165, line: 44, baseType: !126, size: 32, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2164, file: !2165, line: 52, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 48, size: 128, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2186, file: !2165, line: 49, baseType: !1859, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2186, file: !2165, line: 50, baseType: !173, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2186, file: !2165, line: 51, baseType: !2179, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2164, file: !2165, line: 61, baseType: !2192, size: 256)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 55, size: 256, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2199}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2192, file: !2165, line: 56, baseType: !1859, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2192, file: !2165, line: 57, baseType: !173, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2192, file: !2165, line: 58, baseType: !126, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2192, file: !2165, line: 59, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !174, line: 94, baseType: !1121)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2192, file: !2165, line: 60, baseType: !2198, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2164, file: !2165, line: 95, baseType: !2201, size: 256)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 64, size: 256, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2201, file: !2165, line: 65, baseType: !123, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2165, line: 77, baseType: !2205, size: 192, offset: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2165, line: 77, size: 192, elements: !2206)
!2206 = !{!2207, !2208, !2215}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2205, file: !2165, line: 82, baseType: !1479, size: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2205, file: !2165, line: 88, baseType: !2209, size: 192)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2165, line: 84, size: 192, elements: !2210)
!2210 = !{!2211, !2213, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2209, file: !2165, line: 85, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 64, elements: !914)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2209, file: !2165, line: 86, baseType: !123, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2209, file: !2165, line: 87, baseType: !123, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2205, file: !2165, line: 93, baseType: !2216, size: 96)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2165, line: 90, size: 96, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2216, file: !2165, line: 91, baseType: !2212, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2216, file: !2165, line: 92, baseType: !227, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2164, file: !2165, line: 101, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 98, size: 128, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2221, file: !2165, line: 99, baseType: !134, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2221, file: !2165, line: 100, baseType: !126, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2164, file: !2165, line: 108, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2165, line: 104, size: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2226, file: !2165, line: 105, baseType: !123, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2226, file: !2165, line: 106, baseType: !126, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2226, file: !2165, line: 107, baseType: !7, size: 32, offset: 96)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !796, file: !709, line: 1067, baseType: !2019, offset: 11136)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !796, file: !709, line: 1099, baseType: !2233, size: 64, offset: 11136)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !709, line: 56, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !796, file: !709, line: 1103, baseType: !149, size: 128, offset: 11200)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !796, file: !709, line: 1104, baseType: !2237, size: 64, offset: 11328)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !709, line: 46, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !796, file: !709, line: 1105, baseType: !506, size: 192, offset: 11392)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !796, file: !709, line: 1106, baseType: !7, size: 32, offset: 11584)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !796, file: !709, line: 1109, baseType: !2242, size: 128, offset: 11648)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2243, size: 128, elements: !1437)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !709, line: 51, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !796, file: !709, line: 1110, baseType: !506, size: 192, offset: 11776)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !796, file: !709, line: 1111, baseType: !149, size: 128, offset: 11968)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !796, file: !709, line: 1173, baseType: !2248, size: 64, offset: 12096)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2250, line: 62, size: 256, align: 256, elements: !2251)
!2250 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2251 = !{!2252, !2253, !2254, !2259}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2249, file: !2250, line: 75, baseType: !227, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2249, file: !2250, line: 90, baseType: !227, size: 32, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2249, file: !2250, line: 124, baseType: !2255, size: 64, offset: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2250, line: 109, size: 64, elements: !2256)
!2256 = !{!2257, !2258}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2255, file: !2250, line: 110, baseType: !131, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2255, file: !2250, line: 112, baseType: !131, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2249, file: !2250, line: 144, baseType: !227, size: 32, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !796, file: !709, line: 1174, baseType: !226, size: 32, offset: 12160)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !796, file: !709, line: 1179, baseType: !127, size: 64, offset: 12224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !796, file: !709, line: 1182, baseType: !2263, size: 128, offset: 12288)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1674, line: 76, size: 128, elements: !2264)
!2264 = !{!2265, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2263, file: !1674, line: 85, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2267, line: 7, size: 64, elements: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2266, file: !2267, line: 12, baseType: !958, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2263, file: !1674, line: 88, baseType: !332, size: 8, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2263, file: !1674, line: 95, baseType: !332, size: 8, offset: 72)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !709, line: 1184, baseType: !2273, size: 128, offset: 12416)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !709, line: 1184, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2273, file: !709, line: 1185, baseType: !808, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2273, file: !709, line: 1186, baseType: !780, size: 128, align: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !796, file: !709, line: 1190, baseType: !1348, size: 64, offset: 12544)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !796, file: !709, line: 1192, baseType: !2279, size: 128, offset: 12608)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1674, line: 64, size: 128, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2279, file: !1674, line: 65, baseType: !137, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2279, file: !1674, line: 67, baseType: !227, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2279, file: !1674, line: 68, baseType: !227, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !796, file: !709, line: 1206, baseType: !126, size: 32, offset: 12736)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !796, file: !709, line: 1207, baseType: !126, size: 32, offset: 12768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !796, file: !709, line: 1209, baseType: !127, size: 64, offset: 12800)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !796, file: !709, line: 1219, baseType: !129, size: 64, offset: 12864)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !796, file: !709, line: 1220, baseType: !129, size: 64, offset: 12928)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !796, file: !709, line: 1317, baseType: !126, size: 32, offset: 12992)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !796, file: !709, line: 1319, baseType: !795, size: 64, offset: 13056)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !796, file: !709, line: 1322, baseType: !2292, size: 64, offset: 13120)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2294, line: 56, size: 512, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2293, file: !2294, line: 57, baseType: !2292, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2293, file: !2294, line: 58, baseType: !123, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2293, file: !2294, line: 59, baseType: !127, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !2294, line: 60, baseType: !127, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2293, file: !2294, line: 61, baseType: !136, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2293, file: !2294, line: 62, baseType: !7, size: 32, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2293, file: !2294, line: 63, baseType: !128, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2293, file: !2294, line: 64, baseType: !2304, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !796, file: !709, line: 1326, baseType: !808, size: 32, offset: 13184)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !796, file: !709, line: 1342, baseType: !123, size: 64, offset: 13248)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !796, file: !709, line: 1343, baseType: !131, size: 64, offset: 13312)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !796, file: !709, line: 1344, baseType: !129, size: 64, offset: 13376)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !796, file: !709, line: 1345, baseType: !131, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !796, file: !709, line: 1346, baseType: !131, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !796, file: !709, line: 1347, baseType: !131, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !796, file: !709, line: 1348, baseType: !780, size: 128, align: 64, offset: 13504)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !796, file: !709, line: 1358, baseType: !2315, size: 34816, offset: 13824)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2316, line: 485, size: 34816, elements: !2317)
!2316 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2317 = !{!2318, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2347, !2348, !2349, !2350, !2351, !2352, !2355, !2356, !2357}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2315, file: !2316, line: 487, baseType: !2319, size: 192)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 192, elements: !401)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2321, line: 16, size: 64, elements: !2322)
!2321 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2320, file: !2321, line: 17, baseType: !1146, size: 16)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2320, file: !2321, line: 18, baseType: !1146, size: 16, offset: 16)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2320, file: !2321, line: 19, baseType: !1146, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2320, file: !2321, line: 19, baseType: !1146, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2320, file: !2321, line: 19, baseType: !1146, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2320, file: !2321, line: 19, baseType: !1146, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2320, file: !2321, line: 19, baseType: !1146, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2320, file: !2321, line: 20, baseType: !1146, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2315, file: !2316, line: 491, baseType: !127, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2315, file: !2316, line: 495, baseType: !164, size: 16, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2315, file: !2316, line: 496, baseType: !164, size: 16, offset: 272)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2315, file: !2316, line: 497, baseType: !164, size: 16, offset: 288)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2315, file: !2316, line: 498, baseType: !164, size: 16, offset: 304)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2315, file: !2316, line: 502, baseType: !127, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2315, file: !2316, line: 503, baseType: !127, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2315, file: !2316, line: 514, baseType: !2344, size: 256, offset: 448)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, size: 256, elements: !1397)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2316, line: 483, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2315, file: !2316, line: 516, baseType: !127, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2315, file: !2316, line: 518, baseType: !127, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2315, file: !2316, line: 520, baseType: !127, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2315, file: !2316, line: 521, baseType: !127, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2315, file: !2316, line: 522, baseType: !127, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2315, file: !2316, line: 528, baseType: !2353, size: 64, offset: 1024)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2316, line: 10, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2315, file: !2316, line: 535, baseType: !127, size: 64, offset: 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2315, file: !2316, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2315, file: !2316, line: 540, baseType: !2358, size: 33280, offset: 1536)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2359, line: 317, size: 33280, elements: !2360)
!2359 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2360 = !{!2361, !2362, !2363}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2358, file: !2359, line: 330, baseType: !7, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2358, file: !2359, line: 337, baseType: !127, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2358, file: !2359, line: 348, baseType: !2364, size: 32768, offset: 512)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2359, line: 304, size: 32768, elements: !2365)
!2365 = !{!2366, !2381, !2418, !2468, !2481}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2364, file: !2359, line: 305, baseType: !2367, size: 896)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2359, line: 12, size: 896, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2380}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2367, file: !2359, line: 13, baseType: !226, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2367, file: !2359, line: 14, baseType: !226, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2367, file: !2359, line: 15, baseType: !226, size: 32, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2367, file: !2359, line: 16, baseType: !226, size: 32, offset: 96)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2367, file: !2359, line: 17, baseType: !226, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2367, file: !2359, line: 18, baseType: !226, size: 32, offset: 160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2367, file: !2359, line: 19, baseType: !226, size: 32, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2367, file: !2359, line: 22, baseType: !2377, size: 640, offset: 224)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 640, elements: !2378)
!2378 = !{!2379}
!2379 = !DISubrange(count: 20)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2367, file: !2359, line: 25, baseType: !226, size: 32, offset: 864)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2364, file: !2359, line: 306, baseType: !2382, size: 4096, align: 128)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2359, line: 34, size: 4096, align: 128, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2403, !2404, !2405, !2407, !2409, !2413}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2382, file: !2359, line: 35, baseType: !1146, size: 16)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2382, file: !2359, line: 36, baseType: !1146, size: 16, offset: 16)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2382, file: !2359, line: 37, baseType: !1146, size: 16, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2382, file: !2359, line: 38, baseType: !1146, size: 16, offset: 48)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !2359, line: 39, baseType: !2389, size: 128, offset: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2382, file: !2359, line: 39, size: 128, elements: !2390)
!2390 = !{!2391, !2396}
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2389, file: !2359, line: 40, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !2359, line: 40, size: 128, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2392, file: !2359, line: 41, baseType: !129, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2392, file: !2359, line: 42, baseType: !129, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2389, file: !2359, line: 44, baseType: !2397, size: 128)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !2359, line: 44, size: 128, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2397, file: !2359, line: 45, baseType: !226, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2397, file: !2359, line: 46, baseType: !226, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2397, file: !2359, line: 47, baseType: !226, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2397, file: !2359, line: 48, baseType: !226, size: 32, offset: 96)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2382, file: !2359, line: 51, baseType: !226, size: 32, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2382, file: !2359, line: 52, baseType: !226, size: 32, offset: 224)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2382, file: !2359, line: 55, baseType: !2406, size: 1024, offset: 256)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1024, elements: !237)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2382, file: !2359, line: 58, baseType: !2408, size: 2048, offset: 1280)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !2064)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2382, file: !2359, line: 60, baseType: !2410, size: 384, offset: 3328)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 384, elements: !2411)
!2411 = !{!2412}
!2412 = !DISubrange(count: 12)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !2359, line: 62, baseType: !2414, size: 384, offset: 3712)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2382, file: !2359, line: 62, size: 384, elements: !2415)
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2414, file: !2359, line: 63, baseType: !2410, size: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2414, file: !2359, line: 64, baseType: !2410, size: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2364, file: !2359, line: 307, baseType: !2419, size: 1088)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2359, line: 79, size: 1088, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2467}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2419, file: !2359, line: 80, baseType: !226, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2419, file: !2359, line: 81, baseType: !226, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2419, file: !2359, line: 82, baseType: !226, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2419, file: !2359, line: 83, baseType: !226, size: 32, offset: 96)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2419, file: !2359, line: 84, baseType: !226, size: 32, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2419, file: !2359, line: 85, baseType: !226, size: 32, offset: 160)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2419, file: !2359, line: 86, baseType: !226, size: 32, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2419, file: !2359, line: 88, baseType: !2377, size: 640, offset: 224)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2419, file: !2359, line: 89, baseType: !943, size: 8, offset: 864)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2419, file: !2359, line: 90, baseType: !943, size: 8, offset: 872)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2419, file: !2359, line: 91, baseType: !943, size: 8, offset: 880)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2419, file: !2359, line: 92, baseType: !943, size: 8, offset: 888)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2419, file: !2359, line: 93, baseType: !943, size: 8, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2419, file: !2359, line: 94, baseType: !943, size: 8, offset: 904)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2419, file: !2359, line: 95, baseType: !2436, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2438, line: 11, size: 128, elements: !2439)
!2438 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2439 = !{!2440, !2441}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2437, file: !2438, line: 12, baseType: !134, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2437, file: !2438, line: 13, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2444, line: 56, size: 1344, elements: !2445)
!2444 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2443, file: !2444, line: 61, baseType: !127, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2443, file: !2444, line: 62, baseType: !127, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2443, file: !2444, line: 63, baseType: !127, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2443, file: !2444, line: 64, baseType: !127, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2443, file: !2444, line: 65, baseType: !127, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2443, file: !2444, line: 66, baseType: !127, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2443, file: !2444, line: 68, baseType: !127, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2443, file: !2444, line: 69, baseType: !127, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2443, file: !2444, line: 70, baseType: !127, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2443, file: !2444, line: 71, baseType: !127, size: 64, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2443, file: !2444, line: 72, baseType: !127, size: 64, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2443, file: !2444, line: 73, baseType: !127, size: 64, offset: 704)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2443, file: !2444, line: 74, baseType: !127, size: 64, offset: 768)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2443, file: !2444, line: 75, baseType: !127, size: 64, offset: 832)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2443, file: !2444, line: 76, baseType: !127, size: 64, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2443, file: !2444, line: 81, baseType: !127, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2443, file: !2444, line: 83, baseType: !127, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2443, file: !2444, line: 84, baseType: !127, size: 64, offset: 1088)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !2444, line: 85, baseType: !127, size: 64, offset: 1152)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2443, file: !2444, line: 86, baseType: !127, size: 64, offset: 1216)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2443, file: !2444, line: 87, baseType: !127, size: 64, offset: 1280)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2419, file: !2359, line: 96, baseType: !226, size: 32, offset: 1024)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2364, file: !2359, line: 308, baseType: !2469, size: 4608, align: 512)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2359, line: 289, size: 4608, align: 512, elements: !2470)
!2470 = !{!2471, !2472, !2479}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2469, file: !2359, line: 290, baseType: !2382, size: 4096, align: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2469, file: !2359, line: 291, baseType: !2473, size: 512, offset: 4096)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2359, line: 268, size: 512, elements: !2474)
!2474 = !{!2475, !2476, !2477}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2473, file: !2359, line: 269, baseType: !129, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2473, file: !2359, line: 270, baseType: !129, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2473, file: !2359, line: 271, baseType: !2478, size: 384, offset: 128)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !1497)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2469, file: !2359, line: 292, baseType: !2480, offset: 4608)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, elements: !1595)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2364, file: !2359, line: 309, baseType: !2482, size: 32768)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 32768, elements: !2483)
!2483 = !{!2484}
!2484 = !DISubrange(count: 4096)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !769, file: !770, line: 16, baseType: !761, size: 128, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !769, file: !770, line: 17, baseType: !522, size: 32, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !342, file: !44, line: 1465, baseType: !123, size: 64, offset: 6400)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !342, file: !44, line: 1468, baseType: !226, size: 32, offset: 6464)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !342, file: !44, line: 1470, baseType: !557, size: 64, offset: 6528)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !342, file: !44, line: 1471, baseType: !557, size: 64, offset: 6592)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !342, file: !44, line: 1473, baseType: !227, size: 32, offset: 6656)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !342, file: !44, line: 1474, baseType: !2493, size: 64, offset: 6720)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !342, file: !44, line: 1477, baseType: !2496, size: 256, offset: 6784)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !237)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !342, file: !44, line: 1478, baseType: !2498, size: 128, offset: 7040)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2499, line: 18, baseType: !2500)
!2499 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2499, line: 16, size: 128, elements: !2501)
!2501 = !{!2502}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2500, file: !2499, line: 17, baseType: !2503, size: 128)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 128, elements: !1916)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !342, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !342, file: !44, line: 1481, baseType: !1381, size: 32, offset: 7200)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !342, file: !44, line: 1487, baseType: !506, size: 192, offset: 7232)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !342, file: !44, line: 1493, baseType: !287, size: 64, offset: 7424)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !342, file: !44, line: 1495, baseType: !267, size: 64, offset: 7488)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !342, file: !44, line: 1500, baseType: !126, size: 32, offset: 7552)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !342, file: !44, line: 1502, baseType: !2511, size: 448, offset: 7616)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !479, line: 60, size: 448, elements: !2512)
!2512 = !{!2513, !2518, !2519, !2520, !2521, !2522, !2523}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2511, file: !479, line: 61, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!127, !2517, !477}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2511, file: !479, line: 63, baseType: !2514, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2511, file: !479, line: 66, baseType: !134, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2511, file: !479, line: 67, baseType: !126, size: 32, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !479, line: 68, baseType: !7, size: 32, offset: 224)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2511, file: !479, line: 71, baseType: !149, size: 128, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2511, file: !479, line: 77, baseType: !2524, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !342, file: !44, line: 1505, baseType: !510, size: 64, offset: 8064)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !342, file: !44, line: 1508, baseType: !510, size: 64, offset: 8128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !342, file: !44, line: 1511, baseType: !126, size: 32, offset: 8192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !342, file: !44, line: 1514, baseType: !1617, size: 32, offset: 8224)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !342, file: !44, line: 1517, baseType: !2530, size: 64, offset: 8256)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1759, line: 18, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !342, file: !44, line: 1518, baseType: !385, size: 64, offset: 8320)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !342, file: !44, line: 1525, baseType: !1585, size: 64, offset: 8384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !342, file: !44, line: 1532, baseType: !2535, size: 64, offset: 8448)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2536, line: 52, size: 64, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2535, file: !2536, line: 53, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2536, line: 40, size: 256, elements: !2541)
!2541 = !{!2542, !2543, !2548}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2540, file: !2536, line: 42, baseType: !250)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2540, file: !2536, line: 44, baseType: !2544, size: 192)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2536, line: 28, size: 192, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2544, file: !2536, line: 29, baseType: !149, size: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2544, file: !2536, line: 31, baseType: !134, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2540, file: !2536, line: 49, baseType: !134, size: 64, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !342, file: !44, line: 1533, baseType: !2535, size: 64, offset: 8512)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !342, file: !44, line: 1534, baseType: !780, size: 128, align: 64, offset: 8576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !342, file: !44, line: 1535, baseType: !1758, size: 256, offset: 8704)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !342, file: !44, line: 1537, baseType: !506, size: 192, offset: 8960)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !342, file: !44, line: 1542, baseType: !126, size: 32, offset: 9152)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !342, file: !44, line: 1545, baseType: !250, offset: 9184)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !342, file: !44, line: 1546, baseType: !149, size: 128, offset: 9216)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !342, file: !44, line: 1548, baseType: !250, offset: 9344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !342, file: !44, line: 1549, baseType: !149, size: 128, offset: 9344)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !193, file: !194, line: 104, baseType: !127, size: 64, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !193, file: !194, line: 105, baseType: !123, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !194, line: 107, baseType: !2561, size: 128, offset: 1024)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !194, line: 107, size: 128, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2561, file: !194, line: 108, baseType: !149, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2561, file: !194, line: 109, baseType: !1192, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !193, file: !194, line: 111, baseType: !149, size: 128, offset: 1152)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !193, file: !194, line: 112, baseType: !149, size: 128, offset: 1280)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !193, file: !194, line: 120, baseType: !2568, size: 128, offset: 1408)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !194, line: 116, size: 128, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2568, file: !194, line: 117, baseType: !389, size: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2568, file: !194, line: 118, baseType: !208, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2568, file: !194, line: 119, baseType: !780, size: 128, align: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !186, file: !44, line: 1866, baseType: !2574, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!287, !192, !159, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2579, line: 10, size: 128, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2580 = !{!2581, !2585}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2578, file: !2579, line: 11, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !123}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2578, file: !2579, line: 12, baseType: !123, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !186, file: !44, line: 1867, baseType: !2587, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!126, !159, !126}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !186, file: !44, line: 1868, baseType: !2591, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!2594, !159, !126}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !186, file: !44, line: 1870, baseType: !2597, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!126, !192, !313, !126}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !186, file: !44, line: 1872, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!126, !159, !192, !163, !332}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !186, file: !44, line: 1873, baseType: !2605, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!126, !192, !159, !192}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !186, file: !44, line: 1874, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!126, !159, !192}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !186, file: !44, line: 1875, baseType: !2613, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!126, !159, !192, !287}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !186, file: !44, line: 1876, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!126, !159, !192, !163}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !186, file: !44, line: 1877, baseType: !2609, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !186, file: !44, line: 1878, baseType: !2622, size: 64, offset: 704)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!126, !159, !192, !163, !346}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !186, file: !44, line: 1879, baseType: !2626, size: 64, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!126, !159, !192, !159, !192, !7}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !186, file: !44, line: 1881, baseType: !2630, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!126, !192, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2646, !2647, !2648}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2634, file: !44, line: 220, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2634, file: !44, line: 221, baseType: !163, size: 16, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2634, file: !44, line: 222, baseType: !167, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2634, file: !44, line: 223, baseType: !176, size: 32, offset: 96)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2634, file: !44, line: 224, baseType: !351, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2634, file: !44, line: 225, baseType: !2642, size: 128, offset: 192)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2642, file: !558, line: 14, baseType: !557, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2642, file: !558, line: 15, baseType: !134, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2634, file: !44, line: 226, baseType: !2642, size: 128, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2634, file: !44, line: 227, baseType: !2642, size: 128, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2634, file: !44, line: 234, baseType: !1090, size: 64, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !186, file: !44, line: 1882, baseType: !2650, size: 64, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!126, !330, !2653, !226, !7}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2655, line: 22, size: 1152, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2654, file: !2655, line: 23, baseType: !226, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2654, file: !2655, line: 24, baseType: !163, size: 16, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2654, file: !2655, line: 25, baseType: !7, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2654, file: !2655, line: 26, baseType: !1475, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2654, file: !2655, line: 27, baseType: !129, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2654, file: !2655, line: 28, baseType: !129, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2654, file: !2655, line: 37, baseType: !129, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2654, file: !2655, line: 38, baseType: !346, size: 32, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2654, file: !2655, line: 39, baseType: !346, size: 32, offset: 352)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2654, file: !2655, line: 40, baseType: !167, size: 32, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2654, file: !2655, line: 41, baseType: !176, size: 32, offset: 416)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2654, file: !2655, line: 42, baseType: !351, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2654, file: !2655, line: 43, baseType: !2642, size: 128, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2654, file: !2655, line: 44, baseType: !2642, size: 128, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2654, file: !2655, line: 45, baseType: !2642, size: 128, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2654, file: !2655, line: 46, baseType: !2642, size: 128, offset: 896)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2654, file: !2655, line: 47, baseType: !129, size: 64, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2654, file: !2655, line: 48, baseType: !129, size: 64, offset: 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !186, file: !44, line: 1883, baseType: !2676, size: 64, offset: 960)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!1119, !192, !313, !1122}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !186, file: !44, line: 1884, baseType: !2680, size: 64, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!126, !159, !2683, !129, !129}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !186, file: !44, line: 1886, baseType: !2686, size: 64, offset: 1088)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!126, !159, !2689, !126}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !186, file: !44, line: 1887, baseType: !2691, size: 64, offset: 1152)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!126, !159, !192, !1090, !7, !163}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !186, file: !44, line: 1890, baseType: !2617, size: 64, offset: 1216)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !186, file: !44, line: 1891, baseType: !2696, size: 64, offset: 1280)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!126, !159, !2594, !126}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !160, file: !44, line: 623, baseType: !341, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !160, file: !44, line: 624, baseType: !155, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !160, file: !44, line: 631, baseType: !127, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !44, line: 639, baseType: !2703, size: 32, offset: 384)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !44, line: 639, size: 32, elements: !2704)
!2704 = !{!2705, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2703, file: !44, line: 640, baseType: !2706, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2703, file: !44, line: 641, baseType: !7, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !160, file: !44, line: 643, baseType: !346, size: 32, offset: 416)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !160, file: !44, line: 644, baseType: !351, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !160, file: !44, line: 645, baseType: !2642, size: 128, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !160, file: !44, line: 646, baseType: !2642, size: 128, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !160, file: !44, line: 647, baseType: !2642, size: 128, offset: 768)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !160, file: !44, line: 648, baseType: !250, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !160, file: !44, line: 649, baseType: !164, size: 16, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !160, file: !44, line: 650, baseType: !943, size: 8, offset: 912)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !160, file: !44, line: 651, baseType: !943, size: 8, offset: 920)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !160, file: !44, line: 652, baseType: !671, size: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !160, file: !44, line: 659, baseType: !127, size: 64, offset: 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !160, file: !44, line: 660, baseType: !683, size: 256, offset: 1088)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !160, file: !44, line: 662, baseType: !127, size: 64, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !160, file: !44, line: 663, baseType: !127, size: 64, offset: 1408)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !160, file: !44, line: 665, baseType: !389, size: 128, offset: 1472)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !160, file: !44, line: 666, baseType: !149, size: 128, offset: 1600)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !160, file: !44, line: 675, baseType: !149, size: 128, offset: 1728)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !160, file: !44, line: 676, baseType: !149, size: 128, offset: 1856)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !160, file: !44, line: 677, baseType: !149, size: 128, offset: 1984)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !44, line: 678, baseType: !2728, size: 128, offset: 2112)
!2728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !44, line: 678, size: 128, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2728, file: !44, line: 679, baseType: !385, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2728, file: !44, line: 680, baseType: !780, size: 128, align: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !160, file: !44, line: 682, baseType: !512, size: 64, offset: 2240)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !160, file: !44, line: 683, baseType: !512, size: 64, offset: 2304)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !160, file: !44, line: 684, baseType: !522, size: 32, offset: 2368)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !160, file: !44, line: 685, baseType: !522, size: 32, offset: 2400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !160, file: !44, line: 686, baseType: !522, size: 32, offset: 2432)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !160, file: !44, line: 688, baseType: !522, size: 32, offset: 2464)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !44, line: 690, baseType: !2739, size: 64, offset: 2496)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !44, line: 690, size: 64, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2739, file: !44, line: 691, baseType: !1106, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2739, file: !44, line: 692, baseType: !416, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !160, file: !44, line: 694, baseType: !2744, size: 64, offset: 2560)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2745, file: !44, line: 1101, baseType: !250)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2745, file: !44, line: 1102, baseType: !149, size: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2745, file: !44, line: 1103, baseType: !149, size: 128, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2745, file: !44, line: 1104, baseType: !149, size: 128, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !160, file: !44, line: 695, baseType: !156, size: 1216, align: 64, offset: 2624)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !160, file: !44, line: 696, baseType: !149, size: 128, offset: 3840)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !44, line: 697, baseType: !2754, size: 64, offset: 3968)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !44, line: 697, size: 64, elements: !2755)
!2755 = !{!2756, !2757, !2758, !3065, !3066}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2754, file: !44, line: 698, baseType: !1348, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2754, file: !44, line: 699, baseType: !704, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2754, file: !44, line: 700, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2761, line: 14, size: 832, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !{!2763, !3060, !3061, !3062, !3063, !3064}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2760, file: !2761, line: 15, baseType: !2764, size: 512)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2765, line: 64, size: 512, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768, !2769, !2771, !2811, !2911, !3050, !3055, !3056, !3057, !3058, !3059}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2764, file: !2765, line: 65, baseType: !287, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2764, file: !2765, line: 66, baseType: !149, size: 128, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2764, file: !2765, line: 67, baseType: !2770, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2764, file: !2765, line: 68, baseType: !2772, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2765, line: 192, size: 704, elements: !2774)
!2774 = !{!2775, !2776, !2777, !2778}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2773, file: !2765, line: 193, baseType: !149, size: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2773, file: !2765, line: 194, baseType: !250, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2773, file: !2765, line: 195, baseType: !2764, size: 512, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2773, file: !2765, line: 196, baseType: !2779, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2765, line: 156, size: 192, elements: !2782)
!2782 = !{!2783, !2788, !2793}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2781, file: !2765, line: 157, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!126, !2772, !2770}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2781, file: !2765, line: 158, baseType: !2789, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!287, !2772, !2770}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2781, file: !2765, line: 159, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2795)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!126, !2772, !2770, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2765, line: 148, size: 20736, elements: !2800)
!2800 = !{!2801, !2803, !2805, !2806, !2810}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2799, file: !2765, line: 149, baseType: !2802, size: 192)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 192, elements: !401)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2799, file: !2765, line: 150, baseType: !2804, size: 4096, offset: 192)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 4096, elements: !2064)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2799, file: !2765, line: 151, baseType: !126, size: 32, offset: 4288)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2799, file: !2765, line: 152, baseType: !2807, size: 16384, offset: 4320)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 16384, elements: !2808)
!2808 = !{!2809}
!2809 = !DISubrange(count: 2048)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2799, file: !2765, line: 153, baseType: !126, size: 32, offset: 20704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2764, file: !2765, line: 69, baseType: !2812, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2765, line: 138, size: 448, elements: !2814)
!2814 = !{!2815, !2819, !2838, !2840, !2873, !2901, !2905}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2813, file: !2765, line: 139, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2770}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2813, file: !2765, line: 140, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2823, line: 230, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !{!2825, !2834}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2822, file: !2823, line: 231, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!1119, !2770, !2829, !313}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2823, line: 30, size: 128, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2830, file: !2823, line: 31, baseType: !287, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2830, file: !2823, line: 32, baseType: !163, size: 16, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2822, file: !2823, line: 232, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!1119, !2770, !2829, !287, !1122}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2813, file: !2765, line: 141, baseType: !2839, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2813, file: !2765, line: 142, baseType: !2841, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2823, line: 84, size: 320, elements: !2845)
!2845 = !{!2846, !2847, !2851, !2870, !2871}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2844, file: !2823, line: 85, baseType: !287, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2844, file: !2823, line: 86, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!163, !2770, !2829, !126}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2844, file: !2823, line: 88, baseType: !2852, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!163, !2770, !2855, !126}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2823, line: 168, size: 448, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2865, !2866}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2856, file: !2823, line: 169, baseType: !2830, size: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2856, file: !2823, line: 170, baseType: !1122, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2856, file: !2823, line: 171, baseType: !123, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2856, file: !2823, line: 172, baseType: !2862, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!1119, !1090, !2770, !2855, !313, !351, !1122}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2856, file: !2823, line: 174, baseType: !2862, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2856, file: !2823, line: 176, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!126, !1090, !2770, !2855, !976}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2844, file: !2823, line: 90, baseType: !2839, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2844, file: !2823, line: 91, baseType: !2872, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2813, file: !2765, line: 143, baseType: !2874, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!2877, !2770}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2879)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !2880)
!2880 = !{!2881, !2882, !2886, !2890, !2896, !2900}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2879, file: !61, line: 40, baseType: !60, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2879, file: !61, line: 41, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!332}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2879, file: !61, line: 42, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!123}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2879, file: !61, line: 43, baseType: !2891, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!2304, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2879, file: !61, line: 44, baseType: !2897, size: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!2304}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2879, file: !61, line: 45, baseType: !2582, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2813, file: !2765, line: 144, baseType: !2902, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!2304, !2770}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2813, file: !2765, line: 145, baseType: !2906, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2770, !2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2764, file: !2765, line: 70, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !366, line: 123, size: 1024, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !3043, !3044, !3045, !3046, !3047}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2913, file: !366, line: 124, baseType: !522, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2913, file: !366, line: 125, baseType: !522, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2913, file: !366, line: 135, baseType: !2912, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2913, file: !366, line: 136, baseType: !287, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2913, file: !366, line: 138, baseType: !832, size: 192, align: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2913, file: !366, line: 140, baseType: !2304, size: 64, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2913, file: !366, line: 141, baseType: !7, size: 32, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !366, line: 142, baseType: !2923, size: 256, offset: 512)
!2923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !366, line: 142, size: 256, elements: !2924)
!2924 = !{!2925, !2971, !2975}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2923, file: !366, line: 143, baseType: !2926, size: 192)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !366, line: 91, size: 192, elements: !2927)
!2927 = !{!2928, !2929, !2930}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2926, file: !366, line: 92, baseType: !127, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2926, file: !366, line: 94, baseType: !933, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2926, file: !366, line: 100, baseType: !2931, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !366, line: 180, size: 704, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2943, !2944, !2945, !2969, !2970}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2932, file: !366, line: 182, baseType: !2912, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2932, file: !366, line: 183, baseType: !7, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2932, file: !366, line: 186, baseType: !2937, size: 192, offset: 128)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2938, line: 19, size: 192, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2937, file: !2938, line: 20, baseType: !2119, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2937, file: !2938, line: 21, baseType: !7, size: 32, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2937, file: !2938, line: 22, baseType: !7, size: 32, offset: 160)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2932, file: !366, line: 187, baseType: !226, size: 32, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2932, file: !366, line: 188, baseType: !226, size: 32, offset: 352)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2932, file: !366, line: 189, baseType: !2946, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !366, line: 168, size: 320, elements: !2948)
!2948 = !{!2949, !2953, !2957, !2961, !2965}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2947, file: !366, line: 169, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!126, !463, !2931}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2947, file: !366, line: 171, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!126, !2912, !287, !163}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2947, file: !366, line: 173, baseType: !2958, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!126, !2912}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2947, file: !366, line: 174, baseType: !2962, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!126, !2912, !2912, !287}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2947, file: !366, line: 176, baseType: !2966, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!126, !463, !2912, !2931}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2932, file: !366, line: 192, baseType: !149, size: 128, offset: 448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2932, file: !366, line: 194, baseType: !761, size: 128, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2923, file: !366, line: 144, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !366, line: 103, size: 64, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2972, file: !366, line: 104, baseType: !2912, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2923, file: !366, line: 145, baseType: !2976, size: 256)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !366, line: 107, size: 256, elements: !2977)
!2977 = !{!2978, !3038, !3041, !3042}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2976, file: !366, line: 108, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !366, line: 217, size: 768, elements: !2982)
!2982 = !{!2983, !3003, !3007, !3011, !3015, !3019, !3023, !3027, !3028, !3029, !3030, !3034}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2981, file: !366, line: 222, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!126, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !366, line: 197, size: 1088, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2988, file: !366, line: 199, baseType: !2912, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2988, file: !366, line: 200, baseType: !1090, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2988, file: !366, line: 201, baseType: !463, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2988, file: !366, line: 202, baseType: !123, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2988, file: !366, line: 205, baseType: !506, size: 192, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2988, file: !366, line: 206, baseType: !506, size: 192, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2988, file: !366, line: 207, baseType: !126, size: 32, offset: 640)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2988, file: !366, line: 208, baseType: !149, size: 128, offset: 704)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2988, file: !366, line: 209, baseType: !313, size: 64, offset: 832)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2988, file: !366, line: 211, baseType: !1122, size: 64, offset: 896)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2988, file: !366, line: 212, baseType: !332, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2988, file: !366, line: 213, baseType: !332, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2988, file: !366, line: 214, baseType: !1004, size: 64, offset: 1024)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2981, file: !366, line: 223, baseType: !3004, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2987}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2981, file: !366, line: 236, baseType: !3008, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!126, !463, !123}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2981, file: !366, line: 238, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!123, !463, !1125}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2981, file: !366, line: 239, baseType: !3016, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!123, !463, !123, !1125}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2981, file: !366, line: 240, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !463, !123}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2981, file: !366, line: 242, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!1119, !2987, !313, !1122, !351}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2981, file: !366, line: 252, baseType: !1122, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2981, file: !366, line: 259, baseType: !332, size: 8, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2981, file: !366, line: 260, baseType: !3024, size: 64, offset: 576)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2981, file: !366, line: 263, baseType: !3031, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!1181, !2987, !1183}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2981, file: !366, line: 266, baseType: !3035, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!126, !2987, !976}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2976, file: !366, line: 109, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !366, line: 31, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2976, file: !366, line: 110, baseType: !351, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2976, file: !366, line: 111, baseType: !2912, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2913, file: !366, line: 148, baseType: !123, size: 64, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2913, file: !366, line: 154, baseType: !129, size: 64, offset: 832)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2913, file: !366, line: 156, baseType: !164, size: 16, offset: 896)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2913, file: !366, line: 157, baseType: !163, size: 16, offset: 912)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2913, file: !366, line: 158, baseType: !3048, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !366, line: 32, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2764, file: !2765, line: 71, baseType: !3051, size: 32, offset: 448)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3052, line: 19, size: 32, elements: !3053)
!3052 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3051, file: !3052, line: 20, baseType: !808, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2764, file: !2765, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2764, file: !2765, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2764, file: !2765, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2764, file: !2765, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2764, file: !2765, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2760, file: !2761, line: 16, baseType: !380, size: 64, offset: 512)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2760, file: !2761, line: 17, baseType: !1106, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2760, file: !2761, line: 18, baseType: !149, size: 128, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2760, file: !2761, line: 19, baseType: !346, size: 32, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2760, file: !2761, line: 20, baseType: !7, size: 32, offset: 800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2754, file: !44, line: 701, baseType: !313, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2754, file: !44, line: 702, baseType: !7, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !160, file: !44, line: 705, baseType: !227, size: 32, offset: 4032)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !160, file: !44, line: 708, baseType: !227, size: 32, offset: 4064)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !160, file: !44, line: 709, baseType: !2493, size: 64, offset: 4096)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !160, file: !44, line: 720, baseType: !123, size: 64, offset: 4160)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !156, file: !44, line: 453, baseType: !2119, size: 128, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !156, file: !44, line: 454, baseType: !121, size: 32, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !156, file: !44, line: 455, baseType: !522, size: 32, offset: 224)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !156, file: !44, line: 460, baseType: !930, size: 128, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !156, file: !44, line: 461, baseType: !683, size: 256, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !156, file: !44, line: 462, baseType: !127, size: 64, offset: 640)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !156, file: !44, line: 463, baseType: !127, size: 64, offset: 704)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !156, file: !44, line: 464, baseType: !127, size: 64, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !156, file: !44, line: 465, baseType: !3080, size: 64, offset: 832)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !3083)
!3083 = !{!3084, !3088, !3092, !3096, !3100, !3104, !3110, !3114, !3118, !3123, !3127, !3131, !3135, !3136, !3140, !3146, !3147, !3148, !3152, !3157, !3161, !3168}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3082, file: !44, line: 368, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!126, !137, !428}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3082, file: !44, line: 369, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!126, !1090, !137}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3082, file: !44, line: 372, baseType: !3093, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!126, !155, !428}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3082, file: !44, line: 375, baseType: !3097, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!126, !137}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3082, file: !44, line: 381, baseType: !3101, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!126, !1090, !155, !152, !7}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3082, file: !44, line: 383, baseType: !3105, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3082, file: !44, line: 385, baseType: !3111, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!126, !1090, !155, !351, !7, !7, !136, !1305}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3082, file: !44, line: 388, baseType: !3115, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!126, !1090, !155, !351, !7, !7, !137, !123}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3082, file: !44, line: 393, baseType: !3119, size: 64, offset: 512)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!3122, !155, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !122, line: 125, baseType: !129)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3082, file: !44, line: 394, baseType: !3124, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !137, !7, !7}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3082, file: !44, line: 395, baseType: !3128, size: 64, offset: 640)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!126, !137, !121}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3082, file: !44, line: 396, baseType: !3132, size: 64, offset: 704)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3082, file: !44, line: 397, baseType: !1131, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3082, file: !44, line: 402, baseType: !3137, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!126, !155, !137, !137, !5}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3082, file: !44, line: 404, baseType: !3141, size: 64, offset: 896)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!332, !137, !3144}
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3145, line: 305, baseType: !7)
!3145 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3082, file: !44, line: 405, baseType: !3132, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3082, file: !44, line: 406, baseType: !3097, size: 64, offset: 1024)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3082, file: !44, line: 407, baseType: !3149, size: 64, offset: 1088)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!126, !137, !127, !127}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3082, file: !44, line: 409, baseType: !3153, size: 64, offset: 1152)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !137, !3156, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3082, file: !44, line: 410, baseType: !3158, size: 64, offset: 1216)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!126, !155, !137}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3082, file: !44, line: 413, baseType: !3162, size: 64, offset: 1280)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!126, !3165, !1090, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3082, file: !44, line: 415, baseType: !3169, size: 64, offset: 1344)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !1090}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !44, line: 466, baseType: !127, size: 64, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !156, file: !44, line: 467, baseType: !1617, size: 32, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !156, file: !44, line: 468, baseType: !250, offset: 992)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !156, file: !44, line: 469, baseType: !149, size: 128, offset: 1024)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !156, file: !44, line: 470, baseType: !123, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !146, file: !139, line: 87, baseType: !127, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !146, file: !139, line: 94, baseType: !127, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 96, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 96, size: 64, elements: !3181)
!3181 = !{!3182}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3180, file: !139, line: 101, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !122, line: 143, baseType: !129)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 103, baseType: !3185, size: 320)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 103, size: 320, elements: !3186)
!3186 = !{!3187, !3197, !3198, !3199}
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !139, line: 104, baseType: !3188, size: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !139, line: 104, size: 128, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3188, file: !139, line: 105, baseType: !149, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !139, line: 106, baseType: !3192, size: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !139, line: 106, size: 128, elements: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3192, file: !139, line: 107, baseType: !137, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3192, file: !139, line: 109, baseType: !126, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3192, file: !139, line: 110, baseType: !126, size: 32, offset: 96)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3185, file: !139, line: 117, baseType: !2138, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3185, file: !139, line: 119, baseType: !123, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !139, line: 120, baseType: !3200, size: 64, offset: 256)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !139, line: 120, size: 64, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3200, file: !139, line: 121, baseType: !123, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3200, file: !139, line: 122, baseType: !127, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !139, line: 123, baseType: !3205, size: 32)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !139, line: 123, size: 32, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3205, file: !139, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3205, file: !139, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3205, file: !139, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 130, baseType: !3211, size: 192)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 130, size: 192, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3211, file: !139, line: 131, baseType: !127, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3211, file: !139, line: 134, baseType: !233, size: 8, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3211, file: !139, line: 135, baseType: !233, size: 8, offset: 72)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3211, file: !139, line: 136, baseType: !522, size: 32, offset: 96)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3211, file: !139, line: 137, baseType: !7, size: 32, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 139, baseType: !3219, size: 256)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 139, size: 256, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3219, file: !139, line: 140, baseType: !127, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3219, file: !139, line: 141, baseType: !522, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3219, file: !139, line: 143, baseType: !149, size: 128, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 145, baseType: !3225, size: 256)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 145, size: 256, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3235}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3225, file: !139, line: 146, baseType: !127, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3225, file: !139, line: 147, baseType: !1061, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3225, file: !139, line: 148, baseType: !127, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !139, line: 149, baseType: !3231, size: 64, offset: 192)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !139, line: 149, size: 64, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3231, file: !139, line: 150, baseType: !969, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3231, file: !139, line: 151, baseType: !522, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3225, file: !139, line: 156, baseType: !250, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !139, line: 159, baseType: !3237, size: 128)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !139, line: 159, size: 128, elements: !3238)
!3238 = !{!3239, !3303}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3237, file: !139, line: 161, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !3242)
!3242 = !{!3243, !3253, !3274, !3275, !3276, !3277, !3278, !3290, !3291, !3292}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3241, file: !31, line: 111, baseType: !3244, size: 384)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !3245)
!3245 = !{!3246, !3248, !3249, !3250, !3251, !3252}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3244, file: !31, line: 20, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3244, file: !31, line: 21, baseType: !3247, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3244, file: !31, line: 22, baseType: !3247, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3244, file: !31, line: 23, baseType: !127, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3244, file: !31, line: 24, baseType: !127, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3244, file: !31, line: 25, baseType: !127, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3241, file: !31, line: 112, baseType: !3254, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3256, line: 105, size: 128, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3255, file: !3256, line: 110, baseType: !127, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3255, file: !3256, line: 118, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3256, line: 95, size: 448, elements: !3262)
!3262 = !{!3263, !3264, !3269, !3270, !3271, !3272, !3273}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3261, file: !3256, line: 96, baseType: !510, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3261, file: !3256, line: 97, baseType: !3265, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3256, line: 60, baseType: !3267)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3254}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3261, file: !3256, line: 98, baseType: !3265, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3261, file: !3256, line: 99, baseType: !332, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3261, file: !3256, line: 100, baseType: !332, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3261, file: !3256, line: 101, baseType: !780, size: 128, align: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3261, file: !3256, line: 102, baseType: !3254, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3241, file: !31, line: 113, baseType: !3255, size: 128, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3241, file: !31, line: 114, baseType: !1733, size: 192, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3241, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3241, file: !31, line: 117, baseType: !3279, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !3282)
!3282 = !{!3283, !3284, !3288, !3289}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3281, file: !31, line: 73, baseType: !3132, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3281, file: !31, line: 78, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3240}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3281, file: !31, line: 83, baseType: !3285, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3281, file: !31, line: 89, baseType: !1022, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3241, file: !31, line: 118, baseType: !123, size: 64, offset: 896)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3241, file: !31, line: 119, baseType: !126, size: 32, offset: 960)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !31, line: 120, baseType: !3293, size: 128, offset: 1024)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !31, line: 120, size: 128, elements: !3294)
!3294 = !{!3295, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3293, file: !31, line: 121, baseType: !3296, size: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3297, line: 6, size: 128, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3296, file: !3297, line: 7, baseType: !129, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3296, file: !3297, line: 8, baseType: !129, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3293, file: !31, line: 122, baseType: !3302)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3296, elements: !1595)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3237, file: !139, line: 162, baseType: !123, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !143, file: !139, line: 176, baseType: !780, size: 128, align: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 179, baseType: !3306, size: 32, offset: 384)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 179, size: 32, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3306, file: !139, line: 184, baseType: !522, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3306, file: !139, line: 192, baseType: !7, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3306, file: !139, line: 194, baseType: !7, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3306, file: !139, line: 195, baseType: !126, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !138, file: !139, line: 199, baseType: !522, size: 32, offset: 416)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!3315 = !{!0, !3316, !3321, !3326, !3331, !3336}
!3316 = !DIGlobalVariableExpression(var: !3317, expr: !DIExpression())
!3317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description247", scope: !2, file: !3, line: 435, type: !3318, isLocal: true, isDefinition: true, align: 8)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 616, elements: !3319)
!3319 = !{!3320}
!3320 = !DISubrange(count: 77)
!3321 = !DIGlobalVariableExpression(var: !3322, expr: !DIExpression())
!3322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author248", scope: !2, file: !3, line: 436, type: !3323, isLocal: true, isDefinition: true, align: 8)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 456, elements: !3324)
!3324 = !{!3325}
!3325 = !DISubrange(count: 57)
!3326 = !DIGlobalVariableExpression(var: !3327, expr: !DIExpression())
!3327 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file249", scope: !2, file: !3, line: 437, type: !3328, isLocal: true, isDefinition: true, align: 8)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 576, elements: !3329)
!3329 = !{!3330}
!3330 = !DISubrange(count: 72)
!3331 = !DIGlobalVariableExpression(var: !3332, expr: !DIExpression())
!3332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license250", scope: !2, file: !3, line: 437, type: !3333, isLocal: true, isDefinition: true, align: 8)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 240, elements: !3334)
!3334 = !{!3335}
!3335 = !DISubrange(count: 30)
!3336 = !DIGlobalVariableExpression(var: !3337, expr: !DIExpression())
!3337 = distinct !DIGlobalVariable(name: "vb2_vmalloc_dmabuf_ops", scope: !2, file: !3, line: 330, type: !3338, isLocal: true, isDefinition: true)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_ops", file: !3340, line: 35, size: 832, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/dma-buf.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342, !3343, !3898, !3902, !3906, !3907, !3911, !3915, !3919, !3923, !3924, !3928, !3932}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sgt_mapping", scope: !3339, file: !3340, line: 43, baseType: !332, size: 8)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3339, file: !3340, line: 71, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!126, !3347, !3429}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !3340, line: 305, size: 1856, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3367, !3368, !3428}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3348, file: !3340, line: 306, baseType: !1122, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3348, file: !3340, line: 307, baseType: !1090, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "attachments", scope: !3348, file: !3340, line: 308, baseType: !149, size: 128, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3348, file: !3340, line: 309, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3348, file: !3340, line: 310, baseType: !506, size: 192, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "vmapping_counter", scope: !3348, file: !3340, line: 311, baseType: !7, size: 32, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_ptr", scope: !3348, file: !3340, line: 312, baseType: !123, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !3348, file: !3340, line: 313, baseType: !287, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3348, file: !3340, line: 314, baseType: !287, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "name_lock", scope: !3348, file: !3340, line: 315, baseType: !250, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3348, file: !3340, line: 316, baseType: !380, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3348, file: !3340, line: 317, baseType: !149, size: 128, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3348, file: !3340, line: 318, baseType: !123, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3348, file: !3340, line: 319, baseType: !3365, size: 64, offset: 1024)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !3340, line: 319, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3348, file: !3340, line: 322, baseType: !761, size: 128, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cb_excl", scope: !3348, file: !3340, line: 329, baseType: !3369, size: 320, offset: 1216)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_poll_cb_t", file: !3340, line: 324, size: 320, elements: !3370)
!3370 = !{!3371, !3426, !3427}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3369, file: !3340, line: 325, baseType: !3372, size: 192)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !3373, line: 116, size: 192, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3372, file: !3373, line: 117, baseType: !149, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3372, file: !3373, line: 118, baseType: !3377, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !3373, line: 105, baseType: !3378)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3381, !3425}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !3373, line: 65, size: 512, elements: !3383)
!3383 = !{!3384, !3385, !3414, !3420, !3421, !3422, !3423, !3424}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !3373, line: 66, baseType: !1059, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3382, file: !3373, line: 67, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !3373, line: 125, size: 576, elements: !3389)
!3389 = !{!3390, !3391, !3395, !3396, !3400, !3401, !3405, !3409, !3413}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !3388, file: !3373, line: 132, baseType: !332, size: 8)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !3388, file: !3373, line: 143, baseType: !3392, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!287, !3381}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !3388, file: !3373, line: 155, baseType: !3392, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !3388, file: !3373, line: 192, baseType: !3397, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!332, !3381}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !3388, file: !3373, line: 209, baseType: !3397, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3388, file: !3373, line: 231, baseType: !3402, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!134, !3381, !332, !134}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3388, file: !3373, line: 242, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3381}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !3388, file: !3373, line: 252, baseType: !3410, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3381, !313, !126}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !3388, file: !3373, line: 262, baseType: !3410, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !3373, line: 84, baseType: !3415, size: 128, offset: 128)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3382, file: !3373, line: 84, size: 128, elements: !3416)
!3416 = !{!3417, !3418, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3415, file: !3373, line: 85, baseType: !149, size: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3415, file: !3373, line: 87, baseType: !884, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3415, file: !3373, line: 89, baseType: !780, size: 128, align: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3382, file: !3373, line: 91, baseType: !129, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !3382, file: !3373, line: 92, baseType: !129, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3373, line: 93, baseType: !127, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3382, file: !3373, line: 94, baseType: !3051, size: 32, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3382, file: !3373, line: 95, baseType: !126, size: 32, offset: 480)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3369, file: !3340, line: 326, baseType: !1192, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3369, file: !3340, line: 328, baseType: !1181, size: 32, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cb_shared", scope: !3348, file: !3340, line: 329, baseType: !3369, size: 320, offset: 1536)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !3340, line: 389, size: 576, elements: !3431)
!3431 = !{!3432, !3433, !3867, !3868, !3884, !3885, !3886, !3896, !3897}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !3430, file: !3340, line: 390, baseType: !3347, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3430, file: !3340, line: 391, baseType: !3434, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3442, !3443, !3494, !3567, !3568, !3569, !3570, !3571, !3580, !3685, !3698, !3702, !3703, !3707, !3709, !3710, !3711, !3715, !3721, !3722, !3725, !3729, !3819, !3820, !3821, !3822, !3823, !3855, !3856, !3857, !3860, !3863, !3864, !3865, !3866}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3435, file: !73, line: 462, baseType: !2764, size: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3435, file: !73, line: 463, baseType: !3434, size: 64, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3435, file: !73, line: 465, baseType: !3440, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3435, file: !73, line: 467, baseType: !287, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !73, line: 468, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3454, !3459, !3463}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3446, file: !73, line: 88, baseType: !287, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3446, file: !73, line: 89, baseType: !2841, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3446, file: !73, line: 90, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!126, !3434, !2798}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3446, file: !73, line: 91, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!313, !3434, !3458, !2909, !2910}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3446, file: !73, line: 93, baseType: !3460, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3434}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3446, file: !73, line: 95, baseType: !3464, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3467)
!3467 = !{!3468, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3466, file: !80, line: 279, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!126, !3434}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3466, file: !80, line: 280, baseType: !3460, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3466, file: !80, line: 281, baseType: !3469, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3466, file: !80, line: 282, baseType: !3469, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3466, file: !80, line: 283, baseType: !3469, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3466, file: !80, line: 284, baseType: !3469, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3466, file: !80, line: 285, baseType: !3469, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3466, file: !80, line: 286, baseType: !3469, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3466, file: !80, line: 287, baseType: !3469, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3466, file: !80, line: 288, baseType: !3469, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3466, file: !80, line: 289, baseType: !3469, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3466, file: !80, line: 290, baseType: !3469, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3466, file: !80, line: 291, baseType: !3469, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3466, file: !80, line: 292, baseType: !3469, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3466, file: !80, line: 293, baseType: !3469, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3466, file: !80, line: 294, baseType: !3469, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3466, file: !80, line: 295, baseType: !3469, size: 64, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3466, file: !80, line: 296, baseType: !3469, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3466, file: !80, line: 297, baseType: !3469, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3466, file: !80, line: 298, baseType: !3469, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3466, file: !80, line: 299, baseType: !3469, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3466, file: !80, line: 300, baseType: !3469, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3466, file: !80, line: 301, baseType: !3469, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3435, file: !73, line: 470, baseType: !3495, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3497, line: 82, size: 1408, elements: !3498)
!3497 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3562, !3565, !3566}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3496, file: !3497, line: 83, baseType: !287, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3496, file: !3497, line: 84, baseType: !287, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3496, file: !3497, line: 85, baseType: !3434, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3496, file: !3497, line: 86, baseType: !2841, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3496, file: !3497, line: 87, baseType: !2841, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3496, file: !3497, line: 88, baseType: !2841, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3496, file: !3497, line: 90, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!126, !3434, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3522, !3526, !3527, !3528, !3529, !3530, !3538, !3539, !3540, !3541, !3542, !3543}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3510, file: !67, line: 96, baseType: !287, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3510, file: !67, line: 97, baseType: !3495, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3510, file: !67, line: 99, baseType: !380, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3510, file: !67, line: 100, baseType: !287, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3510, file: !67, line: 102, baseType: !332, size: 8, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3510, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3510, file: !67, line: 105, baseType: !3519, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3510, file: !67, line: 106, baseType: !3523, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3525)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3510, file: !67, line: 108, baseType: !3469, size: 64, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3510, file: !67, line: 109, baseType: !3460, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3510, file: !67, line: 110, baseType: !3469, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3510, file: !67, line: 111, baseType: !3460, size: 64, offset: 640)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3510, file: !67, line: 112, baseType: !3531, size: 64, offset: 704)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!126, !3434, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3536)
!3536 = !{!3537}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3535, file: !80, line: 51, baseType: !126, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3510, file: !67, line: 113, baseType: !3469, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3510, file: !67, line: 114, baseType: !2841, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3510, file: !67, line: 115, baseType: !2841, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3510, file: !67, line: 117, baseType: !3464, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3510, file: !67, line: 118, baseType: !3460, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3510, file: !67, line: 120, baseType: !3544, size: 64, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3496, file: !3497, line: 91, baseType: !3451, size: 64, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3496, file: !3497, line: 92, baseType: !3469, size: 64, offset: 512)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3496, file: !3497, line: 93, baseType: !3460, size: 64, offset: 576)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3496, file: !3497, line: 94, baseType: !3469, size: 64, offset: 640)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3496, file: !3497, line: 95, baseType: !3460, size: 64, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3496, file: !3497, line: 97, baseType: !3469, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3496, file: !3497, line: 98, baseType: !3469, size: 64, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3496, file: !3497, line: 100, baseType: !3531, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3496, file: !3497, line: 101, baseType: !3469, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3496, file: !3497, line: 103, baseType: !3469, size: 64, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3496, file: !3497, line: 105, baseType: !3469, size: 64, offset: 1088)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3496, file: !3497, line: 107, baseType: !3464, size: 64, offset: 1152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3496, file: !3497, line: 109, baseType: !3559, size: 64, offset: 1216)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3561)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3497, line: 109, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3496, file: !3497, line: 111, baseType: !3563, size: 64, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3497, line: 111, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3496, file: !3497, line: 112, baseType: !395, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3496, file: !3497, line: 114, baseType: !332, size: 8, offset: 1344)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3435, file: !73, line: 471, baseType: !3509, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3435, file: !73, line: 473, baseType: !123, size: 64, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3435, file: !73, line: 475, baseType: !123, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3435, file: !73, line: 480, baseType: !506, size: 192, offset: 1024)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3435, file: !73, line: 484, baseType: !3572, size: 576, offset: 1216)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3572, file: !73, line: 362, baseType: !149, size: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3572, file: !73, line: 363, baseType: !149, size: 128, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3572, file: !73, line: 364, baseType: !149, size: 128, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3572, file: !73, line: 365, baseType: !149, size: 128, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3572, file: !73, line: 366, baseType: !332, size: 8, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3572, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3435, file: !73, line: 485, baseType: !3581, size: 2304, offset: 1792)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3678, !3682}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3581, file: !80, line: 566, baseType: !3534, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3581, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3581, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3581, file: !80, line: 569, baseType: !332, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3581, file: !80, line: 570, baseType: !332, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3581, file: !80, line: 571, baseType: !332, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3581, file: !80, line: 572, baseType: !332, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3581, file: !80, line: 573, baseType: !332, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3581, file: !80, line: 574, baseType: !332, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3581, file: !80, line: 575, baseType: !332, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3581, file: !80, line: 576, baseType: !332, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3581, file: !80, line: 577, baseType: !226, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !80, line: 578, baseType: !250, offset: 96)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3581, file: !80, line: 580, baseType: !149, size: 128, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3581, file: !80, line: 581, baseType: !1733, size: 192, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3581, file: !80, line: 582, baseType: !3599, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3601, line: 43, size: 1472, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3610, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !3601, line: 44, baseType: !287, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3600, file: !3601, line: 45, baseType: !126, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3600, file: !3601, line: 46, baseType: !149, size: 128, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3600, file: !3601, line: 47, baseType: !250, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3600, file: !3601, line: 48, baseType: !3608, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3600, file: !3601, line: 49, baseType: !3611, size: 320, offset: 320)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3612, line: 11, size: 320, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !{!3614, !3615, !3616, !3621}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3611, file: !3612, line: 16, baseType: !389, size: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3611, file: !3612, line: 17, baseType: !127, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3611, file: !3612, line: 18, baseType: !3617, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !3612, line: 19, baseType: !226, size: 32, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3600, file: !3601, line: 50, baseType: !127, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3600, file: !3601, line: 51, baseType: !884, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3600, file: !3601, line: 52, baseType: !884, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3600, file: !3601, line: 53, baseType: !884, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3600, file: !3601, line: 54, baseType: !884, size: 64, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3600, file: !3601, line: 55, baseType: !884, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3600, file: !3601, line: 56, baseType: !127, size: 64, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3600, file: !3601, line: 57, baseType: !127, size: 64, offset: 1088)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3600, file: !3601, line: 58, baseType: !127, size: 64, offset: 1152)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3600, file: !3601, line: 59, baseType: !127, size: 64, offset: 1216)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3600, file: !3601, line: 60, baseType: !127, size: 64, offset: 1280)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3600, file: !3601, line: 61, baseType: !3434, size: 64, offset: 1344)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3600, file: !3601, line: 62, baseType: !332, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3600, file: !3601, line: 63, baseType: !332, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3581, file: !80, line: 583, baseType: !332, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3581, file: !80, line: 584, baseType: !332, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3581, file: !80, line: 585, baseType: !332, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3581, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3581, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3581, file: !80, line: 592, baseType: !876, size: 512, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3581, file: !80, line: 593, baseType: !129, size: 64, offset: 1088)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3581, file: !80, line: 594, baseType: !1758, size: 256, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3581, file: !80, line: 595, baseType: !761, size: 128, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3581, file: !80, line: 596, baseType: !3608, size: 64, offset: 1536)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3581, file: !80, line: 597, baseType: !522, size: 32, offset: 1600)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3581, file: !80, line: 598, baseType: !522, size: 32, offset: 1632)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3581, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3581, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3581, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3581, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3581, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3581, file: !80, line: 604, baseType: !332, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3581, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3581, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3581, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3581, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3581, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3581, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3581, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3581, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3581, file: !80, line: 613, baseType: !126, size: 32, offset: 1792)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3581, file: !80, line: 614, baseType: !126, size: 32, offset: 1824)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3581, file: !80, line: 615, baseType: !129, size: 64, offset: 1856)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3581, file: !80, line: 616, baseType: !129, size: 64, offset: 1920)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3581, file: !80, line: 617, baseType: !129, size: 64, offset: 1984)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3581, file: !80, line: 618, baseType: !129, size: 64, offset: 2048)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3581, file: !80, line: 620, baseType: !3669, size: 64, offset: 2112)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3670, file: !80, line: 537, baseType: !250)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3670, file: !80, line: 538, baseType: !7, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3670, file: !80, line: 540, baseType: !149, size: 128, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3670, file: !80, line: 543, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3581, file: !80, line: 621, baseType: !3679, size: 64, offset: 2176)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3434, !1453}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3581, file: !80, line: 622, baseType: !3683, size: 64, offset: 2240)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3435, file: !73, line: 486, baseType: !3686, size: 64, offset: 4096)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3695, !3696, !3697}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3687, file: !80, line: 643, baseType: !3466, size: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3687, file: !80, line: 644, baseType: !3469, size: 64, offset: 1472)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3687, file: !80, line: 645, baseType: !3692, size: 64, offset: 1536)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !3434, !332}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3687, file: !80, line: 646, baseType: !3469, size: 64, offset: 1600)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3687, file: !80, line: 647, baseType: !3460, size: 64, offset: 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3687, file: !80, line: 648, baseType: !3460, size: 64, offset: 1728)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3435, file: !73, line: 493, baseType: !3699, size: 64, offset: 4160)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3701, line: 13, flags: DIFlagFwdDecl)
!3701 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3435, file: !73, line: 499, baseType: !149, size: 128, offset: 4224)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3435, file: !73, line: 502, baseType: !3704, size: 64, offset: 4352)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3435, file: !73, line: 504, baseType: !3708, size: 64, offset: 4416)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3435, file: !73, line: 505, baseType: !129, size: 64, offset: 4480)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3435, file: !73, line: 510, baseType: !129, size: 64, offset: 4544)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3435, file: !73, line: 511, baseType: !3712, size: 64, offset: 4608)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3435, file: !73, line: 513, baseType: !3716, size: 64, offset: 4672)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3717, file: !73, line: 293, baseType: !7, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3717, file: !73, line: 294, baseType: !127, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3435, file: !73, line: 515, baseType: !149, size: 128, offset: 4736)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3435, file: !73, line: 526, baseType: !3723, offset: 4864)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3724, line: 5, elements: !264)
!3724 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3435, file: !73, line: 528, baseType: !3726, size: 64, offset: 4864)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3728, line: 14, flags: DIFlagFwdDecl)
!3728 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3435, file: !73, line: 529, baseType: !3730, size: 64, offset: 4928)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3732, line: 17, size: 192, elements: !3733)
!3732 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3733 = !{!3734, !3735, !3818}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3731, file: !3732, line: 18, baseType: !3730, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3731, file: !3732, line: 19, baseType: !3736, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3732, line: 110, size: 1152, elements: !3739)
!3739 = !{!3740, !3744, !3748, !3754, !3760, !3764, !3768, !3773, !3777, !3778, !3782, !3786, !3790, !3801, !3802, !3803, !3804, !3814}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3738, file: !3732, line: 111, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3730, !3730}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3738, file: !3732, line: 112, baseType: !3745, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !3730}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3738, file: !3732, line: 113, baseType: !3749, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!332, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3738, file: !3732, line: 114, baseType: !3755, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!2304, !3752, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3738, file: !3732, line: 116, baseType: !3761, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!332, !3752, !287}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3738, file: !3732, line: 118, baseType: !3765, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!126, !3752, !287, !7, !123, !1122}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3738, file: !3732, line: 123, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!126, !3752, !287, !3772, !1122}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3738, file: !3732, line: 126, baseType: !3774, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!287, !3752}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3738, file: !3732, line: 127, baseType: !3774, size: 64, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3738, file: !3732, line: 128, baseType: !3779, size: 64, offset: 576)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3730, !3752}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3738, file: !3732, line: 130, baseType: !3783, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!3730, !3752, !3730}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3738, file: !3732, line: 133, baseType: !3787, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!3730, !3752, !287}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3738, file: !3732, line: 135, baseType: !3791, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!126, !3752, !287, !287, !7, !7, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3732, line: 43, size: 640, elements: !3796)
!3796 = !{!3797, !3798, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3795, file: !3732, line: 44, baseType: !3730, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3795, file: !3732, line: 45, baseType: !7, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3795, file: !3732, line: 46, baseType: !3800, size: 512, offset: 128)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 512, elements: !914)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3738, file: !3732, line: 140, baseType: !3783, size: 64, offset: 832)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3738, file: !3732, line: 143, baseType: !3779, size: 64, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3738, file: !3732, line: 145, baseType: !3741, size: 64, offset: 960)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3738, file: !3732, line: 146, baseType: !3805, size: 64, offset: 1024)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!126, !3752, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3732, line: 29, size: 128, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3809, file: !3732, line: 30, baseType: !7, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3809, file: !3732, line: 31, baseType: !7, size: 32, offset: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3809, file: !3732, line: 32, baseType: !3752, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3738, file: !3732, line: 148, baseType: !3815, size: 64, offset: 1088)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!126, !3752, !3434}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3731, file: !3732, line: 20, baseType: !3434, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3435, file: !73, line: 534, baseType: !346, size: 32, offset: 4992)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3435, file: !73, line: 535, baseType: !226, size: 32, offset: 5024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3435, file: !73, line: 537, baseType: !250, offset: 5056)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3435, file: !73, line: 538, baseType: !149, size: 128, offset: 5056)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3435, file: !73, line: 540, baseType: !3824, size: 64, offset: 5184)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3826, line: 54, size: 960, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833, !3834, !3838, !3842, !3843, !3844, !3845, !3849, !3853, !3854}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3825, file: !3826, line: 55, baseType: !287, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3825, file: !3826, line: 56, baseType: !380, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3825, file: !3826, line: 58, baseType: !2841, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3825, file: !3826, line: 59, baseType: !2841, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3825, file: !3826, line: 60, baseType: !2770, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3825, file: !3826, line: 62, baseType: !3451, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3825, file: !3826, line: 63, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!313, !3434, !3458}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3825, file: !3826, line: 65, baseType: !3839, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !3824}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3825, file: !3826, line: 66, baseType: !3460, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3825, file: !3826, line: 68, baseType: !3469, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3825, file: !3826, line: 70, baseType: !2877, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3825, file: !3826, line: 71, baseType: !3846, size: 64, offset: 704)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!2304, !3434}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3825, file: !3826, line: 73, baseType: !3850, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3434, !2909, !2910}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3825, file: !3826, line: 75, baseType: !3464, size: 64, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3825, file: !3826, line: 77, baseType: !3563, size: 64, offset: 896)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3435, file: !73, line: 541, baseType: !2841, size: 64, offset: 5248)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3435, file: !73, line: 543, baseType: !3460, size: 64, offset: 5312)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3435, file: !73, line: 544, baseType: !3858, size: 64, offset: 5376)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3435, file: !73, line: 545, baseType: !3861, size: 64, offset: 5440)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3435, file: !73, line: 547, baseType: !332, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3435, file: !73, line: 548, baseType: !332, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3435, file: !73, line: 549, baseType: !332, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3435, file: !73, line: 550, baseType: !332, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3430, file: !3340, line: 392, baseType: !149, size: 128, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !3430, file: !3340, line: 393, baseType: !3869, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3871, line: 42, size: 128, elements: !3872)
!3871 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3872 = !{!3873, !3882, !3883}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3870, file: !3871, line: 43, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3871, line: 11, size: 256, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3875, file: !3871, line: 12, baseType: !127, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3875, file: !3871, line: 13, baseType: !7, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3875, file: !3871, line: 14, baseType: !7, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3875, file: !3871, line: 15, baseType: !3183, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3875, file: !3871, line: 17, baseType: !7, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3870, file: !3871, line: 44, baseType: !7, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3870, file: !3871, line: 45, baseType: !7, size: 32, offset: 96)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3430, file: !3340, line: 394, baseType: !93, size: 32, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "peer2peer", scope: !3430, file: !3340, line: 395, baseType: !332, size: 8, offset: 352)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "importer_ops", scope: !3430, file: !3340, line: 396, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attach_ops", file: !3340, line: 337, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "allow_peer2peer", scope: !3889, file: !3340, line: 344, baseType: !332, size: 8)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "move_notify", scope: !3889, file: !3340, line: 364, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3429}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "importer_priv", scope: !3430, file: !3340, line: 397, baseType: !123, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3430, file: !3340, line: 398, baseType: !123, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3339, file: !3340, line: 82, baseType: !3899, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3347, !3429}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3339, file: !3340, line: 100, baseType: !3903, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!126, !3429}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !3339, file: !3340, line: 113, baseType: !3893, size: 64, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "map_dma_buf", scope: !3339, file: !3340, line: 154, baseType: !3908, size: 64, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3869, !3429, !93}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dma_buf", scope: !3339, file: !3340, line: 164, baseType: !3912, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3429, !3869, !93}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3339, file: !3340, line: 178, baseType: !3916, size: 64, offset: 448)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3347}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cpu_access", scope: !3339, file: !3340, line: 210, baseType: !3920, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!126, !3347, !93}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "end_cpu_access", scope: !3339, file: !3340, line: 229, baseType: !3920, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3339, file: !3340, line: 266, baseType: !3925, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!126, !3347, !976}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !3339, file: !3340, line: 268, baseType: !3929, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!123, !3347}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !3339, file: !3340, line: 269, baseType: !3933, size: 64, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3347, !123}
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_mem_ops", file: !3938, line: 118, size: 960, elements: !3939)
!3938 = !DIFile(filename: "./include/media/videobuf2-core.h", directory: "/home/lizy2001/genbc/linux")
!3939 = !{!3940, !3944, !3945, !3949, !3953, !3954, !3955, !3956, !3960, !3961, !3965, !3966, !3970, !3971, !3975}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3937, file: !3938, line: 119, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!123, !3434, !127, !127, !93, !121}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3937, file: !3938, line: 123, baseType: !2582, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "get_dmabuf", scope: !3937, file: !3938, line: 124, baseType: !3946, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!3347, !123, !127}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "get_userptr", scope: !3937, file: !3938, line: 126, baseType: !3950, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!123, !3434, !127, !127, !93}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "put_userptr", scope: !3937, file: !3938, line: 129, baseType: !2582, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3937, file: !3938, line: 131, baseType: !2582, size: 64, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !3937, file: !3938, line: 132, baseType: !2582, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dmabuf", scope: !3937, file: !3938, line: 134, baseType: !3957, size: 64, offset: 448)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!123, !3434, !3347, !127, !93}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "detach_dmabuf", scope: !3937, file: !3938, line: 138, baseType: !2582, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "map_dmabuf", scope: !3937, file: !3938, line: 139, baseType: !3962, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!126, !123}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dmabuf", scope: !3937, file: !3938, line: 140, baseType: !2582, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3937, file: !3938, line: 142, baseType: !3967, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!123, !123}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !3937, file: !3938, line: 143, baseType: !3967, size: 64, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_users", scope: !3937, file: !3938, line: 145, baseType: !3972, size: 64, offset: 832)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!7, !123}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3937, file: !3938, line: 147, baseType: !3976, size: 64, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!126, !123, !976}
!3979 = !{i32 7, !"Dwarf Version", i32 4}
!3980 = !{i32 2, !"Debug Info Version", i32 3}
!3981 = !{i32 1, !"wchar_size", i32 2}
!3982 = !{i32 1, !"Code Model", i32 2}
!3983 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3984 = distinct !DISubprogram(name: "vb2_vmalloc_alloc", scope: !3, file: !3, line: 37, type: !3942, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!3985 = !DILocalVariable(name: "dev", arg: 1, scope: !3984, file: !3, line: 37, type: !3434)
!3986 = !DILocation(line: 37, column: 47, scope: !3984)
!3987 = !DILocalVariable(name: "attrs", arg: 2, scope: !3984, file: !3, line: 37, type: !127)
!3988 = !DILocation(line: 37, column: 66, scope: !3984)
!3989 = !DILocalVariable(name: "size", arg: 3, scope: !3984, file: !3, line: 38, type: !127)
!3990 = !DILocation(line: 38, column: 25, scope: !3984)
!3991 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !3984, file: !3, line: 38, type: !93)
!3992 = !DILocation(line: 38, column: 55, scope: !3984)
!3993 = !DILocalVariable(name: "gfp_flags", arg: 5, scope: !3984, file: !3, line: 39, type: !121)
!3994 = !DILocation(line: 39, column: 17, scope: !3984)
!3995 = !DILocalVariable(name: "buf", scope: !3984, file: !3, line: 41, type: !3996)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_vmalloc_buf", file: !3, line: 25, size: 576, elements: !3998)
!3998 = !{!3999, !4000, !4010, !4011, !4012, !4013, !4021}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3997, file: !3, line: 26, baseType: !123, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3997, file: !3, line: 27, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_vector", file: !14, line: 1755, size: 128, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_allocated", scope: !4002, file: !14, line: 1756, baseType: !7, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frames", scope: !4002, file: !14, line: 1757, baseType: !7, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "got_ref", scope: !4002, file: !14, line: 1758, baseType: !332, size: 8, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "is_pfns", scope: !4002, file: !14, line: 1759, baseType: !332, size: 8, offset: 72)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs", scope: !4002, file: !14, line: 1760, baseType: !4009, offset: 128)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !1772)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3997, file: !3, line: 28, baseType: !93, size: 32, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3997, file: !3, line: 29, baseType: !127, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3997, file: !3, line: 30, baseType: !808, size: 32, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3997, file: !3, line: 31, baseType: !4014, size: 192, offset: 320)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_vmarea_handler", file: !4015, line: 28, size: 192, elements: !4016)
!4015 = !DIFile(filename: "./include/media/videobuf2-memops.h", directory: "/home/lizy2001/genbc/linux")
!4016 = !{!4017, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4014, file: !4015, line: 29, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4014, file: !4015, line: 30, baseType: !2582, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4014, file: !4015, line: 31, baseType: !123, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dbuf", scope: !3997, file: !3, line: 32, baseType: !3347, size: 64, offset: 512)
!4022 = !DILocation(line: 41, column: 26, scope: !3984)
!4023 = !DILocation(line: 43, column: 43, scope: !3984)
!4024 = !DILocation(line: 43, column: 41, scope: !3984)
!4025 = !DILocation(line: 43, column: 8, scope: !3984)
!4026 = !DILocation(line: 43, column: 6, scope: !3984)
!4027 = !DILocation(line: 44, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 44, column: 6)
!4029 = !DILocation(line: 44, column: 6, scope: !3984)
!4030 = !DILocation(line: 45, column: 10, scope: !4028)
!4031 = !DILocation(line: 45, column: 3, scope: !4028)
!4032 = !DILocation(line: 47, column: 14, scope: !3984)
!4033 = !DILocation(line: 47, column: 2, scope: !3984)
!4034 = !DILocation(line: 47, column: 7, scope: !3984)
!4035 = !DILocation(line: 47, column: 12, scope: !3984)
!4036 = !DILocation(line: 48, column: 28, scope: !3984)
!4037 = !DILocation(line: 48, column: 33, scope: !3984)
!4038 = !DILocation(line: 48, column: 15, scope: !3984)
!4039 = !DILocation(line: 48, column: 2, scope: !3984)
!4040 = !DILocation(line: 48, column: 7, scope: !3984)
!4041 = !DILocation(line: 48, column: 13, scope: !3984)
!4042 = !DILocation(line: 49, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 49, column: 6)
!4044 = !DILocation(line: 49, column: 12, scope: !4043)
!4045 = !DILocation(line: 49, column: 6, scope: !3984)
!4046 = !DILocation(line: 50, column: 3, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 50, column: 3)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 50, column: 3)
!4049 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 49, column: 19)
!4050 = !DILocation(line: 50, column: 3, scope: !4048)
!4051 = !DILocation(line: 51, column: 9, scope: !4049)
!4052 = !DILocation(line: 51, column: 3, scope: !4049)
!4053 = !DILocation(line: 52, column: 10, scope: !4049)
!4054 = !DILocation(line: 52, column: 3, scope: !4049)
!4055 = !DILocation(line: 55, column: 17, scope: !3984)
!4056 = !DILocation(line: 55, column: 2, scope: !3984)
!4057 = !DILocation(line: 55, column: 7, scope: !3984)
!4058 = !DILocation(line: 55, column: 15, scope: !3984)
!4059 = !DILocation(line: 56, column: 27, scope: !3984)
!4060 = !DILocation(line: 56, column: 32, scope: !3984)
!4061 = !DILocation(line: 56, column: 2, scope: !3984)
!4062 = !DILocation(line: 56, column: 7, scope: !3984)
!4063 = !DILocation(line: 56, column: 15, scope: !3984)
!4064 = !DILocation(line: 56, column: 24, scope: !3984)
!4065 = !DILocation(line: 57, column: 2, scope: !3984)
!4066 = !DILocation(line: 57, column: 7, scope: !3984)
!4067 = !DILocation(line: 57, column: 15, scope: !3984)
!4068 = !DILocation(line: 57, column: 19, scope: !3984)
!4069 = !DILocation(line: 58, column: 21, scope: !3984)
!4070 = !DILocation(line: 58, column: 2, scope: !3984)
!4071 = !DILocation(line: 58, column: 7, scope: !3984)
!4072 = !DILocation(line: 58, column: 15, scope: !3984)
!4073 = !DILocation(line: 58, column: 19, scope: !3984)
!4074 = !DILocation(line: 60, column: 16, scope: !3984)
!4075 = !DILocation(line: 60, column: 21, scope: !3984)
!4076 = !DILocation(line: 60, column: 2, scope: !3984)
!4077 = !DILocation(line: 61, column: 9, scope: !3984)
!4078 = !DILocation(line: 61, column: 2, scope: !3984)
!4079 = !DILocation(line: 62, column: 1, scope: !3984)
!4080 = distinct !DISubprogram(name: "vb2_vmalloc_put", scope: !3, file: !3, line: 64, type: !2583, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4081 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4080, file: !3, line: 64, type: !123)
!4082 = !DILocation(line: 64, column: 35, scope: !4080)
!4083 = !DILocalVariable(name: "buf", scope: !4080, file: !3, line: 66, type: !3996)
!4084 = !DILocation(line: 66, column: 26, scope: !4080)
!4085 = !DILocation(line: 66, column: 32, scope: !4080)
!4086 = !DILocation(line: 68, column: 29, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 68, column: 6)
!4088 = !DILocation(line: 68, column: 34, scope: !4087)
!4089 = !DILocation(line: 68, column: 6, scope: !4087)
!4090 = !DILocation(line: 68, column: 6, scope: !4080)
!4091 = !DILocation(line: 69, column: 9, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 68, column: 45)
!4093 = !DILocation(line: 69, column: 14, scope: !4092)
!4094 = !DILocation(line: 69, column: 3, scope: !4092)
!4095 = !DILocation(line: 70, column: 9, scope: !4092)
!4096 = !DILocation(line: 70, column: 3, scope: !4092)
!4097 = !DILocation(line: 71, column: 2, scope: !4092)
!4098 = !DILocation(line: 72, column: 1, scope: !4080)
!4099 = distinct !DISubprogram(name: "vb2_vmalloc_get_dmabuf", scope: !3, file: !3, line: 340, type: !3947, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4100 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4099, file: !3, line: 340, type: !123)
!4101 = !DILocation(line: 340, column: 53, scope: !4099)
!4102 = !DILocalVariable(name: "flags", arg: 2, scope: !4099, file: !3, line: 340, type: !127)
!4103 = !DILocation(line: 340, column: 77, scope: !4099)
!4104 = !DILocalVariable(name: "buf", scope: !4099, file: !3, line: 342, type: !3996)
!4105 = !DILocation(line: 342, column: 26, scope: !4099)
!4106 = !DILocation(line: 342, column: 32, scope: !4099)
!4107 = !DILocalVariable(name: "dbuf", scope: !4099, file: !3, line: 343, type: !3347)
!4108 = !DILocation(line: 343, column: 18, scope: !4099)
!4109 = !DILocalVariable(name: "exp_info", scope: !4099, file: !3, line: 344, type: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_export_info", file: !3340, line: 414, size: 448, elements: !4111)
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4117, !4118}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !4110, file: !3340, line: 415, baseType: !287, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4110, file: !3340, line: 416, baseType: !380, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4110, file: !3340, line: 417, baseType: !3354, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4110, file: !3340, line: 418, baseType: !1122, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4110, file: !3340, line: 419, baseType: !126, size: 32, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4110, file: !3340, line: 420, baseType: !3365, size: 64, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4110, file: !3340, line: 421, baseType: !123, size: 64, offset: 384)
!4119 = !DILocation(line: 344, column: 2, scope: !4099)
!4120 = !DILocation(line: 346, column: 11, scope: !4099)
!4121 = !DILocation(line: 346, column: 15, scope: !4099)
!4122 = !DILocation(line: 347, column: 18, scope: !4099)
!4123 = !DILocation(line: 347, column: 23, scope: !4099)
!4124 = !DILocation(line: 347, column: 11, scope: !4099)
!4125 = !DILocation(line: 347, column: 16, scope: !4099)
!4126 = !DILocation(line: 348, column: 19, scope: !4099)
!4127 = !DILocation(line: 348, column: 11, scope: !4099)
!4128 = !DILocation(line: 348, column: 17, scope: !4099)
!4129 = !DILocation(line: 349, column: 18, scope: !4099)
!4130 = !DILocation(line: 349, column: 11, scope: !4099)
!4131 = !DILocation(line: 349, column: 16, scope: !4099)
!4132 = !DILocalVariable(name: "__ret_warn_on", scope: !4133, file: !3, line: 351, type: !126)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 351, column: 6)
!4134 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 351, column: 6)
!4135 = !DILocation(line: 351, column: 6, scope: !4133)
!4136 = !DILocation(line: 351, column: 6, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 351, column: 6)
!4138 = !DILocation(line: 351, column: 6, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 351, column: 6)
!4140 = !DILocation(line: 351, column: 6, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 351, column: 6)
!4142 = !DILocation(line: 351, column: 6, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 351, column: 6)
!4144 = !{i32 -2141734631, i32 -2141734602, i32 -2141734556, i32 -2141734498, i32 -2141734444, i32 -2141734390, i32 -2141734335, i32 -2141734304}
!4145 = !DILocation(line: 351, column: 6, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 351, column: 6)
!4147 = !{i32 -2141733872, i32 -2141733865, i32 -2141733813, i32 -2141733782, i32 -2141733752}
!4148 = !DILocation(line: 351, column: 6, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 351, column: 6)
!4150 = !DILocation(line: 351, column: 6, scope: !4134)
!4151 = !DILocation(line: 351, column: 6, scope: !4099)
!4152 = !DILocation(line: 352, column: 3, scope: !4134)
!4153 = !DILocation(line: 354, column: 9, scope: !4099)
!4154 = !DILocation(line: 354, column: 7, scope: !4099)
!4155 = !DILocation(line: 355, column: 13, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 355, column: 6)
!4157 = !DILocation(line: 355, column: 6, scope: !4156)
!4158 = !DILocation(line: 355, column: 6, scope: !4099)
!4159 = !DILocation(line: 356, column: 3, scope: !4156)
!4160 = !DILocation(line: 359, column: 16, scope: !4099)
!4161 = !DILocation(line: 359, column: 21, scope: !4099)
!4162 = !DILocation(line: 359, column: 2, scope: !4099)
!4163 = !DILocation(line: 361, column: 9, scope: !4099)
!4164 = !DILocation(line: 361, column: 2, scope: !4099)
!4165 = !DILocation(line: 362, column: 1, scope: !4099)
!4166 = distinct !DISubprogram(name: "vb2_vmalloc_get_userptr", scope: !3, file: !3, line: 74, type: !3951, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4167 = !DILocalVariable(name: "dev", arg: 1, scope: !4166, file: !3, line: 74, type: !3434)
!4168 = !DILocation(line: 74, column: 53, scope: !4166)
!4169 = !DILocalVariable(name: "vaddr", arg: 2, scope: !4166, file: !3, line: 74, type: !127)
!4170 = !DILocation(line: 74, column: 72, scope: !4166)
!4171 = !DILocalVariable(name: "size", arg: 3, scope: !4166, file: !3, line: 75, type: !127)
!4172 = !DILocation(line: 75, column: 24, scope: !4166)
!4173 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4166, file: !3, line: 76, type: !93)
!4174 = !DILocation(line: 76, column: 34, scope: !4166)
!4175 = !DILocalVariable(name: "buf", scope: !4166, file: !3, line: 78, type: !3996)
!4176 = !DILocation(line: 78, column: 26, scope: !4166)
!4177 = !DILocalVariable(name: "vec", scope: !4166, file: !3, line: 79, type: !4001)
!4178 = !DILocation(line: 79, column: 23, scope: !4166)
!4179 = !DILocalVariable(name: "n_pages", scope: !4166, file: !3, line: 80, type: !126)
!4180 = !DILocation(line: 80, column: 6, scope: !4166)
!4181 = !DILocalVariable(name: "offset", scope: !4166, file: !3, line: 80, type: !126)
!4182 = !DILocation(line: 80, column: 15, scope: !4166)
!4183 = !DILocalVariable(name: "i", scope: !4166, file: !3, line: 80, type: !126)
!4184 = !DILocation(line: 80, column: 23, scope: !4166)
!4185 = !DILocalVariable(name: "ret", scope: !4166, file: !3, line: 81, type: !126)
!4186 = !DILocation(line: 81, column: 6, scope: !4166)
!4187 = !DILocation(line: 83, column: 8, scope: !4166)
!4188 = !DILocation(line: 83, column: 6, scope: !4166)
!4189 = !DILocation(line: 84, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 84, column: 6)
!4191 = !DILocation(line: 84, column: 6, scope: !4166)
!4192 = !DILocation(line: 85, column: 10, scope: !4190)
!4193 = !DILocation(line: 85, column: 3, scope: !4190)
!4194 = !DILocation(line: 87, column: 17, scope: !4166)
!4195 = !DILocation(line: 87, column: 2, scope: !4166)
!4196 = !DILocation(line: 87, column: 7, scope: !4166)
!4197 = !DILocation(line: 87, column: 15, scope: !4166)
!4198 = !DILocation(line: 88, column: 11, scope: !4166)
!4199 = !DILocation(line: 88, column: 17, scope: !4166)
!4200 = !DILocation(line: 88, column: 9, scope: !4166)
!4201 = !DILocation(line: 89, column: 14, scope: !4166)
!4202 = !DILocation(line: 89, column: 2, scope: !4166)
!4203 = !DILocation(line: 89, column: 7, scope: !4166)
!4204 = !DILocation(line: 89, column: 12, scope: !4166)
!4205 = !DILocation(line: 90, column: 28, scope: !4166)
!4206 = !DILocation(line: 90, column: 35, scope: !4166)
!4207 = !DILocation(line: 90, column: 8, scope: !4166)
!4208 = !DILocation(line: 90, column: 6, scope: !4166)
!4209 = !DILocation(line: 91, column: 13, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 91, column: 6)
!4211 = !DILocation(line: 91, column: 6, scope: !4210)
!4212 = !DILocation(line: 91, column: 6, scope: !4166)
!4213 = !DILocation(line: 92, column: 17, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 91, column: 19)
!4215 = !DILocation(line: 92, column: 9, scope: !4214)
!4216 = !DILocation(line: 92, column: 7, scope: !4214)
!4217 = !DILocation(line: 93, column: 3, scope: !4214)
!4218 = !DILocation(line: 95, column: 13, scope: !4166)
!4219 = !DILocation(line: 95, column: 2, scope: !4166)
!4220 = !DILocation(line: 95, column: 7, scope: !4166)
!4221 = !DILocation(line: 95, column: 11, scope: !4166)
!4222 = !DILocation(line: 96, column: 31, scope: !4166)
!4223 = !DILocation(line: 96, column: 12, scope: !4166)
!4224 = !DILocation(line: 96, column: 10, scope: !4166)
!4225 = !DILocation(line: 97, column: 28, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 97, column: 6)
!4227 = !DILocation(line: 97, column: 6, scope: !4226)
!4228 = !DILocation(line: 97, column: 33, scope: !4226)
!4229 = !DILocation(line: 97, column: 6, scope: !4166)
!4230 = !DILocalVariable(name: "nums", scope: !4231, file: !3, line: 98, type: !135)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 97, column: 38)
!4232 = !DILocation(line: 98, column: 18, scope: !4231)
!4233 = !DILocation(line: 98, column: 43, scope: !4231)
!4234 = !DILocation(line: 98, column: 25, scope: !4231)
!4235 = !DILocation(line: 104, column: 10, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 104, column: 3)
!4237 = !DILocation(line: 104, column: 8, scope: !4236)
!4238 = !DILocation(line: 104, column: 15, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 104, column: 3)
!4240 = !DILocation(line: 104, column: 19, scope: !4239)
!4241 = !DILocation(line: 104, column: 17, scope: !4239)
!4242 = !DILocation(line: 104, column: 3, scope: !4236)
!4243 = !DILocation(line: 105, column: 8, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 105, column: 8)
!4245 = !DILocation(line: 105, column: 13, scope: !4244)
!4246 = !DILocation(line: 105, column: 14, scope: !4244)
!4247 = !DILocation(line: 105, column: 18, scope: !4244)
!4248 = !DILocation(line: 105, column: 25, scope: !4244)
!4249 = !DILocation(line: 105, column: 30, scope: !4244)
!4250 = !DILocation(line: 105, column: 22, scope: !4244)
!4251 = !DILocation(line: 105, column: 8, scope: !4239)
!4252 = !DILocation(line: 106, column: 5, scope: !4244)
!4253 = !DILocation(line: 105, column: 31, scope: !4244)
!4254 = !DILocation(line: 104, column: 29, scope: !4239)
!4255 = !DILocation(line: 104, column: 3, scope: !4239)
!4256 = distinct !{!4256, !4242, !4257}
!4257 = !DILocation(line: 106, column: 10, scope: !4236)
!4258 = !DILocation(line: 108, column: 12, scope: !4231)
!4259 = !DILocation(line: 108, column: 36, scope: !4231)
!4260 = !DILocation(line: 108, column: 43, scope: !4231)
!4261 = !DILocation(line: 108, column: 41, scope: !4231)
!4262 = !DILocation(line: 108, column: 4, scope: !4231)
!4263 = !DILocation(line: 107, column: 3, scope: !4231)
!4264 = !DILocation(line: 107, column: 8, scope: !4231)
!4265 = !DILocation(line: 107, column: 14, scope: !4231)
!4266 = !DILocation(line: 109, column: 2, scope: !4231)
!4267 = !DILocation(line: 110, column: 46, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 109, column: 9)
!4269 = !DILocation(line: 110, column: 27, scope: !4268)
!4270 = !DILocation(line: 110, column: 52, scope: !4268)
!4271 = !DILocation(line: 110, column: 16, scope: !4268)
!4272 = !DILocation(line: 110, column: 3, scope: !4268)
!4273 = !DILocation(line: 110, column: 8, scope: !4268)
!4274 = !DILocation(line: 110, column: 14, scope: !4268)
!4275 = !DILocation(line: 113, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 113, column: 6)
!4277 = !DILocation(line: 113, column: 12, scope: !4276)
!4278 = !DILocation(line: 113, column: 6, scope: !4166)
!4279 = !DILocation(line: 114, column: 3, scope: !4276)
!4280 = !DILocation(line: 115, column: 16, scope: !4166)
!4281 = !DILocation(line: 115, column: 2, scope: !4166)
!4282 = !DILocation(line: 115, column: 7, scope: !4166)
!4283 = !DILocation(line: 115, column: 13, scope: !4166)
!4284 = !DILocation(line: 116, column: 9, scope: !4166)
!4285 = !DILocation(line: 116, column: 2, scope: !4166)
!4286 = !DILabel(scope: !4166, name: "fail_map", file: !3, line: 118)
!4287 = !DILocation(line: 118, column: 1, scope: !4166)
!4288 = !DILocation(line: 119, column: 23, scope: !4166)
!4289 = !DILocation(line: 119, column: 2, scope: !4166)
!4290 = !DILabel(scope: !4166, name: "fail_pfnvec_create", file: !3, line: 120)
!4291 = !DILocation(line: 120, column: 1, scope: !4166)
!4292 = !DILocation(line: 121, column: 8, scope: !4166)
!4293 = !DILocation(line: 121, column: 2, scope: !4166)
!4294 = !DILocation(line: 123, column: 17, scope: !4166)
!4295 = !DILocation(line: 123, column: 9, scope: !4166)
!4296 = !DILocation(line: 123, column: 2, scope: !4166)
!4297 = !DILocation(line: 124, column: 1, scope: !4166)
!4298 = distinct !DISubprogram(name: "vb2_vmalloc_put_userptr", scope: !3, file: !3, line: 126, type: !2583, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4299 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4298, file: !3, line: 126, type: !123)
!4300 = !DILocation(line: 126, column: 43, scope: !4298)
!4301 = !DILocalVariable(name: "buf", scope: !4298, file: !3, line: 128, type: !3996)
!4302 = !DILocation(line: 128, column: 26, scope: !4298)
!4303 = !DILocation(line: 128, column: 32, scope: !4298)
!4304 = !DILocalVariable(name: "vaddr", scope: !4298, file: !3, line: 129, type: !127)
!4305 = !DILocation(line: 129, column: 16, scope: !4298)
!4306 = !DILocation(line: 129, column: 39, scope: !4298)
!4307 = !DILocation(line: 129, column: 44, scope: !4298)
!4308 = !DILocation(line: 129, column: 24, scope: !4298)
!4309 = !DILocation(line: 129, column: 50, scope: !4298)
!4310 = !DILocalVariable(name: "i", scope: !4298, file: !3, line: 130, type: !7)
!4311 = !DILocation(line: 130, column: 15, scope: !4298)
!4312 = !DILocalVariable(name: "pages", scope: !4298, file: !3, line: 131, type: !136)
!4313 = !DILocation(line: 131, column: 16, scope: !4298)
!4314 = !DILocalVariable(name: "n_pages", scope: !4298, file: !3, line: 132, type: !7)
!4315 = !DILocation(line: 132, column: 15, scope: !4298)
!4316 = !DILocation(line: 134, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 134, column: 6)
!4318 = !DILocation(line: 134, column: 12, scope: !4317)
!4319 = !DILocation(line: 134, column: 17, scope: !4317)
!4320 = !DILocation(line: 134, column: 6, scope: !4298)
!4321 = !DILocation(line: 135, column: 32, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 134, column: 26)
!4323 = !DILocation(line: 135, column: 37, scope: !4322)
!4324 = !DILocation(line: 135, column: 13, scope: !4322)
!4325 = !DILocation(line: 135, column: 11, scope: !4322)
!4326 = !DILocation(line: 136, column: 30, scope: !4322)
!4327 = !DILocation(line: 136, column: 35, scope: !4322)
!4328 = !DILocation(line: 136, column: 11, scope: !4322)
!4329 = !DILocation(line: 136, column: 9, scope: !4322)
!4330 = !DILocation(line: 137, column: 7, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 137, column: 7)
!4332 = !DILocation(line: 137, column: 7, scope: !4322)
!4333 = !DILocation(line: 138, column: 25, scope: !4331)
!4334 = !DILocation(line: 138, column: 17, scope: !4331)
!4335 = !DILocation(line: 138, column: 32, scope: !4331)
!4336 = !DILocation(line: 138, column: 4, scope: !4331)
!4337 = !DILocation(line: 139, column: 7, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 139, column: 7)
!4339 = !DILocation(line: 139, column: 12, scope: !4338)
!4340 = !DILocation(line: 139, column: 20, scope: !4338)
!4341 = !DILocation(line: 139, column: 39, scope: !4338)
!4342 = !DILocation(line: 140, column: 7, scope: !4338)
!4343 = !DILocation(line: 140, column: 12, scope: !4338)
!4344 = !DILocation(line: 140, column: 20, scope: !4338)
!4345 = !DILocation(line: 139, column: 7, scope: !4322)
!4346 = !DILocation(line: 141, column: 11, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 141, column: 4)
!4348 = !DILocation(line: 141, column: 9, scope: !4347)
!4349 = !DILocation(line: 141, column: 16, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 141, column: 4)
!4351 = !DILocation(line: 141, column: 20, scope: !4350)
!4352 = !DILocation(line: 141, column: 18, scope: !4350)
!4353 = !DILocation(line: 141, column: 4, scope: !4347)
!4354 = !DILocation(line: 142, column: 25, scope: !4350)
!4355 = !DILocation(line: 142, column: 31, scope: !4350)
!4356 = !DILocation(line: 142, column: 5, scope: !4350)
!4357 = !DILocation(line: 141, column: 30, scope: !4350)
!4358 = !DILocation(line: 141, column: 4, scope: !4350)
!4359 = distinct !{!4359, !4353, !4360}
!4360 = !DILocation(line: 142, column: 33, scope: !4347)
!4361 = !DILocation(line: 143, column: 2, scope: !4322)
!4362 = !DILocation(line: 144, column: 35, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 143, column: 9)
!4364 = !DILocation(line: 144, column: 40, scope: !4363)
!4365 = !DILocation(line: 144, column: 3, scope: !4363)
!4366 = !DILocation(line: 146, column: 23, scope: !4298)
!4367 = !DILocation(line: 146, column: 28, scope: !4298)
!4368 = !DILocation(line: 146, column: 2, scope: !4298)
!4369 = !DILocation(line: 147, column: 8, scope: !4298)
!4370 = !DILocation(line: 147, column: 2, scope: !4298)
!4371 = !DILocation(line: 148, column: 1, scope: !4298)
!4372 = distinct !DISubprogram(name: "vb2_vmalloc_attach_dmabuf", scope: !3, file: !3, line: 397, type: !3958, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4373 = !DILocalVariable(name: "dev", arg: 1, scope: !4372, file: !3, line: 397, type: !3434)
!4374 = !DILocation(line: 397, column: 55, scope: !4372)
!4375 = !DILocalVariable(name: "dbuf", arg: 2, scope: !4372, file: !3, line: 397, type: !3347)
!4376 = !DILocation(line: 397, column: 76, scope: !4372)
!4377 = !DILocalVariable(name: "size", arg: 3, scope: !4372, file: !3, line: 398, type: !127)
!4378 = !DILocation(line: 398, column: 16, scope: !4372)
!4379 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4372, file: !3, line: 398, type: !93)
!4380 = !DILocation(line: 398, column: 46, scope: !4372)
!4381 = !DILocalVariable(name: "buf", scope: !4372, file: !3, line: 400, type: !3996)
!4382 = !DILocation(line: 400, column: 26, scope: !4372)
!4383 = !DILocation(line: 402, column: 6, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 402, column: 6)
!4385 = !DILocation(line: 402, column: 12, scope: !4384)
!4386 = !DILocation(line: 402, column: 19, scope: !4384)
!4387 = !DILocation(line: 402, column: 17, scope: !4384)
!4388 = !DILocation(line: 402, column: 6, scope: !4372)
!4389 = !DILocation(line: 403, column: 10, scope: !4384)
!4390 = !DILocation(line: 403, column: 3, scope: !4384)
!4391 = !DILocation(line: 405, column: 8, scope: !4372)
!4392 = !DILocation(line: 405, column: 6, scope: !4372)
!4393 = !DILocation(line: 406, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 406, column: 6)
!4395 = !DILocation(line: 406, column: 6, scope: !4372)
!4396 = !DILocation(line: 407, column: 10, scope: !4394)
!4397 = !DILocation(line: 407, column: 3, scope: !4394)
!4398 = !DILocation(line: 409, column: 14, scope: !4372)
!4399 = !DILocation(line: 409, column: 2, scope: !4372)
!4400 = !DILocation(line: 409, column: 7, scope: !4372)
!4401 = !DILocation(line: 409, column: 12, scope: !4372)
!4402 = !DILocation(line: 410, column: 17, scope: !4372)
!4403 = !DILocation(line: 410, column: 2, scope: !4372)
!4404 = !DILocation(line: 410, column: 7, scope: !4372)
!4405 = !DILocation(line: 410, column: 15, scope: !4372)
!4406 = !DILocation(line: 411, column: 14, scope: !4372)
!4407 = !DILocation(line: 411, column: 2, scope: !4372)
!4408 = !DILocation(line: 411, column: 7, scope: !4372)
!4409 = !DILocation(line: 411, column: 12, scope: !4372)
!4410 = !DILocation(line: 413, column: 9, scope: !4372)
!4411 = !DILocation(line: 413, column: 2, scope: !4372)
!4412 = !DILocation(line: 414, column: 1, scope: !4372)
!4413 = distinct !DISubprogram(name: "vb2_vmalloc_detach_dmabuf", scope: !3, file: !3, line: 387, type: !2583, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4414 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4413, file: !3, line: 387, type: !123)
!4415 = !DILocation(line: 387, column: 45, scope: !4413)
!4416 = !DILocalVariable(name: "buf", scope: !4413, file: !3, line: 389, type: !3996)
!4417 = !DILocation(line: 389, column: 26, scope: !4413)
!4418 = !DILocation(line: 389, column: 32, scope: !4413)
!4419 = !DILocation(line: 391, column: 6, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 391, column: 6)
!4421 = !DILocation(line: 391, column: 11, scope: !4420)
!4422 = !DILocation(line: 391, column: 6, scope: !4413)
!4423 = !DILocation(line: 392, column: 18, scope: !4420)
!4424 = !DILocation(line: 392, column: 23, scope: !4420)
!4425 = !DILocation(line: 392, column: 29, scope: !4420)
!4426 = !DILocation(line: 392, column: 34, scope: !4420)
!4427 = !DILocation(line: 392, column: 3, scope: !4420)
!4428 = !DILocation(line: 394, column: 8, scope: !4413)
!4429 = !DILocation(line: 394, column: 2, scope: !4413)
!4430 = !DILocation(line: 395, column: 1, scope: !4413)
!4431 = distinct !DISubprogram(name: "vb2_vmalloc_map_dmabuf", scope: !3, file: !3, line: 370, type: !3963, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4432 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4431, file: !3, line: 370, type: !123)
!4433 = !DILocation(line: 370, column: 41, scope: !4431)
!4434 = !DILocalVariable(name: "buf", scope: !4431, file: !3, line: 372, type: !3996)
!4435 = !DILocation(line: 372, column: 26, scope: !4431)
!4436 = !DILocation(line: 372, column: 32, scope: !4431)
!4437 = !DILocation(line: 374, column: 28, scope: !4431)
!4438 = !DILocation(line: 374, column: 33, scope: !4431)
!4439 = !DILocation(line: 374, column: 15, scope: !4431)
!4440 = !DILocation(line: 374, column: 2, scope: !4431)
!4441 = !DILocation(line: 374, column: 7, scope: !4431)
!4442 = !DILocation(line: 374, column: 13, scope: !4431)
!4443 = !DILocation(line: 376, column: 9, scope: !4431)
!4444 = !DILocation(line: 376, column: 14, scope: !4431)
!4445 = !DILocation(line: 376, column: 2, scope: !4431)
!4446 = distinct !DISubprogram(name: "vb2_vmalloc_unmap_dmabuf", scope: !3, file: !3, line: 379, type: !2583, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4447 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4446, file: !3, line: 379, type: !123)
!4448 = !DILocation(line: 379, column: 44, scope: !4446)
!4449 = !DILocalVariable(name: "buf", scope: !4446, file: !3, line: 381, type: !3996)
!4450 = !DILocation(line: 381, column: 26, scope: !4446)
!4451 = !DILocation(line: 381, column: 32, scope: !4446)
!4452 = !DILocation(line: 383, column: 17, scope: !4446)
!4453 = !DILocation(line: 383, column: 22, scope: !4446)
!4454 = !DILocation(line: 383, column: 28, scope: !4446)
!4455 = !DILocation(line: 383, column: 33, scope: !4446)
!4456 = !DILocation(line: 383, column: 2, scope: !4446)
!4457 = !DILocation(line: 384, column: 2, scope: !4446)
!4458 = !DILocation(line: 384, column: 7, scope: !4446)
!4459 = !DILocation(line: 384, column: 13, scope: !4446)
!4460 = !DILocation(line: 385, column: 1, scope: !4446)
!4461 = distinct !DISubprogram(name: "vb2_vmalloc_vaddr", scope: !3, file: !3, line: 150, type: !3968, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4462 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4461, file: !3, line: 150, type: !123)
!4463 = !DILocation(line: 150, column: 38, scope: !4461)
!4464 = !DILocalVariable(name: "buf", scope: !4461, file: !3, line: 152, type: !3996)
!4465 = !DILocation(line: 152, column: 26, scope: !4461)
!4466 = !DILocation(line: 152, column: 32, scope: !4461)
!4467 = !DILocation(line: 154, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 154, column: 6)
!4469 = !DILocation(line: 154, column: 12, scope: !4468)
!4470 = !DILocation(line: 154, column: 6, scope: !4461)
!4471 = !DILocation(line: 155, column: 3, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 154, column: 19)
!4473 = !DILocation(line: 156, column: 3, scope: !4472)
!4474 = !DILocation(line: 159, column: 9, scope: !4461)
!4475 = !DILocation(line: 159, column: 14, scope: !4461)
!4476 = !DILocation(line: 159, column: 2, scope: !4461)
!4477 = !DILocation(line: 160, column: 1, scope: !4461)
!4478 = distinct !DISubprogram(name: "vb2_vmalloc_num_users", scope: !3, file: !3, line: 162, type: !3973, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4479 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4478, file: !3, line: 162, type: !123)
!4480 = !DILocation(line: 162, column: 49, scope: !4478)
!4481 = !DILocalVariable(name: "buf", scope: !4478, file: !3, line: 164, type: !3996)
!4482 = !DILocation(line: 164, column: 26, scope: !4478)
!4483 = !DILocation(line: 164, column: 32, scope: !4478)
!4484 = !DILocation(line: 165, column: 24, scope: !4478)
!4485 = !DILocation(line: 165, column: 29, scope: !4478)
!4486 = !DILocation(line: 165, column: 9, scope: !4478)
!4487 = !DILocation(line: 165, column: 2, scope: !4478)
!4488 = distinct !DISubprogram(name: "vb2_vmalloc_mmap", scope: !3, file: !3, line: 168, type: !3977, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4489 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4488, file: !3, line: 168, type: !123)
!4490 = !DILocation(line: 168, column: 35, scope: !4488)
!4491 = !DILocalVariable(name: "vma", arg: 2, scope: !4488, file: !3, line: 168, type: !976)
!4492 = !DILocation(line: 168, column: 68, scope: !4488)
!4493 = !DILocalVariable(name: "buf", scope: !4488, file: !3, line: 170, type: !3996)
!4494 = !DILocation(line: 170, column: 26, scope: !4488)
!4495 = !DILocation(line: 170, column: 32, scope: !4488)
!4496 = !DILocalVariable(name: "ret", scope: !4488, file: !3, line: 171, type: !126)
!4497 = !DILocation(line: 171, column: 6, scope: !4488)
!4498 = !DILocation(line: 173, column: 7, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 173, column: 6)
!4500 = !DILocation(line: 173, column: 6, scope: !4488)
!4501 = !DILocation(line: 174, column: 3, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 173, column: 12)
!4503 = !DILocation(line: 175, column: 3, scope: !4502)
!4504 = !DILocation(line: 178, column: 28, scope: !4488)
!4505 = !DILocation(line: 178, column: 33, scope: !4488)
!4506 = !DILocation(line: 178, column: 38, scope: !4488)
!4507 = !DILocation(line: 178, column: 8, scope: !4488)
!4508 = !DILocation(line: 178, column: 6, scope: !4488)
!4509 = !DILocation(line: 179, column: 6, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 179, column: 6)
!4511 = !DILocation(line: 179, column: 6, scope: !4488)
!4512 = !DILocation(line: 180, column: 3, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 179, column: 11)
!4514 = !DILocation(line: 181, column: 10, scope: !4513)
!4515 = !DILocation(line: 181, column: 3, scope: !4513)
!4516 = !DILocation(line: 187, column: 2, scope: !4488)
!4517 = !DILocation(line: 187, column: 7, scope: !4488)
!4518 = !DILocation(line: 187, column: 17, scope: !4488)
!4519 = !DILocation(line: 192, column: 26, scope: !4488)
!4520 = !DILocation(line: 192, column: 31, scope: !4488)
!4521 = !DILocation(line: 192, column: 25, scope: !4488)
!4522 = !DILocation(line: 192, column: 2, scope: !4488)
!4523 = !DILocation(line: 192, column: 7, scope: !4488)
!4524 = !DILocation(line: 192, column: 23, scope: !4488)
!4525 = !DILocation(line: 193, column: 2, scope: !4488)
!4526 = !DILocation(line: 193, column: 7, scope: !4488)
!4527 = !DILocation(line: 193, column: 15, scope: !4488)
!4528 = !DILocation(line: 195, column: 2, scope: !4488)
!4529 = !DILocation(line: 195, column: 7, scope: !4488)
!4530 = !DILocation(line: 195, column: 15, scope: !4488)
!4531 = !DILocation(line: 195, column: 20, scope: !4488)
!4532 = !DILocation(line: 197, column: 2, scope: !4488)
!4533 = !DILocation(line: 198, column: 1, scope: !4488)
!4534 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 662, type: !4535, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!123, !1122, !121}
!4537 = !DILocalVariable(name: "s", arg: 1, scope: !4538, file: !101, line: 445, type: !2138)
!4538 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !101, file: !101, line: 445, type: !4539, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!123, !2138, !121, !1122}
!4541 = !DILocation(line: 445, column: 72, scope: !4538, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 552, column: 10, scope: !4543, inlinedAt: !4546)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !101, line: 540, column: 34)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !101, line: 540, column: 6)
!4545 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 538, type: !4535, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4546 = distinct !DILocation(line: 664, column: 9, scope: !4534)
!4547 = !DILocalVariable(name: "flags", arg: 2, scope: !4538, file: !101, line: 446, type: !121)
!4548 = !DILocation(line: 446, column: 9, scope: !4538, inlinedAt: !4542)
!4549 = !DILocalVariable(name: "size", arg: 3, scope: !4538, file: !101, line: 446, type: !1122)
!4550 = !DILocation(line: 446, column: 23, scope: !4538, inlinedAt: !4542)
!4551 = !DILocalVariable(name: "ret", scope: !4538, file: !101, line: 448, type: !123)
!4552 = !DILocation(line: 448, column: 8, scope: !4538, inlinedAt: !4542)
!4553 = !DILocalVariable(name: "flags", arg: 1, scope: !4554, file: !101, line: 318, type: !121)
!4554 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 318, type: !4555, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!100, !121}
!4557 = !DILocation(line: 318, column: 67, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 553, column: 20, scope: !4543, inlinedAt: !4546)
!4559 = !DILocalVariable(name: "size", arg: 1, scope: !4560, file: !101, line: 346, type: !1122)
!4560 = distinct !DISubprogram(name: "kmalloc_index", scope: !101, file: !101, line: 346, type: !4561, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!7, !1122}
!4563 = !DILocation(line: 346, column: 58, scope: !4560, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 547, column: 11, scope: !4543, inlinedAt: !4546)
!4565 = !DILocalVariable(name: "size", arg: 1, scope: !4566, file: !101, line: 472, type: !1122)
!4566 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !101, file: !101, line: 472, type: !4567, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!123, !1122, !121, !7}
!4569 = !DILocation(line: 472, column: 28, scope: !4566, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 481, column: 9, scope: !4571, inlinedAt: !4572)
!4571 = distinct !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 478, type: !4535, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4572 = distinct !DILocation(line: 545, column: 11, scope: !4573, inlinedAt: !4546)
!4573 = distinct !DILexicalBlock(scope: !4543, file: !101, line: 544, column: 7)
!4574 = !DILocalVariable(name: "flags", arg: 2, scope: !4566, file: !101, line: 472, type: !121)
!4575 = !DILocation(line: 472, column: 40, scope: !4566, inlinedAt: !4570)
!4576 = !DILocalVariable(name: "order", arg: 3, scope: !4566, file: !101, line: 472, type: !7)
!4577 = !DILocation(line: 472, column: 60, scope: !4566, inlinedAt: !4570)
!4578 = !DILocalVariable(name: "size", arg: 1, scope: !4571, file: !101, line: 478, type: !1122)
!4579 = !DILocation(line: 478, column: 51, scope: !4571, inlinedAt: !4572)
!4580 = !DILocalVariable(name: "flags", arg: 2, scope: !4571, file: !101, line: 478, type: !121)
!4581 = !DILocation(line: 478, column: 63, scope: !4571, inlinedAt: !4572)
!4582 = !DILocalVariable(name: "order", scope: !4571, file: !101, line: 480, type: !7)
!4583 = !DILocation(line: 480, column: 15, scope: !4571, inlinedAt: !4572)
!4584 = !DILocalVariable(name: "size", arg: 1, scope: !4545, file: !101, line: 538, type: !1122)
!4585 = !DILocation(line: 538, column: 45, scope: !4545, inlinedAt: !4546)
!4586 = !DILocalVariable(name: "flags", arg: 2, scope: !4545, file: !101, line: 538, type: !121)
!4587 = !DILocation(line: 538, column: 57, scope: !4545, inlinedAt: !4546)
!4588 = !DILocalVariable(name: "index", scope: !4543, file: !101, line: 542, type: !7)
!4589 = !DILocation(line: 542, column: 16, scope: !4543, inlinedAt: !4546)
!4590 = !DILocalVariable(name: "size", arg: 1, scope: !4534, file: !101, line: 662, type: !1122)
!4591 = !DILocation(line: 662, column: 36, scope: !4534)
!4592 = !DILocalVariable(name: "flags", arg: 2, scope: !4534, file: !101, line: 662, type: !121)
!4593 = !DILocation(line: 662, column: 48, scope: !4534)
!4594 = !DILocation(line: 664, column: 17, scope: !4534)
!4595 = !DILocation(line: 664, column: 23, scope: !4534)
!4596 = !DILocation(line: 664, column: 29, scope: !4534)
!4597 = !DILocation(line: 540, column: 27, scope: !4544, inlinedAt: !4546)
!4598 = !DILocation(line: 540, column: 6, scope: !4544, inlinedAt: !4546)
!4599 = !DILocation(line: 540, column: 6, scope: !4545, inlinedAt: !4546)
!4600 = !DILocation(line: 544, column: 7, scope: !4573, inlinedAt: !4546)
!4601 = !DILocation(line: 544, column: 12, scope: !4573, inlinedAt: !4546)
!4602 = !DILocation(line: 544, column: 7, scope: !4543, inlinedAt: !4546)
!4603 = !DILocation(line: 545, column: 25, scope: !4573, inlinedAt: !4546)
!4604 = !DILocation(line: 545, column: 31, scope: !4573, inlinedAt: !4546)
!4605 = !DILocation(line: 480, column: 33, scope: !4571, inlinedAt: !4572)
!4606 = !DILocation(line: 480, column: 23, scope: !4571, inlinedAt: !4572)
!4607 = !DILocation(line: 481, column: 29, scope: !4571, inlinedAt: !4572)
!4608 = !DILocation(line: 481, column: 35, scope: !4571, inlinedAt: !4572)
!4609 = !DILocation(line: 481, column: 42, scope: !4571, inlinedAt: !4572)
!4610 = !DILocation(line: 474, column: 23, scope: !4566, inlinedAt: !4570)
!4611 = !DILocation(line: 474, column: 29, scope: !4566, inlinedAt: !4570)
!4612 = !DILocation(line: 474, column: 36, scope: !4566, inlinedAt: !4570)
!4613 = !DILocation(line: 474, column: 9, scope: !4566, inlinedAt: !4570)
!4614 = !DILocation(line: 545, column: 4, scope: !4573, inlinedAt: !4546)
!4615 = !DILocation(line: 547, column: 25, scope: !4543, inlinedAt: !4546)
!4616 = !DILocation(line: 348, column: 7, scope: !4617, inlinedAt: !4564)
!4617 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 348, column: 6)
!4618 = !DILocation(line: 348, column: 6, scope: !4560, inlinedAt: !4564)
!4619 = !DILocation(line: 349, column: 3, scope: !4617, inlinedAt: !4564)
!4620 = !DILocation(line: 351, column: 6, scope: !4621, inlinedAt: !4564)
!4621 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 351, column: 6)
!4622 = !DILocation(line: 351, column: 11, scope: !4621, inlinedAt: !4564)
!4623 = !DILocation(line: 351, column: 6, scope: !4560, inlinedAt: !4564)
!4624 = !DILocation(line: 352, column: 3, scope: !4621, inlinedAt: !4564)
!4625 = !DILocation(line: 354, column: 32, scope: !4626, inlinedAt: !4564)
!4626 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 354, column: 6)
!4627 = !DILocation(line: 354, column: 37, scope: !4626, inlinedAt: !4564)
!4628 = !DILocation(line: 354, column: 42, scope: !4626, inlinedAt: !4564)
!4629 = !DILocation(line: 354, column: 45, scope: !4626, inlinedAt: !4564)
!4630 = !DILocation(line: 354, column: 50, scope: !4626, inlinedAt: !4564)
!4631 = !DILocation(line: 354, column: 6, scope: !4560, inlinedAt: !4564)
!4632 = !DILocation(line: 355, column: 3, scope: !4626, inlinedAt: !4564)
!4633 = !DILocation(line: 356, column: 32, scope: !4634, inlinedAt: !4564)
!4634 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 356, column: 6)
!4635 = !DILocation(line: 356, column: 37, scope: !4634, inlinedAt: !4564)
!4636 = !DILocation(line: 356, column: 43, scope: !4634, inlinedAt: !4564)
!4637 = !DILocation(line: 356, column: 46, scope: !4634, inlinedAt: !4564)
!4638 = !DILocation(line: 356, column: 51, scope: !4634, inlinedAt: !4564)
!4639 = !DILocation(line: 356, column: 6, scope: !4560, inlinedAt: !4564)
!4640 = !DILocation(line: 357, column: 3, scope: !4634, inlinedAt: !4564)
!4641 = !DILocation(line: 358, column: 6, scope: !4642, inlinedAt: !4564)
!4642 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 358, column: 6)
!4643 = !DILocation(line: 358, column: 11, scope: !4642, inlinedAt: !4564)
!4644 = !DILocation(line: 358, column: 6, scope: !4560, inlinedAt: !4564)
!4645 = !DILocation(line: 358, column: 26, scope: !4642, inlinedAt: !4564)
!4646 = !DILocation(line: 359, column: 6, scope: !4647, inlinedAt: !4564)
!4647 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 359, column: 6)
!4648 = !DILocation(line: 359, column: 11, scope: !4647, inlinedAt: !4564)
!4649 = !DILocation(line: 359, column: 6, scope: !4560, inlinedAt: !4564)
!4650 = !DILocation(line: 359, column: 26, scope: !4647, inlinedAt: !4564)
!4651 = !DILocation(line: 360, column: 6, scope: !4652, inlinedAt: !4564)
!4652 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 360, column: 6)
!4653 = !DILocation(line: 360, column: 11, scope: !4652, inlinedAt: !4564)
!4654 = !DILocation(line: 360, column: 6, scope: !4560, inlinedAt: !4564)
!4655 = !DILocation(line: 360, column: 26, scope: !4652, inlinedAt: !4564)
!4656 = !DILocation(line: 361, column: 6, scope: !4657, inlinedAt: !4564)
!4657 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 361, column: 6)
!4658 = !DILocation(line: 361, column: 11, scope: !4657, inlinedAt: !4564)
!4659 = !DILocation(line: 361, column: 6, scope: !4560, inlinedAt: !4564)
!4660 = !DILocation(line: 361, column: 26, scope: !4657, inlinedAt: !4564)
!4661 = !DILocation(line: 362, column: 6, scope: !4662, inlinedAt: !4564)
!4662 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 362, column: 6)
!4663 = !DILocation(line: 362, column: 11, scope: !4662, inlinedAt: !4564)
!4664 = !DILocation(line: 362, column: 6, scope: !4560, inlinedAt: !4564)
!4665 = !DILocation(line: 362, column: 26, scope: !4662, inlinedAt: !4564)
!4666 = !DILocation(line: 363, column: 6, scope: !4667, inlinedAt: !4564)
!4667 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 363, column: 6)
!4668 = !DILocation(line: 363, column: 11, scope: !4667, inlinedAt: !4564)
!4669 = !DILocation(line: 363, column: 6, scope: !4560, inlinedAt: !4564)
!4670 = !DILocation(line: 363, column: 26, scope: !4667, inlinedAt: !4564)
!4671 = !DILocation(line: 364, column: 6, scope: !4672, inlinedAt: !4564)
!4672 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 364, column: 6)
!4673 = !DILocation(line: 364, column: 11, scope: !4672, inlinedAt: !4564)
!4674 = !DILocation(line: 364, column: 6, scope: !4560, inlinedAt: !4564)
!4675 = !DILocation(line: 364, column: 26, scope: !4672, inlinedAt: !4564)
!4676 = !DILocation(line: 365, column: 6, scope: !4677, inlinedAt: !4564)
!4677 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 365, column: 6)
!4678 = !DILocation(line: 365, column: 11, scope: !4677, inlinedAt: !4564)
!4679 = !DILocation(line: 365, column: 6, scope: !4560, inlinedAt: !4564)
!4680 = !DILocation(line: 365, column: 26, scope: !4677, inlinedAt: !4564)
!4681 = !DILocation(line: 366, column: 6, scope: !4682, inlinedAt: !4564)
!4682 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 366, column: 6)
!4683 = !DILocation(line: 366, column: 11, scope: !4682, inlinedAt: !4564)
!4684 = !DILocation(line: 366, column: 6, scope: !4560, inlinedAt: !4564)
!4685 = !DILocation(line: 366, column: 26, scope: !4682, inlinedAt: !4564)
!4686 = !DILocation(line: 367, column: 6, scope: !4687, inlinedAt: !4564)
!4687 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 367, column: 6)
!4688 = !DILocation(line: 367, column: 11, scope: !4687, inlinedAt: !4564)
!4689 = !DILocation(line: 367, column: 6, scope: !4560, inlinedAt: !4564)
!4690 = !DILocation(line: 367, column: 26, scope: !4687, inlinedAt: !4564)
!4691 = !DILocation(line: 368, column: 6, scope: !4692, inlinedAt: !4564)
!4692 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 368, column: 6)
!4693 = !DILocation(line: 368, column: 11, scope: !4692, inlinedAt: !4564)
!4694 = !DILocation(line: 368, column: 6, scope: !4560, inlinedAt: !4564)
!4695 = !DILocation(line: 368, column: 26, scope: !4692, inlinedAt: !4564)
!4696 = !DILocation(line: 369, column: 6, scope: !4697, inlinedAt: !4564)
!4697 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 369, column: 6)
!4698 = !DILocation(line: 369, column: 11, scope: !4697, inlinedAt: !4564)
!4699 = !DILocation(line: 369, column: 6, scope: !4560, inlinedAt: !4564)
!4700 = !DILocation(line: 369, column: 26, scope: !4697, inlinedAt: !4564)
!4701 = !DILocation(line: 370, column: 6, scope: !4702, inlinedAt: !4564)
!4702 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 370, column: 6)
!4703 = !DILocation(line: 370, column: 11, scope: !4702, inlinedAt: !4564)
!4704 = !DILocation(line: 370, column: 6, scope: !4560, inlinedAt: !4564)
!4705 = !DILocation(line: 370, column: 26, scope: !4702, inlinedAt: !4564)
!4706 = !DILocation(line: 371, column: 6, scope: !4707, inlinedAt: !4564)
!4707 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 371, column: 6)
!4708 = !DILocation(line: 371, column: 11, scope: !4707, inlinedAt: !4564)
!4709 = !DILocation(line: 371, column: 6, scope: !4560, inlinedAt: !4564)
!4710 = !DILocation(line: 371, column: 26, scope: !4707, inlinedAt: !4564)
!4711 = !DILocation(line: 372, column: 6, scope: !4712, inlinedAt: !4564)
!4712 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 372, column: 6)
!4713 = !DILocation(line: 372, column: 11, scope: !4712, inlinedAt: !4564)
!4714 = !DILocation(line: 372, column: 6, scope: !4560, inlinedAt: !4564)
!4715 = !DILocation(line: 372, column: 26, scope: !4712, inlinedAt: !4564)
!4716 = !DILocation(line: 373, column: 6, scope: !4717, inlinedAt: !4564)
!4717 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 373, column: 6)
!4718 = !DILocation(line: 373, column: 11, scope: !4717, inlinedAt: !4564)
!4719 = !DILocation(line: 373, column: 6, scope: !4560, inlinedAt: !4564)
!4720 = !DILocation(line: 373, column: 26, scope: !4717, inlinedAt: !4564)
!4721 = !DILocation(line: 374, column: 6, scope: !4722, inlinedAt: !4564)
!4722 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 374, column: 6)
!4723 = !DILocation(line: 374, column: 11, scope: !4722, inlinedAt: !4564)
!4724 = !DILocation(line: 374, column: 6, scope: !4560, inlinedAt: !4564)
!4725 = !DILocation(line: 374, column: 26, scope: !4722, inlinedAt: !4564)
!4726 = !DILocation(line: 375, column: 6, scope: !4727, inlinedAt: !4564)
!4727 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 375, column: 6)
!4728 = !DILocation(line: 375, column: 11, scope: !4727, inlinedAt: !4564)
!4729 = !DILocation(line: 375, column: 6, scope: !4560, inlinedAt: !4564)
!4730 = !DILocation(line: 375, column: 27, scope: !4727, inlinedAt: !4564)
!4731 = !DILocation(line: 376, column: 6, scope: !4732, inlinedAt: !4564)
!4732 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 376, column: 6)
!4733 = !DILocation(line: 376, column: 11, scope: !4732, inlinedAt: !4564)
!4734 = !DILocation(line: 376, column: 6, scope: !4560, inlinedAt: !4564)
!4735 = !DILocation(line: 376, column: 32, scope: !4732, inlinedAt: !4564)
!4736 = !DILocation(line: 377, column: 6, scope: !4737, inlinedAt: !4564)
!4737 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 377, column: 6)
!4738 = !DILocation(line: 377, column: 11, scope: !4737, inlinedAt: !4564)
!4739 = !DILocation(line: 377, column: 6, scope: !4560, inlinedAt: !4564)
!4740 = !DILocation(line: 377, column: 32, scope: !4737, inlinedAt: !4564)
!4741 = !DILocation(line: 378, column: 6, scope: !4742, inlinedAt: !4564)
!4742 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 378, column: 6)
!4743 = !DILocation(line: 378, column: 11, scope: !4742, inlinedAt: !4564)
!4744 = !DILocation(line: 378, column: 6, scope: !4560, inlinedAt: !4564)
!4745 = !DILocation(line: 378, column: 32, scope: !4742, inlinedAt: !4564)
!4746 = !DILocation(line: 379, column: 6, scope: !4747, inlinedAt: !4564)
!4747 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 379, column: 6)
!4748 = !DILocation(line: 379, column: 11, scope: !4747, inlinedAt: !4564)
!4749 = !DILocation(line: 379, column: 6, scope: !4560, inlinedAt: !4564)
!4750 = !DILocation(line: 379, column: 33, scope: !4747, inlinedAt: !4564)
!4751 = !DILocation(line: 380, column: 6, scope: !4752, inlinedAt: !4564)
!4752 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 380, column: 6)
!4753 = !DILocation(line: 380, column: 11, scope: !4752, inlinedAt: !4564)
!4754 = !DILocation(line: 380, column: 6, scope: !4560, inlinedAt: !4564)
!4755 = !DILocation(line: 380, column: 33, scope: !4752, inlinedAt: !4564)
!4756 = !DILocation(line: 381, column: 6, scope: !4757, inlinedAt: !4564)
!4757 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 381, column: 6)
!4758 = !DILocation(line: 381, column: 11, scope: !4757, inlinedAt: !4564)
!4759 = !DILocation(line: 381, column: 6, scope: !4560, inlinedAt: !4564)
!4760 = !DILocation(line: 381, column: 33, scope: !4757, inlinedAt: !4564)
!4761 = !DILocation(line: 382, column: 2, scope: !4762, inlinedAt: !4564)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !101, line: 382, column: 2)
!4763 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 382, column: 2)
!4764 = !{i32 -2142378446, i32 -2142378417, i32 -2142378371, i32 -2142378313, i32 -2142378259, i32 -2142378205, i32 -2142378150, i32 -2142378119}
!4765 = !DILocation(line: 382, column: 2, scope: !4766, inlinedAt: !4564)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !101, line: 382, column: 2)
!4767 = distinct !DILexicalBlock(scope: !4763, file: !101, line: 382, column: 2)
!4768 = !{i32 -2142377676, i32 -2142377669, i32 -2142377615, i32 -2142377584, i32 -2142377554}
!4769 = !DILocation(line: 382, column: 2, scope: !4767, inlinedAt: !4564)
!4770 = !DILocation(line: 386, column: 1, scope: !4560, inlinedAt: !4564)
!4771 = !DILocation(line: 547, column: 9, scope: !4543, inlinedAt: !4546)
!4772 = !DILocation(line: 549, column: 8, scope: !4773, inlinedAt: !4546)
!4773 = distinct !DILexicalBlock(scope: !4543, file: !101, line: 549, column: 7)
!4774 = !DILocation(line: 549, column: 7, scope: !4543, inlinedAt: !4546)
!4775 = !DILocation(line: 550, column: 4, scope: !4773, inlinedAt: !4546)
!4776 = !DILocation(line: 553, column: 33, scope: !4543, inlinedAt: !4546)
!4777 = !DILocation(line: 325, column: 6, scope: !4778, inlinedAt: !4558)
!4778 = distinct !DILexicalBlock(scope: !4554, file: !101, line: 325, column: 6)
!4779 = !DILocation(line: 325, column: 6, scope: !4554, inlinedAt: !4558)
!4780 = !DILocation(line: 326, column: 3, scope: !4778, inlinedAt: !4558)
!4781 = !DILocation(line: 332, column: 9, scope: !4554, inlinedAt: !4558)
!4782 = !DILocation(line: 332, column: 15, scope: !4554, inlinedAt: !4558)
!4783 = !DILocation(line: 332, column: 2, scope: !4554, inlinedAt: !4558)
!4784 = !DILocation(line: 336, column: 1, scope: !4554, inlinedAt: !4558)
!4785 = !DILocation(line: 553, column: 5, scope: !4543, inlinedAt: !4546)
!4786 = !DILocation(line: 553, column: 41, scope: !4543, inlinedAt: !4546)
!4787 = !DILocation(line: 554, column: 5, scope: !4543, inlinedAt: !4546)
!4788 = !DILocation(line: 554, column: 12, scope: !4543, inlinedAt: !4546)
!4789 = !DILocation(line: 448, column: 31, scope: !4538, inlinedAt: !4542)
!4790 = !DILocation(line: 448, column: 34, scope: !4538, inlinedAt: !4542)
!4791 = !DILocation(line: 448, column: 14, scope: !4538, inlinedAt: !4542)
!4792 = !DILocation(line: 450, column: 22, scope: !4538, inlinedAt: !4542)
!4793 = !DILocation(line: 450, column: 25, scope: !4538, inlinedAt: !4542)
!4794 = !DILocation(line: 450, column: 30, scope: !4538, inlinedAt: !4542)
!4795 = !DILocation(line: 450, column: 36, scope: !4538, inlinedAt: !4542)
!4796 = !DILocation(line: 450, column: 8, scope: !4538, inlinedAt: !4542)
!4797 = !DILocation(line: 450, column: 6, scope: !4538, inlinedAt: !4542)
!4798 = !DILocation(line: 451, column: 9, scope: !4538, inlinedAt: !4542)
!4799 = !DILocation(line: 552, column: 3, scope: !4543, inlinedAt: !4546)
!4800 = !DILocation(line: 557, column: 19, scope: !4545, inlinedAt: !4546)
!4801 = !DILocation(line: 557, column: 25, scope: !4545, inlinedAt: !4546)
!4802 = !DILocation(line: 557, column: 9, scope: !4545, inlinedAt: !4546)
!4803 = !DILocation(line: 557, column: 2, scope: !4545, inlinedAt: !4546)
!4804 = !DILocation(line: 558, column: 1, scope: !4545, inlinedAt: !4546)
!4805 = !DILocation(line: 664, column: 2, scope: !4534)
!4806 = distinct !DISubprogram(name: "ERR_PTR", scope: !4807, file: !4807, line: 24, type: !4808, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4807 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!123, !134}
!4810 = !DILocalVariable(name: "error", arg: 1, scope: !4806, file: !4807, line: 24, type: !134)
!4811 = !DILocation(line: 24, column: 48, scope: !4806)
!4812 = !DILocation(line: 26, column: 18, scope: !4806)
!4813 = !DILocation(line: 26, column: 9, scope: !4806)
!4814 = !DILocation(line: 26, column: 2, scope: !4806)
!4815 = distinct !DISubprogram(name: "refcount_set", scope: !113, file: !113, line: 134, type: !4816, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !4018, !126}
!4818 = !DILocalVariable(name: "v", arg: 1, scope: !4819, file: !4820, line: 39, type: !4823)
!4819 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4820, file: !4820, line: 39, type: !4821, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4820 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4823, !126}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!4824 = !DILocation(line: 39, column: 55, scope: !4819, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 46, column: 2, scope: !4826, inlinedAt: !4828)
!4826 = distinct !DISubprogram(name: "atomic_set", scope: !4827, file: !4827, line: 43, type: !4821, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4827 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4828 = distinct !DILocation(line: 136, column: 2, scope: !4815)
!4829 = !DILocalVariable(name: "i", arg: 2, scope: !4819, file: !4820, line: 39, type: !126)
!4830 = !DILocation(line: 39, column: 62, scope: !4819, inlinedAt: !4825)
!4831 = !DILocalVariable(name: "v", arg: 1, scope: !4832, file: !4833, line: 84, type: !4836)
!4832 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4833, file: !4833, line: 84, type: !4834, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4833 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4834 = !DISubroutineType(types: !4835)
!4835 = !{null, !4836, !1122}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4838)
!4838 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4839 = !DILocation(line: 84, column: 74, scope: !4832, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 45, column: 2, scope: !4826, inlinedAt: !4828)
!4841 = !DILocalVariable(name: "size", arg: 2, scope: !4832, file: !4833, line: 84, type: !1122)
!4842 = !DILocation(line: 84, column: 84, scope: !4832, inlinedAt: !4840)
!4843 = !DILocalVariable(name: "v", arg: 1, scope: !4826, file: !4827, line: 43, type: !4823)
!4844 = !DILocation(line: 43, column: 22, scope: !4826, inlinedAt: !4828)
!4845 = !DILocalVariable(name: "i", arg: 2, scope: !4826, file: !4827, line: 43, type: !126)
!4846 = !DILocation(line: 43, column: 29, scope: !4826, inlinedAt: !4828)
!4847 = !DILocalVariable(name: "r", arg: 1, scope: !4815, file: !113, line: 134, type: !4018)
!4848 = !DILocation(line: 134, column: 45, scope: !4815)
!4849 = !DILocalVariable(name: "n", arg: 2, scope: !4815, file: !113, line: 134, type: !126)
!4850 = !DILocation(line: 134, column: 52, scope: !4815)
!4851 = !DILocation(line: 136, column: 14, scope: !4815)
!4852 = !DILocation(line: 136, column: 17, scope: !4815)
!4853 = !DILocation(line: 136, column: 23, scope: !4815)
!4854 = !DILocation(line: 45, column: 26, scope: !4826, inlinedAt: !4828)
!4855 = !DILocation(line: 86, column: 20, scope: !4832, inlinedAt: !4840)
!4856 = !DILocation(line: 86, column: 23, scope: !4832, inlinedAt: !4840)
!4857 = !DILocation(line: 86, column: 2, scope: !4832, inlinedAt: !4840)
!4858 = !DILocation(line: 87, column: 2, scope: !4832, inlinedAt: !4840)
!4859 = !DILocation(line: 46, column: 18, scope: !4826, inlinedAt: !4828)
!4860 = !DILocation(line: 46, column: 21, scope: !4826, inlinedAt: !4828)
!4861 = !DILocation(line: 41, column: 2, scope: !4862, inlinedAt: !4825)
!4862 = distinct !DILexicalBlock(scope: !4819, file: !4820, line: 41, column: 2)
!4863 = !DILocation(line: 137, column: 1, scope: !4815)
!4864 = distinct !DISubprogram(name: "get_order", scope: !4865, file: !4865, line: 29, type: !4866, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4865 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!126, !127}
!4868 = !DILocalVariable(name: "x", arg: 1, scope: !4869, file: !4870, line: 366, type: !131)
!4869 = distinct !DISubprogram(name: "fls64", scope: !4870, file: !4870, line: 366, type: !4871, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4870 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!126, !131}
!4873 = !DILocation(line: 366, column: 40, scope: !4869, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 46, column: 9, scope: !4864)
!4875 = !DILocalVariable(name: "bitpos", scope: !4869, file: !4870, line: 368, type: !126)
!4876 = !DILocation(line: 368, column: 6, scope: !4869, inlinedAt: !4874)
!4877 = !DILocalVariable(name: "size", arg: 1, scope: !4864, file: !4865, line: 29, type: !127)
!4878 = !DILocation(line: 29, column: 63, scope: !4864)
!4879 = !DILocation(line: 31, column: 27, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4864, file: !4865, line: 31, column: 6)
!4881 = !DILocation(line: 31, column: 6, scope: !4880)
!4882 = !DILocation(line: 31, column: 6, scope: !4864)
!4883 = !DILocation(line: 32, column: 8, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !4865, line: 32, column: 7)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !4865, line: 31, column: 34)
!4886 = !DILocation(line: 32, column: 7, scope: !4885)
!4887 = !DILocation(line: 33, column: 4, scope: !4884)
!4888 = !DILocation(line: 35, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4885, file: !4865, line: 35, column: 7)
!4890 = !DILocation(line: 35, column: 12, scope: !4889)
!4891 = !DILocation(line: 35, column: 7, scope: !4885)
!4892 = !DILocation(line: 36, column: 4, scope: !4889)
!4893 = !DILocation(line: 38, column: 10, scope: !4885)
!4894 = !DILocation(line: 38, column: 28, scope: !4885)
!4895 = !DILocation(line: 38, column: 41, scope: !4885)
!4896 = !DILocation(line: 38, column: 3, scope: !4885)
!4897 = !DILocation(line: 41, column: 6, scope: !4864)
!4898 = !DILocation(line: 42, column: 7, scope: !4864)
!4899 = !DILocation(line: 46, column: 15, scope: !4864)
!4900 = !DILocation(line: 374, column: 2, scope: !4869, inlinedAt: !4874)
!4901 = !DILocation(line: 376, column: 14, scope: !4869, inlinedAt: !4874)
!4902 = !{i32 278185}
!4903 = !DILocation(line: 377, column: 9, scope: !4869, inlinedAt: !4874)
!4904 = !DILocation(line: 377, column: 16, scope: !4869, inlinedAt: !4874)
!4905 = !DILocation(line: 46, column: 2, scope: !4864)
!4906 = !DILocation(line: 48, column: 1, scope: !4864)
!4907 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4908, file: !4908, line: 30, type: !4909, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4908 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!126, !129}
!4911 = !DILocation(line: 366, column: 40, scope: !4869, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 32, column: 9, scope: !4907)
!4913 = !DILocation(line: 368, column: 6, scope: !4869, inlinedAt: !4912)
!4914 = !DILocalVariable(name: "n", arg: 1, scope: !4907, file: !4908, line: 30, type: !129)
!4915 = !DILocation(line: 30, column: 21, scope: !4907)
!4916 = !DILocation(line: 32, column: 15, scope: !4907)
!4917 = !DILocation(line: 374, column: 2, scope: !4869, inlinedAt: !4912)
!4918 = !DILocation(line: 376, column: 14, scope: !4869, inlinedAt: !4912)
!4919 = !DILocation(line: 377, column: 9, scope: !4869, inlinedAt: !4912)
!4920 = !DILocation(line: 377, column: 16, scope: !4869, inlinedAt: !4912)
!4921 = !DILocation(line: 32, column: 18, scope: !4907)
!4922 = !DILocation(line: 32, column: 2, scope: !4907)
!4923 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4924, file: !4924, line: 137, type: !4925, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4924 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!123, !2138, !2304, !1122, !121}
!4927 = !DILocalVariable(name: "s", arg: 1, scope: !4923, file: !4924, line: 137, type: !2138)
!4928 = !DILocation(line: 137, column: 54, scope: !4923)
!4929 = !DILocalVariable(name: "object", arg: 2, scope: !4923, file: !4924, line: 137, type: !2304)
!4930 = !DILocation(line: 137, column: 69, scope: !4923)
!4931 = !DILocalVariable(name: "size", arg: 3, scope: !4923, file: !4924, line: 138, type: !1122)
!4932 = !DILocation(line: 138, column: 12, scope: !4923)
!4933 = !DILocalVariable(name: "flags", arg: 4, scope: !4923, file: !4924, line: 138, type: !121)
!4934 = !DILocation(line: 138, column: 24, scope: !4923)
!4935 = !DILocation(line: 140, column: 17, scope: !4923)
!4936 = !DILocation(line: 140, column: 2, scope: !4923)
!4937 = distinct !DISubprogram(name: "kasan_check_write", scope: !4938, file: !4938, line: 38, type: !4939, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4938 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!332, !4836, !7}
!4941 = !DILocalVariable(name: "p", arg: 1, scope: !4937, file: !4938, line: 38, type: !4836)
!4942 = !DILocation(line: 38, column: 59, scope: !4937)
!4943 = !DILocalVariable(name: "size", arg: 2, scope: !4937, file: !4938, line: 38, type: !7)
!4944 = !DILocation(line: 38, column: 75, scope: !4937)
!4945 = !DILocation(line: 40, column: 2, scope: !4937)
!4946 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4947, file: !4947, line: 178, type: !4948, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4947 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !4836, !1122, !126}
!4950 = !DILocalVariable(name: "ptr", arg: 1, scope: !4946, file: !4947, line: 178, type: !4836)
!4951 = !DILocation(line: 178, column: 60, scope: !4946)
!4952 = !DILocalVariable(name: "size", arg: 2, scope: !4946, file: !4947, line: 178, type: !1122)
!4953 = !DILocation(line: 178, column: 72, scope: !4946)
!4954 = !DILocalVariable(name: "type", arg: 3, scope: !4946, file: !4947, line: 179, type: !126)
!4955 = !DILocation(line: 179, column: 15, scope: !4946)
!4956 = !DILocation(line: 179, column: 23, scope: !4946)
!4957 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !113, file: !113, line: 331, type: !4958, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!332, !4018}
!4960 = !DILocalVariable(name: "r", arg: 1, scope: !4957, file: !113, line: 331, type: !4018)
!4961 = !DILocation(line: 331, column: 67, scope: !4957)
!4962 = !DILocation(line: 333, column: 33, scope: !4957)
!4963 = !DILocation(line: 333, column: 9, scope: !4957)
!4964 = !DILocation(line: 333, column: 2, scope: !4957)
!4965 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !113, file: !113, line: 313, type: !4966, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!332, !4018, !457}
!4968 = !DILocalVariable(name: "r", arg: 1, scope: !4965, file: !113, line: 313, type: !4018)
!4969 = !DILocation(line: 313, column: 69, scope: !4965)
!4970 = !DILocalVariable(name: "oldp", arg: 2, scope: !4965, file: !113, line: 313, type: !457)
!4971 = !DILocation(line: 313, column: 77, scope: !4965)
!4972 = !DILocation(line: 315, column: 36, scope: !4965)
!4973 = !DILocation(line: 315, column: 39, scope: !4965)
!4974 = !DILocation(line: 315, column: 9, scope: !4965)
!4975 = !DILocation(line: 315, column: 2, scope: !4965)
!4976 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !113, file: !113, line: 270, type: !4977, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!332, !126, !4018, !457}
!4979 = !DILocalVariable(name: "i", arg: 1, scope: !4980, file: !4820, line: 188, type: !126)
!4980 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4820, file: !4820, line: 188, type: !4981, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!126, !126, !4823}
!4983 = !DILocation(line: 188, column: 54, scope: !4980, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 221, column: 9, scope: !4985, inlinedAt: !4986)
!4985 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4827, file: !4827, line: 218, type: !4981, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4986 = distinct !DILocation(line: 272, column: 12, scope: !4976)
!4987 = !DILocalVariable(name: "v", arg: 2, scope: !4980, file: !4820, line: 188, type: !4823)
!4988 = !DILocation(line: 188, column: 67, scope: !4980, inlinedAt: !4984)
!4989 = !DILocalVariable(name: "__ret", scope: !4990, file: !4820, line: 190, type: !126)
!4990 = distinct !DILexicalBlock(scope: !4980, file: !4820, line: 190, column: 9)
!4991 = !DILocation(line: 190, column: 9, scope: !4990, inlinedAt: !4984)
!4992 = !DILocalVariable(name: "v", arg: 1, scope: !4993, file: !4833, line: 99, type: !4836)
!4993 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4833, file: !4833, line: 99, type: !4834, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4994 = !DILocation(line: 99, column: 79, scope: !4993, inlinedAt: !4995)
!4995 = distinct !DILocation(line: 220, column: 2, scope: !4985, inlinedAt: !4986)
!4996 = !DILocalVariable(name: "size", arg: 2, scope: !4993, file: !4833, line: 99, type: !1122)
!4997 = !DILocation(line: 99, column: 89, scope: !4993, inlinedAt: !4995)
!4998 = !DILocalVariable(name: "i", arg: 1, scope: !4985, file: !4827, line: 218, type: !126)
!4999 = !DILocation(line: 218, column: 30, scope: !4985, inlinedAt: !4986)
!5000 = !DILocalVariable(name: "v", arg: 2, scope: !4985, file: !4827, line: 218, type: !4823)
!5001 = !DILocation(line: 218, column: 43, scope: !4985, inlinedAt: !4986)
!5002 = !DILocalVariable(name: "i", arg: 1, scope: !4976, file: !113, line: 270, type: !126)
!5003 = !DILocation(line: 270, column: 61, scope: !4976)
!5004 = !DILocalVariable(name: "r", arg: 2, scope: !4976, file: !113, line: 270, type: !4018)
!5005 = !DILocation(line: 270, column: 76, scope: !4976)
!5006 = !DILocalVariable(name: "oldp", arg: 3, scope: !4976, file: !113, line: 270, type: !457)
!5007 = !DILocation(line: 270, column: 84, scope: !4976)
!5008 = !DILocalVariable(name: "old", scope: !4976, file: !113, line: 272, type: !126)
!5009 = !DILocation(line: 272, column: 6, scope: !4976)
!5010 = !DILocation(line: 272, column: 37, scope: !4976)
!5011 = !DILocation(line: 272, column: 41, scope: !4976)
!5012 = !DILocation(line: 272, column: 44, scope: !4976)
!5013 = !DILocation(line: 220, column: 31, scope: !4985, inlinedAt: !4986)
!5014 = !DILocation(line: 101, column: 20, scope: !4993, inlinedAt: !4995)
!5015 = !DILocation(line: 101, column: 23, scope: !4993, inlinedAt: !4995)
!5016 = !DILocation(line: 101, column: 2, scope: !4993, inlinedAt: !4995)
!5017 = !DILocation(line: 102, column: 2, scope: !4993, inlinedAt: !4995)
!5018 = !DILocation(line: 221, column: 39, scope: !4985, inlinedAt: !4986)
!5019 = !DILocation(line: 221, column: 42, scope: !4985, inlinedAt: !4986)
!5020 = !{i32 -2146873354}
!5021 = !DILocation(line: 274, column: 6, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4976, file: !113, line: 274, column: 6)
!5023 = !DILocation(line: 274, column: 6, scope: !4976)
!5024 = !DILocation(line: 275, column: 11, scope: !5022)
!5025 = !DILocation(line: 275, column: 4, scope: !5022)
!5026 = !DILocation(line: 275, column: 9, scope: !5022)
!5027 = !DILocation(line: 275, column: 3, scope: !5022)
!5028 = !DILocation(line: 277, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4976, file: !113, line: 277, column: 6)
!5030 = !DILocation(line: 277, column: 13, scope: !5029)
!5031 = !DILocation(line: 277, column: 10, scope: !5029)
!5032 = !DILocation(line: 277, column: 6, scope: !4976)
!5033 = !DILocation(line: 278, column: 3, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !113, line: 277, column: 16)
!5035 = !{i32 -2144293118}
!5036 = !DILocation(line: 279, column: 3, scope: !5034)
!5037 = !DILocation(line: 282, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4976, file: !113, line: 282, column: 6)
!5039 = !DILocation(line: 282, column: 6, scope: !4976)
!5040 = !DILocation(line: 283, column: 26, scope: !5038)
!5041 = !DILocation(line: 283, column: 3, scope: !5038)
!5042 = !DILocation(line: 285, column: 2, scope: !4976)
!5043 = !DILocation(line: 286, column: 1, scope: !4976)
!5044 = distinct !DISubprogram(name: "IS_ERR", scope: !4807, file: !4807, line: 34, type: !5045, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!332, !2304}
!5047 = !DILocalVariable(name: "ptr", arg: 1, scope: !5044, file: !4807, line: 34, type: !2304)
!5048 = !DILocation(line: 34, column: 60, scope: !5044)
!5049 = !DILocation(line: 36, column: 9, scope: !5044)
!5050 = !DILocation(line: 36, column: 2, scope: !5044)
!5051 = distinct !DISubprogram(name: "refcount_inc", scope: !113, file: !113, line: 265, type: !5052, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !4018}
!5054 = !DILocalVariable(name: "r", arg: 1, scope: !5051, file: !113, line: 265, type: !4018)
!5055 = !DILocation(line: 265, column: 45, scope: !5051)
!5056 = !DILocation(line: 267, column: 17, scope: !5051)
!5057 = !DILocation(line: 267, column: 2, scope: !5051)
!5058 = !DILocation(line: 268, column: 1, scope: !5051)
!5059 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_attach", scope: !3, file: !3, line: 210, type: !3345, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5060 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5059, file: !3, line: 210, type: !3347)
!5061 = !DILocation(line: 210, column: 58, scope: !5059)
!5062 = !DILocalVariable(name: "dbuf_attach", arg: 2, scope: !5059, file: !3, line: 211, type: !3429)
!5063 = !DILocation(line: 211, column: 29, scope: !5059)
!5064 = !DILocalVariable(name: "attach", scope: !5059, file: !3, line: 213, type: !5065)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_vmalloc_attachment", file: !3, line: 205, size: 192, elements: !5067)
!5067 = !{!5068, !5069}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !5066, file: !3, line: 206, baseType: !3870, size: 128)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !5066, file: !3, line: 207, baseType: !93, size: 32, offset: 128)
!5070 = !DILocation(line: 213, column: 33, scope: !5059)
!5071 = !DILocalVariable(name: "buf", scope: !5059, file: !3, line: 214, type: !3996)
!5072 = !DILocation(line: 214, column: 26, scope: !5059)
!5073 = !DILocation(line: 214, column: 32, scope: !5059)
!5074 = !DILocation(line: 214, column: 38, scope: !5059)
!5075 = !DILocalVariable(name: "num_pages", scope: !5059, file: !3, line: 215, type: !126)
!5076 = !DILocation(line: 215, column: 6, scope: !5059)
!5077 = !DILocation(line: 215, column: 18, scope: !5059)
!5078 = !DILocation(line: 215, column: 40, scope: !5059)
!5079 = !DILocalVariable(name: "sgt", scope: !5059, file: !3, line: 216, type: !3869)
!5080 = !DILocation(line: 216, column: 19, scope: !5059)
!5081 = !DILocalVariable(name: "sg", scope: !5059, file: !3, line: 217, type: !3874)
!5082 = !DILocation(line: 217, column: 22, scope: !5059)
!5083 = !DILocalVariable(name: "vaddr", scope: !5059, file: !3, line: 218, type: !123)
!5084 = !DILocation(line: 218, column: 8, scope: !5059)
!5085 = !DILocation(line: 218, column: 16, scope: !5059)
!5086 = !DILocation(line: 218, column: 21, scope: !5059)
!5087 = !DILocalVariable(name: "ret", scope: !5059, file: !3, line: 219, type: !126)
!5088 = !DILocation(line: 219, column: 6, scope: !5059)
!5089 = !DILocalVariable(name: "i", scope: !5059, file: !3, line: 220, type: !126)
!5090 = !DILocation(line: 220, column: 6, scope: !5059)
!5091 = !DILocation(line: 222, column: 11, scope: !5059)
!5092 = !DILocation(line: 222, column: 9, scope: !5059)
!5093 = !DILocation(line: 223, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 223, column: 6)
!5095 = !DILocation(line: 223, column: 6, scope: !5059)
!5096 = !DILocation(line: 224, column: 3, scope: !5094)
!5097 = !DILocation(line: 226, column: 9, scope: !5059)
!5098 = !DILocation(line: 226, column: 17, scope: !5059)
!5099 = !DILocation(line: 226, column: 6, scope: !5059)
!5100 = !DILocation(line: 227, column: 23, scope: !5059)
!5101 = !DILocation(line: 227, column: 28, scope: !5059)
!5102 = !DILocation(line: 227, column: 8, scope: !5059)
!5103 = !DILocation(line: 227, column: 6, scope: !5059)
!5104 = !DILocation(line: 228, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 228, column: 6)
!5106 = !DILocation(line: 228, column: 6, scope: !5059)
!5107 = !DILocation(line: 229, column: 9, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 228, column: 11)
!5109 = !DILocation(line: 229, column: 3, scope: !5108)
!5110 = !DILocation(line: 230, column: 10, scope: !5108)
!5111 = !DILocation(line: 230, column: 3, scope: !5108)
!5112 = !DILocation(line: 232, column: 2, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 232, column: 2)
!5114 = !DILocation(line: 232, column: 2, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 232, column: 2)
!5116 = !DILocalVariable(name: "page", scope: !5117, file: !3, line: 233, type: !137)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 232, column: 34)
!5118 = !DILocation(line: 233, column: 16, scope: !5117)
!5119 = !DILocation(line: 233, column: 39, scope: !5117)
!5120 = !DILocation(line: 233, column: 23, scope: !5117)
!5121 = !DILocation(line: 235, column: 8, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 235, column: 7)
!5123 = !DILocation(line: 235, column: 7, scope: !5117)
!5124 = !DILocation(line: 236, column: 18, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 235, column: 14)
!5126 = !DILocation(line: 236, column: 4, scope: !5125)
!5127 = !DILocation(line: 237, column: 10, scope: !5125)
!5128 = !DILocation(line: 237, column: 4, scope: !5125)
!5129 = !DILocation(line: 238, column: 4, scope: !5125)
!5130 = !DILocation(line: 240, column: 15, scope: !5117)
!5131 = !DILocation(line: 240, column: 19, scope: !5117)
!5132 = !DILocation(line: 240, column: 3, scope: !5117)
!5133 = !DILocation(line: 241, column: 9, scope: !5117)
!5134 = !DILocation(line: 242, column: 2, scope: !5117)
!5135 = distinct !{!5135, !5112, !5136}
!5136 = !DILocation(line: 242, column: 2, scope: !5113)
!5137 = !DILocation(line: 244, column: 2, scope: !5059)
!5138 = !DILocation(line: 244, column: 10, scope: !5059)
!5139 = !DILocation(line: 244, column: 18, scope: !5059)
!5140 = !DILocation(line: 245, column: 22, scope: !5059)
!5141 = !DILocation(line: 245, column: 2, scope: !5059)
!5142 = !DILocation(line: 245, column: 15, scope: !5059)
!5143 = !DILocation(line: 245, column: 20, scope: !5059)
!5144 = !DILocation(line: 246, column: 2, scope: !5059)
!5145 = !DILocation(line: 247, column: 1, scope: !5059)
!5146 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_detach", scope: !3, file: !3, line: 249, type: !3900, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5147 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5146, file: !3, line: 249, type: !3347)
!5148 = !DILocation(line: 249, column: 59, scope: !5146)
!5149 = !DILocalVariable(name: "db_attach", arg: 2, scope: !5146, file: !3, line: 250, type: !3429)
!5150 = !DILocation(line: 250, column: 29, scope: !5146)
!5151 = !DILocalVariable(name: "attach", scope: !5146, file: !3, line: 252, type: !5065)
!5152 = !DILocation(line: 252, column: 33, scope: !5146)
!5153 = !DILocation(line: 252, column: 42, scope: !5146)
!5154 = !DILocation(line: 252, column: 53, scope: !5146)
!5155 = !DILocalVariable(name: "sgt", scope: !5146, file: !3, line: 253, type: !3869)
!5156 = !DILocation(line: 253, column: 19, scope: !5146)
!5157 = !DILocation(line: 255, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 255, column: 6)
!5159 = !DILocation(line: 255, column: 6, scope: !5146)
!5160 = !DILocation(line: 256, column: 3, scope: !5158)
!5161 = !DILocation(line: 258, column: 9, scope: !5146)
!5162 = !DILocation(line: 258, column: 17, scope: !5146)
!5163 = !DILocation(line: 258, column: 6, scope: !5146)
!5164 = !DILocation(line: 261, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 261, column: 6)
!5166 = !DILocation(line: 261, column: 14, scope: !5165)
!5167 = !DILocation(line: 261, column: 22, scope: !5165)
!5168 = !DILocation(line: 261, column: 6, scope: !5146)
!5169 = !DILocation(line: 262, column: 21, scope: !5165)
!5170 = !DILocation(line: 262, column: 32, scope: !5165)
!5171 = !DILocation(line: 262, column: 37, scope: !5165)
!5172 = !DILocation(line: 262, column: 42, scope: !5165)
!5173 = !DILocation(line: 262, column: 50, scope: !5165)
!5174 = !DILocation(line: 262, column: 3, scope: !5165)
!5175 = !DILocation(line: 263, column: 16, scope: !5146)
!5176 = !DILocation(line: 263, column: 2, scope: !5146)
!5177 = !DILocation(line: 264, column: 8, scope: !5146)
!5178 = !DILocation(line: 264, column: 2, scope: !5146)
!5179 = !DILocation(line: 265, column: 2, scope: !5146)
!5180 = !DILocation(line: 265, column: 13, scope: !5146)
!5181 = !DILocation(line: 265, column: 18, scope: !5146)
!5182 = !DILocation(line: 266, column: 1, scope: !5146)
!5183 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_map", scope: !3, file: !3, line: 268, type: !3909, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5184 = !DILocalVariable(name: "db_attach", arg: 1, scope: !5183, file: !3, line: 269, type: !3429)
!5185 = !DILocation(line: 269, column: 29, scope: !5183)
!5186 = !DILocalVariable(name: "dma_dir", arg: 2, scope: !5183, file: !3, line: 269, type: !93)
!5187 = !DILocation(line: 269, column: 64, scope: !5183)
!5188 = !DILocalVariable(name: "attach", scope: !5183, file: !3, line: 271, type: !5065)
!5189 = !DILocation(line: 271, column: 33, scope: !5183)
!5190 = !DILocation(line: 271, column: 42, scope: !5183)
!5191 = !DILocation(line: 271, column: 53, scope: !5183)
!5192 = !DILocalVariable(name: "lock", scope: !5183, file: !3, line: 273, type: !5193)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!5194 = !DILocation(line: 273, column: 16, scope: !5183)
!5195 = !DILocation(line: 273, column: 24, scope: !5183)
!5196 = !DILocation(line: 273, column: 35, scope: !5183)
!5197 = !DILocation(line: 273, column: 43, scope: !5183)
!5198 = !DILocalVariable(name: "sgt", scope: !5183, file: !3, line: 274, type: !3869)
!5199 = !DILocation(line: 274, column: 19, scope: !5183)
!5200 = !DILocation(line: 276, column: 13, scope: !5183)
!5201 = !DILocation(line: 276, column: 2, scope: !5183)
!5202 = !DILocation(line: 278, column: 9, scope: !5183)
!5203 = !DILocation(line: 278, column: 17, scope: !5183)
!5204 = !DILocation(line: 278, column: 6, scope: !5183)
!5205 = !DILocation(line: 280, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 280, column: 6)
!5207 = !DILocation(line: 280, column: 14, scope: !5206)
!5208 = !DILocation(line: 280, column: 25, scope: !5206)
!5209 = !DILocation(line: 280, column: 22, scope: !5206)
!5210 = !DILocation(line: 280, column: 6, scope: !5183)
!5211 = !DILocation(line: 281, column: 16, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 280, column: 34)
!5213 = !DILocation(line: 281, column: 3, scope: !5212)
!5214 = !DILocation(line: 282, column: 10, scope: !5212)
!5215 = !DILocation(line: 282, column: 3, scope: !5212)
!5216 = !DILocation(line: 286, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 286, column: 6)
!5218 = !DILocation(line: 286, column: 14, scope: !5217)
!5219 = !DILocation(line: 286, column: 22, scope: !5217)
!5220 = !DILocation(line: 286, column: 6, scope: !5183)
!5221 = !DILocation(line: 287, column: 21, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 286, column: 35)
!5223 = !DILocation(line: 287, column: 32, scope: !5222)
!5224 = !DILocation(line: 287, column: 37, scope: !5222)
!5225 = !DILocation(line: 287, column: 42, scope: !5222)
!5226 = !DILocation(line: 287, column: 50, scope: !5222)
!5227 = !DILocation(line: 287, column: 3, scope: !5222)
!5228 = !DILocation(line: 288, column: 3, scope: !5222)
!5229 = !DILocation(line: 288, column: 11, scope: !5222)
!5230 = !DILocation(line: 288, column: 19, scope: !5222)
!5231 = !DILocation(line: 289, column: 2, scope: !5222)
!5232 = !DILocation(line: 292, column: 22, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 292, column: 6)
!5234 = !DILocation(line: 292, column: 33, scope: !5233)
!5235 = !DILocation(line: 292, column: 38, scope: !5233)
!5236 = !DILocation(line: 292, column: 43, scope: !5233)
!5237 = !DILocation(line: 292, column: 6, scope: !5233)
!5238 = !DILocation(line: 292, column: 6, scope: !5183)
!5239 = !DILocation(line: 293, column: 3, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 292, column: 56)
!5241 = !DILocation(line: 294, column: 16, scope: !5240)
!5242 = !DILocation(line: 294, column: 3, scope: !5240)
!5243 = !DILocation(line: 295, column: 10, scope: !5240)
!5244 = !DILocation(line: 295, column: 3, scope: !5240)
!5245 = !DILocation(line: 298, column: 20, scope: !5183)
!5246 = !DILocation(line: 298, column: 2, scope: !5183)
!5247 = !DILocation(line: 298, column: 10, scope: !5183)
!5248 = !DILocation(line: 298, column: 18, scope: !5183)
!5249 = !DILocation(line: 300, column: 15, scope: !5183)
!5250 = !DILocation(line: 300, column: 2, scope: !5183)
!5251 = !DILocation(line: 302, column: 9, scope: !5183)
!5252 = !DILocation(line: 302, column: 2, scope: !5183)
!5253 = !DILocation(line: 303, column: 1, scope: !5183)
!5254 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_unmap", scope: !3, file: !3, line: 305, type: !3913, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5255 = !DILocalVariable(name: "db_attach", arg: 1, scope: !5254, file: !3, line: 305, type: !3429)
!5256 = !DILocation(line: 305, column: 69, scope: !5254)
!5257 = !DILocalVariable(name: "sgt", arg: 2, scope: !5254, file: !3, line: 306, type: !3869)
!5258 = !DILocation(line: 306, column: 19, scope: !5254)
!5259 = !DILocalVariable(name: "dma_dir", arg: 3, scope: !5254, file: !3, line: 306, type: !93)
!5260 = !DILocation(line: 306, column: 48, scope: !5254)
!5261 = !DILocation(line: 309, column: 1, scope: !5254)
!5262 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_release", scope: !3, file: !3, line: 311, type: !3917, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5263 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5262, file: !3, line: 311, type: !3347)
!5264 = !DILocation(line: 311, column: 60, scope: !5262)
!5265 = !DILocation(line: 314, column: 18, scope: !5262)
!5266 = !DILocation(line: 314, column: 24, scope: !5262)
!5267 = !DILocation(line: 314, column: 2, scope: !5262)
!5268 = !DILocation(line: 315, column: 1, scope: !5262)
!5269 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_mmap", scope: !3, file: !3, line: 324, type: !3926, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5270 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5269, file: !3, line: 324, type: !3347)
!5271 = !DILocation(line: 324, column: 56, scope: !5269)
!5272 = !DILocalVariable(name: "vma", arg: 2, scope: !5269, file: !3, line: 325, type: !976)
!5273 = !DILocation(line: 325, column: 25, scope: !5269)
!5274 = !DILocation(line: 327, column: 26, scope: !5269)
!5275 = !DILocation(line: 327, column: 32, scope: !5269)
!5276 = !DILocation(line: 327, column: 38, scope: !5269)
!5277 = !DILocation(line: 327, column: 9, scope: !5269)
!5278 = !DILocation(line: 327, column: 2, scope: !5269)
!5279 = distinct !DISubprogram(name: "vb2_vmalloc_dmabuf_ops_vmap", scope: !3, file: !3, line: 317, type: !3930, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5280 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5279, file: !3, line: 317, type: !3347)
!5281 = !DILocation(line: 317, column: 58, scope: !5279)
!5282 = !DILocalVariable(name: "buf", scope: !5279, file: !3, line: 319, type: !3996)
!5283 = !DILocation(line: 319, column: 26, scope: !5279)
!5284 = !DILocation(line: 319, column: 32, scope: !5279)
!5285 = !DILocation(line: 319, column: 38, scope: !5279)
!5286 = !DILocation(line: 321, column: 9, scope: !5279)
!5287 = !DILocation(line: 321, column: 14, scope: !5279)
!5288 = !DILocation(line: 321, column: 2, scope: !5279)
!5289 = distinct !DISubprogram(name: "sg_set_page", scope: !3871, file: !3871, line: 116, type: !5290, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !3874, !137, !7, !7}
!5292 = !DILocalVariable(name: "sg", arg: 1, scope: !5289, file: !3871, line: 116, type: !3874)
!5293 = !DILocation(line: 116, column: 52, scope: !5289)
!5294 = !DILocalVariable(name: "page", arg: 2, scope: !5289, file: !3871, line: 116, type: !137)
!5295 = !DILocation(line: 116, column: 69, scope: !5289)
!5296 = !DILocalVariable(name: "len", arg: 3, scope: !5289, file: !3871, line: 117, type: !7)
!5297 = !DILocation(line: 117, column: 24, scope: !5289)
!5298 = !DILocalVariable(name: "offset", arg: 4, scope: !5289, file: !3871, line: 117, type: !7)
!5299 = !DILocation(line: 117, column: 42, scope: !5289)
!5300 = !DILocation(line: 119, column: 17, scope: !5289)
!5301 = !DILocation(line: 119, column: 21, scope: !5289)
!5302 = !DILocation(line: 119, column: 2, scope: !5289)
!5303 = !DILocation(line: 120, column: 15, scope: !5289)
!5304 = !DILocation(line: 120, column: 2, scope: !5289)
!5305 = !DILocation(line: 120, column: 6, scope: !5289)
!5306 = !DILocation(line: 120, column: 13, scope: !5289)
!5307 = !DILocation(line: 121, column: 15, scope: !5289)
!5308 = !DILocation(line: 121, column: 2, scope: !5289)
!5309 = !DILocation(line: 121, column: 6, scope: !5289)
!5310 = !DILocation(line: 121, column: 13, scope: !5289)
!5311 = !DILocation(line: 122, column: 1, scope: !5289)
!5312 = distinct !DISubprogram(name: "sg_assign_page", scope: !3871, file: !3871, line: 87, type: !5313, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !3874, !137}
!5315 = !DILocalVariable(name: "sg", arg: 1, scope: !5312, file: !3871, line: 87, type: !3874)
!5316 = !DILocation(line: 87, column: 55, scope: !5312)
!5317 = !DILocalVariable(name: "page", arg: 2, scope: !5312, file: !3871, line: 87, type: !137)
!5318 = !DILocation(line: 87, column: 72, scope: !5312)
!5319 = !DILocalVariable(name: "page_link", scope: !5312, file: !3871, line: 89, type: !127)
!5320 = !DILocation(line: 89, column: 16, scope: !5312)
!5321 = !DILocation(line: 89, column: 28, scope: !5312)
!5322 = !DILocation(line: 89, column: 32, scope: !5312)
!5323 = !DILocation(line: 89, column: 42, scope: !5312)
!5324 = !DILocation(line: 95, column: 2, scope: !5312)
!5325 = !DILocation(line: 95, column: 2, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !3871, line: 95, column: 2)
!5327 = distinct !DILexicalBlock(scope: !5312, file: !3871, line: 95, column: 2)
!5328 = !DILocation(line: 95, column: 2, scope: !5327)
!5329 = !DILocation(line: 95, column: 2, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5326, file: !3871, line: 95, column: 2)
!5331 = !DILocation(line: 95, column: 2, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5330, file: !3871, line: 95, column: 2)
!5333 = !DILocation(line: 95, column: 2, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5330, file: !3871, line: 95, column: 2)
!5335 = !{i32 -2142095931, i32 -2142095902, i32 -2142095856, i32 -2142095798, i32 -2142095744, i32 -2142095690, i32 -2142095635, i32 -2142095604}
!5336 = !DILocation(line: 95, column: 2, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3871, line: 95, column: 2)
!5338 = distinct !DILexicalBlock(scope: !5330, file: !3871, line: 95, column: 2)
!5339 = !{i32 -2142095155, i32 -2142095148, i32 -2142095094, i32 -2142095063, i32 -2142095033}
!5340 = !DILocation(line: 95, column: 2, scope: !5338)
!5341 = !DILocation(line: 99, column: 18, scope: !5312)
!5342 = !DILocation(line: 99, column: 46, scope: !5312)
!5343 = !DILocation(line: 99, column: 30, scope: !5312)
!5344 = !DILocation(line: 99, column: 28, scope: !5312)
!5345 = !DILocation(line: 99, column: 2, scope: !5312)
!5346 = !DILocation(line: 99, column: 6, scope: !5312)
!5347 = !DILocation(line: 99, column: 16, scope: !5312)
!5348 = !DILocation(line: 100, column: 1, scope: !5312)
!5349 = distinct !DISubprogram(name: "dma_unmap_sgtable", scope: !5350, file: !5350, line: 342, type: !5351, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5350 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !3434, !3869, !93, !127}
!5353 = !DILocalVariable(name: "dev", arg: 1, scope: !5349, file: !5350, line: 342, type: !3434)
!5354 = !DILocation(line: 342, column: 53, scope: !5349)
!5355 = !DILocalVariable(name: "sgt", arg: 2, scope: !5349, file: !5350, line: 342, type: !3869)
!5356 = !DILocation(line: 342, column: 75, scope: !5349)
!5357 = !DILocalVariable(name: "dir", arg: 3, scope: !5349, file: !5350, line: 343, type: !93)
!5358 = !DILocation(line: 343, column: 27, scope: !5349)
!5359 = !DILocalVariable(name: "attrs", arg: 4, scope: !5349, file: !5350, line: 343, type: !127)
!5360 = !DILocation(line: 343, column: 46, scope: !5349)
!5361 = !DILocation(line: 345, column: 21, scope: !5349)
!5362 = !DILocation(line: 345, column: 26, scope: !5349)
!5363 = !DILocation(line: 345, column: 31, scope: !5349)
!5364 = !DILocation(line: 345, column: 36, scope: !5349)
!5365 = !DILocation(line: 345, column: 41, scope: !5349)
!5366 = !DILocation(line: 345, column: 53, scope: !5349)
!5367 = !DILocation(line: 345, column: 58, scope: !5349)
!5368 = !DILocation(line: 345, column: 2, scope: !5349)
!5369 = !DILocation(line: 346, column: 1, scope: !5349)
!5370 = distinct !DISubprogram(name: "dma_map_sgtable", scope: !5350, file: !5350, line: 319, type: !5371, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!126, !3434, !3869, !93, !127}
!5373 = !DILocalVariable(name: "dev", arg: 1, scope: !5370, file: !5350, line: 319, type: !3434)
!5374 = !DILocation(line: 319, column: 50, scope: !5370)
!5375 = !DILocalVariable(name: "sgt", arg: 2, scope: !5370, file: !5350, line: 319, type: !3869)
!5376 = !DILocation(line: 319, column: 72, scope: !5370)
!5377 = !DILocalVariable(name: "dir", arg: 3, scope: !5370, file: !5350, line: 320, type: !93)
!5378 = !DILocation(line: 320, column: 27, scope: !5370)
!5379 = !DILocalVariable(name: "attrs", arg: 4, scope: !5370, file: !5350, line: 320, type: !127)
!5380 = !DILocation(line: 320, column: 46, scope: !5370)
!5381 = !DILocalVariable(name: "nents", scope: !5370, file: !5350, line: 322, type: !126)
!5382 = !DILocation(line: 322, column: 6, scope: !5370)
!5383 = !DILocation(line: 324, column: 27, scope: !5370)
!5384 = !DILocation(line: 324, column: 32, scope: !5370)
!5385 = !DILocation(line: 324, column: 37, scope: !5370)
!5386 = !DILocation(line: 324, column: 42, scope: !5370)
!5387 = !DILocation(line: 324, column: 47, scope: !5370)
!5388 = !DILocation(line: 324, column: 59, scope: !5370)
!5389 = !DILocation(line: 324, column: 64, scope: !5370)
!5390 = !DILocation(line: 324, column: 10, scope: !5370)
!5391 = !DILocation(line: 324, column: 8, scope: !5370)
!5392 = !DILocation(line: 325, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5370, file: !5350, line: 325, column: 6)
!5394 = !DILocation(line: 325, column: 12, scope: !5393)
!5395 = !DILocation(line: 325, column: 6, scope: !5370)
!5396 = !DILocation(line: 326, column: 3, scope: !5393)
!5397 = !DILocation(line: 327, column: 15, scope: !5370)
!5398 = !DILocation(line: 327, column: 2, scope: !5370)
!5399 = !DILocation(line: 327, column: 7, scope: !5370)
!5400 = !DILocation(line: 327, column: 13, scope: !5370)
!5401 = !DILocation(line: 328, column: 2, scope: !5370)
!5402 = !DILocation(line: 329, column: 1, scope: !5370)
!5403 = distinct !DISubprogram(name: "__refcount_inc", scope: !113, file: !113, line: 248, type: !5404, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !4018, !457}
!5406 = !DILocalVariable(name: "r", arg: 1, scope: !5403, file: !113, line: 248, type: !4018)
!5407 = !DILocation(line: 248, column: 47, scope: !5403)
!5408 = !DILocalVariable(name: "oldp", arg: 2, scope: !5403, file: !113, line: 248, type: !457)
!5409 = !DILocation(line: 248, column: 55, scope: !5403)
!5410 = !DILocation(line: 250, column: 20, scope: !5403)
!5411 = !DILocation(line: 250, column: 23, scope: !5403)
!5412 = !DILocation(line: 250, column: 2, scope: !5403)
!5413 = !DILocation(line: 251, column: 1, scope: !5403)
!5414 = distinct !DISubprogram(name: "__refcount_add", scope: !113, file: !113, line: 191, type: !5415, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{null, !126, !4018, !457}
!5417 = !DILocalVariable(name: "i", arg: 1, scope: !5418, file: !4820, line: 182, type: !126)
!5418 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4820, file: !4820, line: 182, type: !4981, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5419 = !DILocation(line: 182, column: 54, scope: !5418, inlinedAt: !5420)
!5420 = distinct !DILocation(line: 143, column: 9, scope: !5421, inlinedAt: !5422)
!5421 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4827, file: !4827, line: 140, type: !4981, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5422 = distinct !DILocation(line: 193, column: 12, scope: !5414)
!5423 = !DILocalVariable(name: "v", arg: 2, scope: !5418, file: !4820, line: 182, type: !4823)
!5424 = !DILocation(line: 182, column: 67, scope: !5418, inlinedAt: !5420)
!5425 = !DILocalVariable(name: "__ret", scope: !5426, file: !4820, line: 184, type: !126)
!5426 = distinct !DILexicalBlock(scope: !5418, file: !4820, line: 184, column: 9)
!5427 = !DILocation(line: 184, column: 9, scope: !5426, inlinedAt: !5420)
!5428 = !DILocation(line: 99, column: 79, scope: !4993, inlinedAt: !5429)
!5429 = distinct !DILocation(line: 142, column: 2, scope: !5421, inlinedAt: !5422)
!5430 = !DILocation(line: 99, column: 89, scope: !4993, inlinedAt: !5429)
!5431 = !DILocalVariable(name: "i", arg: 1, scope: !5421, file: !4827, line: 140, type: !126)
!5432 = !DILocation(line: 140, column: 30, scope: !5421, inlinedAt: !5422)
!5433 = !DILocalVariable(name: "v", arg: 2, scope: !5421, file: !4827, line: 140, type: !4823)
!5434 = !DILocation(line: 140, column: 43, scope: !5421, inlinedAt: !5422)
!5435 = !DILocalVariable(name: "i", arg: 1, scope: !5414, file: !113, line: 191, type: !126)
!5436 = !DILocation(line: 191, column: 39, scope: !5414)
!5437 = !DILocalVariable(name: "r", arg: 2, scope: !5414, file: !113, line: 191, type: !4018)
!5438 = !DILocation(line: 191, column: 54, scope: !5414)
!5439 = !DILocalVariable(name: "oldp", arg: 3, scope: !5414, file: !113, line: 191, type: !457)
!5440 = !DILocation(line: 191, column: 62, scope: !5414)
!5441 = !DILocalVariable(name: "old", scope: !5414, file: !113, line: 193, type: !126)
!5442 = !DILocation(line: 193, column: 6, scope: !5414)
!5443 = !DILocation(line: 193, column: 37, scope: !5414)
!5444 = !DILocation(line: 193, column: 41, scope: !5414)
!5445 = !DILocation(line: 193, column: 44, scope: !5414)
!5446 = !DILocation(line: 142, column: 31, scope: !5421, inlinedAt: !5422)
!5447 = !DILocation(line: 101, column: 20, scope: !4993, inlinedAt: !5429)
!5448 = !DILocation(line: 101, column: 23, scope: !4993, inlinedAt: !5429)
!5449 = !DILocation(line: 101, column: 2, scope: !4993, inlinedAt: !5429)
!5450 = !DILocation(line: 102, column: 2, scope: !4993, inlinedAt: !5429)
!5451 = !DILocation(line: 143, column: 39, scope: !5421, inlinedAt: !5422)
!5452 = !DILocation(line: 143, column: 42, scope: !5421, inlinedAt: !5422)
!5453 = !{i32 -2146874706}
!5454 = !DILocation(line: 195, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5414, file: !113, line: 195, column: 6)
!5456 = !DILocation(line: 195, column: 6, scope: !5414)
!5457 = !DILocation(line: 196, column: 11, scope: !5455)
!5458 = !DILocation(line: 196, column: 4, scope: !5455)
!5459 = !DILocation(line: 196, column: 9, scope: !5455)
!5460 = !DILocation(line: 196, column: 3, scope: !5455)
!5461 = !DILocation(line: 198, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5414, file: !113, line: 198, column: 6)
!5463 = !DILocation(line: 198, column: 6, scope: !5414)
!5464 = !DILocation(line: 199, column: 26, scope: !5462)
!5465 = !DILocation(line: 199, column: 3, scope: !5462)
!5466 = !DILocation(line: 200, column: 11, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5462, file: !113, line: 200, column: 11)
!5468 = !DILocation(line: 200, column: 11, scope: !5462)
!5469 = !DILocation(line: 201, column: 26, scope: !5467)
!5470 = !DILocation(line: 201, column: 3, scope: !5467)
!5471 = !DILocation(line: 202, column: 1, scope: !5414)
!5472 = distinct !DISubprogram(name: "PTR_ERR", scope: !4807, file: !4807, line: 29, type: !5473, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!134, !2304}
!5475 = !DILocalVariable(name: "ptr", arg: 1, scope: !5472, file: !4807, line: 29, type: !2304)
!5476 = !DILocation(line: 29, column: 61, scope: !5472)
!5477 = !DILocation(line: 31, column: 16, scope: !5472)
!5478 = !DILocation(line: 31, column: 9, scope: !5472)
!5479 = !DILocation(line: 31, column: 2, scope: !5472)
!5480 = distinct !DISubprogram(name: "frame_vector_count", scope: !14, file: !14, line: 1773, type: !5481, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!7, !4001}
!5483 = !DILocalVariable(name: "vec", arg: 1, scope: !5480, file: !14, line: 1773, type: !4001)
!5484 = !DILocation(line: 1773, column: 68, scope: !5480)
!5485 = !DILocation(line: 1775, column: 9, scope: !5480)
!5486 = !DILocation(line: 1775, column: 14, scope: !5480)
!5487 = !DILocation(line: 1775, column: 2, scope: !5480)
!5488 = distinct !DISubprogram(name: "frame_vector_pfns", scope: !14, file: !14, line: 1789, type: !5489, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!135, !4001}
!5491 = !DILocalVariable(name: "vec", arg: 1, scope: !5488, file: !14, line: 1789, type: !4001)
!5492 = !DILocation(line: 1789, column: 69, scope: !5488)
!5493 = !DILocation(line: 1791, column: 7, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5488, file: !14, line: 1791, column: 6)
!5495 = !DILocation(line: 1791, column: 12, scope: !5494)
!5496 = !DILocation(line: 1791, column: 6, scope: !5488)
!5497 = !DILocation(line: 1792, column: 24, scope: !5494)
!5498 = !DILocation(line: 1792, column: 3, scope: !5494)
!5499 = !DILocation(line: 1793, column: 27, scope: !5488)
!5500 = !DILocation(line: 1793, column: 32, scope: !5488)
!5501 = !DILocation(line: 1793, column: 26, scope: !5488)
!5502 = !DILocation(line: 1793, column: 9, scope: !5488)
!5503 = !DILocation(line: 1793, column: 2, scope: !5488)
!5504 = distinct !DISubprogram(name: "frame_vector_pages", scope: !14, file: !14, line: 1778, type: !5505, scopeLine: 1779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!136, !4001}
!5507 = !DILocalVariable(name: "vec", arg: 1, scope: !5504, file: !14, line: 1778, type: !4001)
!5508 = !DILocation(line: 1778, column: 69, scope: !5504)
!5509 = !DILocation(line: 1780, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5504, file: !14, line: 1780, column: 6)
!5511 = !DILocation(line: 1780, column: 11, scope: !5510)
!5512 = !DILocation(line: 1780, column: 6, scope: !5504)
!5513 = !DILocalVariable(name: "err", scope: !5514, file: !14, line: 1781, type: !126)
!5514 = distinct !DILexicalBlock(scope: !5510, file: !14, line: 1780, column: 20)
!5515 = !DILocation(line: 1781, column: 7, scope: !5514)
!5516 = !DILocation(line: 1781, column: 35, scope: !5514)
!5517 = !DILocation(line: 1781, column: 13, scope: !5514)
!5518 = !DILocation(line: 1783, column: 7, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5514, file: !14, line: 1783, column: 7)
!5520 = !DILocation(line: 1783, column: 7, scope: !5514)
!5521 = !DILocation(line: 1784, column: 19, scope: !5519)
!5522 = !DILocation(line: 1784, column: 11, scope: !5519)
!5523 = !DILocation(line: 1784, column: 4, scope: !5519)
!5524 = !DILocation(line: 1785, column: 2, scope: !5514)
!5525 = !DILocation(line: 1786, column: 26, scope: !5504)
!5526 = !DILocation(line: 1786, column: 31, scope: !5504)
!5527 = !DILocation(line: 1786, column: 25, scope: !5504)
!5528 = !DILocation(line: 1786, column: 9, scope: !5504)
!5529 = !DILocation(line: 1786, column: 2, scope: !5504)
!5530 = !DILocation(line: 1787, column: 1, scope: !5504)
!5531 = distinct !DISubprogram(name: "refcount_read", scope: !113, file: !113, line: 145, type: !5532, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!7, !5534}
!5534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!5536 = !DILocalVariable(name: "v", arg: 1, scope: !5537, file: !4820, line: 23, type: !5540)
!5537 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4820, file: !4820, line: 23, type: !5538, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!126, !5540}
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!5542 = !DILocation(line: 23, column: 61, scope: !5537, inlinedAt: !5543)
!5543 = distinct !DILocation(line: 28, column: 9, scope: !5544, inlinedAt: !5545)
!5544 = distinct !DISubprogram(name: "atomic_read", scope: !4827, file: !4827, line: 25, type: !5538, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5545 = distinct !DILocation(line: 147, column: 9, scope: !5531)
!5546 = !DILocalVariable(name: "v", arg: 1, scope: !5547, file: !4833, line: 69, type: !4836)
!5547 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4833, file: !4833, line: 69, type: !4834, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5548 = !DILocation(line: 69, column: 73, scope: !5547, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 27, column: 2, scope: !5544, inlinedAt: !5545)
!5550 = !DILocalVariable(name: "size", arg: 2, scope: !5547, file: !4833, line: 69, type: !1122)
!5551 = !DILocation(line: 69, column: 83, scope: !5547, inlinedAt: !5549)
!5552 = !DILocalVariable(name: "v", arg: 1, scope: !5544, file: !4827, line: 25, type: !5540)
!5553 = !DILocation(line: 25, column: 29, scope: !5544, inlinedAt: !5545)
!5554 = !DILocalVariable(name: "r", arg: 1, scope: !5531, file: !113, line: 145, type: !5534)
!5555 = !DILocation(line: 145, column: 60, scope: !5531)
!5556 = !DILocation(line: 147, column: 22, scope: !5531)
!5557 = !DILocation(line: 147, column: 25, scope: !5531)
!5558 = !DILocation(line: 27, column: 25, scope: !5544, inlinedAt: !5545)
!5559 = !DILocation(line: 71, column: 19, scope: !5547, inlinedAt: !5549)
!5560 = !DILocation(line: 71, column: 22, scope: !5547, inlinedAt: !5549)
!5561 = !DILocation(line: 71, column: 2, scope: !5547, inlinedAt: !5549)
!5562 = !DILocation(line: 72, column: 2, scope: !5547, inlinedAt: !5549)
!5563 = !DILocation(line: 28, column: 26, scope: !5544, inlinedAt: !5545)
!5564 = !DILocation(line: 29, column: 9, scope: !5537, inlinedAt: !5543)
!5565 = !DILocation(line: 147, column: 2, scope: !5531)
!5566 = distinct !DISubprogram(name: "kasan_check_read", scope: !4938, file: !4938, line: 34, type: !4939, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5567 = !DILocalVariable(name: "p", arg: 1, scope: !5566, file: !4938, line: 34, type: !4836)
!5568 = !DILocation(line: 34, column: 58, scope: !5566)
!5569 = !DILocalVariable(name: "size", arg: 2, scope: !5566, file: !4938, line: 34, type: !7)
!5570 = !DILocation(line: 34, column: 74, scope: !5566)
!5571 = !DILocation(line: 36, column: 2, scope: !5566)
