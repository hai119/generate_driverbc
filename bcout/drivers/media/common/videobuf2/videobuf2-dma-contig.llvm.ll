; ModuleID = '../bcout/drivers/media/common/videobuf2/videobuf2-dma-contig.llvm.bc'
source_filename = "drivers/media/common/videobuf2/videobuf2-dma-contig.c"
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
%struct.vb2_dc_buf = type { %struct.device*, i8*, i64, i8*, i64, i64, i32, %struct.sg_table*, %struct.frame_vector*, %struct.vb2_vmarea_handler, %struct.refcount_struct, %struct.sg_table*, %struct.dma_buf_attachment* }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x i8*] }
%struct.vb2_vmarea_handler = type { %struct.refcount_struct*, void (i8*)*, i8* }
%struct.dma_buf_export_info = type { i8*, %struct.module*, %struct.dma_buf_ops*, i64, i32, %struct.dma_resv*, i8* }
%struct.vb2_dc_attachment = type { %struct.sg_table, i32 }

@vb2_dma_contig_memops = dso_local constant %struct.vb2_mem_ops { i8* (%struct.device*, i64, i64, i32, i32)* @vb2_dc_alloc, void (i8*)* @vb2_dc_put, %struct.dma_buf* (i8*, i64)* @vb2_dc_get_dmabuf, i8* (%struct.device*, i64, i64, i32)* @vb2_dc_get_userptr, void (i8*)* @vb2_dc_put_userptr, void (i8*)* @vb2_dc_prepare, void (i8*)* @vb2_dc_finish, i8* (%struct.device*, %struct.dma_buf*, i64, i32)* @vb2_dc_attach_dmabuf, void (i8*)* @vb2_dc_detach_dmabuf, i32 (i8*)* @vb2_dc_map_dmabuf, void (i8*)* @vb2_dc_unmap_dmabuf, i8* (i8*)* @vb2_dc_vaddr, i8* (i8*)* @vb2_dc_cookie, i32 (i8*)* @vb2_dc_num_users, i32 (i8*, %struct.vm_area_struct*)* @vb2_dc_mmap }, align 8, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"Failed to set max_seg_size: dma_parms is NULL\0A\00", align 1
@__UNIQUE_ID_description256 = internal constant [83 x i8] c"videobuf2_dma_contig.description=DMA-contig memory handling routines for videobuf2\00", section ".modinfo", align 1, !dbg !3316
@__UNIQUE_ID_author257 = internal constant [60 x i8] c"videobuf2_dma_contig.author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1, !dbg !3321
@__UNIQUE_ID_file258 = internal constant [78 x i8] c"videobuf2_dma_contig.file=drivers/media/common/videobuf2/videobuf2-dma-contig\00", section ".modinfo", align 1, !dbg !3326
@__UNIQUE_ID_license259 = internal constant [33 x i8] c"videobuf2_dma_contig.license=GPL\00", section ".modinfo", align 1, !dbg !3331
@.str.1 = private unnamed_addr constant [54 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-contig.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"dma_alloc_coherent of size %ld failed\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"videobuf2_dma_contig\00", align 1
@vb2_dc_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dc_dmabuf_ops_attach, void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dc_dmabuf_ops_detach, i32 (%struct.dma_buf_attachment*)* null, void (%struct.dma_buf_attachment*)* null, %struct.sg_table* (%struct.dma_buf_attachment*, i32)* @vb2_dc_dmabuf_ops_map, void (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* @vb2_dc_dmabuf_ops_unmap, void (%struct.dma_buf*)* @vb2_dc_dmabuf_ops_release, i32 (%struct.dma_buf*, i32)* @vb2_dc_dmabuf_ops_begin_cpu_access, i32 (%struct.dma_buf*, i32)* @vb2_dc_dmabuf_ops_end_cpu_access, i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @vb2_dc_dmabuf_ops_mmap, i8* (%struct.dma_buf*)* @vb2_dc_dmabuf_ops_vmap, void (%struct.dma_buf*, i8*)* null }, align 8, !dbg !3336
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to alloc sg table\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"failed to get scatterlist from DMA API\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\013failed to allocate sg table\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013failed to initialize sg table\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\013contiguous mapping is too small %lu/%lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\013failed to attach dmabuf\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\013trying to pin a non attached buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\013contiguous chunk is too small %lu/%lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\013No buffer to map\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\013Remapping memory failed, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__UNIQUE_ID_description256, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_author257, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__UNIQUE_ID_file258, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_license259, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_alloc(%struct.device* %dev, i64 %attrs, i64 %size, i32 %dma_dir, i32 %gfp_flags) #0 !dbg !3984 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attrs.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %gfp_flags.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
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
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !3995, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4029, metadata !DIExpression()), !dbg !4032
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4032
  %tobool = icmp ne %struct.device* %0, null, !dbg !4032
  %lnot = xor i1 %tobool, true, !dbg !4032
  %lnot1 = xor i1 %lnot, true, !dbg !4032
  %lnot2 = xor i1 %lnot1, true, !dbg !4032
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4032
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4032
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4033
  %tobool3 = icmp ne i32 %1, 0, !dbg !4033
  %lnot4 = xor i1 %tobool3, true, !dbg !4033
  %lnot6 = xor i1 %lnot4, true, !dbg !4033
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4033
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4033
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4033
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4032

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4033

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4035

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4037

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4035

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 142, i32 2305, i64 12) #8, !dbg !4039, !srcloc !4041
  br label %do.end11, !dbg !4039

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 246) #8, !dbg !4042, !srcloc !4044
  br label %do.body12, !dbg !4035

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4045

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4035

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4035

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4032
  %tobool15 = icmp ne i32 %2, 0, !dbg !4032
  %lnot16 = xor i1 %tobool15, true, !dbg !4032
  %lnot18 = xor i1 %lnot16, true, !dbg !4032
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4032
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4032
  store i64 %conv20, i64* %tmp, align 8, !dbg !4033
  %3 = load i64, i64* %tmp, align 8, !dbg !4032
  %tobool21 = icmp ne i64 %3, 0, !dbg !4047
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4048

if.then22:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -22) #9, !dbg !4049
  store i8* %call, i8** %retval, align 8, !dbg !4050
  br label %return, !dbg !4050

if.end23:                                         ; preds = %if.end
  %call24 = call i8* @kzalloc(i64 120, i32 3264) #9, !dbg !4051
  %4 = bitcast i8* %call24 to %struct.vb2_dc_buf*, !dbg !4051
  store %struct.vb2_dc_buf* %4, %struct.vb2_dc_buf** %buf, align 8, !dbg !4052
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4053
  %tobool25 = icmp ne %struct.vb2_dc_buf* %5, null, !dbg !4053
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !4055

if.then26:                                        ; preds = %if.end23
  %call27 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4056
  store i8* %call27, i8** %retval, align 8, !dbg !4057
  br label %return, !dbg !4057

if.end28:                                         ; preds = %if.end23
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !4058
  %7 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4059
  %attrs29 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %7, i32 0, i32 5, !dbg !4060
  store i64 %6, i64* %attrs29, align 8, !dbg !4061
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4062
  %9 = load i64, i64* %size.addr, align 8, !dbg !4063
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4064
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 4, !dbg !4065
  %11 = load i32, i32* %gfp_flags.addr, align 4, !dbg !4066
  %or = or i32 3264, %11, !dbg !4067
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4068
  %attrs30 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 5, !dbg !4069
  %13 = load i64, i64* %attrs30, align 8, !dbg !4069
  %call31 = call i8* @dma_alloc_attrs(%struct.device* %8, i64 %9, i64* %dma_addr, i32 %or, i64 %13) #9, !dbg !4070
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4071
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %14, i32 0, i32 3, !dbg !4072
  store i8* %call31, i8** %cookie, align 8, !dbg !4073
  %15 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4074
  %cookie32 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %15, i32 0, i32 3, !dbg !4076
  %16 = load i8*, i8** %cookie32, align 8, !dbg !4076
  %tobool33 = icmp ne i8* %16, null, !dbg !4074
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !4077

if.then34:                                        ; preds = %if.end28
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4078
  %18 = load i64, i64* %size.addr, align 8, !dbg !4078
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %18) #10, !dbg !4078
  %19 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4080
  %20 = bitcast %struct.vb2_dc_buf* %19 to i8*, !dbg !4080
  call void @kfree(i8* %20) #9, !dbg !4081
  %call35 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4082
  store i8* %call35, i8** %retval, align 8, !dbg !4083
  br label %return, !dbg !4083

if.end36:                                         ; preds = %if.end28
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4084
  %attrs37 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %21, i32 0, i32 5, !dbg !4086
  %22 = load i64, i64* %attrs37, align 8, !dbg !4086
  %and = and i64 %22, 16, !dbg !4087
  %cmp = icmp eq i64 %and, 0, !dbg !4088
  br i1 %cmp, label %if.then39, label %if.end41, !dbg !4089

if.then39:                                        ; preds = %if.end36
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4090
  %cookie40 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %23, i32 0, i32 3, !dbg !4091
  %24 = load i8*, i8** %cookie40, align 8, !dbg !4091
  %25 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4092
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %25, i32 0, i32 1, !dbg !4093
  store i8* %24, i8** %vaddr, align 8, !dbg !4094
  br label %if.end41, !dbg !4092

if.end41:                                         ; preds = %if.then39, %if.end36
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4095
  %call42 = call %struct.device* @get_device(%struct.device* %26) #9, !dbg !4096
  %27 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4097
  %dev43 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %27, i32 0, i32 0, !dbg !4098
  store %struct.device* %call42, %struct.device** %dev43, align 8, !dbg !4099
  %28 = load i64, i64* %size.addr, align 8, !dbg !4100
  %29 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4101
  %size44 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %29, i32 0, i32 2, !dbg !4102
  store i64 %28, i64* %size44, align 8, !dbg !4103
  %30 = load i32, i32* %dma_dir.addr, align 4, !dbg !4104
  %31 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4105
  %dma_dir45 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %31, i32 0, i32 6, !dbg !4106
  store i32 %30, i32* %dma_dir45, align 8, !dbg !4107
  %32 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4108
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %32, i32 0, i32 10, !dbg !4109
  %33 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4110
  %handler = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %33, i32 0, i32 9, !dbg !4111
  %refcount46 = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler, i32 0, i32 0, !dbg !4112
  store %struct.refcount_struct* %refcount, %struct.refcount_struct** %refcount46, align 8, !dbg !4113
  %34 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4114
  %handler47 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %34, i32 0, i32 9, !dbg !4115
  %put = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler47, i32 0, i32 1, !dbg !4116
  store void (i8*)* @vb2_dc_put, void (i8*)** %put, align 8, !dbg !4117
  %35 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4118
  %36 = bitcast %struct.vb2_dc_buf* %35 to i8*, !dbg !4118
  %37 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4119
  %handler48 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %37, i32 0, i32 9, !dbg !4120
  %arg = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler48, i32 0, i32 2, !dbg !4121
  store i8* %36, i8** %arg, align 8, !dbg !4122
  %38 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4123
  %refcount49 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %38, i32 0, i32 10, !dbg !4124
  call void @refcount_set(%struct.refcount_struct* %refcount49, i32 1) #9, !dbg !4125
  %39 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4126
  %40 = bitcast %struct.vb2_dc_buf* %39 to i8*, !dbg !4126
  store i8* %40, i8** %retval, align 8, !dbg !4127
  br label %return, !dbg !4127

return:                                           ; preds = %if.end41, %if.then34, %if.then26, %if.then22
  %41 = load i8*, i8** %retval, align 8, !dbg !4128
  ret i8* %41, !dbg !4128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_put(i8* %buf_priv) #0 !dbg !4129 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4134
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4134
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4133
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4135
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 10, !dbg !4137
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !4138
  br i1 %call, label %if.end, label %if.then, !dbg !4139

if.then:                                          ; preds = %entry
  br label %return, !dbg !4140

if.end:                                           ; preds = %entry
  %3 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4141
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %3, i32 0, i32 11, !dbg !4143
  %4 = load %struct.sg_table*, %struct.sg_table** %sgt_base, align 8, !dbg !4143
  %tobool = icmp ne %struct.sg_table* %4, null, !dbg !4141
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !4144

if.then1:                                         ; preds = %if.end
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4145
  %sgt_base2 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %5, i32 0, i32 11, !dbg !4147
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt_base2, align 8, !dbg !4147
  call void @sg_free_table(%struct.sg_table* %6) #9, !dbg !4148
  %7 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4149
  %sgt_base3 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %7, i32 0, i32 11, !dbg !4150
  %8 = load %struct.sg_table*, %struct.sg_table** %sgt_base3, align 8, !dbg !4150
  %9 = bitcast %struct.sg_table* %8 to i8*, !dbg !4149
  call void @kfree(i8* %9) #9, !dbg !4151
  br label %if.end4, !dbg !4152

if.end4:                                          ; preds = %if.then1, %if.end
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4153
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 0, !dbg !4154
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4154
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4155
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 2, !dbg !4156
  %13 = load i64, i64* %size, align 8, !dbg !4156
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4157
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %14, i32 0, i32 3, !dbg !4158
  %15 = load i8*, i8** %cookie, align 8, !dbg !4158
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4159
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %16, i32 0, i32 4, !dbg !4160
  %17 = load i64, i64* %dma_addr, align 8, !dbg !4160
  %18 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4161
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %18, i32 0, i32 5, !dbg !4162
  %19 = load i64, i64* %attrs, align 8, !dbg !4162
  call void @dma_free_attrs(%struct.device* %11, i64 %13, i8* %15, i64 %17, i64 %19) #9, !dbg !4163
  %20 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4164
  %dev5 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %20, i32 0, i32 0, !dbg !4165
  %21 = load %struct.device*, %struct.device** %dev5, align 8, !dbg !4165
  call void @put_device(%struct.device* %21) #9, !dbg !4166
  %22 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4167
  %23 = bitcast %struct.vb2_dc_buf* %22 to i8*, !dbg !4167
  call void @kfree(i8* %23) #9, !dbg !4168
  br label %return, !dbg !4169

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !4169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_buf* @vb2_dc_get_dmabuf(i8* %buf_priv, i64 %flags) #0 !dbg !4170 {
entry:
  %retval = alloca %struct.dma_buf*, align 8
  %buf_priv.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %dbuf = alloca %struct.dma_buf*, align 8
  %exp_info = alloca %struct.dma_buf_export_info, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4171, metadata !DIExpression()), !dbg !4172
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4175, metadata !DIExpression()), !dbg !4176
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4177
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4177
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4176
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf, metadata !4178, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.declare(metadata %struct.dma_buf_export_info* %exp_info, metadata !4180, metadata !DIExpression()), !dbg !4190
  %2 = bitcast %struct.dma_buf_export_info* %exp_info to i8*, !dbg !4190
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 56, i1 false), !dbg !4190
  %3 = bitcast i8* %2 to %struct.dma_buf_export_info*, !dbg !4190
  %4 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %3, i32 0, i32 0, !dbg !4190
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8** %4, align 8, !dbg !4190
  %ops = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 2, !dbg !4191
  store %struct.dma_buf_ops* @vb2_dc_dmabuf_ops, %struct.dma_buf_ops** %ops, align 8, !dbg !4192
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4193
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %5, i32 0, i32 2, !dbg !4194
  %6 = load i64, i64* %size, align 8, !dbg !4194
  %size1 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 3, !dbg !4195
  store i64 %6, i64* %size1, align 8, !dbg !4196
  %7 = load i64, i64* %flags.addr, align 8, !dbg !4197
  %conv = trunc i64 %7 to i32, !dbg !4197
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 4, !dbg !4198
  store i32 %conv, i32* %flags2, align 8, !dbg !4199
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4200
  %9 = bitcast %struct.vb2_dc_buf* %8 to i8*, !dbg !4200
  %priv = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 6, !dbg !4201
  store i8* %9, i8** %priv, align 8, !dbg !4202
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4203
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 11, !dbg !4205
  %11 = load %struct.sg_table*, %struct.sg_table** %sgt_base, align 8, !dbg !4205
  %tobool = icmp ne %struct.sg_table* %11, null, !dbg !4203
  br i1 %tobool, label %if.end, label %if.then, !dbg !4206

if.then:                                          ; preds = %entry
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4207
  %call = call %struct.sg_table* @vb2_dc_get_base_sgt(%struct.vb2_dc_buf* %12) #9, !dbg !4208
  %13 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4209
  %sgt_base3 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %13, i32 0, i32 11, !dbg !4210
  store %struct.sg_table* %call, %struct.sg_table** %sgt_base3, align 8, !dbg !4211
  br label %if.end, !dbg !4209

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4212, metadata !DIExpression()), !dbg !4215
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4215
  %sgt_base4 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %14, i32 0, i32 11, !dbg !4215
  %15 = load %struct.sg_table*, %struct.sg_table** %sgt_base4, align 8, !dbg !4215
  %tobool5 = icmp ne %struct.sg_table* %15, null, !dbg !4215
  %lnot = xor i1 %tobool5, true, !dbg !4215
  %lnot6 = xor i1 %lnot, true, !dbg !4215
  %lnot7 = xor i1 %lnot6, true, !dbg !4215
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4215
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4215
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !4216
  %tobool8 = icmp ne i32 %16, 0, !dbg !4216
  %lnot9 = xor i1 %tobool8, true, !dbg !4216
  %lnot11 = xor i1 %lnot9, true, !dbg !4216
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4216
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4216
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !4216
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !4215

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !4216

do.body:                                          ; preds = %if.then15
  br label %do.body16, !dbg !4218

do.body16:                                        ; preds = %do.body
  br label %do.end, !dbg !4220

do.end:                                           ; preds = %do.body16
  br label %do.body17, !dbg !4218

do.body17:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 408, i32 2305, i64 12) #8, !dbg !4222, !srcloc !4224
  br label %do.end18, !dbg !4222

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 247) #8, !dbg !4225, !srcloc !4227
  br label %do.body19, !dbg !4218

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4228

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !4218

do.end21:                                         ; preds = %do.end20
  br label %if.end22, !dbg !4218

if.end22:                                         ; preds = %do.end21, %if.end
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !4215
  %tobool23 = icmp ne i32 %17, 0, !dbg !4215
  %lnot24 = xor i1 %tobool23, true, !dbg !4215
  %lnot26 = xor i1 %lnot24, true, !dbg !4215
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4215
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !4215
  store i64 %conv28, i64* %tmp, align 8, !dbg !4216
  %18 = load i64, i64* %tmp, align 8, !dbg !4215
  %tobool29 = icmp ne i64 %18, 0, !dbg !4230
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4231

if.then30:                                        ; preds = %if.end22
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4232
  br label %return, !dbg !4232

if.end31:                                         ; preds = %if.end22
  %call32 = call %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info* %exp_info) #9, !dbg !4233
  store %struct.dma_buf* %call32, %struct.dma_buf** %dbuf, align 8, !dbg !4234
  %19 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4235
  %20 = bitcast %struct.dma_buf* %19 to i8*, !dbg !4235
  %call33 = call zeroext i1 @IS_ERR(i8* %20) #9, !dbg !4237
  br i1 %call33, label %if.then34, label %if.end35, !dbg !4238

if.then34:                                        ; preds = %if.end31
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4239
  br label %return, !dbg !4239

if.end35:                                         ; preds = %if.end31
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4240
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %21, i32 0, i32 10, !dbg !4241
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !4242
  %22 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4243
  store %struct.dma_buf* %22, %struct.dma_buf** %retval, align 8, !dbg !4244
  br label %return, !dbg !4244

return:                                           ; preds = %if.end35, %if.then34, %if.then30
  %23 = load %struct.dma_buf*, %struct.dma_buf** %retval, align 8, !dbg !4245
  ret %struct.dma_buf* %23, !dbg !4245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_get_userptr(%struct.device* %dev, i64 %vaddr, i64 %size, i32 %dma_dir) #0 !dbg !4246 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %vaddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %vec = alloca %struct.frame_vector*, align 8
  %offset = alloca i32, align 4
  %n_pages = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %sgt = alloca %struct.sg_table*, align 8
  %contig_size = alloca i64, align 8
  %dma_align = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %nums = alloca i64*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i64 %vaddr, i64* %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vaddr.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata i32* %n_pages, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4265, metadata !DIExpression()), !dbg !4266
  store i32 0, i32* %ret, align 4, !dbg !4266
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.declare(metadata i64* %contig_size, metadata !4269, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.declare(metadata i64* %dma_align, metadata !4271, metadata !DIExpression()), !dbg !4272
  %call = call i32 @dma_get_cache_alignment() #9, !dbg !4273
  %conv = sext i32 %call to i64, !dbg !4273
  store i64 %conv, i64* %dma_align, align 8, !dbg !4272
  %0 = load i64, i64* %vaddr.addr, align 8, !dbg !4274
  %1 = load i64, i64* %size.addr, align 8, !dbg !4274
  %or = or i64 %0, %1, !dbg !4274
  %2 = load i64, i64* %dma_align, align 8, !dbg !4274
  %sub = sub i64 %2, 1, !dbg !4274
  %and = and i64 %or, %sub, !dbg !4274
  %cmp = icmp eq i64 %and, 0, !dbg !4274
  br i1 %cmp, label %if.end, label %if.then, !dbg !4276

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !4277
  %3 = load i32, i32* %tmp, align 4, !dbg !4281
  %call2 = call i8* @ERR_PTR(i64 -22) #9, !dbg !4282
  store i8* %call2, i8** %retval, align 8, !dbg !4283
  br label %return, !dbg !4283

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !4284
  %tobool = icmp ne i64 %4, 0, !dbg !4284
  br i1 %tobool, label %if.end6, label %if.then3, !dbg !4286

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %tmp4, align 4, !dbg !4287
  %5 = load i32, i32* %tmp4, align 4, !dbg !4291
  %call5 = call i8* @ERR_PTR(i64 -22) #9, !dbg !4292
  store i8* %call5, i8** %retval, align 8, !dbg !4293
  br label %return, !dbg !4293

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4294, metadata !DIExpression()), !dbg !4297
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4297
  %tobool7 = icmp ne %struct.device* %6, null, !dbg !4297
  %lnot = xor i1 %tobool7, true, !dbg !4297
  %lnot8 = xor i1 %lnot, true, !dbg !4297
  %lnot9 = xor i1 %lnot8, true, !dbg !4297
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4297
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4297
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4298
  %tobool10 = icmp ne i32 %7, 0, !dbg !4298
  %lnot11 = xor i1 %tobool10, true, !dbg !4298
  %lnot13 = xor i1 %lnot11, true, !dbg !4298
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !4298
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !4298
  %tobool16 = icmp ne i64 %conv15, 0, !dbg !4298
  br i1 %tobool16, label %if.then17, label %if.end24, !dbg !4297

if.then17:                                        ; preds = %if.end6
  br label %do.body, !dbg !4298

do.body:                                          ; preds = %if.then17
  br label %do.body18, !dbg !4300

do.body18:                                        ; preds = %do.body
  br label %do.end, !dbg !4302

do.end:                                           ; preds = %do.body18
  br label %do.body19, !dbg !4300

do.body19:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 479, i32 2305, i64 12) #8, !dbg !4304, !srcloc !4306
  br label %do.end20, !dbg !4304

do.end20:                                         ; preds = %do.body19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 249) #8, !dbg !4307, !srcloc !4309
  br label %do.body21, !dbg !4300

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4310

do.end22:                                         ; preds = %do.body21
  br label %do.end23, !dbg !4300

do.end23:                                         ; preds = %do.end22
  br label %if.end24, !dbg !4300

if.end24:                                         ; preds = %do.end23, %if.end6
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !4297
  %tobool26 = icmp ne i32 %8, 0, !dbg !4297
  %lnot27 = xor i1 %tobool26, true, !dbg !4297
  %lnot29 = xor i1 %lnot27, true, !dbg !4297
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !4297
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !4297
  store i64 %conv31, i64* %tmp25, align 8, !dbg !4298
  %9 = load i64, i64* %tmp25, align 8, !dbg !4297
  %tobool32 = icmp ne i64 %9, 0, !dbg !4312
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !4313

if.then33:                                        ; preds = %if.end24
  %call34 = call i8* @ERR_PTR(i64 -22) #9, !dbg !4314
  store i8* %call34, i8** %retval, align 8, !dbg !4315
  br label %return, !dbg !4315

if.end35:                                         ; preds = %if.end24
  %call36 = call i8* @kzalloc(i64 120, i32 3264) #9, !dbg !4316
  %10 = bitcast i8* %call36 to %struct.vb2_dc_buf*, !dbg !4316
  store %struct.vb2_dc_buf* %10, %struct.vb2_dc_buf** %buf, align 8, !dbg !4317
  %11 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4318
  %tobool37 = icmp ne %struct.vb2_dc_buf* %11, null, !dbg !4318
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !4320

if.then38:                                        ; preds = %if.end35
  %call39 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4321
  store i8* %call39, i8** %retval, align 8, !dbg !4322
  br label %return, !dbg !4322

if.end40:                                         ; preds = %if.end35
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4323
  %13 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4324
  %dev41 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %13, i32 0, i32 0, !dbg !4325
  store %struct.device* %12, %struct.device** %dev41, align 8, !dbg !4326
  %14 = load i32, i32* %dma_dir.addr, align 4, !dbg !4327
  %15 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4328
  %dma_dir42 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %15, i32 0, i32 6, !dbg !4329
  store i32 %14, i32* %dma_dir42, align 8, !dbg !4330
  %16 = load i64, i64* %vaddr.addr, align 8, !dbg !4331
  %and43 = and i64 %16, 4095, !dbg !4331
  %and44 = and i64 %and43, 4294967295, !dbg !4331
  %conv45 = trunc i64 %and44 to i32, !dbg !4331
  store i32 %conv45, i32* %offset, align 4, !dbg !4332
  %17 = load i64, i64* %vaddr.addr, align 8, !dbg !4333
  %18 = load i64, i64* %size.addr, align 8, !dbg !4334
  %call46 = call %struct.frame_vector* @vb2_create_framevec(i64 %17, i64 %18) #9, !dbg !4335
  store %struct.frame_vector* %call46, %struct.frame_vector** %vec, align 8, !dbg !4336
  %19 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4337
  %20 = bitcast %struct.frame_vector* %19 to i8*, !dbg !4337
  %call47 = call zeroext i1 @IS_ERR(i8* %20) #9, !dbg !4339
  br i1 %call47, label %if.then48, label %if.end51, !dbg !4340

if.then48:                                        ; preds = %if.end40
  %21 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4341
  %22 = bitcast %struct.frame_vector* %21 to i8*, !dbg !4341
  %call49 = call i64 @PTR_ERR(i8* %22) #9, !dbg !4343
  %conv50 = trunc i64 %call49 to i32, !dbg !4343
  store i32 %conv50, i32* %ret, align 4, !dbg !4344
  br label %fail_buf, !dbg !4345

if.end51:                                         ; preds = %if.end40
  %23 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4346
  %24 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4347
  %vec52 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %24, i32 0, i32 8, !dbg !4348
  store %struct.frame_vector* %23, %struct.frame_vector** %vec52, align 8, !dbg !4349
  %25 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4350
  %call53 = call i32 @frame_vector_count(%struct.frame_vector* %25) #9, !dbg !4351
  store i32 %call53, i32* %n_pages, align 4, !dbg !4352
  %26 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4353
  %call54 = call i32 @frame_vector_to_pages(%struct.frame_vector* %26) #9, !dbg !4354
  store i32 %call54, i32* %ret, align 4, !dbg !4355
  %27 = load i32, i32* %ret, align 4, !dbg !4356
  %cmp55 = icmp slt i32 %27, 0, !dbg !4358
  br i1 %cmp55, label %if.then57, label %if.end78, !dbg !4359

if.then57:                                        ; preds = %if.end51
  call void @llvm.dbg.declare(metadata i64** %nums, metadata !4360, metadata !DIExpression()), !dbg !4362
  %28 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4363
  %call58 = call i64* @frame_vector_pfns(%struct.frame_vector* %28) #9, !dbg !4364
  store i64* %call58, i64** %nums, align 8, !dbg !4362
  store i32 1, i32* %i, align 4, !dbg !4365
  br label %for.cond, !dbg !4367

for.cond:                                         ; preds = %for.inc, %if.then57
  %29 = load i32, i32* %i, align 4, !dbg !4368
  %30 = load i32, i32* %n_pages, align 4, !dbg !4370
  %cmp59 = icmp slt i32 %29, %30, !dbg !4371
  br i1 %cmp59, label %for.body, label %for.end, !dbg !4372

for.body:                                         ; preds = %for.cond
  %31 = load i64*, i64** %nums, align 8, !dbg !4373
  %32 = load i32, i32* %i, align 4, !dbg !4375
  %sub61 = sub i32 %32, 1, !dbg !4376
  %idxprom = sext i32 %sub61 to i64, !dbg !4373
  %arrayidx = getelementptr i64, i64* %31, i64 %idxprom, !dbg !4373
  %33 = load i64, i64* %arrayidx, align 8, !dbg !4373
  %add = add i64 %33, 1, !dbg !4377
  %34 = load i64*, i64** %nums, align 8, !dbg !4378
  %35 = load i32, i32* %i, align 4, !dbg !4379
  %idxprom62 = sext i32 %35 to i64, !dbg !4378
  %arrayidx63 = getelementptr i64, i64* %34, i64 %idxprom62, !dbg !4378
  %36 = load i64, i64* %arrayidx63, align 8, !dbg !4378
  %cmp64 = icmp ne i64 %add, %36, !dbg !4380
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !4381

if.then66:                                        ; preds = %for.body
  br label %fail_pfnvec, !dbg !4382

if.end67:                                         ; preds = %for.body
  br label %for.inc, !dbg !4383

for.inc:                                          ; preds = %if.end67
  %37 = load i32, i32* %i, align 4, !dbg !4384
  %inc = add i32 %37, 1, !dbg !4384
  store i32 %inc, i32* %i, align 4, !dbg !4384
  br label %for.cond, !dbg !4385, !llvm.loop !4386

for.end:                                          ; preds = %for.cond
  %38 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4388
  %dev68 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %38, i32 0, i32 0, !dbg !4389
  %39 = load %struct.device*, %struct.device** %dev68, align 8, !dbg !4389
  %40 = load i64*, i64** %nums, align 8, !dbg !4390
  %arrayidx69 = getelementptr i64, i64* %40, i64 0, !dbg !4390
  %41 = load i64, i64* %arrayidx69, align 8, !dbg !4390
  %shl = shl i64 %41, 12, !dbg !4390
  %42 = load i64, i64* %size.addr, align 8, !dbg !4391
  %43 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4392
  %dma_dir70 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %43, i32 0, i32 6, !dbg !4393
  %44 = load i32, i32* %dma_dir70, align 8, !dbg !4393
  %call71 = call i64 @dma_map_resource(%struct.device* %39, i64 %shl, i64 %42, i32 %44, i64 0) #9, !dbg !4394
  %45 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4395
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %45, i32 0, i32 4, !dbg !4396
  store i64 %call71, i64* %dma_addr, align 8, !dbg !4397
  %46 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4398
  %dev72 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %46, i32 0, i32 0, !dbg !4400
  %47 = load %struct.device*, %struct.device** %dev72, align 8, !dbg !4400
  %48 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4401
  %dma_addr73 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %48, i32 0, i32 4, !dbg !4402
  %49 = load i64, i64* %dma_addr73, align 8, !dbg !4402
  %call74 = call i32 @dma_mapping_error(%struct.device* %47, i64 %49) #9, !dbg !4403
  %tobool75 = icmp ne i32 %call74, 0, !dbg !4403
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !4404

if.then76:                                        ; preds = %for.end
  store i32 -12, i32* %ret, align 4, !dbg !4405
  br label %fail_pfnvec, !dbg !4407

if.end77:                                         ; preds = %for.end
  br label %out, !dbg !4408

if.end78:                                         ; preds = %if.end51
  %call79 = call i8* @kzalloc(i64 16, i32 3264) #9, !dbg !4409
  %50 = bitcast i8* %call79 to %struct.sg_table*, !dbg !4409
  store %struct.sg_table* %50, %struct.sg_table** %sgt, align 8, !dbg !4410
  %51 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4411
  %tobool80 = icmp ne %struct.sg_table* %51, null, !dbg !4411
  br i1 %tobool80, label %if.end83, label %if.then81, !dbg !4413

if.then81:                                        ; preds = %if.end78
  %call82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !4414
  store i32 -12, i32* %ret, align 4, !dbg !4416
  br label %fail_pfnvec, !dbg !4417

if.end83:                                         ; preds = %if.end78
  %52 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4418
  %53 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4419
  %call84 = call %struct.page** @frame_vector_pages(%struct.frame_vector* %53) #9, !dbg !4420
  %54 = load i32, i32* %n_pages, align 4, !dbg !4421
  %55 = load i32, i32* %offset, align 4, !dbg !4422
  %56 = load i64, i64* %size.addr, align 8, !dbg !4423
  %call85 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %52, %struct.page** %call84, i32 %54, i32 %55, i64 %56, i32 3264) #9, !dbg !4424
  store i32 %call85, i32* %ret, align 4, !dbg !4425
  %57 = load i32, i32* %ret, align 4, !dbg !4426
  %tobool86 = icmp ne i32 %57, 0, !dbg !4426
  br i1 %tobool86, label %if.then87, label %if.end89, !dbg !4428

if.then87:                                        ; preds = %if.end83
  %call88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !4429
  br label %fail_sgt, !dbg !4431

if.end89:                                         ; preds = %if.end83
  %58 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4432
  %dev90 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %58, i32 0, i32 0, !dbg !4434
  %59 = load %struct.device*, %struct.device** %dev90, align 8, !dbg !4434
  %60 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4435
  %61 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4436
  %dma_dir91 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %61, i32 0, i32 6, !dbg !4437
  %62 = load i32, i32* %dma_dir91, align 8, !dbg !4437
  %call92 = call i32 @dma_map_sgtable(%struct.device* %59, %struct.sg_table* %60, i32 %62, i64 32) #9, !dbg !4438
  %tobool93 = icmp ne i32 %call92, 0, !dbg !4438
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !4439

if.then94:                                        ; preds = %if.end89
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !4440
  store i32 -5, i32* %ret, align 4, !dbg !4442
  br label %fail_sgt_init, !dbg !4443

if.end96:                                         ; preds = %if.end89
  %63 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4444
  %call97 = call i64 @vb2_dc_get_contiguous_size(%struct.sg_table* %63) #9, !dbg !4445
  store i64 %call97, i64* %contig_size, align 8, !dbg !4446
  %64 = load i64, i64* %contig_size, align 8, !dbg !4447
  %65 = load i64, i64* %size.addr, align 8, !dbg !4449
  %cmp98 = icmp ult i64 %64, %65, !dbg !4450
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !4451

if.then100:                                       ; preds = %if.end96
  %66 = load i64, i64* %contig_size, align 8, !dbg !4452
  %67 = load i64, i64* %size.addr, align 8, !dbg !4452
  %call101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %66, i64 %67) #10, !dbg !4452
  store i32 -14, i32* %ret, align 4, !dbg !4454
  br label %fail_map_sg, !dbg !4455

if.end102:                                        ; preds = %if.end96
  %68 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4456
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %68, i32 0, i32 0, !dbg !4456
  %69 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !4456
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 3, !dbg !4456
  %70 = load i64, i64* %dma_address, align 8, !dbg !4456
  %71 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4457
  %dma_addr103 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %71, i32 0, i32 4, !dbg !4458
  store i64 %70, i64* %dma_addr103, align 8, !dbg !4459
  %72 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4460
  %73 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4461
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %73, i32 0, i32 7, !dbg !4462
  store %struct.sg_table* %72, %struct.sg_table** %dma_sgt, align 8, !dbg !4463
  br label %out, !dbg !4461

out:                                              ; preds = %if.end102, %if.end77
  call void @llvm.dbg.label(metadata !4464), !dbg !4465
  %74 = load i64, i64* %size.addr, align 8, !dbg !4466
  %75 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4467
  %size104 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %75, i32 0, i32 2, !dbg !4468
  store i64 %74, i64* %size104, align 8, !dbg !4469
  %76 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4470
  %77 = bitcast %struct.vb2_dc_buf* %76 to i8*, !dbg !4470
  store i8* %77, i8** %retval, align 8, !dbg !4471
  br label %return, !dbg !4471

fail_map_sg:                                      ; preds = %if.then100
  call void @llvm.dbg.label(metadata !4472), !dbg !4473
  %78 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4474
  %dev105 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %78, i32 0, i32 0, !dbg !4475
  %79 = load %struct.device*, %struct.device** %dev105, align 8, !dbg !4475
  %80 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4476
  %81 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4477
  %dma_dir106 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %81, i32 0, i32 6, !dbg !4478
  %82 = load i32, i32* %dma_dir106, align 8, !dbg !4478
  call void @dma_unmap_sgtable(%struct.device* %79, %struct.sg_table* %80, i32 %82, i64 32) #9, !dbg !4479
  br label %fail_sgt_init, !dbg !4479

fail_sgt_init:                                    ; preds = %fail_map_sg, %if.then94
  call void @llvm.dbg.label(metadata !4480), !dbg !4481
  %83 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4482
  call void @sg_free_table(%struct.sg_table* %83) #9, !dbg !4483
  br label %fail_sgt, !dbg !4483

fail_sgt:                                         ; preds = %fail_sgt_init, %if.then87
  call void @llvm.dbg.label(metadata !4484), !dbg !4485
  %84 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4486
  %85 = bitcast %struct.sg_table* %84 to i8*, !dbg !4486
  call void @kfree(i8* %85) #9, !dbg !4487
  br label %fail_pfnvec, !dbg !4487

fail_pfnvec:                                      ; preds = %fail_sgt, %if.then81, %if.then76, %if.then66
  call void @llvm.dbg.label(metadata !4488), !dbg !4489
  %86 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4490
  call void @vb2_destroy_framevec(%struct.frame_vector* %86) #9, !dbg !4491
  br label %fail_buf, !dbg !4491

fail_buf:                                         ; preds = %fail_pfnvec, %if.then48
  call void @llvm.dbg.label(metadata !4492), !dbg !4493
  %87 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4494
  %88 = bitcast %struct.vb2_dc_buf* %87 to i8*, !dbg !4494
  call void @kfree(i8* %88) #9, !dbg !4495
  %89 = load i32, i32* %ret, align 4, !dbg !4496
  %conv107 = sext i32 %89 to i64, !dbg !4496
  %call108 = call i8* @ERR_PTR(i64 %conv107) #9, !dbg !4497
  store i8* %call108, i8** %retval, align 8, !dbg !4498
  br label %return, !dbg !4498

return:                                           ; preds = %fail_buf, %out, %if.then38, %if.then33, %if.then3, %if.then
  %90 = load i8*, i8** %retval, align 8, !dbg !4499
  ret i8* %90, !dbg !4499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_put_userptr(i8* %buf_priv) #0 !dbg !4500 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %i = alloca i32, align 4
  %pages = alloca %struct.page**, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4505
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4505
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4506, metadata !DIExpression()), !dbg !4507
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4508
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 7, !dbg !4509
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4509
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4507
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.declare(metadata %struct.page*** %pages, metadata !4512, metadata !DIExpression()), !dbg !4513
  %4 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4514
  %tobool = icmp ne %struct.sg_table* %4, null, !dbg !4514
  br i1 %tobool, label %if.then, label %if.else, !dbg !4516

if.then:                                          ; preds = %entry
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4517
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %5, i32 0, i32 0, !dbg !4519
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4519
  %7 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4520
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4521
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %8, i32 0, i32 6, !dbg !4522
  %9 = load i32, i32* %dma_dir, align 8, !dbg !4522
  call void @dma_unmap_sgtable(%struct.device* %6, %struct.sg_table* %7, i32 %9, i64 32) #9, !dbg !4523
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4524
  %vec = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 8, !dbg !4525
  %11 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4525
  %call = call %struct.page** @frame_vector_pages(%struct.frame_vector* %11) #9, !dbg !4526
  store %struct.page** %call, %struct.page*** %pages, align 8, !dbg !4527
  br label %do.body, !dbg !4528

do.body:                                          ; preds = %if.then
  %12 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4529
  %13 = bitcast %struct.page** %12 to i8*, !dbg !4529
  %call1 = call zeroext i1 @IS_ERR(i8* %13) #9, !dbg !4529
  %lnot = xor i1 %call1, true, !dbg !4529
  %lnot2 = xor i1 %lnot, true, !dbg !4529
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4529
  %conv = sext i32 %lnot.ext to i64, !dbg !4529
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4529
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4532

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !4529

do.body5:                                         ; preds = %if.then4
  br label %do.body6, !dbg !4533

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !4535

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !4533

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 441, i32 0, i64 12) #8, !dbg !4537, !srcloc !4539
  br label %do.end8, !dbg !4537

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4533

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 248) #8, !dbg !4540, !srcloc !4543
  unreachable, !dbg !4544

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !4533

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !4533

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !4532

do.end12:                                         ; preds = %if.end
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4545
  %dma_dir13 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %14, i32 0, i32 6, !dbg !4547
  %15 = load i32, i32* %dma_dir13, align 8, !dbg !4547
  %cmp = icmp eq i32 %15, 2, !dbg !4548
  br i1 %cmp, label %if.then18, label %lor.lhs.false, !dbg !4549

lor.lhs.false:                                    ; preds = %do.end12
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4550
  %dma_dir15 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %16, i32 0, i32 6, !dbg !4551
  %17 = load i32, i32* %dma_dir15, align 8, !dbg !4551
  %cmp16 = icmp eq i32 %17, 0, !dbg !4552
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !4553

if.then18:                                        ; preds = %lor.lhs.false, %do.end12
  store i32 0, i32* %i, align 4, !dbg !4554
  br label %for.cond, !dbg !4556

for.cond:                                         ; preds = %for.inc, %if.then18
  %18 = load i32, i32* %i, align 4, !dbg !4557
  %19 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4559
  %vec19 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %19, i32 0, i32 8, !dbg !4560
  %20 = load %struct.frame_vector*, %struct.frame_vector** %vec19, align 8, !dbg !4560
  %call20 = call i32 @frame_vector_count(%struct.frame_vector* %20) #9, !dbg !4561
  %cmp21 = icmp ult i32 %18, %call20, !dbg !4562
  br i1 %cmp21, label %for.body, label %for.end, !dbg !4563

for.body:                                         ; preds = %for.cond
  %21 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4564
  %22 = load i32, i32* %i, align 4, !dbg !4565
  %idxprom = sext i32 %22 to i64, !dbg !4564
  %arrayidx = getelementptr %struct.page*, %struct.page** %21, i64 %idxprom, !dbg !4564
  %23 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4564
  %call23 = call i32 @set_page_dirty_lock(%struct.page* %23) #9, !dbg !4566
  br label %for.inc, !dbg !4566

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !4567
  %inc = add i32 %24, 1, !dbg !4567
  store i32 %inc, i32* %i, align 4, !dbg !4567
  br label %for.cond, !dbg !4568, !llvm.loop !4569

for.end:                                          ; preds = %for.cond
  br label %if.end24, !dbg !4570

if.end24:                                         ; preds = %for.end, %lor.lhs.false
  %25 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4571
  call void @sg_free_table(%struct.sg_table* %25) #9, !dbg !4572
  %26 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4573
  %27 = bitcast %struct.sg_table* %26 to i8*, !dbg !4573
  call void @kfree(i8* %27) #9, !dbg !4574
  br label %if.end27, !dbg !4575

if.else:                                          ; preds = %entry
  %28 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4576
  %dev25 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %28, i32 0, i32 0, !dbg !4578
  %29 = load %struct.device*, %struct.device** %dev25, align 8, !dbg !4578
  %30 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4579
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %30, i32 0, i32 4, !dbg !4580
  %31 = load i64, i64* %dma_addr, align 8, !dbg !4580
  %32 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4581
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %32, i32 0, i32 2, !dbg !4582
  %33 = load i64, i64* %size, align 8, !dbg !4582
  %34 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4583
  %dma_dir26 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %34, i32 0, i32 6, !dbg !4584
  %35 = load i32, i32* %dma_dir26, align 8, !dbg !4584
  call void @dma_unmap_resource(%struct.device* %29, i64 %31, i64 %33, i32 %35, i64 0) #9, !dbg !4585
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end24
  %36 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4586
  %vec28 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %36, i32 0, i32 8, !dbg !4587
  %37 = load %struct.frame_vector*, %struct.frame_vector** %vec28, align 8, !dbg !4587
  call void @vb2_destroy_framevec(%struct.frame_vector* %37) #9, !dbg !4588
  %38 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4589
  %39 = bitcast %struct.vb2_dc_buf* %38 to i8*, !dbg !4589
  call void @kfree(i8* %39) #9, !dbg !4590
  ret void, !dbg !4591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_prepare(i8* %buf_priv) #0 !dbg !4592 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4595, metadata !DIExpression()), !dbg !4596
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4597
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4597
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4596
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4598, metadata !DIExpression()), !dbg !4599
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4600
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 7, !dbg !4601
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4601
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4599
  %4 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4602
  %tobool = icmp ne %struct.sg_table* %4, null, !dbg !4602
  br i1 %tobool, label %if.end, label %if.then, !dbg !4604

if.then:                                          ; preds = %entry
  br label %return, !dbg !4605

if.end:                                           ; preds = %entry
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4606
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %5, i32 0, i32 0, !dbg !4607
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4607
  %7 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4608
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4609
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %8, i32 0, i32 6, !dbg !4610
  %9 = load i32, i32* %dma_dir, align 8, !dbg !4610
  call void @dma_sync_sgtable_for_device(%struct.device* %6, %struct.sg_table* %7, i32 %9) #9, !dbg !4611
  br label %return, !dbg !4612

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_finish(i8* %buf_priv) #0 !dbg !4613 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4616, metadata !DIExpression()), !dbg !4617
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4618
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4618
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4617
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4619, metadata !DIExpression()), !dbg !4620
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4621
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 7, !dbg !4622
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4622
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4620
  %4 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4623
  %tobool = icmp ne %struct.sg_table* %4, null, !dbg !4623
  br i1 %tobool, label %if.end, label %if.then, !dbg !4625

if.then:                                          ; preds = %entry
  br label %return, !dbg !4626

if.end:                                           ; preds = %entry
  %5 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4627
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %5, i32 0, i32 0, !dbg !4628
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4628
  %7 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4629
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4630
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %8, i32 0, i32 6, !dbg !4631
  %9 = load i32, i32* %dma_dir, align 8, !dbg !4631
  call void @dma_sync_sgtable_for_cpu(%struct.device* %6, %struct.sg_table* %7, i32 %9) #9, !dbg !4632
  br label %return, !dbg !4633

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_attach_dmabuf(%struct.device* %dev, %struct.dma_buf* %dbuf, i64 %size, i32 %dma_dir) #0 !dbg !4634 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %dba = alloca %struct.dma_buf_attachment*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4639, metadata !DIExpression()), !dbg !4640
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %dba, metadata !4645, metadata !DIExpression()), !dbg !4646
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4647
  %size1 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 0, !dbg !4649
  %1 = load i64, i64* %size1, align 8, !dbg !4649
  %2 = load i64, i64* %size.addr, align 8, !dbg !4650
  %cmp = icmp ult i64 %1, %2, !dbg !4651
  br i1 %cmp, label %if.then, label %if.end, !dbg !4652

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -14) #9, !dbg !4653
  store i8* %call, i8** %retval, align 8, !dbg !4654
  br label %return, !dbg !4654

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4655, metadata !DIExpression()), !dbg !4658
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4658
  %tobool = icmp ne %struct.device* %3, null, !dbg !4658
  %lnot = xor i1 %tobool, true, !dbg !4658
  %lnot2 = xor i1 %lnot, true, !dbg !4658
  %lnot3 = xor i1 %lnot2, true, !dbg !4658
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4658
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4658
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4659
  %tobool4 = icmp ne i32 %4, 0, !dbg !4659
  %lnot5 = xor i1 %tobool4, true, !dbg !4659
  %lnot7 = xor i1 %lnot5, true, !dbg !4659
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4659
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4659
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4659
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !4658

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !4659

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !4661

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !4663

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !4661

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 665, i32 2305, i64 12) #8, !dbg !4665, !srcloc !4667
  br label %do.end13, !dbg !4665

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 255) #8, !dbg !4668, !srcloc !4670
  br label %do.body14, !dbg !4661

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4671

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !4661

do.end16:                                         ; preds = %do.end15
  br label %if.end17, !dbg !4661

if.end17:                                         ; preds = %do.end16, %if.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4658
  %tobool18 = icmp ne i32 %5, 0, !dbg !4658
  %lnot19 = xor i1 %tobool18, true, !dbg !4658
  %lnot21 = xor i1 %lnot19, true, !dbg !4658
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4658
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4658
  store i64 %conv23, i64* %tmp, align 8, !dbg !4659
  %6 = load i64, i64* %tmp, align 8, !dbg !4658
  %tobool24 = icmp ne i64 %6, 0, !dbg !4673
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4674

if.then25:                                        ; preds = %if.end17
  %call26 = call i8* @ERR_PTR(i64 -22) #9, !dbg !4675
  store i8* %call26, i8** %retval, align 8, !dbg !4676
  br label %return, !dbg !4676

if.end27:                                         ; preds = %if.end17
  %call28 = call i8* @kzalloc(i64 120, i32 3264) #9, !dbg !4677
  %7 = bitcast i8* %call28 to %struct.vb2_dc_buf*, !dbg !4677
  store %struct.vb2_dc_buf* %7, %struct.vb2_dc_buf** %buf, align 8, !dbg !4678
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4679
  %tobool29 = icmp ne %struct.vb2_dc_buf* %8, null, !dbg !4679
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !4681

if.then30:                                        ; preds = %if.end27
  %call31 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4682
  store i8* %call31, i8** %retval, align 8, !dbg !4683
  br label %return, !dbg !4683

if.end32:                                         ; preds = %if.end27
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4684
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4685
  %dev33 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 0, !dbg !4686
  store %struct.device* %9, %struct.device** %dev33, align 8, !dbg !4687
  %11 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4688
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4689
  %dev34 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 0, !dbg !4690
  %13 = load %struct.device*, %struct.device** %dev34, align 8, !dbg !4690
  %call35 = call %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf* %11, %struct.device* %13) #9, !dbg !4691
  store %struct.dma_buf_attachment* %call35, %struct.dma_buf_attachment** %dba, align 8, !dbg !4692
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4693
  %15 = bitcast %struct.dma_buf_attachment* %14 to i8*, !dbg !4693
  %call36 = call zeroext i1 @IS_ERR(i8* %15) #9, !dbg !4695
  br i1 %call36, label %if.then37, label %if.end39, !dbg !4696

if.then37:                                        ; preds = %if.end32
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !4697
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4699
  %17 = bitcast %struct.vb2_dc_buf* %16 to i8*, !dbg !4699
  call void @kfree(i8* %17) #9, !dbg !4700
  %18 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4701
  %19 = bitcast %struct.dma_buf_attachment* %18 to i8*, !dbg !4701
  store i8* %19, i8** %retval, align 8, !dbg !4702
  br label %return, !dbg !4702

if.end39:                                         ; preds = %if.end32
  %20 = load i32, i32* %dma_dir.addr, align 4, !dbg !4703
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4704
  %dma_dir40 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %21, i32 0, i32 6, !dbg !4705
  store i32 %20, i32* %dma_dir40, align 8, !dbg !4706
  %22 = load i64, i64* %size.addr, align 8, !dbg !4707
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4708
  %size41 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %23, i32 0, i32 2, !dbg !4709
  store i64 %22, i64* %size41, align 8, !dbg !4710
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4711
  %25 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4712
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %25, i32 0, i32 12, !dbg !4713
  store %struct.dma_buf_attachment* %24, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4714
  %26 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4715
  %27 = bitcast %struct.vb2_dc_buf* %26 to i8*, !dbg !4715
  store i8* %27, i8** %retval, align 8, !dbg !4716
  br label %return, !dbg !4716

return:                                           ; preds = %if.end39, %if.then37, %if.then30, %if.then25, %if.then
  %28 = load i8*, i8** %retval, align 8, !dbg !4717
  ret i8* %28, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_detach_dmabuf(i8* %mem_priv) #0 !dbg !4718 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4721, metadata !DIExpression()), !dbg !4722
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4723
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4723
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4722
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4724, metadata !DIExpression()), !dbg !4727
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4727
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 4, !dbg !4727
  %3 = load i64, i64* %dma_addr, align 8, !dbg !4727
  %tobool = icmp ne i64 %3, 0, !dbg !4727
  %lnot = xor i1 %tobool, true, !dbg !4727
  %lnot1 = xor i1 %lnot, true, !dbg !4727
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4727
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4727
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4728
  %tobool2 = icmp ne i32 %4, 0, !dbg !4728
  %lnot3 = xor i1 %tobool2, true, !dbg !4728
  %lnot5 = xor i1 %lnot3, true, !dbg !4728
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4728
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4728
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4728
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4727

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4728

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4730

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4732

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4730

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 648, i32 2305, i64 12) #8, !dbg !4734, !srcloc !4736
  br label %do.end10, !dbg !4734

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 254) #8, !dbg !4737, !srcloc !4739
  br label %do.body11, !dbg !4730

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4740

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4730

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4730

if.end:                                           ; preds = %do.end13, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4727
  %tobool14 = icmp ne i32 %5, 0, !dbg !4727
  %lnot15 = xor i1 %tobool14, true, !dbg !4727
  %lnot17 = xor i1 %lnot15, true, !dbg !4727
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4727
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4727
  store i64 %conv19, i64* %tmp, align 8, !dbg !4728
  %6 = load i64, i64* %tmp, align 8, !dbg !4727
  %tobool20 = icmp ne i64 %6, 0, !dbg !4742
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4743

if.then21:                                        ; preds = %if.end
  %7 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4744
  %8 = bitcast %struct.vb2_dc_buf* %7 to i8*, !dbg !4744
  call void @vb2_dc_unmap_dmabuf(i8* %8) #9, !dbg !4745
  br label %if.end22, !dbg !4745

if.end22:                                         ; preds = %if.then21, %if.end
  %9 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4746
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %9, i32 0, i32 12, !dbg !4747
  %10 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4747
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %10, i32 0, i32 0, !dbg !4748
  %11 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4748
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4749
  %db_attach23 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 12, !dbg !4750
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach23, align 8, !dbg !4750
  call void @dma_buf_detach(%struct.dma_buf* %11, %struct.dma_buf_attachment* %13) #9, !dbg !4751
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4752
  %15 = bitcast %struct.vb2_dc_buf* %14 to i8*, !dbg !4752
  call void @kfree(i8* %15) #9, !dbg !4753
  ret void, !dbg !4754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_map_dmabuf(i8* %mem_priv) #0 !dbg !4755 {
entry:
  %retval = alloca i32, align 4
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %contig_size = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4760
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4760
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4759
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4761, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.declare(metadata i64* %contig_size, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4765, metadata !DIExpression()), !dbg !4768
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4768
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 12, !dbg !4768
  %3 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4768
  %tobool = icmp ne %struct.dma_buf_attachment* %3, null, !dbg !4768
  %lnot = xor i1 %tobool, true, !dbg !4768
  %lnot1 = xor i1 %lnot, true, !dbg !4768
  %lnot2 = xor i1 %lnot1, true, !dbg !4768
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4768
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4768
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4769
  %tobool3 = icmp ne i32 %4, 0, !dbg !4769
  %lnot4 = xor i1 %tobool3, true, !dbg !4769
  %lnot6 = xor i1 %lnot4, true, !dbg !4769
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4769
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4769
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4769
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4768

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4771

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4773

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4771

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 585, i32 2305, i64 12) #8, !dbg !4775, !srcloc !4777
  br label %do.end11, !dbg !4775

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 250) #8, !dbg !4778, !srcloc !4780
  br label %do.body12, !dbg !4771

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4781

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4771

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4771

if.end:                                           ; preds = %do.end14, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4768
  %tobool15 = icmp ne i32 %5, 0, !dbg !4768
  %lnot16 = xor i1 %tobool15, true, !dbg !4768
  %lnot18 = xor i1 %lnot16, true, !dbg !4768
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4768
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4768
  store i64 %conv20, i64* %tmp, align 8, !dbg !4769
  %6 = load i64, i64* %tmp, align 8, !dbg !4768
  %tobool21 = icmp ne i64 %6, 0, !dbg !4783
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4784

if.then22:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !4785
  store i32 -22, i32* %retval, align 4, !dbg !4787
  br label %return, !dbg !4787

if.end23:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on24, metadata !4788, metadata !DIExpression()), !dbg !4791
  %7 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4791
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %7, i32 0, i32 7, !dbg !4791
  %8 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4791
  %tobool25 = icmp ne %struct.sg_table* %8, null, !dbg !4791
  %lnot26 = xor i1 %tobool25, true, !dbg !4791
  %lnot28 = xor i1 %lnot26, true, !dbg !4791
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4791
  store i32 %lnot.ext29, i32* %__ret_warn_on24, align 4, !dbg !4791
  %9 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4792
  %tobool30 = icmp ne i32 %9, 0, !dbg !4792
  %lnot31 = xor i1 %tobool30, true, !dbg !4792
  %lnot33 = xor i1 %lnot31, true, !dbg !4792
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !4792
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !4792
  %tobool36 = icmp ne i64 %conv35, 0, !dbg !4792
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !4791

if.then37:                                        ; preds = %if.end23
  br label %do.body38, !dbg !4792

do.body38:                                        ; preds = %if.then37
  br label %do.body39, !dbg !4794

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4796

do.end40:                                         ; preds = %do.body39
  br label %do.body41, !dbg !4794

do.body41:                                        ; preds = %do.end40
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 590, i32 2305, i64 12) #8, !dbg !4798, !srcloc !4800
  br label %do.end42, !dbg !4798

do.end42:                                         ; preds = %do.body41
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 251) #8, !dbg !4801, !srcloc !4803
  br label %do.body43, !dbg !4794

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !4804

do.end44:                                         ; preds = %do.body43
  br label %do.end45, !dbg !4794

do.end45:                                         ; preds = %do.end44
  br label %if.end46, !dbg !4794

if.end46:                                         ; preds = %do.end45, %if.end23
  %10 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4791
  %tobool48 = icmp ne i32 %10, 0, !dbg !4791
  %lnot49 = xor i1 %tobool48, true, !dbg !4791
  %lnot51 = xor i1 %lnot49, true, !dbg !4791
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !4791
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !4791
  store i64 %conv53, i64* %tmp47, align 8, !dbg !4792
  %11 = load i64, i64* %tmp47, align 8, !dbg !4791
  %tobool54 = icmp ne i64 %11, 0, !dbg !4806
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !4807

if.then55:                                        ; preds = %if.end46
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !4808
  store i32 0, i32* %retval, align 4, !dbg !4810
  br label %return, !dbg !4810

if.end57:                                         ; preds = %if.end46
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4811
  %db_attach58 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 12, !dbg !4812
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach58, align 8, !dbg !4812
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4813
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %14, i32 0, i32 6, !dbg !4814
  %15 = load i32, i32* %dma_dir, align 8, !dbg !4814
  %call59 = call %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment* %13, i32 %15) #9, !dbg !4815
  store %struct.sg_table* %call59, %struct.sg_table** %sgt, align 8, !dbg !4816
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4817
  %17 = bitcast %struct.sg_table* %16 to i8*, !dbg !4817
  %call60 = call zeroext i1 @IS_ERR(i8* %17) #9, !dbg !4819
  br i1 %call60, label %if.then61, label %if.end63, !dbg !4820

if.then61:                                        ; preds = %if.end57
  %call62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !4821
  store i32 -22, i32* %retval, align 4, !dbg !4823
  br label %return, !dbg !4823

if.end63:                                         ; preds = %if.end57
  %18 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4824
  %call64 = call i64 @vb2_dc_get_contiguous_size(%struct.sg_table* %18) #9, !dbg !4825
  store i64 %call64, i64* %contig_size, align 8, !dbg !4826
  %19 = load i64, i64* %contig_size, align 8, !dbg !4827
  %20 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4829
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %20, i32 0, i32 2, !dbg !4830
  %21 = load i64, i64* %size, align 8, !dbg !4830
  %cmp = icmp ult i64 %19, %21, !dbg !4831
  br i1 %cmp, label %if.then66, label %if.end71, !dbg !4832

if.then66:                                        ; preds = %if.end63
  %22 = load i64, i64* %contig_size, align 8, !dbg !4833
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4833
  %size67 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %23, i32 0, i32 2, !dbg !4833
  %24 = load i64, i64* %size67, align 8, !dbg !4833
  %call68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i64 %22, i64 %24) #10, !dbg !4833
  %25 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4835
  %db_attach69 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %25, i32 0, i32 12, !dbg !4836
  %26 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach69, align 8, !dbg !4836
  %27 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4837
  %28 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4838
  %dma_dir70 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %28, i32 0, i32 6, !dbg !4839
  %29 = load i32, i32* %dma_dir70, align 8, !dbg !4839
  call void @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %26, %struct.sg_table* %27, i32 %29) #9, !dbg !4840
  store i32 -14, i32* %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

if.end71:                                         ; preds = %if.end63
  %30 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4842
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %30, i32 0, i32 0, !dbg !4842
  %31 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !4842
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 3, !dbg !4842
  %32 = load i64, i64* %dma_address, align 8, !dbg !4842
  %33 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4843
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %33, i32 0, i32 4, !dbg !4844
  store i64 %32, i64* %dma_addr, align 8, !dbg !4845
  %34 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4846
  %35 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4847
  %dma_sgt72 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %35, i32 0, i32 7, !dbg !4848
  store %struct.sg_table* %34, %struct.sg_table** %dma_sgt72, align 8, !dbg !4849
  %36 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4850
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %36, i32 0, i32 1, !dbg !4851
  store i8* null, i8** %vaddr, align 8, !dbg !4852
  store i32 0, i32* %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

return:                                           ; preds = %if.end71, %if.then66, %if.then61, %if.then55, %if.then22
  %37 = load i32, i32* %retval, align 4, !dbg !4854
  ret i32 %37, !dbg !4854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_unmap_dmabuf(i8* %mem_priv) #0 !dbg !4855 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4860
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4860
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4859
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4861, metadata !DIExpression()), !dbg !4862
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4863
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 7, !dbg !4864
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4864
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4862
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4865, metadata !DIExpression()), !dbg !4868
  %4 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4868
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %4, i32 0, i32 12, !dbg !4868
  %5 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4868
  %tobool = icmp ne %struct.dma_buf_attachment* %5, null, !dbg !4868
  %lnot = xor i1 %tobool, true, !dbg !4868
  %lnot1 = xor i1 %lnot, true, !dbg !4868
  %lnot2 = xor i1 %lnot1, true, !dbg !4868
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4868
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4868
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4869
  %tobool3 = icmp ne i32 %6, 0, !dbg !4869
  %lnot4 = xor i1 %tobool3, true, !dbg !4869
  %lnot6 = xor i1 %lnot4, true, !dbg !4869
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4869
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4869
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4869
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4868

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4869

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4871

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4873

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4871

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 623, i32 2305, i64 12) #8, !dbg !4875, !srcloc !4877
  br label %do.end11, !dbg !4875

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #8, !dbg !4878, !srcloc !4880
  br label %do.body12, !dbg !4871

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4881

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4871

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4871

if.end:                                           ; preds = %do.end14, %entry
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4868
  %tobool15 = icmp ne i32 %7, 0, !dbg !4868
  %lnot16 = xor i1 %tobool15, true, !dbg !4868
  %lnot18 = xor i1 %lnot16, true, !dbg !4868
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4868
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4868
  store i64 %conv20, i64* %tmp, align 8, !dbg !4869
  %8 = load i64, i64* %tmp, align 8, !dbg !4868
  %tobool21 = icmp ne i64 %8, 0, !dbg !4883
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4884

if.then22:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !4885
  br label %return, !dbg !4887

if.end23:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on24, metadata !4888, metadata !DIExpression()), !dbg !4891
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4891
  %tobool25 = icmp ne %struct.sg_table* %9, null, !dbg !4891
  %lnot26 = xor i1 %tobool25, true, !dbg !4891
  %lnot28 = xor i1 %lnot26, true, !dbg !4891
  %lnot30 = xor i1 %lnot28, true, !dbg !4891
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4891
  store i32 %lnot.ext31, i32* %__ret_warn_on24, align 4, !dbg !4891
  %10 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4892
  %tobool32 = icmp ne i32 %10, 0, !dbg !4892
  %lnot33 = xor i1 %tobool32, true, !dbg !4892
  %lnot35 = xor i1 %lnot33, true, !dbg !4892
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !4892
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !4892
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !4892
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !4891

if.then39:                                        ; preds = %if.end23
  br label %do.body40, !dbg !4892

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !4894

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4896

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !4894

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 628, i32 2305, i64 12) #8, !dbg !4898, !srcloc !4900
  br label %do.end44, !dbg !4898

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 253) #8, !dbg !4901, !srcloc !4903
  br label %do.body45, !dbg !4894

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4904

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !4894

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !4894

if.end48:                                         ; preds = %do.end47, %if.end23
  %11 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4891
  %tobool50 = icmp ne i32 %11, 0, !dbg !4891
  %lnot51 = xor i1 %tobool50, true, !dbg !4891
  %lnot53 = xor i1 %lnot51, true, !dbg !4891
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !4891
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !4891
  store i64 %conv55, i64* %tmp49, align 8, !dbg !4892
  %12 = load i64, i64* %tmp49, align 8, !dbg !4891
  %tobool56 = icmp ne i64 %12, 0, !dbg !4906
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !4907

if.then57:                                        ; preds = %if.end48
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4908
  br label %return, !dbg !4910

if.end59:                                         ; preds = %if.end48
  %13 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4911
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %13, i32 0, i32 1, !dbg !4913
  %14 = load i8*, i8** %vaddr, align 8, !dbg !4913
  %tobool60 = icmp ne i8* %14, null, !dbg !4911
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !4914

if.then61:                                        ; preds = %if.end59
  %15 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4915
  %db_attach62 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %15, i32 0, i32 12, !dbg !4917
  %16 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach62, align 8, !dbg !4917
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %16, i32 0, i32 0, !dbg !4918
  %17 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4918
  %18 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4919
  %vaddr63 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %18, i32 0, i32 1, !dbg !4920
  %19 = load i8*, i8** %vaddr63, align 8, !dbg !4920
  call void @dma_buf_vunmap(%struct.dma_buf* %17, i8* %19) #9, !dbg !4921
  %20 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4922
  %vaddr64 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %20, i32 0, i32 1, !dbg !4923
  store i8* null, i8** %vaddr64, align 8, !dbg !4924
  br label %if.end65, !dbg !4925

if.end65:                                         ; preds = %if.then61, %if.end59
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4926
  %db_attach66 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %21, i32 0, i32 12, !dbg !4927
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach66, align 8, !dbg !4927
  %23 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4928
  %24 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4929
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %24, i32 0, i32 6, !dbg !4930
  %25 = load i32, i32* %dma_dir, align 8, !dbg !4930
  call void @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %22, %struct.sg_table* %23, i32 %25) #9, !dbg !4931
  %26 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4932
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %26, i32 0, i32 4, !dbg !4933
  store i64 0, i64* %dma_addr, align 8, !dbg !4934
  %27 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4935
  %dma_sgt67 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %27, i32 0, i32 7, !dbg !4936
  store %struct.sg_table* null, %struct.sg_table** %dma_sgt67, align 8, !dbg !4937
  br label %return, !dbg !4938

return:                                           ; preds = %if.end65, %if.then57, %if.then22
  ret void, !dbg !4938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_vaddr(i8* %buf_priv) #0 !dbg !4939 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4942, metadata !DIExpression()), !dbg !4943
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4944
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4944
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4943
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4945
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 1, !dbg !4947
  %3 = load i8*, i8** %vaddr, align 8, !dbg !4947
  %tobool = icmp ne i8* %3, null, !dbg !4945
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4948

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4949
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %4, i32 0, i32 12, !dbg !4950
  %5 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4950
  %tobool1 = icmp ne %struct.dma_buf_attachment* %5, null, !dbg !4949
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4951

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4952
  %db_attach2 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %6, i32 0, i32 12, !dbg !4953
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach2, align 8, !dbg !4953
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 0, !dbg !4954
  %8 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4954
  %call = call i8* @dma_buf_vmap(%struct.dma_buf* %8) #9, !dbg !4955
  %9 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4956
  %vaddr3 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %9, i32 0, i32 1, !dbg !4957
  store i8* %call, i8** %vaddr3, align 8, !dbg !4958
  br label %if.end, !dbg !4956

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4959
  %vaddr4 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 1, !dbg !4960
  %11 = load i8*, i8** %vaddr4, align 8, !dbg !4960
  ret i8* %11, !dbg !4961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_cookie(i8* %buf_priv) #0 !dbg !4962 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4967
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4967
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4966
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4968
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 4, !dbg !4969
  %3 = bitcast i64* %dma_addr to i8*, !dbg !4970
  ret i8* %3, !dbg !4971
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_num_users(i8* %buf_priv) #0 !dbg !4972 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4973, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4975, metadata !DIExpression()), !dbg !4976
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4977
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4977
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4976
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4978
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %2, i32 0, i32 10, !dbg !4979
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #9, !dbg !4980
  ret i32 %call, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_mmap(i8* %buf_priv, %struct.vm_area_struct* %vma) #0 !dbg !4982 {
entry:
  %retval = alloca i32, align 4
  %buf_priv.addr = alloca i8*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4989
  %1 = bitcast i8* %0 to %struct.vb2_dc_buf*, !dbg !4989
  store %struct.vb2_dc_buf* %1, %struct.vb2_dc_buf** %buf, align 8, !dbg !4988
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4990, metadata !DIExpression()), !dbg !4991
  %2 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4992
  %tobool = icmp ne %struct.vb2_dc_buf* %2, null, !dbg !4992
  br i1 %tobool, label %if.end, label %if.then, !dbg !4994

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !4995
  store i32 -22, i32* %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

if.end:                                           ; preds = %entry
  %3 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !4998
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %3, i32 0, i32 0, !dbg !4999
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4999
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5000
  %6 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5001
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %6, i32 0, i32 3, !dbg !5002
  %7 = load i8*, i8** %cookie, align 8, !dbg !5002
  %8 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5003
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %8, i32 0, i32 4, !dbg !5004
  %9 = load i64, i64* %dma_addr, align 8, !dbg !5004
  %10 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5005
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %10, i32 0, i32 2, !dbg !5006
  %11 = load i64, i64* %size, align 8, !dbg !5006
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5007
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 5, !dbg !5008
  %13 = load i64, i64* %attrs, align 8, !dbg !5008
  %call1 = call i32 @dma_mmap_attrs(%struct.device* %4, %struct.vm_area_struct* %5, i8* %7, i64 %9, i64 %11, i64 %13) #9, !dbg !5009
  store i32 %call1, i32* %ret, align 4, !dbg !5010
  %14 = load i32, i32* %ret, align 4, !dbg !5011
  %tobool2 = icmp ne i32 %14, 0, !dbg !5011
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5013

if.then3:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !5014
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %15) #10, !dbg !5014
  %16 = load i32, i32* %ret, align 4, !dbg !5016
  store i32 %16, i32* %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

if.end5:                                          ; preds = %if.end
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5018
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 8, !dbg !5019
  %18 = load i64, i64* %vm_flags, align 8, !dbg !5020
  %or = or i64 %18, 67371008, !dbg !5020
  store i64 %or, i64* %vm_flags, align 8, !dbg !5020
  %19 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5021
  %handler = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %19, i32 0, i32 9, !dbg !5022
  %20 = bitcast %struct.vb2_vmarea_handler* %handler to i8*, !dbg !5023
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5024
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 15, !dbg !5025
  store i8* %20, i8** %vm_private_data, align 8, !dbg !5026
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5027
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 12, !dbg !5028
  store %struct.vm_operations_struct* @vb2_common_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8, !dbg !5029
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5030
  %vm_ops6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 12, !dbg !5031
  %24 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops6, align 8, !dbg !5031
  %open = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %24, i32 0, i32 0, !dbg !5032
  %25 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open, align 8, !dbg !5032
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5033
  call void %25(%struct.vm_area_struct* %26) #9, !dbg !5030
  store i32 0, i32* %tmp, align 4, !dbg !5034
  %27 = load i32, i32* %tmp, align 4, !dbg !5037
  store i32 0, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5039
  ret i32 %28, !dbg !5039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %dev, i32 %size) #0 !dbg !5040 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5047
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 20, !dbg !5049
  %1 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8, !dbg !5049
  %tobool = icmp ne %struct.device_dma_parameters* %1, null, !dbg !5047
  br i1 %tobool, label %if.end, label %if.then, !dbg !5050

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5051
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)) #10, !dbg !5051
  store i32 -19, i32* %retval, align 4, !dbg !5053
  br label %return, !dbg !5053

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5054
  %call = call i32 @dma_get_max_seg_size(%struct.device* %3) #9, !dbg !5056
  %4 = load i32, i32* %size.addr, align 4, !dbg !5057
  %cmp = icmp ult i32 %call, %4, !dbg !5058
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !5059

if.then1:                                         ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5060
  %6 = load i32, i32* %size.addr, align 4, !dbg !5061
  %call2 = call i32 @dma_set_max_seg_size(%struct.device* %5, i32 %6) #9, !dbg !5062
  store i32 %call2, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5064
  br label %return, !dbg !5064

return:                                           ; preds = %if.end3, %if.then1, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5065
  ret i32 %7, !dbg !5065
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_get_max_seg_size(%struct.device* %dev) #0 !dbg !5066 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5072
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 20, !dbg !5074
  %1 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8, !dbg !5074
  %tobool = icmp ne %struct.device_dma_parameters* %1, null, !dbg !5072
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5075

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5076
  %dma_parms1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 20, !dbg !5077
  %3 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms1, align 8, !dbg !5077
  %max_segment_size = getelementptr inbounds %struct.device_dma_parameters, %struct.device_dma_parameters* %3, i32 0, i32 0, !dbg !5078
  %4 = load i32, i32* %max_segment_size, align 8, !dbg !5078
  %tobool2 = icmp ne i32 %4, 0, !dbg !5076
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5079

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5080
  %dma_parms3 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 20, !dbg !5081
  %6 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms3, align 8, !dbg !5081
  %max_segment_size4 = getelementptr inbounds %struct.device_dma_parameters, %struct.device_dma_parameters* %6, i32 0, i32 0, !dbg !5082
  %7 = load i32, i32* %max_segment_size4, align 8, !dbg !5082
  store i32 %7, i32* %retval, align 4, !dbg !5083
  br label %return, !dbg !5083

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 65536, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5085
  ret i32 %8, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_set_max_seg_size(%struct.device* %dev, i32 %size) #0 !dbg !5086 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5091
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 20, !dbg !5093
  %1 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8, !dbg !5093
  %tobool = icmp ne %struct.device_dma_parameters* %1, null, !dbg !5091
  br i1 %tobool, label %if.then, label %if.end, !dbg !5094

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4, !dbg !5095
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5097
  %dma_parms1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 20, !dbg !5098
  %4 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms1, align 8, !dbg !5098
  %max_segment_size = getelementptr inbounds %struct.device_dma_parameters, %struct.device_dma_parameters* %4, i32 0, i32 0, !dbg !5099
  store i32 %2, i32* %max_segment_size, align 8, !dbg !5100
  store i32 0, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end:                                           ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5103
  ret i32 %5, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5104 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load i64, i64* %error.addr, align 8, !dbg !5110
  %1 = inttoptr i64 %0 to i8*, !dbg !5111
  ret i8* %1, !dbg !5112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5113 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5116, metadata !DIExpression()), !dbg !5120
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5126, metadata !DIExpression()), !dbg !5127
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5128, metadata !DIExpression()), !dbg !5129
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5130, metadata !DIExpression()), !dbg !5131
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5132, metadata !DIExpression()), !dbg !5136
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5138, metadata !DIExpression()), !dbg !5142
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5144, metadata !DIExpression()), !dbg !5148
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5153, metadata !DIExpression()), !dbg !5154
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5155, metadata !DIExpression()), !dbg !5156
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5157, metadata !DIExpression()), !dbg !5158
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5159, metadata !DIExpression()), !dbg !5160
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5161, metadata !DIExpression()), !dbg !5162
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5163, metadata !DIExpression()), !dbg !5164
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5165, metadata !DIExpression()), !dbg !5166
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5167, metadata !DIExpression()), !dbg !5168
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load i64, i64* %size.addr, align 8, !dbg !5173
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5174
  %or = or i32 %1, 256, !dbg !5175
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5176
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !5177
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5178

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5179
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5180
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5181

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5182
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5183
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5184
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5185
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5162
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5186
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5187
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5188
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5189
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5190
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5191
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5192
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5192
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5192
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5192
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5192
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5193
  br label %kmalloc.exit, !dbg !5193

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5194
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5195
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5195
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5197

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5198
  br label %kmalloc_index.exit.i, !dbg !5198

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5199
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5201
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5202

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5203
  br label %kmalloc_index.exit.i, !dbg !5203

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5204
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5206
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5207

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5208
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5209
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5210

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5211
  br label %kmalloc_index.exit.i, !dbg !5211

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5212
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5214
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5215

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5216
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5217
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5218

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5219
  br label %kmalloc_index.exit.i, !dbg !5219

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5220
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5222
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5223

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5224
  br label %kmalloc_index.exit.i, !dbg !5224

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5225
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5227
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5228

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5229
  br label %kmalloc_index.exit.i, !dbg !5229

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5230
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5232
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5233

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5234
  br label %kmalloc_index.exit.i, !dbg !5234

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5235
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5237
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5238

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5239
  br label %kmalloc_index.exit.i, !dbg !5239

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5240
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5242
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5243

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5244
  br label %kmalloc_index.exit.i, !dbg !5244

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5247
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5248

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5249
  br label %kmalloc_index.exit.i, !dbg !5249

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5250
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5252
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5253

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5254
  br label %kmalloc_index.exit.i, !dbg !5254

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5255
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5257
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5258

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5259
  br label %kmalloc_index.exit.i, !dbg !5259

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5260
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5262
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5263

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5264
  br label %kmalloc_index.exit.i, !dbg !5264

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5265
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5267
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5268

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5269
  br label %kmalloc_index.exit.i, !dbg !5269

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5270
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5272
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5273

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5274
  br label %kmalloc_index.exit.i, !dbg !5274

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5275
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5277
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5278

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5279
  br label %kmalloc_index.exit.i, !dbg !5279

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5280
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5282
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5283

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5284
  br label %kmalloc_index.exit.i, !dbg !5284

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5285
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5287
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5288

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5289
  br label %kmalloc_index.exit.i, !dbg !5289

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5290
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5292
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5293

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5294
  br label %kmalloc_index.exit.i, !dbg !5294

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5295
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5297
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5298

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5299
  br label %kmalloc_index.exit.i, !dbg !5299

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5300
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5302
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5303

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5304
  br label %kmalloc_index.exit.i, !dbg !5304

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5305
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5307
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5308

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5309
  br label %kmalloc_index.exit.i, !dbg !5309

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5310
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5312
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5313

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5314
  br label %kmalloc_index.exit.i, !dbg !5314

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5315
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5317
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5318

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5319
  br label %kmalloc_index.exit.i, !dbg !5319

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5320
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5322
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5323

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5324
  br label %kmalloc_index.exit.i, !dbg !5324

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5325
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5327
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5328

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5329
  br label %kmalloc_index.exit.i, !dbg !5329

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5330
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5332
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5333

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5334
  br label %kmalloc_index.exit.i, !dbg !5334

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5335
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5337
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5338

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5339
  br label %kmalloc_index.exit.i, !dbg !5339

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5340, !srcloc !5343
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #8, !dbg !5344, !srcloc !5347
  unreachable, !dbg !5348

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5349
  store i32 %45, i32* %index.i, align 4, !dbg !5350
  %46 = load i32, i32* %index.i, align 4, !dbg !5351
  %tobool.i = icmp ne i32 %46, 0, !dbg !5351
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5353

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5354
  br label %kmalloc.exit, !dbg !5354

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5355
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5356
  %and.i.i = and i32 %48, 17, !dbg !5356
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5356
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5356
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5356
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5356
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5358

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5359
  br label %kmalloc_type.exit.i, !dbg !5359

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5360
  %and2.i.i = and i32 %49, 1, !dbg !5361
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5360
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5360
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5360
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5362
  br label %kmalloc_type.exit.i, !dbg !5362

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5363
  %idxprom.i = zext i32 %51 to i64, !dbg !5364
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5364
  %52 = load i32, i32* %index.i, align 4, !dbg !5365
  %idxprom6.i = zext i32 %52 to i64, !dbg !5364
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5364
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5364
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5366
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5367
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5368
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5369
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5370
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5370
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5370
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5370
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5370
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5131
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5371
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5372
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5373
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5374
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5375
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5376
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5377
  store i8* %62, i8** %retval.i, align 8, !dbg !5378
  br label %kmalloc.exit, !dbg !5378

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5379
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5380
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5381
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5381
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5381
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5381
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5381
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5382
  br label %kmalloc.exit, !dbg !5382

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5383
  ret i8* %65, !dbg !5384
}

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5385 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5388, metadata !DIExpression()), !dbg !5394
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5399, metadata !DIExpression()), !dbg !5400
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5401, metadata !DIExpression()), !dbg !5409
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5411, metadata !DIExpression()), !dbg !5412
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5413, metadata !DIExpression()), !dbg !5414
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5415, metadata !DIExpression()), !dbg !5416
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5421
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5422
  %1 = load i32, i32* %n.addr, align 4, !dbg !5423
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5424
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5424
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5425
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5426
  %conv.i.i = trunc i64 %5 to i32, !dbg !5426
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5427
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5428
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5428
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !5428
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5429
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5430
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5431
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5431
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5431
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5431
  ret void, !dbg !5433
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5434 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5438, metadata !DIExpression()), !dbg !5443
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5445, metadata !DIExpression()), !dbg !5446
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load i64, i64* %size.addr, align 8, !dbg !5449
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5451
  br i1 %1, label %if.then, label %if.end447, !dbg !5452

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5453
  %tobool = icmp ne i64 %2, 0, !dbg !5453
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5456

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5458
  %cmp = icmp ult i64 %3, 4096, !dbg !5460
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5461

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub = sub i64 %4, 1, !dbg !5463
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5463
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5463

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub4 = sub i64 %6, 1, !dbg !5463
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5463
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5463

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub6 = sub i64 %8, 1, !dbg !5463
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5463
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5463

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5463

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub9 = sub i64 %9, 1, !dbg !5463
  %and = and i64 %sub9, -9223372036854775808, !dbg !5463
  %tobool10 = icmp ne i64 %and, 0, !dbg !5463
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5463

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5463

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub13 = sub i64 %10, 1, !dbg !5463
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5463
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5463
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5463

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5463

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub18 = sub i64 %11, 1, !dbg !5463
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5463
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5463
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5463

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5463

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub23 = sub i64 %12, 1, !dbg !5463
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5463
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5463
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5463

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5463

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub28 = sub i64 %13, 1, !dbg !5463
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5463
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5463
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5463

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5463

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub33 = sub i64 %14, 1, !dbg !5463
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5463
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5463
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5463

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5463

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub38 = sub i64 %15, 1, !dbg !5463
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5463
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5463
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5463

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5463

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub43 = sub i64 %16, 1, !dbg !5463
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5463
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5463
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5463

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5463

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub48 = sub i64 %17, 1, !dbg !5463
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5463
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5463
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5463

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5463

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub53 = sub i64 %18, 1, !dbg !5463
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5463
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5463
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5463

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5463

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub58 = sub i64 %19, 1, !dbg !5463
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5463
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5463
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5463

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5463

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub63 = sub i64 %20, 1, !dbg !5463
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5463
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5463
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5463

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5463

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub68 = sub i64 %21, 1, !dbg !5463
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5463
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5463
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5463

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5463

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub73 = sub i64 %22, 1, !dbg !5463
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5463
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5463
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5463

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5463

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub78 = sub i64 %23, 1, !dbg !5463
  %and79 = and i64 %sub78, 562949953421312, !dbg !5463
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5463
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5463

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5463

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub83 = sub i64 %24, 1, !dbg !5463
  %and84 = and i64 %sub83, 281474976710656, !dbg !5463
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5463
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5463

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5463

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub88 = sub i64 %25, 1, !dbg !5463
  %and89 = and i64 %sub88, 140737488355328, !dbg !5463
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5463
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5463

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5463

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub93 = sub i64 %26, 1, !dbg !5463
  %and94 = and i64 %sub93, 70368744177664, !dbg !5463
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5463
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5463

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5463

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub98 = sub i64 %27, 1, !dbg !5463
  %and99 = and i64 %sub98, 35184372088832, !dbg !5463
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5463
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5463

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5463

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub103 = sub i64 %28, 1, !dbg !5463
  %and104 = and i64 %sub103, 17592186044416, !dbg !5463
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5463
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5463

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5463

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub108 = sub i64 %29, 1, !dbg !5463
  %and109 = and i64 %sub108, 8796093022208, !dbg !5463
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5463
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5463

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5463

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub113 = sub i64 %30, 1, !dbg !5463
  %and114 = and i64 %sub113, 4398046511104, !dbg !5463
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5463
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5463

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5463

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub118 = sub i64 %31, 1, !dbg !5463
  %and119 = and i64 %sub118, 2199023255552, !dbg !5463
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5463
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5463

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5463

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub123 = sub i64 %32, 1, !dbg !5463
  %and124 = and i64 %sub123, 1099511627776, !dbg !5463
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5463
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5463

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5463

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub128 = sub i64 %33, 1, !dbg !5463
  %and129 = and i64 %sub128, 549755813888, !dbg !5463
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5463
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5463

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5463

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub133 = sub i64 %34, 1, !dbg !5463
  %and134 = and i64 %sub133, 274877906944, !dbg !5463
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5463
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5463

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5463

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub138 = sub i64 %35, 1, !dbg !5463
  %and139 = and i64 %sub138, 137438953472, !dbg !5463
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5463
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5463

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5463

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub143 = sub i64 %36, 1, !dbg !5463
  %and144 = and i64 %sub143, 68719476736, !dbg !5463
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5463
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5463

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5463

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub148 = sub i64 %37, 1, !dbg !5463
  %and149 = and i64 %sub148, 34359738368, !dbg !5463
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5463
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5463

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5463

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub153 = sub i64 %38, 1, !dbg !5463
  %and154 = and i64 %sub153, 17179869184, !dbg !5463
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5463
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5463

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5463

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub158 = sub i64 %39, 1, !dbg !5463
  %and159 = and i64 %sub158, 8589934592, !dbg !5463
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5463
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5463

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5463

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub163 = sub i64 %40, 1, !dbg !5463
  %and164 = and i64 %sub163, 4294967296, !dbg !5463
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5463
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5463

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5463

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub168 = sub i64 %41, 1, !dbg !5463
  %and169 = and i64 %sub168, 2147483648, !dbg !5463
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5463
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5463

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5463

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub173 = sub i64 %42, 1, !dbg !5463
  %and174 = and i64 %sub173, 1073741824, !dbg !5463
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5463
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5463

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5463

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub178 = sub i64 %43, 1, !dbg !5463
  %and179 = and i64 %sub178, 536870912, !dbg !5463
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5463
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5463

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5463

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub183 = sub i64 %44, 1, !dbg !5463
  %and184 = and i64 %sub183, 268435456, !dbg !5463
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5463
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5463

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5463

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub188 = sub i64 %45, 1, !dbg !5463
  %and189 = and i64 %sub188, 134217728, !dbg !5463
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5463
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5463

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5463

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub193 = sub i64 %46, 1, !dbg !5463
  %and194 = and i64 %sub193, 67108864, !dbg !5463
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5463
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5463

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5463

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub198 = sub i64 %47, 1, !dbg !5463
  %and199 = and i64 %sub198, 33554432, !dbg !5463
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5463
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5463

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5463

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub203 = sub i64 %48, 1, !dbg !5463
  %and204 = and i64 %sub203, 16777216, !dbg !5463
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5463
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5463

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5463

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub208 = sub i64 %49, 1, !dbg !5463
  %and209 = and i64 %sub208, 8388608, !dbg !5463
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5463
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5463

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5463

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub213 = sub i64 %50, 1, !dbg !5463
  %and214 = and i64 %sub213, 4194304, !dbg !5463
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5463
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5463

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5463

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub218 = sub i64 %51, 1, !dbg !5463
  %and219 = and i64 %sub218, 2097152, !dbg !5463
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5463
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5463

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5463

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub223 = sub i64 %52, 1, !dbg !5463
  %and224 = and i64 %sub223, 1048576, !dbg !5463
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5463
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5463

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5463

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub228 = sub i64 %53, 1, !dbg !5463
  %and229 = and i64 %sub228, 524288, !dbg !5463
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5463
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5463

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5463

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub233 = sub i64 %54, 1, !dbg !5463
  %and234 = and i64 %sub233, 262144, !dbg !5463
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5463
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5463

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5463

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub238 = sub i64 %55, 1, !dbg !5463
  %and239 = and i64 %sub238, 131072, !dbg !5463
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5463
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5463

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5463

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub243 = sub i64 %56, 1, !dbg !5463
  %and244 = and i64 %sub243, 65536, !dbg !5463
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5463
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5463

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5463

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub248 = sub i64 %57, 1, !dbg !5463
  %and249 = and i64 %sub248, 32768, !dbg !5463
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5463
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5463

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5463

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub253 = sub i64 %58, 1, !dbg !5463
  %and254 = and i64 %sub253, 16384, !dbg !5463
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5463
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5463

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5463

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub258 = sub i64 %59, 1, !dbg !5463
  %and259 = and i64 %sub258, 8192, !dbg !5463
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5463
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5463

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5463

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub263 = sub i64 %60, 1, !dbg !5463
  %and264 = and i64 %sub263, 4096, !dbg !5463
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5463
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5463

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5463

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub268 = sub i64 %61, 1, !dbg !5463
  %and269 = and i64 %sub268, 2048, !dbg !5463
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5463
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5463

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5463

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub273 = sub i64 %62, 1, !dbg !5463
  %and274 = and i64 %sub273, 1024, !dbg !5463
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5463
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5463

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5463

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub278 = sub i64 %63, 1, !dbg !5463
  %and279 = and i64 %sub278, 512, !dbg !5463
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5463
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5463

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5463

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub283 = sub i64 %64, 1, !dbg !5463
  %and284 = and i64 %sub283, 256, !dbg !5463
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5463
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5463

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5463

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub288 = sub i64 %65, 1, !dbg !5463
  %and289 = and i64 %sub288, 128, !dbg !5463
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5463
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5463

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5463

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub293 = sub i64 %66, 1, !dbg !5463
  %and294 = and i64 %sub293, 64, !dbg !5463
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5463
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5463

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5463

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub298 = sub i64 %67, 1, !dbg !5463
  %and299 = and i64 %sub298, 32, !dbg !5463
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5463
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5463

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5463

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub303 = sub i64 %68, 1, !dbg !5463
  %and304 = and i64 %sub303, 16, !dbg !5463
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5463
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5463

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5463

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub308 = sub i64 %69, 1, !dbg !5463
  %and309 = and i64 %sub308, 8, !dbg !5463
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5463
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5463

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5463

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub313 = sub i64 %70, 1, !dbg !5463
  %and314 = and i64 %sub313, 4, !dbg !5463
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5463
  %71 = zext i1 %tobool315 to i64, !dbg !5463
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5463
  br label %cond.end, !dbg !5463

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5463
  br label %cond.end317, !dbg !5463

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5463
  br label %cond.end319, !dbg !5463

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5463
  br label %cond.end321, !dbg !5463

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5463
  br label %cond.end323, !dbg !5463

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5463
  br label %cond.end325, !dbg !5463

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5463
  br label %cond.end327, !dbg !5463

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5463
  br label %cond.end329, !dbg !5463

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5463
  br label %cond.end331, !dbg !5463

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5463
  br label %cond.end333, !dbg !5463

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5463
  br label %cond.end335, !dbg !5463

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5463
  br label %cond.end337, !dbg !5463

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5463
  br label %cond.end339, !dbg !5463

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5463
  br label %cond.end341, !dbg !5463

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5463
  br label %cond.end343, !dbg !5463

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5463
  br label %cond.end345, !dbg !5463

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5463
  br label %cond.end347, !dbg !5463

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5463
  br label %cond.end349, !dbg !5463

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5463
  br label %cond.end351, !dbg !5463

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5463
  br label %cond.end353, !dbg !5463

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5463
  br label %cond.end355, !dbg !5463

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5463
  br label %cond.end357, !dbg !5463

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5463
  br label %cond.end359, !dbg !5463

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5463
  br label %cond.end361, !dbg !5463

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5463
  br label %cond.end363, !dbg !5463

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5463
  br label %cond.end365, !dbg !5463

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5463
  br label %cond.end367, !dbg !5463

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5463
  br label %cond.end369, !dbg !5463

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5463
  br label %cond.end371, !dbg !5463

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5463
  br label %cond.end373, !dbg !5463

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5463
  br label %cond.end375, !dbg !5463

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5463
  br label %cond.end377, !dbg !5463

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5463
  br label %cond.end379, !dbg !5463

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5463
  br label %cond.end381, !dbg !5463

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5463
  br label %cond.end383, !dbg !5463

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5463
  br label %cond.end385, !dbg !5463

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5463
  br label %cond.end387, !dbg !5463

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5463
  br label %cond.end389, !dbg !5463

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5463
  br label %cond.end391, !dbg !5463

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5463
  br label %cond.end393, !dbg !5463

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5463
  br label %cond.end395, !dbg !5463

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5463
  br label %cond.end397, !dbg !5463

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5463
  br label %cond.end399, !dbg !5463

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5463
  br label %cond.end401, !dbg !5463

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5463
  br label %cond.end403, !dbg !5463

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5463
  br label %cond.end405, !dbg !5463

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5463
  br label %cond.end407, !dbg !5463

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5463
  br label %cond.end409, !dbg !5463

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5463
  br label %cond.end411, !dbg !5463

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5463
  br label %cond.end413, !dbg !5463

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5463
  br label %cond.end415, !dbg !5463

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5463
  br label %cond.end417, !dbg !5463

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5463
  br label %cond.end419, !dbg !5463

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5463
  br label %cond.end421, !dbg !5463

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5463
  br label %cond.end423, !dbg !5463

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5463
  br label %cond.end425, !dbg !5463

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5463
  br label %cond.end427, !dbg !5463

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5463
  br label %cond.end429, !dbg !5463

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5463
  br label %cond.end431, !dbg !5463

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5463
  br label %cond.end433, !dbg !5463

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5463
  br label %cond.end435, !dbg !5463

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5463
  br label %cond.end437, !dbg !5463

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5463
  br label %cond.end440, !dbg !5463

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5463

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5463
  br label %cond.end444, !dbg !5463

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5463
  %sub443 = sub i64 %72, 1, !dbg !5463
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5463
  br label %cond.end444, !dbg !5463

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5463
  %sub446 = sub i32 %cond445, 12, !dbg !5464
  %add = add i32 %sub446, 1, !dbg !5465
  store i32 %add, i32* %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5467
  %dec = add i64 %73, -1, !dbg !5467
  store i64 %dec, i64* %size.addr, align 8, !dbg !5467
  %74 = load i64, i64* %size.addr, align 8, !dbg !5468
  %shr = lshr i64 %74, 12, !dbg !5468
  store i64 %shr, i64* %size.addr, align 8, !dbg !5468
  %75 = load i64, i64* %size.addr, align 8, !dbg !5469
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5446
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5470
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5471
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5470, !srcloc !5472
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5470
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5473
  %add.i = add i32 %79, 1, !dbg !5474
  store i32 %add.i, i32* %retval, align 4, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5476
  ret i32 %80, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5477 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5438, metadata !DIExpression()), !dbg !5481
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5445, metadata !DIExpression()), !dbg !5483
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  %0 = load i64, i64* %n.addr, align 8, !dbg !5486
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5483
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5487
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5488
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5487, !srcloc !5472
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5487
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5489
  %add.i = add i32 %4, 1, !dbg !5490
  %sub = sub i32 %add.i, 1, !dbg !5491
  ret i32 %sub, !dbg !5492
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5493 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5505
  ret i8* %0, !dbg !5506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5507 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  ret i1 true, !dbg !5515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5516 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5522, metadata !DIExpression()), !dbg !5523
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5527 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5532
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5533
  ret i1 %call, !dbg !5534
}

; Function Attrs: noredzone
declare dso_local void @sg_free_table(%struct.sg_table*) #3

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5535 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5542
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5543
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5544
  ret i1 %call, !dbg !5545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5546 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5549, metadata !DIExpression()), !dbg !5553
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5557, metadata !DIExpression()), !dbg !5558
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5559, metadata !DIExpression()), !dbg !5561
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5562, metadata !DIExpression()), !dbg !5564
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5566, metadata !DIExpression()), !dbg !5567
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5568, metadata !DIExpression()), !dbg !5569
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5570, metadata !DIExpression()), !dbg !5571
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5578, metadata !DIExpression()), !dbg !5579
  %0 = load i32, i32* %i.addr, align 4, !dbg !5580
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5581
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5582
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5583
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5583
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5584
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5585
  %conv.i.i = trunc i64 %5 to i32, !dbg !5585
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5586
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5587
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5587
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5587
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5588
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5589
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5561
  %sub.i.i = sub i32 0, %10, !dbg !5561
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5561
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5561
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5561
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5561
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5561, !srcloc !5590
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5561
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5561
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5561
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5561
  store i32 %15, i32* %old, align 4, !dbg !5579
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5591
  %tobool = icmp ne i32* %16, null, !dbg !5591
  br i1 %tobool, label %if.then, label %if.end, !dbg !5593

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5594
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5595
  store i32 %17, i32* %18, align 4, !dbg !5596
  br label %if.end, !dbg !5597

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5598
  %20 = load i32, i32* %i.addr, align 4, !dbg !5600
  %cmp = icmp eq i32 %19, %20, !dbg !5601
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5602

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5603, !srcloc !5605
  store i1 true, i1* %retval, align 1, !dbg !5606
  br label %return, !dbg !5606

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5607
  %cmp3 = icmp slt i32 %21, 0, !dbg !5607
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5607

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5607
  %23 = load i32, i32* %i.addr, align 4, !dbg !5607
  %sub = sub i32 %22, %23, !dbg !5607
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5607
  br label %lor.end, !dbg !5607

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5607
  %lnot5 = xor i1 %lnot, true, !dbg !5607
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5607
  %conv = sext i32 %lnot.ext to i64, !dbg !5607
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5607
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5609

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5610
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5611
  br label %if.end8, !dbg !5611

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5612
  br label %return, !dbg !5612

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5613
  ret i1 %26, !dbg !5613
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sg_table* @vb2_dc_get_base_sgt(%struct.vb2_dc_buf* %buf) #0 !dbg !5614 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5116, metadata !DIExpression()), !dbg !5617
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5126, metadata !DIExpression()), !dbg !5620
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5128, metadata !DIExpression()), !dbg !5621
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5130, metadata !DIExpression()), !dbg !5622
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5132, metadata !DIExpression()), !dbg !5623
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5138, metadata !DIExpression()), !dbg !5625
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5144, metadata !DIExpression()), !dbg !5627
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5153, metadata !DIExpression()), !dbg !5630
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5155, metadata !DIExpression()), !dbg !5631
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5157, metadata !DIExpression()), !dbg !5632
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5159, metadata !DIExpression()), !dbg !5633
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5161, metadata !DIExpression()), !dbg !5634
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5163, metadata !DIExpression()), !dbg !5635
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5165, metadata !DIExpression()), !dbg !5636
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5167, metadata !DIExpression()), !dbg !5637
  %retval = alloca %struct.sg_table*, align 8
  %buf.addr = alloca %struct.vb2_dc_buf*, align 8
  %ret = alloca i32, align 4
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.vb2_dc_buf* %buf, %struct.vb2_dc_buf** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5642, metadata !DIExpression()), !dbg !5643
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !5644
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #8, !dbg !5645
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !5646

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5647
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !5648
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5649

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5650
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !5651
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5652
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !5653
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5634
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5654
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5655
  %8 = load i32, i32* %order.i.i, align 4, !dbg !5656
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5657
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5658
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5659
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !5660
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5660
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5660
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5660
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5660
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5661
  br label %kmalloc.exit, !dbg !5661

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !5662
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5663
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !5663
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5664

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5665
  br label %kmalloc_index.exit.i, !dbg !5665

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5666
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !5667
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5668

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5669
  br label %kmalloc_index.exit.i, !dbg !5669

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5670
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !5671
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5672

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5673
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !5674
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5675

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5676
  br label %kmalloc_index.exit.i, !dbg !5676

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5677
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !5678
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5679

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5680
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !5681
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5682

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5683
  br label %kmalloc_index.exit.i, !dbg !5683

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5684
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !5685
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5686

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5687
  br label %kmalloc_index.exit.i, !dbg !5687

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5688
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !5689
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5690

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5691
  br label %kmalloc_index.exit.i, !dbg !5691

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5692
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !5693
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5694

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5695
  br label %kmalloc_index.exit.i, !dbg !5695

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5696
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !5697
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5698

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5699
  br label %kmalloc_index.exit.i, !dbg !5699

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5700
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !5701
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5702

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5703
  br label %kmalloc_index.exit.i, !dbg !5703

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5704
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !5705
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5706

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5707
  br label %kmalloc_index.exit.i, !dbg !5707

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5708
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !5709
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5710

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5711
  br label %kmalloc_index.exit.i, !dbg !5711

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5712
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !5713
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5714

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5715
  br label %kmalloc_index.exit.i, !dbg !5715

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5716
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !5717
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5718

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5719
  br label %kmalloc_index.exit.i, !dbg !5719

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5720
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !5721
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5722

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5723
  br label %kmalloc_index.exit.i, !dbg !5723

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5724
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !5725
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5726

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !5729
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5730

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5731
  br label %kmalloc_index.exit.i, !dbg !5731

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5732
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !5733
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5734

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5735
  br label %kmalloc_index.exit.i, !dbg !5735

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5736
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !5737
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5738

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5739
  br label %kmalloc_index.exit.i, !dbg !5739

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5740
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !5741
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5742

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5743
  br label %kmalloc_index.exit.i, !dbg !5743

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5744
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !5745
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5746

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5747
  br label %kmalloc_index.exit.i, !dbg !5747

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5748
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !5749
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5750

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5751
  br label %kmalloc_index.exit.i, !dbg !5751

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5752
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !5753
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5754

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5755
  br label %kmalloc_index.exit.i, !dbg !5755

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5756
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !5757
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5758

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5759
  br label %kmalloc_index.exit.i, !dbg !5759

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5760
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !5761
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5762

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5763
  br label %kmalloc_index.exit.i, !dbg !5763

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5764
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !5765
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5766

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5767
  br label %kmalloc_index.exit.i, !dbg !5767

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5768
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !5769
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5770

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5771
  br label %kmalloc_index.exit.i, !dbg !5771

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5772
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5773
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5774

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5775
  br label %kmalloc_index.exit.i, !dbg !5775

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5776
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5777
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5778

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5779
  br label %kmalloc_index.exit.i, !dbg !5779

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5780, !srcloc !5343
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #8, !dbg !5781, !srcloc !5347
  unreachable, !dbg !5782

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5783
  store i32 %43, i32* %index.i, align 4, !dbg !5784
  %44 = load i32, i32* %index.i, align 4, !dbg !5785
  %tobool.i = icmp ne i32 %44, 0, !dbg !5785
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5786

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5787
  br label %kmalloc.exit, !dbg !5787

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5788
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5789
  %and.i.i = and i32 %46, 17, !dbg !5789
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5789
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5789
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5789
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5789
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5790

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5791
  br label %kmalloc_type.exit.i, !dbg !5791

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5792
  %and2.i.i = and i32 %47, 1, !dbg !5793
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5792
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5792
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5792
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5794
  br label %kmalloc_type.exit.i, !dbg !5794

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5795
  %idxprom.i = zext i32 %49 to i64, !dbg !5796
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5796
  %50 = load i32, i32* %index.i, align 4, !dbg !5797
  %idxprom6.i = zext i32 %50 to i64, !dbg !5796
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5796
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5796
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5798
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5799
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5800
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5801
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5802
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5802
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5802
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5802
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5802
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5622
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5803
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5804
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5805
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5806
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5807
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5808
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5809
  store i8* %60, i8** %retval.i, align 8, !dbg !5810
  br label %kmalloc.exit, !dbg !5810

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5811
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5812
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5813
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5813
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5813
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5813
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5813
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5814
  br label %kmalloc.exit, !dbg !5814

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5815
  %64 = bitcast i8* %63 to %struct.sg_table*, !dbg !5816
  store %struct.sg_table* %64, %struct.sg_table** %sgt, align 8, !dbg !5817
  %65 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5818
  %tobool = icmp ne %struct.sg_table* %65, null, !dbg !5818
  br i1 %tobool, label %if.end, label %if.then, !dbg !5820

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5821
  %dev = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %66, i32 0, i32 0, !dbg !5821
  %67 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5821
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !5821
  store %struct.sg_table* null, %struct.sg_table** %retval, align 8, !dbg !5823
  br label %return, !dbg !5823

if.end:                                           ; preds = %kmalloc.exit
  %68 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5824
  %dev1 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %68, i32 0, i32 0, !dbg !5825
  %69 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5825
  %70 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5826
  %71 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5827
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %71, i32 0, i32 3, !dbg !5828
  %72 = load i8*, i8** %cookie, align 8, !dbg !5828
  %73 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5829
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %73, i32 0, i32 4, !dbg !5830
  %74 = load i64, i64* %dma_addr, align 8, !dbg !5830
  %75 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5831
  %size = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %75, i32 0, i32 2, !dbg !5832
  %76 = load i64, i64* %size, align 8, !dbg !5832
  %77 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5833
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %77, i32 0, i32 5, !dbg !5834
  %78 = load i64, i64* %attrs, align 8, !dbg !5834
  %call2 = call i32 @dma_get_sgtable_attrs(%struct.device* %69, %struct.sg_table* %70, i8* %72, i64 %74, i64 %76, i64 %78) #9, !dbg !5835
  store i32 %call2, i32* %ret, align 4, !dbg !5836
  %79 = load i32, i32* %ret, align 4, !dbg !5837
  %cmp = icmp slt i32 %79, 0, !dbg !5839
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5840

if.then3:                                         ; preds = %if.end
  %80 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf.addr, align 8, !dbg !5841
  %dev4 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %80, i32 0, i32 0, !dbg !5841
  %81 = load %struct.device*, %struct.device** %dev4, align 8, !dbg !5841
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5841
  %82 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5843
  %83 = bitcast %struct.sg_table* %82 to i8*, !dbg !5843
  call void @kfree(i8* %83) #9, !dbg !5844
  store %struct.sg_table* null, %struct.sg_table** %retval, align 8, !dbg !5845
  br label %return, !dbg !5845

if.end5:                                          ; preds = %if.end
  %84 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5846
  store %struct.sg_table* %84, %struct.sg_table** %retval, align 8, !dbg !5847
  br label %return, !dbg !5847

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %85 = load %struct.sg_table*, %struct.sg_table** %retval, align 8, !dbg !5848
  ret %struct.sg_table* %85, !dbg !5848
}

; Function Attrs: noredzone
declare dso_local %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5849 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5854
  %1 = ptrtoint i8* %0 to i64, !dbg !5854
  %2 = inttoptr i64 %1 to i8*, !dbg !5854
  %3 = ptrtoint i8* %2 to i64, !dbg !5854
  %cmp = icmp uge i64 %3, -4095, !dbg !5854
  %lnot = xor i1 %cmp, true, !dbg !5854
  %lnot1 = xor i1 %lnot, true, !dbg !5854
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5854
  %conv = sext i32 %lnot.ext to i64, !dbg !5854
  %tobool = icmp ne i64 %conv, 0, !dbg !5854
  ret i1 %tobool, !dbg !5855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5856 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5861
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5862
  ret void, !dbg !5863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_dmabuf_ops_attach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %dbuf_attach) #0 !dbg !5864 {
entry:
  %retval = alloca i32, align 4
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %dbuf_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_dc_attachment*, align 8
  %i = alloca i32, align 4
  %rd = alloca %struct.scatterlist*, align 8
  %wr = alloca %struct.scatterlist*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  %ret = alloca i32, align 4
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  store %struct.dma_buf_attachment* %dbuf_attach, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %dbuf_attach.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_attachment** %attach, metadata !5869, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %rd, metadata !5878, metadata !DIExpression()), !dbg !5879
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %wr, metadata !5880, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !5884, metadata !DIExpression()), !dbg !5885
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5886
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5887
  %1 = load i8*, i8** %priv, align 8, !dbg !5887
  %2 = bitcast i8* %1 to %struct.vb2_dc_buf*, !dbg !5886
  store %struct.vb2_dc_buf* %2, %struct.vb2_dc_buf** %buf, align 8, !dbg !5885
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5888, metadata !DIExpression()), !dbg !5889
  %call = call i8* @kzalloc(i64 24, i32 3264) #9, !dbg !5890
  %3 = bitcast i8* %call to %struct.vb2_dc_attachment*, !dbg !5890
  store %struct.vb2_dc_attachment* %3, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5891
  %4 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5892
  %tobool = icmp ne %struct.vb2_dc_attachment* %4, null, !dbg !5892
  br i1 %tobool, label %if.end, label %if.then, !dbg !5894

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5895
  br label %return, !dbg !5895

if.end:                                           ; preds = %entry
  %5 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5896
  %sgt1 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %5, i32 0, i32 0, !dbg !5897
  store %struct.sg_table* %sgt1, %struct.sg_table** %sgt, align 8, !dbg !5898
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5899
  %7 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5900
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %7, i32 0, i32 11, !dbg !5901
  %8 = load %struct.sg_table*, %struct.sg_table** %sgt_base, align 8, !dbg !5901
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %8, i32 0, i32 2, !dbg !5902
  %9 = load i32, i32* %orig_nents, align 4, !dbg !5902
  %call2 = call i32 @sg_alloc_table(%struct.sg_table* %6, i32 %9, i32 3264) #9, !dbg !5903
  store i32 %call2, i32* %ret, align 4, !dbg !5904
  %10 = load i32, i32* %ret, align 4, !dbg !5905
  %tobool3 = icmp ne i32 %10, 0, !dbg !5905
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5907

if.then4:                                         ; preds = %if.end
  %11 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5908
  %12 = bitcast %struct.vb2_dc_attachment* %11 to i8*, !dbg !5908
  call void @kfree(i8* %12) #9, !dbg !5910
  store i32 -12, i32* %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

if.end5:                                          ; preds = %if.end
  %13 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !5912
  %sgt_base6 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %13, i32 0, i32 11, !dbg !5913
  %14 = load %struct.sg_table*, %struct.sg_table** %sgt_base6, align 8, !dbg !5913
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 0, !dbg !5914
  %15 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5914
  store %struct.scatterlist* %15, %struct.scatterlist** %rd, align 8, !dbg !5915
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5916
  %sgl7 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %16, i32 0, i32 0, !dbg !5917
  %17 = load %struct.scatterlist*, %struct.scatterlist** %sgl7, align 8, !dbg !5917
  store %struct.scatterlist* %17, %struct.scatterlist** %wr, align 8, !dbg !5918
  store i32 0, i32* %i, align 4, !dbg !5919
  br label %for.cond, !dbg !5921

for.cond:                                         ; preds = %for.inc, %if.end5
  %18 = load i32, i32* %i, align 4, !dbg !5922
  %19 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5924
  %orig_nents8 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 2, !dbg !5925
  %20 = load i32, i32* %orig_nents8, align 4, !dbg !5925
  %cmp = icmp ult i32 %18, %20, !dbg !5926
  br i1 %cmp, label %for.body, label %for.end, !dbg !5927

for.body:                                         ; preds = %for.cond
  %21 = load %struct.scatterlist*, %struct.scatterlist** %wr, align 8, !dbg !5928
  %22 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5930
  %call9 = call %struct.page* @sg_page(%struct.scatterlist* %22) #9, !dbg !5931
  %23 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5932
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 2, !dbg !5933
  %24 = load i32, i32* %length, align 4, !dbg !5933
  %25 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5934
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 1, !dbg !5935
  %26 = load i32, i32* %offset, align 8, !dbg !5935
  call void @sg_set_page(%struct.scatterlist* %21, %struct.page* %call9, i32 %24, i32 %26) #9, !dbg !5936
  %27 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5937
  %call10 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %27) #9, !dbg !5938
  store %struct.scatterlist* %call10, %struct.scatterlist** %rd, align 8, !dbg !5939
  %28 = load %struct.scatterlist*, %struct.scatterlist** %wr, align 8, !dbg !5940
  %call11 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %28) #9, !dbg !5941
  store %struct.scatterlist* %call11, %struct.scatterlist** %wr, align 8, !dbg !5942
  br label %for.inc, !dbg !5943

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !5944
  %inc = add i32 %29, 1, !dbg !5944
  store i32 %inc, i32* %i, align 4, !dbg !5944
  br label %for.cond, !dbg !5945, !llvm.loop !5946

for.end:                                          ; preds = %for.cond
  %30 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5948
  %dma_dir = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %30, i32 0, i32 1, !dbg !5949
  store i32 3, i32* %dma_dir, align 8, !dbg !5950
  %31 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5951
  %32 = bitcast %struct.vb2_dc_attachment* %31 to i8*, !dbg !5951
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8, !dbg !5952
  %priv12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %33, i32 0, i32 8, !dbg !5953
  store i8* %32, i8** %priv12, align 8, !dbg !5954
  store i32 0, i32* %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

return:                                           ; preds = %for.end, %if.then4, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !5956
  ret i32 %34, !dbg !5956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_dmabuf_ops_detach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %db_attach) #0 !dbg !5957 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_dc_attachment*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_attachment** %attach, metadata !5962, metadata !DIExpression()), !dbg !5963
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5964
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !5965
  %1 = load i8*, i8** %priv, align 8, !dbg !5965
  %2 = bitcast i8* %1 to %struct.vb2_dc_attachment*, !dbg !5964
  store %struct.vb2_dc_attachment* %2, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5963
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5966, metadata !DIExpression()), !dbg !5967
  %3 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5968
  %tobool = icmp ne %struct.vb2_dc_attachment* %3, null, !dbg !5968
  br i1 %tobool, label %if.end, label %if.then, !dbg !5970

if.then:                                          ; preds = %entry
  br label %return, !dbg !5971

if.end:                                           ; preds = %entry
  %4 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5972
  %sgt1 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %4, i32 0, i32 0, !dbg !5973
  store %struct.sg_table* %sgt1, %struct.sg_table** %sgt, align 8, !dbg !5974
  %5 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5975
  %dma_dir = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %5, i32 0, i32 1, !dbg !5977
  %6 = load i32, i32* %dma_dir, align 8, !dbg !5977
  %cmp = icmp ne i32 %6, 3, !dbg !5978
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5979

if.then2:                                         ; preds = %if.end
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5980
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 1, !dbg !5981
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5981
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5982
  %10 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5983
  %dma_dir3 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %10, i32 0, i32 1, !dbg !5984
  %11 = load i32, i32* %dma_dir3, align 8, !dbg !5984
  call void @dma_unmap_sgtable(%struct.device* %8, %struct.sg_table* %9, i32 %11, i64 32) #9, !dbg !5985
  br label %if.end4, !dbg !5985

if.end4:                                          ; preds = %if.then2, %if.end
  %12 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5986
  call void @sg_free_table(%struct.sg_table* %12) #9, !dbg !5987
  %13 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !5988
  %14 = bitcast %struct.vb2_dc_attachment* %13 to i8*, !dbg !5988
  call void @kfree(i8* %14) #9, !dbg !5989
  %15 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5990
  %priv5 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %15, i32 0, i32 8, !dbg !5991
  store i8* null, i8** %priv5, align 8, !dbg !5992
  br label %return, !dbg !5993

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sg_table* @vb2_dc_dmabuf_ops_map(%struct.dma_buf_attachment* %db_attach, i32 %dma_dir) #0 !dbg !5994 {
entry:
  %retval = alloca %struct.sg_table*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %dma_dir.addr = alloca i32, align 4
  %attach = alloca %struct.vb2_dc_attachment*, align 8
  %lock = alloca %struct.mutex*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_attachment** %attach, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !6001
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !6002
  %1 = load i8*, i8** %priv, align 8, !dbg !6002
  %2 = bitcast i8* %1 to %struct.vb2_dc_attachment*, !dbg !6001
  store %struct.vb2_dc_attachment* %2, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6000
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock, metadata !6003, metadata !DIExpression()), !dbg !6005
  %3 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !6006
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %3, i32 0, i32 0, !dbg !6007
  %4 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !6007
  %lock1 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 4, !dbg !6008
  store %struct.mutex* %lock1, %struct.mutex** %lock, align 8, !dbg !6005
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !6009, metadata !DIExpression()), !dbg !6010
  %5 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !6011
  call void @mutex_lock(%struct.mutex* %5) #9, !dbg !6012
  %6 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6013
  %sgt2 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %6, i32 0, i32 0, !dbg !6014
  store %struct.sg_table* %sgt2, %struct.sg_table** %sgt, align 8, !dbg !6015
  %7 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6016
  %dma_dir3 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %7, i32 0, i32 1, !dbg !6018
  %8 = load i32, i32* %dma_dir3, align 8, !dbg !6018
  %9 = load i32, i32* %dma_dir.addr, align 4, !dbg !6019
  %cmp = icmp eq i32 %8, %9, !dbg !6020
  br i1 %cmp, label %if.then, label %if.end, !dbg !6021

if.then:                                          ; preds = %entry
  %10 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !6022
  call void @mutex_unlock(%struct.mutex* %10) #9, !dbg !6024
  %11 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6025
  store %struct.sg_table* %11, %struct.sg_table** %retval, align 8, !dbg !6026
  br label %return, !dbg !6026

if.end:                                           ; preds = %entry
  %12 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6027
  %dma_dir4 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %12, i32 0, i32 1, !dbg !6029
  %13 = load i32, i32* %dma_dir4, align 8, !dbg !6029
  %cmp5 = icmp ne i32 %13, 3, !dbg !6030
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !6031

if.then6:                                         ; preds = %if.end
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !6032
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 1, !dbg !6034
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6034
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6035
  %17 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6036
  %dma_dir7 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %17, i32 0, i32 1, !dbg !6037
  %18 = load i32, i32* %dma_dir7, align 8, !dbg !6037
  call void @dma_unmap_sgtable(%struct.device* %15, %struct.sg_table* %16, i32 %18, i64 32) #9, !dbg !6038
  %19 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6039
  %dma_dir8 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %19, i32 0, i32 1, !dbg !6040
  store i32 3, i32* %dma_dir8, align 8, !dbg !6041
  br label %if.end9, !dbg !6042

if.end9:                                          ; preds = %if.then6, %if.end
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !6043
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %20, i32 0, i32 1, !dbg !6045
  %21 = load %struct.device*, %struct.device** %dev10, align 8, !dbg !6045
  %22 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6046
  %23 = load i32, i32* %dma_dir.addr, align 4, !dbg !6047
  %call = call i32 @dma_map_sgtable(%struct.device* %21, %struct.sg_table* %22, i32 %23, i64 32) #9, !dbg !6048
  %tobool = icmp ne i32 %call, 0, !dbg !6048
  br i1 %tobool, label %if.then11, label %if.end14, !dbg !6049

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !6050
  %24 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !6052
  call void @mutex_unlock(%struct.mutex* %24) #9, !dbg !6053
  %call13 = call i8* @ERR_PTR(i64 -5) #9, !dbg !6054
  %25 = bitcast i8* %call13 to %struct.sg_table*, !dbg !6054
  store %struct.sg_table* %25, %struct.sg_table** %retval, align 8, !dbg !6055
  br label %return, !dbg !6055

if.end14:                                         ; preds = %if.end9
  %26 = load i32, i32* %dma_dir.addr, align 4, !dbg !6056
  %27 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %attach, align 8, !dbg !6057
  %dma_dir15 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %27, i32 0, i32 1, !dbg !6058
  store i32 %26, i32* %dma_dir15, align 8, !dbg !6059
  %28 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !6060
  call void @mutex_unlock(%struct.mutex* %28) #9, !dbg !6061
  %29 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6062
  store %struct.sg_table* %29, %struct.sg_table** %retval, align 8, !dbg !6063
  br label %return, !dbg !6063

return:                                           ; preds = %if.end14, %if.then11, %if.then
  %30 = load %struct.sg_table*, %struct.sg_table** %retval, align 8, !dbg !6064
  ret %struct.sg_table* %30, !dbg !6064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_dmabuf_ops_unmap(%struct.dma_buf_attachment* %db_attach, %struct.sg_table* %sgt, i32 %dma_dir) #0 !dbg !6065 {
entry:
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dma_dir.addr = alloca i32, align 4
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !6066, metadata !DIExpression()), !dbg !6067
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  ret void, !dbg !6072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dc_dmabuf_ops_release(%struct.dma_buf* %dbuf) #0 !dbg !6073 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6076
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6077
  %1 = load i8*, i8** %priv, align 8, !dbg !6077
  call void @vb2_dc_put(i8* %1) #9, !dbg !6078
  ret void, !dbg !6079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_dmabuf_ops_begin_cpu_access(%struct.dma_buf* %dbuf, i32 %direction) #0 !dbg !6080 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %direction.addr = alloca i32, align 4
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  ret i32 0, !dbg !6085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_dmabuf_ops_end_cpu_access(%struct.dma_buf* %dbuf, i32 %direction) #0 !dbg !6086 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %direction.addr = alloca i32, align 4
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6087, metadata !DIExpression()), !dbg !6088
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  ret i32 0, !dbg !6091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dc_dmabuf_ops_mmap(%struct.dma_buf* %dbuf, %struct.vm_area_struct* %vma) #0 !dbg !6092 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6097
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6098
  %1 = load i8*, i8** %priv, align 8, !dbg !6098
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6099
  %call = call i32 @vb2_dc_mmap(i8* %1, %struct.vm_area_struct* %2) #9, !dbg !6100
  ret i32 %call, !dbg !6101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dc_dmabuf_ops_vmap(%struct.dma_buf* %dbuf) #0 !dbg !6102 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %buf = alloca %struct.vb2_dc_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  call void @llvm.dbg.declare(metadata %struct.vb2_dc_buf** %buf, metadata !6105, metadata !DIExpression()), !dbg !6106
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6107
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6108
  %1 = load i8*, i8** %priv, align 8, !dbg !6108
  %2 = bitcast i8* %1 to %struct.vb2_dc_buf*, !dbg !6107
  store %struct.vb2_dc_buf* %2, %struct.vb2_dc_buf** %buf, align 8, !dbg !6106
  %3 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %buf, align 8, !dbg !6109
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %3, i32 0, i32 1, !dbg !6110
  %4 = load i8*, i8** %vaddr, align 8, !dbg !6110
  ret i8* %4, !dbg !6111
}

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_set_page(%struct.scatterlist* %sg, %struct.page* %page, i32 %len, i32 %offset) #0 !dbg !6112 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6115, metadata !DIExpression()), !dbg !6116
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6123
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6124
  call void @sg_assign_page(%struct.scatterlist* %0, %struct.page* %1) #9, !dbg !6125
  %2 = load i32, i32* %offset.addr, align 4, !dbg !6126
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6127
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %3, i32 0, i32 1, !dbg !6128
  store i32 %2, i32* %offset1, align 8, !dbg !6129
  %4 = load i32, i32* %len.addr, align 4, !dbg !6130
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6131
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %5, i32 0, i32 2, !dbg !6132
  store i32 %4, i32* %length, align 4, !dbg !6133
  ret void, !dbg !6134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @sg_page(%struct.scatterlist* %sg) #0 !dbg !6135 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6140
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !6141
  %1 = load i64, i64* %page_link, align 8, !dbg !6141
  %and = and i64 %1, -4, !dbg !6142
  %2 = inttoptr i64 %and to %struct.page*, !dbg !6143
  ret %struct.page* %2, !dbg !6144
}

; Function Attrs: noredzone
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_assign_page(%struct.scatterlist* %sg, %struct.page* %page) #0 !dbg !6145 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %page_link = alloca i64, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6148, metadata !DIExpression()), !dbg !6149
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  call void @llvm.dbg.declare(metadata i64* %page_link, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6154
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !6155
  %1 = load i64, i64* %page_link1, align 8, !dbg !6155
  %and = and i64 %1, 3, !dbg !6156
  store i64 %and, i64* %page_link, align 8, !dbg !6153
  br label %do.body, !dbg !6157

do.body:                                          ; preds = %entry
  %2 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6158
  %3 = ptrtoint %struct.page* %2 to i64, !dbg !6158
  %and2 = and i64 %3, 3, !dbg !6158
  %tobool = icmp ne i64 %and2, 0, !dbg !6158
  %lnot = xor i1 %tobool, true, !dbg !6158
  %lnot3 = xor i1 %lnot, true, !dbg !6158
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6158
  %conv = sext i32 %lnot.ext to i64, !dbg !6158
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6158
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6161

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6158

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !6162

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !6164

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !6162

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 95, i32 0, i64 12) #8, !dbg !6166, !srcloc !6168
  br label %do.end8, !dbg !6166

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6162

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #8, !dbg !6169, !srcloc !6172
  unreachable, !dbg !6173

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !6162

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !6162

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !6161

do.end12:                                         ; preds = %if.end
  %4 = load i64, i64* %page_link, align 8, !dbg !6174
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6175
  %6 = ptrtoint %struct.page* %5 to i64, !dbg !6176
  %or = or i64 %4, %6, !dbg !6177
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6178
  %page_link13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0, !dbg !6179
  store i64 %or, i64* %page_link13, align 8, !dbg !6180
  ret void, !dbg !6181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_unmap_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !6182 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6193
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6194
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6195
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6195
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6196
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6197
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6197
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6198
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !6199
  call void @dma_unmap_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #9, !dbg !6200
  ret void, !dbg !6201
}

; Function Attrs: noredzone
declare dso_local void @dma_unmap_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #3

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_map_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !6202 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %nents = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  call void @llvm.dbg.declare(metadata i32* %nents, metadata !6213, metadata !DIExpression()), !dbg !6214
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6215
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6216
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6217
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6217
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6218
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6219
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6219
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6220
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !6221
  %call = call i32 @dma_map_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #9, !dbg !6222
  store i32 %call, i32* %nents, align 4, !dbg !6223
  %7 = load i32, i32* %nents, align 4, !dbg !6224
  %cmp = icmp sle i32 %7, 0, !dbg !6226
  br i1 %cmp, label %if.then, label %if.end, !dbg !6227

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6228
  br label %return, !dbg !6228

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %nents, align 4, !dbg !6229
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6230
  %nents1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1, !dbg !6231
  store i32 %8, i32* %nents1, align 8, !dbg !6232
  store i32 0, i32* %retval, align 4, !dbg !6233
  br label %return, !dbg !6233

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6234
  ret i32 %10, !dbg !6234
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_map_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @dma_get_sgtable_attrs(%struct.device*, %struct.sg_table*, i8*, i64, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6235 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6242
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6243
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !6244
  ret void, !dbg !6245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6246 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6249, metadata !DIExpression()), !dbg !6251
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6255, metadata !DIExpression()), !dbg !6256
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6257, metadata !DIExpression()), !dbg !6259
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5562, metadata !DIExpression()), !dbg !6260
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5566, metadata !DIExpression()), !dbg !6262
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6263, metadata !DIExpression()), !dbg !6264
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6265, metadata !DIExpression()), !dbg !6266
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6273, metadata !DIExpression()), !dbg !6274
  %0 = load i32, i32* %i.addr, align 4, !dbg !6275
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6276
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6277
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6278
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6278
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6279
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6280
  %conv.i.i = trunc i64 %5 to i32, !dbg !6280
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !6281
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6282
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6282
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !6282
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6283
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6284
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6259
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !6259
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6259
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6259
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6259
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !6259, !srcloc !6285
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6259
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6259
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6259
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6259
  store i32 %15, i32* %old, align 4, !dbg !6274
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6286
  %tobool = icmp ne i32* %16, null, !dbg !6286
  br i1 %tobool, label %if.then, label %if.end, !dbg !6288

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6289
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6290
  store i32 %17, i32* %18, align 4, !dbg !6291
  br label %if.end, !dbg !6292

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6293
  %tobool1 = icmp ne i32 %19, 0, !dbg !6293
  %lnot = xor i1 %tobool1, true, !dbg !6293
  %lnot2 = xor i1 %lnot, true, !dbg !6293
  %lnot3 = xor i1 %lnot2, true, !dbg !6293
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6293
  %conv = sext i32 %lnot.ext to i64, !dbg !6293
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6293
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6295

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6296
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !6297
  br label %if.end17, !dbg !6297

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6298
  %cmp = icmp slt i32 %21, 0, !dbg !6298
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6298

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !6298
  %23 = load i32, i32* %i.addr, align 4, !dbg !6298
  %add = add i32 %22, %23, !dbg !6298
  %cmp7 = icmp slt i32 %add, 0, !dbg !6298
  br label %lor.end, !dbg !6298

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !6298
  %lnot11 = xor i1 %lnot9, true, !dbg !6298
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6298
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6298
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !6298
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6300

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6301
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !6302
  br label %if.end16, !dbg !6302

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !6303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_get_cache_alignment() #0 !dbg !6304 {
entry:
  ret i32 1, !dbg !6307
}

; Function Attrs: noredzone
declare dso_local %struct.frame_vector* @vb2_create_framevec(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !6308 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6311, metadata !DIExpression()), !dbg !6312
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !6313
  %1 = ptrtoint i8* %0 to i64, !dbg !6314
  ret i64 %1, !dbg !6315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @frame_vector_count(%struct.frame_vector* %vec) #0 !dbg !6316 {
entry:
  %vec.addr = alloca %struct.frame_vector*, align 8
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6321
  %nr_frames = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 1, !dbg !6322
  %1 = load i32, i32* %nr_frames, align 4, !dbg !6322
  ret i32 %1, !dbg !6323
}

; Function Attrs: noredzone
declare dso_local i32 @frame_vector_to_pages(%struct.frame_vector*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64* @frame_vector_pfns(%struct.frame_vector* %vec) #0 !dbg !6324 {
entry:
  %vec.addr = alloca %struct.frame_vector*, align 8
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !6327, metadata !DIExpression()), !dbg !6328
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6329
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 3, !dbg !6331
  %1 = load i8, i8* %is_pfns, align 1, !dbg !6331
  %tobool = trunc i8 %1 to i1, !dbg !6331
  br i1 %tobool, label %if.end, label %if.then, !dbg !6332

if.then:                                          ; preds = %entry
  %2 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6333
  call void @frame_vector_to_pfns(%struct.frame_vector* %2) #9, !dbg !6334
  br label %if.end, !dbg !6334

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6335
  %ptrs = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %3, i32 0, i32 4, !dbg !6336
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %ptrs, i64 0, i64 0, !dbg !6337
  %4 = bitcast i8** %arraydecay to i64*, !dbg !6338
  ret i64* %4, !dbg !6339
}

; Function Attrs: noredzone
declare dso_local i64 @dma_map_resource(%struct.device*, i64, i64, i32, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !6340 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6347
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !6348
  call void @debug_dma_mapping_error(%struct.device* %0, i64 %1) #9, !dbg !6349
  %2 = load i64, i64* %dma_addr.addr, align 8, !dbg !6350
  %cmp = icmp eq i64 %2, -1, !dbg !6352
  br i1 %cmp, label %if.then, label %if.end, !dbg !6353

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6354
  br label %return, !dbg !6354

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6356
  ret i32 %3, !dbg !6356
}

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page** @frame_vector_pages(%struct.frame_vector* %vec) #0 !dbg !6357 {
entry:
  %retval = alloca %struct.page**, align 8
  %vec.addr = alloca %struct.frame_vector*, align 8
  %err = alloca i32, align 4
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6362
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 3, !dbg !6364
  %1 = load i8, i8* %is_pfns, align 1, !dbg !6364
  %tobool = trunc i8 %1 to i1, !dbg !6364
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6365

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6366, metadata !DIExpression()), !dbg !6368
  %2 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6369
  %call = call i32 @frame_vector_to_pages(%struct.frame_vector* %2) #9, !dbg !6370
  store i32 %call, i32* %err, align 4, !dbg !6368
  %3 = load i32, i32* %err, align 4, !dbg !6371
  %tobool1 = icmp ne i32 %3, 0, !dbg !6371
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6373

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %err, align 4, !dbg !6374
  %conv = sext i32 %4 to i64, !dbg !6374
  %call3 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !6375
  %5 = bitcast i8* %call3 to %struct.page**, !dbg !6375
  store %struct.page** %5, %struct.page*** %retval, align 8, !dbg !6376
  br label %return, !dbg !6376

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6377

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6378
  %ptrs = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %6, i32 0, i32 4, !dbg !6379
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %ptrs, i64 0, i64 0, !dbg !6380
  %7 = bitcast i8** %arraydecay to %struct.page**, !dbg !6381
  store %struct.page** %7, %struct.page*** %retval, align 8, !dbg !6382
  br label %return, !dbg !6382

return:                                           ; preds = %if.end4, %if.then2
  %8 = load %struct.page**, %struct.page*** %retval, align 8, !dbg !6383
  ret %struct.page** %8, !dbg !6383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vb2_dc_get_contiguous_size(%struct.sg_table* %sgt) #0 !dbg !6384 {
entry:
  %sgt.addr = alloca %struct.sg_table*, align 8
  %s = alloca %struct.scatterlist*, align 8
  %expected = alloca i64, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %s, metadata !6389, metadata !DIExpression()), !dbg !6390
  call void @llvm.dbg.declare(metadata i64* %expected, metadata !6391, metadata !DIExpression()), !dbg !6392
  %0 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6393
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %0, i32 0, i32 0, !dbg !6393
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6393
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %1, i32 0, i32 3, !dbg !6393
  %2 = load i64, i64* %dma_address, align 8, !dbg !6393
  store i64 %2, i64* %expected, align 8, !dbg !6392
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6394, metadata !DIExpression()), !dbg !6395
  call void @llvm.dbg.declare(metadata i64* %size, metadata !6396, metadata !DIExpression()), !dbg !6397
  store i64 0, i64* %size, align 8, !dbg !6397
  store i32 0, i32* %i, align 4, !dbg !6398
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6398
  %sgl1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 0, !dbg !6398
  %4 = load %struct.scatterlist*, %struct.scatterlist** %sgl1, align 8, !dbg !6398
  store %struct.scatterlist* %4, %struct.scatterlist** %s, align 8, !dbg !6398
  br label %for.cond, !dbg !6398

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !6400
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6400
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %6, i32 0, i32 1, !dbg !6400
  %7 = load i32, i32* %nents, align 8, !dbg !6400
  %cmp = icmp ult i32 %5, %7, !dbg !6400
  br i1 %cmp, label %for.body, label %for.end, !dbg !6398

for.body:                                         ; preds = %for.cond
  %8 = load %struct.scatterlist*, %struct.scatterlist** %s, align 8, !dbg !6402
  %dma_address2 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i32 0, i32 3, !dbg !6402
  %9 = load i64, i64* %dma_address2, align 8, !dbg !6402
  %10 = load i64, i64* %expected, align 8, !dbg !6405
  %cmp3 = icmp ne i64 %9, %10, !dbg !6406
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6407

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6408

if.end:                                           ; preds = %for.body
  %11 = load %struct.scatterlist*, %struct.scatterlist** %s, align 8, !dbg !6409
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i32 0, i32 4, !dbg !6409
  %12 = load i32, i32* %dma_length, align 8, !dbg !6409
  %conv = zext i32 %12 to i64, !dbg !6409
  %13 = load i64, i64* %expected, align 8, !dbg !6410
  %add = add i64 %13, %conv, !dbg !6410
  store i64 %add, i64* %expected, align 8, !dbg !6410
  %14 = load %struct.scatterlist*, %struct.scatterlist** %s, align 8, !dbg !6411
  %dma_length4 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 4, !dbg !6411
  %15 = load i32, i32* %dma_length4, align 8, !dbg !6411
  %conv5 = zext i32 %15 to i64, !dbg !6411
  %16 = load i64, i64* %size, align 8, !dbg !6412
  %add6 = add i64 %16, %conv5, !dbg !6412
  store i64 %add6, i64* %size, align 8, !dbg !6412
  br label %for.inc, !dbg !6413

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !6400
  %inc = add i32 %17, 1, !dbg !6400
  store i32 %inc, i32* %i, align 4, !dbg !6400
  %18 = load %struct.scatterlist*, %struct.scatterlist** %s, align 8, !dbg !6400
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* %18) #9, !dbg !6400
  store %struct.scatterlist* %call, %struct.scatterlist** %s, align 8, !dbg !6400
  br label %for.cond, !dbg !6400, !llvm.loop !6414

for.end:                                          ; preds = %if.then, %for.cond
  %19 = load i64, i64* %size, align 8, !dbg !6416
  ret i64 %19, !dbg !6417
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @vb2_destroy_framevec(%struct.frame_vector*) #3

; Function Attrs: noredzone
declare dso_local void @frame_vector_to_pfns(%struct.frame_vector*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #0 !dbg !6418 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  ret void, !dbg !6425
}

; Function Attrs: noredzone
declare dso_local i32 @set_page_dirty_lock(%struct.page*) #3

; Function Attrs: noredzone
declare dso_local void @dma_unmap_resource(%struct.device*, i64, i64, i32, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_sync_sgtable_for_device(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir) #0 !dbg !6426 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6429, metadata !DIExpression()), !dbg !6430
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6433, metadata !DIExpression()), !dbg !6434
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6435
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6436
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6437
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6437
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6438
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6439
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6439
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6440
  call void @dma_sync_sg_for_device(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5) #9, !dbg !6441
  ret void, !dbg !6442
}

; Function Attrs: noredzone
declare dso_local void @dma_sync_sg_for_device(%struct.device*, %struct.scatterlist*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_sync_sgtable_for_cpu(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir) #0 !dbg !6443 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6444, metadata !DIExpression()), !dbg !6445
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6450
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6451
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6452
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6452
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6453
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6454
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6454
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6455
  call void @dma_sync_sg_for_cpu(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5) #9, !dbg !6456
  ret void, !dbg !6457
}

; Function Attrs: noredzone
declare dso_local void @dma_sync_sg_for_cpu(%struct.device*, %struct.scatterlist*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf*, %struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #3

; Function Attrs: noredzone
declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment*, i32) #3

; Function Attrs: noredzone
declare dso_local void @dma_buf_unmap_attachment(%struct.dma_buf_attachment*, %struct.sg_table*, i32) #3

; Function Attrs: noredzone
declare dso_local void @dma_buf_vunmap(%struct.dma_buf*, i8*) #3

; Function Attrs: noredzone
declare dso_local i8* @dma_buf_vmap(%struct.dma_buf*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !6458 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6463, metadata !DIExpression()), !dbg !6469
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6473, metadata !DIExpression()), !dbg !6475
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6477, metadata !DIExpression()), !dbg !6478
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6479, metadata !DIExpression()), !dbg !6480
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6483
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6484
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6485
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !6485
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6486
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !6487
  %conv.i.i = trunc i64 %4 to i32, !dbg !6487
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !6488
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6489
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6489
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !6489
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6490
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6491
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !6491
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !6491
  ret i32 %9, !dbg !6492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6493 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  ret i1 true, !dbg !6498
}

; Function Attrs: noredzone
declare dso_local i32 @dma_mmap_attrs(%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3979, !3980, !3981, !3982}
!llvm.ident = !{!3983}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vb2_dma_contig_memops", scope: !2, file: !3, line: 692, type: !3936, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !3315, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/common/videobuf2/videobuf2-dma-contig.c", directory: "/home/lizy2001/genbc/linux")
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
!120 = !{!121, !123, !124, !127, !128, !217, !2300, !473, !3312, !3182, !2297, !3313}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !122, line: 148, baseType: !7)
!122 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !130, line: 68, size: 512, align: 128, elements: !131)
!130 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !3304, !3311}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !130, line: 69, baseType: !127, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !130, line: 77, baseType: !134, size: 320, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !130, line: 77, size: 320, elements: !135)
!135 = !{!136, !3178, !3183, !3209, !3217, !3223, !3235, !3303}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 78, baseType: !137, size: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 78, size: 320, elements: !138)
!138 = !{!139, !145, !3176, !3177}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !137, file: !130, line: 84, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !122, line: 178, size: 128, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !122, line: 179, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !122, line: 179, baseType: !143, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !137, file: !130, line: 86, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !148)
!148 = !{!149, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3171, !3172, !3173, !3174, !3175}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !147, file: !44, line: 452, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !152)
!152 = !{!153, !156, !157, !166, !173, !174, !2697, !2698, !2699, !2700, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2741, !2749, !2750, !2751, !3066, !3067, !3068, !3069}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !151, file: !44, line: 611, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !122, line: 19, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !151, file: !44, line: 612, baseType: !155, size: 16, offset: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !151, file: !44, line: 613, baseType: !158, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !159, line: 23, baseType: !160)
!159 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 21, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !159, line: 22, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !122, line: 32, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !165, line: 49, baseType: !7)
!165 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !151, file: !44, line: 614, baseType: !167, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !159, line: 28, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 26, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !168, file: !159, line: 27, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !122, line: 33, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !165, line: 50, baseType: !7)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !151, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !151, file: !44, line: 622, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !178)
!178 = !{!179, !2571, !2584, !2588, !2594, !2598, !2602, !2606, !2610, !2614, !2618, !2619, !2623, !2627, !2647, !2673, !2677, !2683, !2688, !2692, !2693}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !177, file: !44, line: 1865, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !150, !183, !7}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !185, line: 89, size: 1536, elements: !186)
!185 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !188, !198, !206, !207, !230, !231, !235, !262, !337, !2556, !2557, !2558, !2563, !2564, !2565}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !184, file: !185, line: 91, baseType: !7, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !184, file: !185, line: 92, baseType: !189, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !190, line: 277, baseType: !191)
!190 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !190, line: 277, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !191, file: !190, line: 277, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !190, line: 70, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !190, line: 65, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !195, file: !190, line: 66, baseType: !7, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !184, file: !185, line: 93, baseType: !199, size: 128, offset: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !200, line: 38, size: 128, elements: !201)
!200 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !200, line: 39, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !199, file: !200, line: 39, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !184, file: !185, line: 94, baseType: !183, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !184, file: !185, line: 95, baseType: !208, size: 128, offset: 256)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !185, line: 47, size: 128, elements: !209)
!209 = !{!210, !226}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !185, line: 48, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !185, line: 48, size: 64, elements: !212)
!212 = !{!213, !222}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !185, line: 49, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !185, line: 49, size: 64, elements: !215)
!215 = !{!216, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !214, file: !185, line: 50, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !218, line: 21, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !220, line: 27, baseType: !7)
!220 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !214, file: !185, line: 50, baseType: !217, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !211, file: !185, line: 52, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !218, line: 23, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !220, line: 31, baseType: !225)
!225 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !185, line: 54, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !184, file: !185, line: 96, baseType: !150, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !184, file: !185, line: 98, baseType: !232, size: 256, offset: 448)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !184, file: !185, line: 101, baseType: !236, size: 32, offset: 704)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !237, line: 25, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !237, line: 26, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !237, line: 26, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !237, line: 30, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !237, line: 30, size: 32, elements: !244)
!244 = !{!245, !261}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !243, file: !237, line: 31, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !247, line: 83, baseType: !248)
!247 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !247, line: 71, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !247, line: 72, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 72, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !251, file: !247, line: 73, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !247, line: 20, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !254, file: !247, line: 21, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !258, line: 25, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 25, elements: !260)
!260 = !{}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !243, file: !237, line: 32, baseType: !126, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !184, file: !185, line: 102, baseType: !263, size: 64, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !185, line: 135, size: 1024, align: 512, elements: !266)
!266 = !{!267, !271, !272, !279, !288, !292, !296, !300, !301, !305, !310, !323, !331}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !265, file: !185, line: 136, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!126, !183, !7}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !265, file: !185, line: 137, baseType: !268, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !265, file: !185, line: 138, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!126, !276, !278}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !265, file: !185, line: 139, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!126, !276, !7, !283, !286}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !265, file: !185, line: 141, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!126, !276}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !265, file: !185, line: 142, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!126, !183}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !265, file: !185, line: 143, baseType: !297, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !183}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !265, file: !185, line: 144, baseType: !297, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !265, file: !185, line: 145, baseType: !302, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !183, !150}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !265, file: !185, line: 146, baseType: !306, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !183, !309, !126}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !265, file: !185, line: 147, baseType: !311, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !317}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !316, line: 21, flags: DIFlagFwdDecl)
!316 = !DIFile(filename: "./include/linux/file.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !319, line: 8, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !318, file: !319, line: 9, baseType: !314, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !318, file: !319, line: 10, baseType: !183, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !265, file: !185, line: 148, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!126, !327, !329}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !122, line: 30, baseType: !330)
!330 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !265, file: !185, line: 149, baseType: !332, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!183, !183, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !184, file: !185, line: 103, baseType: !338, size: 64, offset: 832)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !340)
!340 = !{!341, !342, !345, !346, !347, !351, !402, !486, !588, !671, !675, !676, !677, !678, !679, !688, !689, !690, !695, !699, !700, !703, !707, !710, !711, !712, !753, !2485, !2486, !2487, !2488, !2489, !2490, !2493, !2495, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2523, !2524, !2525, !2526, !2527, !2530, !2531, !2532, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !339, file: !44, line: 1417, baseType: !140, size: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !339, file: !44, line: 1418, baseType: !343, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !122, line: 16, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !122, line: 13, baseType: !217)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !339, file: !44, line: 1419, baseType: !229, size: 8, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !339, file: !44, line: 1420, baseType: !127, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !339, file: !44, line: 1421, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !122, line: 46, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !165, line: 88, baseType: !350)
!350 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !339, file: !44, line: 1422, baseType: !352, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !354)
!354 = !{!355, !356, !357, !363, !367, !371, !375, !379, !380, !390, !393, !394, !395, !399, !400, !401}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !44, line: 2229, baseType: !283, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !353, file: !44, line: 2230, baseType: !126, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !353, file: !44, line: 2238, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!126, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !353, file: !44, line: 2239, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !353, file: !44, line: 2240, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!183, !352, !126, !283, !123}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !353, file: !44, line: 2242, baseType: !372, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !338}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !353, file: !44, line: 2243, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !378, line: 189, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !44, line: 2244, baseType: !352, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !353, file: !44, line: 2245, baseType: !381, size: 64, offset: 512)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !122, line: 182, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !381, file: !122, line: 183, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !122, line: 186, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !122, line: 187, baseType: !384, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !385, file: !122, line: 187, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !353, file: !44, line: 2247, baseType: !391, offset: 576)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !392, line: 187, elements: !260)
!392 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !353, file: !44, line: 2248, baseType: !391, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !353, file: !44, line: 2249, baseType: !391, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !353, file: !44, line: 2250, baseType: !396, offset: 576)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 3)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !353, file: !44, line: 2252, baseType: !391, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !353, file: !44, line: 2253, baseType: !391, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !353, file: !44, line: 2254, baseType: !391, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !339, file: !44, line: 1423, baseType: !403, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !406)
!406 = !{!407, !411, !415, !416, !420, !426, !430, !431, !432, !436, !440, !441, !442, !443, !449, !454, !455, !462, !463, !464, !465, !469, !485}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !405, file: !44, line: 1936, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!150, !338}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !405, file: !44, line: 1937, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !150}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !405, file: !44, line: 1938, baseType: !412, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !405, file: !44, line: 1940, baseType: !417, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !150, !126}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !405, file: !44, line: 1941, baseType: !421, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!126, !150, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !405, file: !44, line: 1942, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!126, !150}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !405, file: !44, line: 1943, baseType: !412, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !405, file: !44, line: 1944, baseType: !372, size: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !405, file: !44, line: 1945, baseType: !433, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!126, !338, !126}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !405, file: !44, line: 1946, baseType: !437, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!126, !338}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !405, file: !44, line: 1947, baseType: !437, size: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !405, file: !44, line: 1948, baseType: !437, size: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !405, file: !44, line: 1949, baseType: !437, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !405, file: !44, line: 1950, baseType: !444, size: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!126, !183, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !405, file: !44, line: 1951, baseType: !450, size: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!126, !338, !453, !309}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !405, file: !44, line: 1952, baseType: !372, size: 64, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !405, file: !44, line: 1954, baseType: !456, size: 64, offset: 1024)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!126, !459, !183}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !461, line: 539, flags: DIFlagFwdDecl)
!461 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!462 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !405, file: !44, line: 1955, baseType: !456, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !405, file: !44, line: 1956, baseType: !456, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !405, file: !44, line: 1957, baseType: !456, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !405, file: !44, line: 1963, baseType: !466, size: 64, offset: 1280)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!126, !338, !128, !121}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !405, file: !44, line: 1964, baseType: !470, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !338, !474}
!473 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !476, line: 12, size: 256, elements: !477)
!476 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478, !479, !480, !481, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !475, file: !476, line: 13, baseType: !121, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !475, file: !476, line: 16, baseType: !126, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !475, file: !476, line: 23, baseType: !127, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !475, file: !476, line: 30, baseType: !127, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !475, file: !476, line: 33, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !130, line: 27, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !405, file: !44, line: 1966, baseType: !470, size: 64, offset: 1408)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !339, file: !44, line: 1424, baseType: !487, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !490)
!490 = !{!491, !557, !561, !565, !566, !567, !568, !569, !574, !579, !583}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !489, file: !38, line: 323, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!126, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !517, !518, !523, !524, !540, !541, !542}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !496, file: !38, line: 295, baseType: !385, size: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !496, file: !38, line: 296, baseType: !140, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !496, file: !38, line: 297, baseType: !140, size: 128, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !496, file: !38, line: 298, baseType: !140, size: 128, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !496, file: !38, line: 299, baseType: !503, size: 192, offset: 512)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !504, line: 53, size: 192, elements: !505)
!504 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !515, !516}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !504, line: 54, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !508, line: 13, baseType: !509)
!508 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !122, line: 175, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 173, size: 64, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !510, file: !122, line: 174, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !218, line: 22, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !220, line: 30, baseType: !350)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !503, file: !504, line: 55, baseType: !246, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !503, file: !504, line: 59, baseType: !140, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !496, file: !38, line: 300, baseType: !246, offset: 704)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !496, file: !38, line: 301, baseType: !519, size: 32, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !122, line: 168, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 166, size: 32, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !520, file: !122, line: 167, baseType: !126, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !496, file: !38, line: 302, baseType: !338, size: 64, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !496, file: !38, line: 303, baseType: !525, size: 64, offset: 832)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !526)
!526 = !{!527, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !38, line: 69, baseType: !528, size: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !38, line: 69, size: 32, elements: !529)
!529 = !{!530, !531, !532}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !528, file: !38, line: 70, baseType: !158, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !528, file: !38, line: 71, baseType: !167, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !528, file: !38, line: 72, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !534, line: 24, baseType: !535)
!534 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 22, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !535, file: !534, line: 23, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !534, line: 20, baseType: !164)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !496, file: !38, line: 304, baseType: !348, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !496, file: !38, line: 305, baseType: !127, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !496, file: !38, line: 306, baseType: !543, size: 576, offset: 1024)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !544)
!544 = !{!545, !547, !548, !549, !550, !551, !552, !553, !556}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !543, file: !38, line: 206, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !350)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !543, file: !38, line: 207, baseType: !546, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !543, file: !38, line: 208, baseType: !546, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !543, file: !38, line: 209, baseType: !546, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !543, file: !38, line: 210, baseType: !546, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !543, file: !38, line: 211, baseType: !546, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !543, file: !38, line: 212, baseType: !546, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !543, file: !38, line: 213, baseType: !554, size: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !555, line: 8, baseType: !514)
!555 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !543, file: !38, line: 214, baseType: !554, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !489, file: !38, line: 324, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!495, !338, !126}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !489, file: !38, line: 325, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !495}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !489, file: !38, line: 326, baseType: !492, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !489, file: !38, line: 327, baseType: !492, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !489, file: !38, line: 328, baseType: !492, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !489, file: !38, line: 329, baseType: !433, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !489, file: !38, line: 332, baseType: !570, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !150}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !489, file: !38, line: 333, baseType: !575, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!126, !150, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !489, file: !38, line: 335, baseType: !580, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!126, !150, !573}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !489, file: !38, line: 337, baseType: !584, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!126, !338, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !339, file: !44, line: 1425, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !592)
!592 = !{!593, !597, !598, !602, !603, !604, !619, !642, !646, !647, !670}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !591, file: !38, line: 429, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!126, !338, !126, !126, !327}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !591, file: !38, line: 430, baseType: !433, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !591, file: !38, line: 431, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!126, !338, !7}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !591, file: !38, line: 432, baseType: !599, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !591, file: !38, line: 433, baseType: !433, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !591, file: !38, line: 434, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!126, !338, !126, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !609, file: !38, line: 416, baseType: !126, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !609, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !609, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !609, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !609, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !609, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !609, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !609, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !591, file: !38, line: 435, baseType: !620, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!126, !338, !525, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !624, file: !38, line: 344, baseType: !126, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !624, file: !38, line: 345, baseType: !223, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !624, file: !38, line: 346, baseType: !223, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !624, file: !38, line: 347, baseType: !223, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !624, file: !38, line: 348, baseType: !223, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !624, file: !38, line: 349, baseType: !223, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !624, file: !38, line: 350, baseType: !223, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !624, file: !38, line: 351, baseType: !513, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !624, file: !38, line: 353, baseType: !513, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !624, file: !38, line: 354, baseType: !126, size: 32, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !624, file: !38, line: 355, baseType: !126, size: 32, offset: 608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !624, file: !38, line: 356, baseType: !223, size: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !624, file: !38, line: 357, baseType: !223, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !624, file: !38, line: 358, baseType: !223, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !624, file: !38, line: 359, baseType: !513, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !624, file: !38, line: 360, baseType: !126, size: 32, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !591, file: !38, line: 436, baseType: !643, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!126, !338, !587, !623}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !591, file: !38, line: 438, baseType: !620, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !591, file: !38, line: 439, baseType: !648, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!126, !338, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !652, file: !38, line: 410, baseType: !7, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !652, file: !38, line: 411, baseType: !656, size: 1344, offset: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 1344, elements: !397)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !669}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !38, line: 396, baseType: !7, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !657, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !657, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !657, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !657, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !657, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !657, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !657, file: !38, line: 404, baseType: !225, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !657, file: !38, line: 405, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !122, line: 126, baseType: !223)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !657, file: !38, line: 406, baseType: !668, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !591, file: !38, line: 440, baseType: !599, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !339, file: !44, line: 1426, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !339, file: !44, line: 1427, baseType: !127, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !339, file: !44, line: 1428, baseType: !127, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !339, file: !44, line: 1429, baseType: !127, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !339, file: !44, line: 1430, baseType: !183, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !339, file: !44, line: 1431, baseType: !680, size: 256, offset: 896)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !681, line: 35, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !684, !685, !687}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !681, line: 36, baseType: !507, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !680, file: !681, line: 42, baseType: !507, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !680, file: !681, line: 46, baseType: !686, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !247, line: 29, baseType: !254)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !680, file: !681, line: 47, baseType: !140, size: 128, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !339, file: !44, line: 1432, baseType: !126, size: 32, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !339, file: !44, line: 1433, baseType: !519, size: 32, offset: 1184)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !339, file: !44, line: 1437, baseType: !691, size: 64, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !339, file: !44, line: 1449, baseType: !696, size: 64, offset: 1280)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !200, line: 34, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !200, line: 35, baseType: !203, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !339, file: !44, line: 1450, baseType: !140, size: 128, offset: 1344)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !339, file: !44, line: 1451, baseType: !701, size: 64, offset: 1472)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !339, file: !44, line: 1452, baseType: !704, size: 64, offset: 1536)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !706, line: 40, flags: DIFlagFwdDecl)
!706 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !339, file: !44, line: 1453, baseType: !708, size: 64, offset: 1600)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !339, file: !44, line: 1454, baseType: !385, size: 128, offset: 1664)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !339, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !339, file: !44, line: 1456, baseType: !713, size: 2432, offset: 1856)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !714)
!714 = !{!715, !716, !717, !719, !751}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !38, line: 519, baseType: !7, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !713, file: !38, line: 520, baseType: !680, size: 256, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !713, file: !38, line: 521, baseType: !718, size: 192, offset: 320)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 192, elements: !397)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !713, file: !38, line: 522, baseType: !720, size: 1728, offset: 512)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 1728, elements: !397)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !722)
!722 = !{!723, !743, !744, !745, !746, !747, !748, !749, !750}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !721, file: !38, line: 223, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !726)
!726 = !{!727, !728, !741, !742}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !725, file: !38, line: 444, baseType: !126, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !725, file: !38, line: 445, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !731, file: !38, line: 311, baseType: !433, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !731, file: !38, line: 312, baseType: !433, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !731, file: !38, line: 313, baseType: !433, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !731, file: !38, line: 314, baseType: !433, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !731, file: !38, line: 315, baseType: !492, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !731, file: !38, line: 316, baseType: !492, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !731, file: !38, line: 317, baseType: !492, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !731, file: !38, line: 318, baseType: !584, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !725, file: !38, line: 446, baseType: !376, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !725, file: !38, line: 447, baseType: !724, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !721, file: !38, line: 224, baseType: !126, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !721, file: !38, line: 226, baseType: !140, size: 128, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !721, file: !38, line: 227, baseType: !127, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !721, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !721, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !721, file: !38, line: 230, baseType: !546, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !721, file: !38, line: 231, baseType: !546, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !721, file: !38, line: 232, baseType: !123, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !713, file: !38, line: 523, baseType: !752, size: 192, offset: 2240)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 192, elements: !397)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !339, file: !44, line: 1458, baseType: !754, size: 2112, offset: 4288)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !755)
!755 = !{!756, !757, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !754, file: !44, line: 1411, baseType: !126, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !754, file: !44, line: 1412, baseType: !758, size: 128, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !759, line: 40, baseType: !760)
!759 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !759, line: 36, size: 128, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !759, line: 37, baseType: !246)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !760, file: !759, line: 38, baseType: !140, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !754, file: !44, line: 1413, baseType: !765, size: 1920, offset: 192)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 1920, elements: !397)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !767, line: 12, size: 640, elements: !768)
!767 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !785, !787, !2483, !2484}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !766, file: !767, line: 13, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !771, line: 17, size: 320, elements: !772)
!771 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !774, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !770, file: !771, line: 18, baseType: !126, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !770, file: !771, line: 19, baseType: !126, size: 32, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !770, file: !771, line: 20, baseType: !758, size: 128, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !770, file: !771, line: 22, baseType: !777, size: 128, align: 64, offset: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !122, line: 216, size: 128, align: 64, elements: !778)
!778 = !{!779, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !122, line: 217, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !777, file: !122, line: 218, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !780}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !766, file: !767, line: 14, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !766, file: !767, line: 15, baseType: !788, size: 64, offset: 384)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !789, line: 16, size: 64, elements: !790)
!789 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !788, file: !789, line: 17, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !706, line: 640, size: 48640, elements: !794)
!794 = !{!795, !801, !803, !804, !809, !810, !811, !812, !813, !814, !815, !816, !820, !845, !856, !948, !949, !950, !961, !962, !964, !965, !1771, !1772, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1854, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1869, !1870, !1871, !1873, !1874, !1875, !1876, !1877, !1878, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1902, !1907, !1908, !1909, !1910, !1911, !1915, !1918, !1921, !1924, !1927, !1930, !2031, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2079, !2080, !2081, !2082, !2083, !2088, !2089, !2090, !2093, !2094, !2097, !2100, !2103, !2104, !2144, !2147, !2148, !2227, !2228, !2231, !2232, !2235, !2236, !2237, !2241, !2242, !2243, !2256, !2257, !2258, !2268, !2273, !2274, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !793, file: !706, line: 646, baseType: !796, size: 128)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !797, line: 56, size: 128, elements: !798)
!797 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 57, baseType: !127, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !796, file: !797, line: 58, baseType: !217, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !793, file: !706, line: 649, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !473)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !793, file: !706, line: 657, baseType: !123, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !793, file: !706, line: 658, baseType: !805, size: 32, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !113, line: 113, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !113, line: 111, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !806, file: !113, line: 112, baseType: !519, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !706, line: 660, baseType: !7, size: 32, offset: 288)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !793, file: !706, line: 661, baseType: !7, size: 32, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !793, file: !706, line: 684, baseType: !126, size: 32, offset: 352)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !793, file: !706, line: 686, baseType: !126, size: 32, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !793, file: !706, line: 687, baseType: !126, size: 32, offset: 416)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !793, file: !706, line: 688, baseType: !126, size: 32, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !793, file: !706, line: 689, baseType: !7, size: 32, offset: 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !793, file: !706, line: 691, baseType: !817, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !706, line: 691, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !793, file: !706, line: 692, baseType: !821, size: 832, offset: 576)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !706, line: 451, size: 832, elements: !822)
!822 = !{!823, !828, !836, !837, !838, !839, !840, !841, !842, !843}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !821, file: !706, line: 453, baseType: !824, size: 128)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !706, line: 325, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !824, file: !706, line: 326, baseType: !127, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !824, file: !706, line: 327, baseType: !217, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !821, file: !706, line: 454, baseType: !829, size: 192, align: 64, offset: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !830, line: 24, size: 192, align: 64, elements: !831)
!830 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !829, file: !830, line: 25, baseType: !127, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !829, file: !830, line: 26, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !829, file: !830, line: 27, baseType: !834, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !821, file: !706, line: 455, baseType: !140, size: 128, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !821, file: !706, line: 456, baseType: !7, size: 32, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !821, file: !706, line: 458, baseType: !223, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !821, file: !706, line: 459, baseType: !223, size: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !821, file: !706, line: 460, baseType: !223, size: 64, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !821, file: !706, line: 461, baseType: !223, size: 64, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !821, file: !706, line: 463, baseType: !223, size: 64, offset: 768)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !821, file: !706, line: 465, baseType: !844, offset: 832)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !706, line: 415, elements: !260)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !793, file: !706, line: 693, baseType: !846, size: 384, offset: 1408)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !706, line: 489, size: 384, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !846, file: !706, line: 490, baseType: !140, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !846, file: !706, line: 491, baseType: !127, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !846, file: !706, line: 492, baseType: !127, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !846, file: !706, line: 493, baseType: !7, size: 32, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !846, file: !706, line: 494, baseType: !155, size: 16, offset: 288)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !846, file: !706, line: 495, baseType: !155, size: 16, offset: 304)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !846, file: !706, line: 497, baseType: !855, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !793, file: !706, line: 697, baseType: !857, size: 1792, offset: 1792)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !706, line: 507, size: 1792, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !945, !946}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !857, file: !706, line: 508, baseType: !829, size: 192, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !857, file: !706, line: 515, baseType: !223, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !857, file: !706, line: 516, baseType: !223, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !857, file: !706, line: 517, baseType: !223, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !857, file: !706, line: 518, baseType: !223, size: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !857, file: !706, line: 519, baseType: !223, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !857, file: !706, line: 526, baseType: !513, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !857, file: !706, line: 527, baseType: !223, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !706, line: 528, baseType: !7, size: 32, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !857, file: !706, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !857, file: !706, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !857, file: !706, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !857, file: !706, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !857, file: !706, line: 563, baseType: !873, size: 512, offset: 704)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !874)
!874 = !{!875, !883, !884, !889, !939, !942, !943, !944}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !873, file: !20, line: 119, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !877, line: 9, size: 256, elements: !878)
!877 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !876, file: !877, line: 10, baseType: !829, size: 192, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !876, file: !877, line: 11, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !882, line: 29, baseType: !513)
!882 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !873, file: !20, line: 120, baseType: !881, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !873, file: !20, line: 121, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!19, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !873, file: !20, line: 122, baseType: !890, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !892)
!892 = !{!893, !913, !914, !917, !922, !923, !934, !938}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !891, file: !20, line: 160, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !895, file: !20, line: 215, baseType: !686)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !895, file: !20, line: 216, baseType: !7, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !895, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !895, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !895, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !895, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !895, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !895, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !895, file: !20, line: 233, baseType: !881, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !895, file: !20, line: 234, baseType: !888, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !895, file: !20, line: 235, baseType: !881, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !895, file: !20, line: 236, baseType: !888, size: 64, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !895, file: !20, line: 237, baseType: !910, size: 4096, offset: 512)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 4096, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 8)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !891, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !891, file: !20, line: 162, baseType: !915, size: 32, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !122, line: 27, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !165, line: 96, baseType: !126)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !891, file: !20, line: 163, baseType: !918, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !190, line: 276, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !190, line: 276, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !919, file: !190, line: 276, baseType: !194, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !891, file: !20, line: 164, baseType: !888, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !891, file: !20, line: 165, baseType: !924, size: 128, offset: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !877, line: 14, size: 128, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !924, file: !877, line: 15, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !830, line: 125, size: 128, elements: !928)
!928 = !{!929, !933}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !927, file: !830, line: 126, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !830, line: 31, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !930, file: !830, line: 32, baseType: !834, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !927, file: !830, line: 127, baseType: !834, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !891, file: !20, line: 166, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!881}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !891, file: !20, line: 167, baseType: !881, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !873, file: !20, line: 123, baseType: !940, size: 8, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !218, line: 17, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !220, line: 21, baseType: !229)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !873, file: !20, line: 124, baseType: !940, size: 8, offset: 456)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !873, file: !20, line: 125, baseType: !940, size: 8, offset: 464)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !873, file: !20, line: 126, baseType: !940, size: 8, offset: 472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !857, file: !706, line: 572, baseType: !873, size: 512, offset: 1216)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !857, file: !706, line: 580, baseType: !947, size: 64, offset: 1728)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !793, file: !706, line: 721, baseType: !7, size: 32, offset: 3584)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !793, file: !706, line: 722, baseType: !126, size: 32, offset: 3616)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !793, file: !706, line: 723, baseType: !951, size: 64, offset: 3648)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !954, line: 17, baseType: !955)
!954 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !954, line: 17, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !955, file: !954, line: 17, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !959)
!959 = !{!960}
!960 = !DISubrange(count: 1)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !793, file: !706, line: 724, baseType: !953, size: 64, offset: 3712)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !793, file: !706, line: 749, baseType: !963, offset: 3776)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !706, line: 290, elements: !260)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !793, file: !706, line: 751, baseType: !140, size: 128, offset: 3776)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !793, file: !706, line: 757, baseType: !966, size: 64, offset: 3904)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !130, line: 388, size: 7296, elements: !968)
!968 = !{!969, !1767}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !130, line: 389, baseType: !970, size: 7296)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !130, line: 389, size: 7296, elements: !971)
!971 = !{!972, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1669, !1675, !1678, !1717, !1718, !1740, !1741, !1744, !1745, !1746, !1749, !1750, !1751, !1754, !1766}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !970, file: !130, line: 390, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !130, line: 305, size: 1472, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !981, !982, !983, !990, !991, !996, !997, !1000, !1085, !1086, !1617, !1618, !1619}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !974, file: !130, line: 308, baseType: !127, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !974, file: !130, line: 309, baseType: !127, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !974, file: !130, line: 313, baseType: !973, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !974, file: !130, line: 313, baseType: !973, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !974, file: !130, line: 315, baseType: !829, size: 192, align: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !974, file: !130, line: 323, baseType: !127, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !974, file: !130, line: 327, baseType: !966, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !974, file: !130, line: 333, baseType: !984, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !461, line: 284, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !461, line: 284, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !985, file: !461, line: 284, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !989, line: 19, baseType: !127)
!989 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !974, file: !130, line: 334, baseType: !127, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !974, file: !130, line: 343, baseType: !992, size: 256, offset: 704)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !974, file: !130, line: 340, size: 256, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !992, file: !130, line: 341, baseType: !829, size: 192, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !992, file: !130, line: 342, baseType: !127, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !974, file: !130, line: 351, baseType: !140, size: 128, offset: 960)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !974, file: !130, line: 353, baseType: !998, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !130, line: 353, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !974, file: !130, line: 356, baseType: !1001, size: 64, offset: 1152)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1004)
!1004 = !{!1005, !1009, !1010, !1014, !1018, !1059, !1063, !1067, !1071, !1072, !1073, !1077, !1081}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1003, file: !14, line: 558, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !973}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1003, file: !14, line: 559, baseType: !1006, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1003, file: !14, line: 560, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!126, !973, !127}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1003, file: !14, line: 561, baseType: !1015, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!126, !973}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1003, file: !14, line: 562, baseType: !1019, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !130, line: 682, baseType: !7)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1038, !1045, !1051, !1052, !1053, !1055, !1057}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1024, file: !14, line: 509, baseType: !973, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1024, file: !14, line: 511, baseType: !121, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1024, file: !14, line: 512, baseType: !127, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1024, file: !14, line: 513, baseType: !127, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1024, file: !14, line: 514, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !461, line: 385, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 385, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1034, file: !461, line: 385, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !989, line: 15, baseType: !127)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1024, file: !14, line: 516, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !461, line: 359, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 359, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1041, file: !461, line: 359, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !989, line: 16, baseType: !127)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1024, file: !14, line: 519, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !989, line: 21, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !989, line: 21, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1047, file: !989, line: 21, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !989, line: 14, baseType: !127)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1024, file: !14, line: 521, baseType: !128, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1024, file: !14, line: 522, baseType: !128, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1024, file: !14, line: 528, baseType: !1054, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1024, file: !14, line: 532, baseType: !1056, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1024, file: !14, line: 536, baseType: !1058, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !461, line: 509, baseType: !128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1003, file: !14, line: 563, baseType: !1060, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1022, !1023, !13}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1003, file: !14, line: 565, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1023, !127, !127}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1003, file: !14, line: 567, baseType: !1068, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!127, !973}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1003, file: !14, line: 571, baseType: !1019, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1003, file: !14, line: 574, baseType: !1019, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1003, file: !14, line: 579, baseType: !1074, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!126, !973, !127, !123, !126, !126}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1003, file: !14, line: 585, baseType: !1078, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!283, !973}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1003, file: !14, line: 615, baseType: !1082, size: 64, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!128, !973, !127}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !974, file: !130, line: 359, baseType: !127, size: 64, offset: 1216)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !974, file: !130, line: 361, baseType: !1087, size: 64, offset: 1280)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !1089)
!1089 = !{!1090, !1100, !1101, !1102, !1373, !1374, !1375, !1376, !1377, !1379, !1380, !1381, !1411, !1599, !1608, !1609, !1610, !1611, !1612, !1613, !1616}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1088, file: !44, line: 920, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !44, line: 917, size: 128, elements: !1092)
!1092 = !{!1093, !1099}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1091, file: !44, line: 918, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1095, line: 58, size: 64, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !1095, line: 59, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1091, file: !44, line: 919, baseType: !777, size: 128, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1088, file: !44, line: 921, baseType: !318, size: 128, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1088, file: !44, line: 922, baseType: !150, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1088, file: !44, line: 923, baseType: !1103, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1106)
!1106 = !{!1107, !1108, !1112, !1123, !1127, !1155, !1156, !1160, !1173, !1174, !1191, !1195, !1196, !1200, !1201, !1205, !1210, !1211, !1215, !1219, !1328, !1332, !1336, !1340, !1341, !1347, !1351, !1356, !1360, !1364, !1368, !1372}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1105, file: !44, line: 1823, baseType: !376, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1105, file: !44, line: 1824, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!348, !1087, !348, !126}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1105, file: !44, line: 1825, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!1116, !1087, !309, !1119, !1122}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !122, line: 60, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !165, line: 73, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !165, line: 15, baseType: !473)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 55, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !165, line: 72, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !165, line: 16, baseType: !127)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1105, file: !44, line: 1826, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1116, !1087, !283, !1119, !1122}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1105, file: !44, line: 1827, baseType: !1128, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1116, !1131, !1153}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1140, !1141, !1142, !1145, !1146}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1132, file: !44, line: 321, baseType: !1087, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1132, file: !44, line: 326, baseType: !348, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1132, file: !44, line: 327, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1131, !473, !473}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1132, file: !44, line: 328, baseType: !123, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1132, file: !44, line: 329, baseType: !126, size: 32, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1132, file: !44, line: 330, baseType: !1143, size: 16, offset: 288)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !218, line: 19, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !220, line: 24, baseType: !155)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1132, file: !44, line: 331, baseType: !1143, size: 16, offset: 304)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !44, line: 332, baseType: !1147, size: 64, offset: 320)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !44, line: 332, size: 64, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1147, file: !44, line: 333, baseType: !7, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1147, file: !44, line: 334, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1105, file: !44, line: 1828, baseType: !1128, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1105, file: !44, line: 1829, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!126, !1131, !329}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1105, file: !44, line: 1830, baseType: !1161, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!126, !1087, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1166)
!1166 = !{!1167, !1172}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1165, file: !44, line: 1777, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!126, !1164, !283, !126, !348, !223, !7}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1165, file: !44, line: 1778, baseType: !348, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1105, file: !44, line: 1831, baseType: !1161, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1105, file: !44, line: 1832, baseType: !1175, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1178, !1087, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1179, line: 52, baseType: !7)
!1179 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1182, line: 43, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1181, file: !1182, line: 44, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1182, line: 37, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !1087, !1189, !1180}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1181, file: !1182, line: 45, baseType: !1178, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1105, file: !44, line: 1833, baseType: !1192, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!473, !1087, !7, !127}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1105, file: !44, line: 1834, baseType: !1192, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1105, file: !44, line: 1835, baseType: !1197, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!126, !1087, !973}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1105, file: !44, line: 1836, baseType: !127, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1105, file: !44, line: 1837, baseType: !1202, size: 64, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!126, !150, !1087}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1105, file: !44, line: 1838, baseType: !1206, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!126, !1087, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !123)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1105, file: !44, line: 1839, baseType: !1202, size: 64, offset: 1024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1105, file: !44, line: 1840, baseType: !1212, size: 64, offset: 1088)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!126, !1087, !348, !348, !126}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1105, file: !44, line: 1841, baseType: !1216, size: 64, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!126, !126, !1087, !126}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !44, line: 1842, baseType: !1220, size: 64, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!126, !1087, !126, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1257, !1258, !1259, !1272, !1304}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1224, file: !44, line: 1063, baseType: !1223, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1224, file: !44, line: 1064, baseType: !140, size: 128, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1224, file: !44, line: 1065, baseType: !385, size: 128, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1224, file: !44, line: 1066, baseType: !140, size: 128, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1224, file: !44, line: 1069, baseType: !140, size: 128, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1224, file: !44, line: 1072, baseType: !1209, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1224, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1224, file: !44, line: 1074, baseType: !229, size: 8, offset: 672)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1224, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1224, file: !44, line: 1076, baseType: !126, size: 32, offset: 736)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1224, file: !44, line: 1077, baseType: !758, size: 128, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1224, file: !44, line: 1078, baseType: !1087, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1224, file: !44, line: 1079, baseType: !348, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1224, file: !44, line: 1080, baseType: !348, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1224, file: !44, line: 1082, baseType: !1241, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1243)
!1243 = !{!1244, !1252, !1253, !1254, !1255, !1256}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1242, file: !44, line: 1315, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1246, line: 20, baseType: !1247)
!1246 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 11, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1247, file: !1246, line: 12, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !258, line: 33, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 31, elements: !260)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1242, file: !44, line: 1316, baseType: !126, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1242, file: !44, line: 1317, baseType: !126, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1242, file: !44, line: 1318, baseType: !1241, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1242, file: !44, line: 1319, baseType: !1087, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1242, file: !44, line: 1320, baseType: !777, size: 128, align: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1224, file: !44, line: 1084, baseType: !127, size: 64, offset: 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1224, file: !44, line: 1085, baseType: !127, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1224, file: !44, line: 1087, baseType: !1260, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1263)
!1263 = !{!1264, !1268}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1262, file: !44, line: 1012, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1223, !1223}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1262, file: !44, line: 1013, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1223}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1224, file: !44, line: 1088, baseType: !1273, size: 64, offset: 1344)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1276)
!1276 = !{!1277, !1281, !1285, !1286, !1290, !1294, !1298, !1303}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1275, file: !44, line: 1017, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1209, !1209}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1275, file: !44, line: 1018, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1209}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1275, file: !44, line: 1019, baseType: !1269, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1275, file: !44, line: 1020, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!126, !1223, !126}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1275, file: !44, line: 1021, baseType: !1291, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!329, !1223}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1275, file: !44, line: 1022, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!126, !1223, !126, !143}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1275, file: !44, line: 1023, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1223, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1275, file: !44, line: 1024, baseType: !1291, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1224, file: !44, line: 1097, baseType: !1305, size: 256, offset: 1408)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !44, line: 1089, size: 256, elements: !1306)
!1306 = !{!1307, !1316, !1322}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1305, file: !44, line: 1090, baseType: !1308, size: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1309, line: 10, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1315}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1308, file: !1309, line: 11, baseType: !217, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1308, file: !1309, line: 12, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1309, line: 5, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1308, file: !1309, line: 13, baseType: !140, size: 128, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1305, file: !44, line: 1091, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1309, line: 17, size: 64, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1317, file: !1309, line: 18, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1309, line: 16, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1305, file: !44, line: 1096, baseType: !1323, size: 192)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1305, file: !44, line: 1092, size: 192, elements: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1323, file: !44, line: 1093, baseType: !140, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1323, file: !44, line: 1094, baseType: !126, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1323, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1105, file: !44, line: 1843, baseType: !1329, size: 64, offset: 1280)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1116, !1087, !128, !126, !1119, !1122, !126}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1105, file: !44, line: 1844, baseType: !1333, size: 64, offset: 1344)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!127, !1087, !127, !127, !127, !127}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1105, file: !44, line: 1845, baseType: !1337, size: 64, offset: 1408)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!126, !126}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1105, file: !44, line: 1846, baseType: !1220, size: 64, offset: 1472)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1105, file: !44, line: 1847, baseType: !1342, size: 64, offset: 1536)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1116, !1345, !1087, !1122, !1119, !7}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !706, line: 53, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1105, file: !44, line: 1848, baseType: !1348, size: 64, offset: 1600)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1116, !1087, !1122, !1345, !1119, !7}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1105, file: !44, line: 1849, baseType: !1352, size: 64, offset: 1664)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!126, !1087, !473, !1355, !1302}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1105, file: !44, line: 1850, baseType: !1357, size: 64, offset: 1728)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!473, !1087, !126, !348, !348}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1105, file: !44, line: 1852, baseType: !1361, size: 64, offset: 1792)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !459, !1087}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1105, file: !44, line: 1856, baseType: !1365, size: 64, offset: 1856)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1116, !1087, !348, !1087, !348, !1119, !7}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1105, file: !44, line: 1858, baseType: !1369, size: 64, offset: 1920)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!348, !1087, !348, !1087, !348, !348, !7}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1105, file: !44, line: 1861, baseType: !1212, size: 64, offset: 1984)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1088, file: !44, line: 929, baseType: !246, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1088, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1088, file: !44, line: 931, baseType: !507, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1088, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1088, file: !44, line: 933, baseType: !1378, size: 32, offset: 544)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !122, line: 150, baseType: !7)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1088, file: !44, line: 934, baseType: !503, size: 192, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1088, file: !44, line: 935, baseType: !348, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1088, file: !44, line: 936, baseType: !1382, size: 192, offset: 832)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !1383)
!1383 = !{!1384, !1385, !1407, !1408, !1409, !1410}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !44, line: 886, baseType: !1245)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1382, file: !44, line: 887, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1396, !1397, !1398, !1399}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1387, file: !53, line: 61, baseType: !805, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1387, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !53, line: 63, baseType: !246, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1387, file: !53, line: 65, baseType: !1393, size: 256, offset: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 4)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1387, file: !53, line: 66, baseType: !381, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1387, file: !53, line: 68, baseType: !758, size: 128, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1387, file: !53, line: 69, baseType: !777, size: 128, align: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1387, file: !53, line: 70, baseType: !1400, size: 128, offset: 640)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 128, elements: !959)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1401, file: !53, line: 55, baseType: !126, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1401, file: !53, line: 56, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1382, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1382, file: !44, line: 889, baseType: !158, size: 32, offset: 96)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1382, file: !44, line: 889, baseType: !158, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1382, file: !44, line: 890, baseType: !126, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1088, file: !44, line: 937, baseType: !1412, size: 64, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1415, line: 111, size: 1280, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1436, !1437, !1438, !1439, !1440, !1441, !1552, !1553, !1554, !1555, !1581, !1584, !1594}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1415, line: 112, baseType: !519, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !1415, line: 120, baseType: !158, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1414, file: !1415, line: 121, baseType: !167, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1414, file: !1415, line: 122, baseType: !158, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1414, file: !1415, line: 123, baseType: !167, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1414, file: !1415, line: 124, baseType: !158, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1414, file: !1415, line: 125, baseType: !167, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1414, file: !1415, line: 126, baseType: !158, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1414, file: !1415, line: 127, baseType: !167, size: 32, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1414, file: !1415, line: 128, baseType: !7, size: 32, offset: 288)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1414, file: !1415, line: 129, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1429, line: 26, baseType: !1430)
!1429 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1429, line: 24, size: 64, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1430, file: !1429, line: 25, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 2)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1414, file: !1415, line: 130, baseType: !1428, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1414, file: !1415, line: 131, baseType: !1428, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1414, file: !1415, line: 132, baseType: !1428, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1414, file: !1415, line: 133, baseType: !1428, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1414, file: !1415, line: 135, baseType: !229, size: 8, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1414, file: !1415, line: 137, baseType: !1442, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1444, line: 189, size: 1664, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447, !1452, !1457, !1458, !1461, !1462, !1467, !1468, !1469, !1470, !1473, !1474, !1475, !1477, !1478, !1516, !1537}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1443, file: !1444, line: 190, baseType: !805, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1443, file: !1444, line: 191, baseType: !1448, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1444, line: 28, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !122, line: 98, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !218, line: 20, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !220, line: 26, baseType: !126)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 192, baseType: !1453, size: 192, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 192, size: 192, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1453, file: !1444, line: 193, baseType: !140, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1453, file: !1444, line: 194, baseType: !829, size: 192, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1443, file: !1444, line: 199, baseType: !680, size: 256, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1443, file: !1444, line: 200, baseType: !1459, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1444, line: 200, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1443, file: !1444, line: 201, baseType: !123, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 202, baseType: !1463, size: 64, offset: 640)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 202, size: 64, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1463, file: !1444, line: 203, baseType: !554, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1463, file: !1444, line: 204, baseType: !554, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1443, file: !1444, line: 206, baseType: !554, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1443, file: !1444, line: 207, baseType: !158, size: 32, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1443, file: !1444, line: 208, baseType: !167, size: 32, offset: 800)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1443, file: !1444, line: 209, baseType: !1471, size: 32, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1444, line: 31, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 104, baseType: !217)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1443, file: !1444, line: 210, baseType: !155, size: 16, offset: 864)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1443, file: !1444, line: 211, baseType: !155, size: 16, offset: 880)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1443, file: !1444, line: 215, baseType: !1476, size: 16, offset: 896)
!1476 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1444, line: 222, baseType: !127, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 239, baseType: !1479, size: 320, offset: 1024)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 239, size: 320, elements: !1480)
!1480 = !{!1481, !1508}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1479, file: !1444, line: 240, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1444, line: 108, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1497, !1500, !1507}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1482, file: !1444, line: 110, baseType: !127, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1444, line: 111, baseType: !1486, size: 64, offset: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !1444, line: 111, size: 64, elements: !1487)
!1487 = !{!1488, !1496}
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1444, line: 112, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !1444, line: 112, size: 64, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1489, file: !1444, line: 114, baseType: !1143, size: 16)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1489, file: !1444, line: 115, baseType: !1493, size: 48, offset: 16)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 48, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 6)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1486, file: !1444, line: 121, baseType: !127, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1482, file: !1444, line: 123, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1444, line: 96, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1482, file: !1444, line: 124, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1444, line: 102, size: 192, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1502, file: !1444, line: 103, baseType: !777, size: 128, align: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1502, file: !1444, line: 104, baseType: !805, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1502, file: !1444, line: 105, baseType: !329, size: 8, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1482, file: !1444, line: 125, baseType: !283, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1444, line: 241, baseType: !1509, size: 320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !1444, line: 241, size: 320, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1509, file: !1444, line: 242, baseType: !127, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1509, file: !1444, line: 243, baseType: !127, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1509, file: !1444, line: 244, baseType: !1498, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1509, file: !1444, line: 245, baseType: !1501, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1509, file: !1444, line: 246, baseType: !309, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 254, baseType: !1517, size: 256, offset: 1344)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 254, size: 256, elements: !1518)
!1518 = !{!1519, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1517, file: !1444, line: 255, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1444, line: 128, size: 256, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1520, file: !1444, line: 129, baseType: !123, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1520, file: !1444, line: 130, baseType: !1524, size: 256)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !1394)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1444, line: 256, baseType: !1526, size: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1444, line: 256, size: 256, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1526, file: !1444, line: 258, baseType: !140, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1526, file: !1444, line: 259, baseType: !1530, size: 128, offset: 128)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1531, line: 22, size: 128, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1530, file: !1531, line: 23, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1531, line: 23, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1530, file: !1531, line: 24, baseType: !127, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1443, file: !1444, line: 274, baseType: !1538, size: 64, offset: 1600)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1444, line: 170, size: 192, elements: !1540)
!1540 = !{!1541, !1550, !1551}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1539, file: !1444, line: 171, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1444, line: 165, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!126, !1442, !1546, !1548, !1442}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1539, file: !1444, line: 172, baseType: !1442, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1539, file: !1444, line: 173, baseType: !1498, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1414, file: !1415, line: 138, baseType: !1442, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1414, file: !1415, line: 139, baseType: !1442, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1414, file: !1415, line: 140, baseType: !1442, size: 64, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1414, file: !1415, line: 145, baseType: !1556, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1558, line: 13, size: 896, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1557, file: !1558, line: 14, baseType: !805, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1557, file: !1558, line: 15, baseType: !519, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1557, file: !1558, line: 16, baseType: !519, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1557, file: !1558, line: 21, baseType: !507, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1557, file: !1558, line: 27, baseType: !127, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1557, file: !1558, line: 28, baseType: !127, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1557, file: !1558, line: 29, baseType: !507, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1557, file: !1558, line: 32, baseType: !385, size: 128, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1557, file: !1558, line: 33, baseType: !158, size: 32, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1557, file: !1558, line: 37, baseType: !507, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1557, file: !1558, line: 44, baseType: !1571, size: 256, offset: 640)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1572, line: 15, size: 256, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1571, file: !1572, line: 16, baseType: !686)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1571, file: !1572, line: 18, baseType: !126, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1571, file: !1572, line: 19, baseType: !126, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1571, file: !1572, line: 20, baseType: !126, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1571, file: !1572, line: 21, baseType: !126, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1571, file: !1572, line: 22, baseType: !127, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1571, file: !1572, line: 23, baseType: !127, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1414, file: !1415, line: 146, baseType: !1582, size: 64, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !130, line: 516, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1414, file: !1415, line: 147, baseType: !1585, size: 64, offset: 1088)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1415, line: 25, size: 64, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1586, file: !1415, line: 26, baseType: !519, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1586, file: !1415, line: 27, baseType: !126, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1586, file: !1415, line: 28, baseType: !1591, offset: 64)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !1592)
!1592 = !{!1593}
!1593 = !DISubrange(count: 0)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 149, baseType: !1595, size: 128, offset: 1152)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 149, size: 128, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1595, file: !1415, line: 150, baseType: !126, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1595, file: !1415, line: 151, baseType: !777, size: 128, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1088, file: !44, line: 938, baseType: !1600, size: 256, offset: 1088)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1607}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1600, file: !44, line: 897, baseType: !127, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1600, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1600, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1600, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1600, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1600, file: !44, line: 904, baseType: !348, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1088, file: !44, line: 940, baseType: !223, size: 64, offset: 1344)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1088, file: !44, line: 945, baseType: !123, size: 64, offset: 1408)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1088, file: !44, line: 949, baseType: !140, size: 128, offset: 1472)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1088, file: !44, line: 950, baseType: !140, size: 128, offset: 1600)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1088, file: !44, line: 952, baseType: !146, size: 64, offset: 1728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1088, file: !44, line: 953, baseType: !1614, size: 32, offset: 1792)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1615, line: 8, baseType: !217)
!1615 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1088, file: !44, line: 954, baseType: !1614, size: 32, offset: 1824)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !974, file: !130, line: 362, baseType: !123, size: 64, offset: 1344)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !974, file: !130, line: 365, baseType: !507, size: 64, offset: 1408)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !974, file: !130, line: 373, baseType: !1620, offset: 1472)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !130, line: 296, elements: !260)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !970, file: !130, line: 391, baseType: !930, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !970, file: !130, line: 392, baseType: !223, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !970, file: !130, line: 394, baseType: !1333, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !970, file: !130, line: 398, baseType: !127, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !970, file: !130, line: 399, baseType: !127, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !970, file: !130, line: 405, baseType: !127, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !970, file: !130, line: 406, baseType: !127, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !970, file: !130, line: 407, baseType: !1629, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !461, line: 286, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 286, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1631, file: !461, line: 286, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !989, line: 18, baseType: !127)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !970, file: !130, line: 416, baseType: !519, size: 32, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !970, file: !130, line: 428, baseType: !519, size: 32, offset: 608)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !970, file: !130, line: 437, baseType: !519, size: 32, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !970, file: !130, line: 447, baseType: !519, size: 32, offset: 672)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !970, file: !130, line: 450, baseType: !507, size: 64, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !970, file: !130, line: 452, baseType: !126, size: 32, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !970, file: !130, line: 454, baseType: !246, offset: 800)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !970, file: !130, line: 457, baseType: !680, size: 256, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !970, file: !130, line: 459, baseType: !140, size: 128, offset: 1088)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !970, file: !130, line: 466, baseType: !127, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !970, file: !130, line: 467, baseType: !127, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !970, file: !130, line: 469, baseType: !127, size: 64, offset: 1344)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !970, file: !130, line: 470, baseType: !127, size: 64, offset: 1408)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !970, file: !130, line: 471, baseType: !509, size: 64, offset: 1472)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !970, file: !130, line: 472, baseType: !127, size: 64, offset: 1536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !970, file: !130, line: 473, baseType: !127, size: 64, offset: 1600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !970, file: !130, line: 474, baseType: !127, size: 64, offset: 1664)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !970, file: !130, line: 475, baseType: !127, size: 64, offset: 1728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !970, file: !130, line: 477, baseType: !246, offset: 1792)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !970, file: !130, line: 478, baseType: !127, size: 64, offset: 1792)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !970, file: !130, line: 478, baseType: !127, size: 64, offset: 1856)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !970, file: !130, line: 478, baseType: !127, size: 64, offset: 1920)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !970, file: !130, line: 478, baseType: !127, size: 64, offset: 1984)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !970, file: !130, line: 479, baseType: !127, size: 64, offset: 2048)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !970, file: !130, line: 479, baseType: !127, size: 64, offset: 2112)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !970, file: !130, line: 479, baseType: !127, size: 64, offset: 2176)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !970, file: !130, line: 480, baseType: !127, size: 64, offset: 2240)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !970, file: !130, line: 480, baseType: !127, size: 64, offset: 2304)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !970, file: !130, line: 480, baseType: !127, size: 64, offset: 2368)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !970, file: !130, line: 480, baseType: !127, size: 64, offset: 2432)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !970, file: !130, line: 482, baseType: !1666, size: 2816, offset: 2496)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 2816, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 44)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !970, file: !130, line: 488, baseType: !1670, size: 256, offset: 5312)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1671, line: 60, size: 256, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1670, file: !1671, line: 61, baseType: !1674, size: 256)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 256, elements: !1394)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !970, file: !130, line: 490, baseType: !1676, size: 64, offset: 5568)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !130, line: 490, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !970, file: !130, line: 493, baseType: !1679, size: 896, offset: 5632)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1680, line: 53, baseType: !1681)
!1680 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 13, size: 896, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1689, !1690, !1691, !1692, !1712, !1713, !1714}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1681, file: !1680, line: 18, baseType: !223, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1681, file: !1680, line: 28, baseType: !509, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1681, file: !1680, line: 31, baseType: !680, size: 256, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1681, file: !1680, line: 32, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1680, line: 32, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1681, file: !1680, line: 37, baseType: !155, size: 16, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !1680, line: 40, baseType: !503, size: 192, offset: 512)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1681, file: !1680, line: 41, baseType: !123, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1681, file: !1680, line: 42, baseType: !1693, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1696, line: 13, size: 896, elements: !1697)
!1696 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1695, file: !1696, line: 14, baseType: !123, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1695, file: !1696, line: 15, baseType: !127, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1695, file: !1696, line: 17, baseType: !127, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1695, file: !1696, line: 17, baseType: !127, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1695, file: !1696, line: 19, baseType: !473, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1695, file: !1696, line: 21, baseType: !473, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1695, file: !1696, line: 22, baseType: !473, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1695, file: !1696, line: 23, baseType: !473, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1695, file: !1696, line: 24, baseType: !473, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1695, file: !1696, line: 25, baseType: !473, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1695, file: !1696, line: 26, baseType: !473, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1695, file: !1696, line: 27, baseType: !473, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1695, file: !1696, line: 28, baseType: !473, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1695, file: !1696, line: 29, baseType: !473, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1681, file: !1680, line: 44, baseType: !519, size: 32, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1681, file: !1680, line: 50, baseType: !1143, size: 16, offset: 864)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1681, file: !1680, line: 51, baseType: !1715, size: 16, offset: 880)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !218, line: 18, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !220, line: 23, baseType: !1476)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !130, line: 495, baseType: !127, size: 64, offset: 6528)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !970, file: !130, line: 497, baseType: !1719, size: 64, offset: 6592)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !130, line: 381, size: 384, elements: !1721)
!1721 = !{!1722, !1723, !1729}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1720, file: !130, line: 382, baseType: !519, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1720, file: !130, line: 383, baseType: !1724, size: 128, offset: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !130, line: 376, size: 128, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1724, file: !130, line: 377, baseType: !792, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1724, file: !130, line: 378, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1720, file: !130, line: 384, baseType: !1730, size: 192, offset: 192)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1731, line: 26, size: 192, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1730, file: !1731, line: 27, baseType: !7, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1730, file: !1731, line: 28, baseType: !1735, size: 128, offset: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1736, line: 43, size: 128, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !1736, line: 44, baseType: !686)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1735, file: !1736, line: 45, baseType: !140, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !970, file: !130, line: 500, baseType: !246, offset: 6656)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !970, file: !130, line: 501, baseType: !1742, size: 64, offset: 6656)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !130, line: 387, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !970, file: !130, line: 516, baseType: !1582, size: 64, offset: 6720)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !970, file: !130, line: 519, baseType: !1087, size: 64, offset: 6784)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !970, file: !130, line: 521, baseType: !1747, size: 64, offset: 6848)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !130, line: 521, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !970, file: !130, line: 545, baseType: !519, size: 32, offset: 6912)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !970, file: !130, line: 548, baseType: !329, size: 8, offset: 6944)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !970, file: !130, line: 550, baseType: !1752, offset: 6952)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1753, line: 142, elements: !260)
!1753 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !970, file: !130, line: 554, baseType: !1755, size: 256, offset: 6976)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1756, line: 102, size: 256, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1755, file: !1756, line: 103, baseType: !507, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1756, line: 104, baseType: !140, size: 128, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1755, file: !1756, line: 105, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1756, line: 21, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !970, file: !130, line: 557, baseType: !217, size: 32, offset: 7232)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !967, file: !130, line: 565, baseType: !1768, offset: 7296)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !1769)
!1769 = !{!1770}
!1770 = !DISubrange(count: -1)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !793, file: !706, line: 758, baseType: !966, size: 64, offset: 3968)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !793, file: !706, line: 761, baseType: !1773, size: 320, offset: 4032)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1671, line: 34, size: 320, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1773, file: !1671, line: 35, baseType: !223, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1773, file: !1671, line: 36, baseType: !1777, size: 256, offset: 64)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 256, elements: !1394)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !793, file: !706, line: 766, baseType: !126, size: 32, offset: 4352)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !793, file: !706, line: 767, baseType: !126, size: 32, offset: 4384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !793, file: !706, line: 768, baseType: !126, size: 32, offset: 4416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !793, file: !706, line: 770, baseType: !126, size: 32, offset: 4448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !793, file: !706, line: 772, baseType: !127, size: 64, offset: 4480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !793, file: !706, line: 775, baseType: !7, size: 32, offset: 4544)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !793, file: !706, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !793, file: !706, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !793, file: !706, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !793, file: !706, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !793, file: !706, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !793, file: !706, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !793, file: !706, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !793, file: !706, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !793, file: !706, line: 831, baseType: !127, size: 64, offset: 4672)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !793, file: !706, line: 833, baseType: !1794, size: 384, offset: 4736)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1795)
!1795 = !{!1796, !1801}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1794, file: !25, line: 26, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!473, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !25, line: 27, baseType: !1802, size: 320, offset: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !25, line: 27, size: 320, elements: !1803)
!1803 = !{!1804, !1814, !1839}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1802, file: !25, line: 36, baseType: !1805, size: 320)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !25, line: 29, size: 320, elements: !1806)
!1806 = !{!1807, !1809, !1810, !1811, !1812, !1813}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1805, file: !25, line: 30, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1805, file: !25, line: 31, baseType: !217, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1805, file: !25, line: 32, baseType: !217, size: 32, offset: 96)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1805, file: !25, line: 33, baseType: !217, size: 32, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1805, file: !25, line: 34, baseType: !223, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1805, file: !25, line: 35, baseType: !1808, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1802, file: !25, line: 46, baseType: !1815, size: 192)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !25, line: 38, size: 192, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1838}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1815, file: !25, line: 39, baseType: !915, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1815, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !25, line: 41, baseType: !1820, size: 64, offset: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !25, line: 41, size: 64, elements: !1821)
!1821 = !{!1822, !1830}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1820, file: !25, line: 42, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1825, line: 7, size: 128, elements: !1826)
!1825 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1824, file: !1825, line: 8, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !165, line: 93, baseType: !350)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1824, file: !1825, line: 9, baseType: !350, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1820, file: !25, line: 43, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1833, line: 7, size: 64, elements: !1834)
!1833 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1832, file: !1833, line: 8, baseType: !1836, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1833, line: 5, baseType: !1450)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1832, file: !1833, line: 9, baseType: !1450, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1815, file: !25, line: 45, baseType: !223, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1802, file: !25, line: 54, baseType: !1840, size: 256)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !25, line: 48, size: 256, elements: !1841)
!1841 = !{!1842, !1850, !1851, !1852, !1853}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1840, file: !25, line: 49, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1845, line: 36, size: 64, elements: !1846)
!1845 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1844, file: !1845, line: 37, baseType: !126, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1844, file: !1845, line: 38, baseType: !1476, size: 16, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1844, file: !1845, line: 39, baseType: !1476, size: 16, offset: 48)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1840, file: !25, line: 50, baseType: !126, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1840, file: !25, line: 51, baseType: !126, size: 32, offset: 96)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1840, file: !25, line: 52, baseType: !127, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1840, file: !25, line: 53, baseType: !127, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !793, file: !706, line: 835, baseType: !1855, size: 32, offset: 5120)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !122, line: 22, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !165, line: 28, baseType: !126)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !793, file: !706, line: 836, baseType: !1855, size: 32, offset: 5152)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !793, file: !706, line: 840, baseType: !127, size: 64, offset: 5184)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !793, file: !706, line: 849, baseType: !792, size: 64, offset: 5248)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !793, file: !706, line: 852, baseType: !792, size: 64, offset: 5312)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !793, file: !706, line: 857, baseType: !140, size: 128, offset: 5376)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !793, file: !706, line: 858, baseType: !140, size: 128, offset: 5504)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !793, file: !706, line: 859, baseType: !792, size: 64, offset: 5632)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !793, file: !706, line: 867, baseType: !140, size: 128, offset: 5696)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !793, file: !706, line: 868, baseType: !140, size: 128, offset: 5824)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !793, file: !706, line: 871, baseType: !1386, size: 64, offset: 5952)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !793, file: !706, line: 872, baseType: !1868, size: 512, offset: 6016)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 512, elements: !1394)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !793, file: !706, line: 873, baseType: !140, size: 128, offset: 6528)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !793, file: !706, line: 874, baseType: !140, size: 128, offset: 6656)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !793, file: !706, line: 876, baseType: !1872, size: 64, offset: 6784)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !793, file: !706, line: 879, baseType: !453, size: 64, offset: 6848)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !793, file: !706, line: 882, baseType: !453, size: 64, offset: 6912)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !793, file: !706, line: 884, baseType: !223, size: 64, offset: 6976)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !793, file: !706, line: 885, baseType: !223, size: 64, offset: 7040)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !793, file: !706, line: 890, baseType: !223, size: 64, offset: 7104)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !793, file: !706, line: 891, baseType: !1879, size: 128, offset: 7168)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !706, line: 242, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1879, file: !706, line: 244, baseType: !223, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1879, file: !706, line: 245, baseType: !223, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1879, file: !706, line: 246, baseType: !686, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !793, file: !706, line: 900, baseType: !127, size: 64, offset: 7296)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !793, file: !706, line: 901, baseType: !127, size: 64, offset: 7360)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !793, file: !706, line: 904, baseType: !223, size: 64, offset: 7424)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !793, file: !706, line: 907, baseType: !223, size: 64, offset: 7488)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !793, file: !706, line: 910, baseType: !127, size: 64, offset: 7552)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !793, file: !706, line: 911, baseType: !127, size: 64, offset: 7616)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !793, file: !706, line: 914, baseType: !1891, size: 640, offset: 7680)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1892, line: 123, size: 640, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1900, !1901}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1891, file: !1892, line: 124, baseType: !1895, size: 576)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 576, elements: !397)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1892, line: 108, size: 192, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1896, file: !1892, line: 109, baseType: !223, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1896, file: !1892, line: 110, baseType: !924, size: 128, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1891, file: !1892, line: 125, baseType: !7, size: 32, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1891, file: !1892, line: 126, baseType: !7, size: 32, offset: 608)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !793, file: !706, line: 917, baseType: !1903, size: 192, offset: 8320)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1892, line: 134, size: 192, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1903, file: !1892, line: 135, baseType: !777, size: 128, align: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1903, file: !1892, line: 136, baseType: !7, size: 32, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !793, file: !706, line: 923, baseType: !1412, size: 64, offset: 8512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !793, file: !706, line: 926, baseType: !1412, size: 64, offset: 8576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !793, file: !706, line: 929, baseType: !1412, size: 64, offset: 8640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !793, file: !706, line: 933, baseType: !1442, size: 64, offset: 8704)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !793, file: !706, line: 943, baseType: !1912, size: 128, offset: 8768)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 16)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !793, file: !706, line: 945, baseType: !1916, size: 64, offset: 8896)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !706, line: 49, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !793, file: !706, line: 956, baseType: !1919, size: 64, offset: 8960)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !706, line: 45, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !793, file: !706, line: 959, baseType: !1922, size: 64, offset: 9024)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !706, line: 959, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !793, file: !706, line: 962, baseType: !1925, size: 64, offset: 9088)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !706, line: 66, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !793, file: !706, line: 966, baseType: !1928, size: 64, offset: 9152)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !706, line: 50, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !793, file: !706, line: 969, baseType: !1931, size: 64, offset: 9216)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1933, line: 82, size: 7296, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1970, !1979, !1980, !1982, !1983, !1984, !1987, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2017, !2018, !2025, !2026, !2027, !2028, !2029, !2030}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1932, file: !1933, line: 83, baseType: !805, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1932, file: !1933, line: 84, baseType: !519, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1932, file: !1933, line: 85, baseType: !126, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1932, file: !1933, line: 86, baseType: !140, size: 128, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1932, file: !1933, line: 88, baseType: !758, size: 128, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1932, file: !1933, line: 91, baseType: !792, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1932, file: !1933, line: 94, baseType: !1942, size: 192, offset: 448)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1943, line: 30, size: 192, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1942, file: !1943, line: 31, baseType: !140, size: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1942, file: !1943, line: 32, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1948, line: 25, baseType: !1949)
!1948 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1948, line: 23, size: 64, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1949, file: !1948, line: 24, baseType: !958, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1932, file: !1933, line: 97, baseType: !381, size: 64, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1932, file: !1933, line: 100, baseType: !126, size: 32, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1932, file: !1933, line: 106, baseType: !126, size: 32, offset: 736)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1932, file: !1933, line: 107, baseType: !792, size: 64, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1932, file: !1933, line: 110, baseType: !126, size: 32, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !1933, line: 111, baseType: !7, size: 32, offset: 864)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1932, file: !1933, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1932, file: !1933, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1932, file: !1933, line: 128, baseType: !126, size: 32, offset: 928)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1932, file: !1933, line: 129, baseType: !140, size: 128, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1932, file: !1933, line: 132, baseType: !873, size: 512, offset: 1088)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1932, file: !1933, line: 133, baseType: !881, size: 64, offset: 1600)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1932, file: !1933, line: 140, baseType: !1965, size: 256, offset: 1664)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1966, size: 256, elements: !1434)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1933, line: 38, size: 128, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1966, file: !1933, line: 39, baseType: !223, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1966, file: !1933, line: 40, baseType: !223, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1932, file: !1933, line: 146, baseType: !1971, size: 192, offset: 1920)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1933, line: 66, size: 192, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1971, file: !1933, line: 67, baseType: !1974, size: 192)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1933, line: 47, size: 192, elements: !1975)
!1975 = !{!1976, !1977, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1974, file: !1933, line: 48, baseType: !509, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1974, file: !1933, line: 49, baseType: !509, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1974, file: !1933, line: 50, baseType: !509, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1932, file: !1933, line: 150, baseType: !1891, size: 640, offset: 2112)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1932, file: !1933, line: 153, baseType: !1981, size: 256, offset: 2752)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 256, elements: !1394)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1932, file: !1933, line: 159, baseType: !1386, size: 64, offset: 3008)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1932, file: !1933, line: 162, baseType: !126, size: 32, offset: 3072)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1932, file: !1933, line: 164, baseType: !1985, size: 64, offset: 3136)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1933, line: 164, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1932, file: !1933, line: 175, baseType: !1988, size: 32, offset: 3200)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !190, line: 805, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 798, size: 32, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1989, file: !190, line: 803, baseType: !189, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1989, file: !190, line: 804, baseType: !246, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1932, file: !1933, line: 176, baseType: !223, size: 64, offset: 3264)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1932, file: !1933, line: 176, baseType: !223, size: 64, offset: 3328)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1932, file: !1933, line: 176, baseType: !223, size: 64, offset: 3392)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1932, file: !1933, line: 176, baseType: !223, size: 64, offset: 3456)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1932, file: !1933, line: 177, baseType: !223, size: 64, offset: 3520)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1932, file: !1933, line: 178, baseType: !223, size: 64, offset: 3584)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1932, file: !1933, line: 179, baseType: !1879, size: 128, offset: 3648)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1932, file: !1933, line: 180, baseType: !127, size: 64, offset: 3776)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1932, file: !1933, line: 180, baseType: !127, size: 64, offset: 3840)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1932, file: !1933, line: 180, baseType: !127, size: 64, offset: 3904)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1932, file: !1933, line: 180, baseType: !127, size: 64, offset: 3968)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1932, file: !1933, line: 181, baseType: !127, size: 64, offset: 4032)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1932, file: !1933, line: 181, baseType: !127, size: 64, offset: 4096)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1932, file: !1933, line: 181, baseType: !127, size: 64, offset: 4160)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1932, file: !1933, line: 181, baseType: !127, size: 64, offset: 4224)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1932, file: !1933, line: 182, baseType: !127, size: 64, offset: 4288)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1932, file: !1933, line: 182, baseType: !127, size: 64, offset: 4352)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1932, file: !1933, line: 182, baseType: !127, size: 64, offset: 4416)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1932, file: !1933, line: 182, baseType: !127, size: 64, offset: 4480)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1932, file: !1933, line: 183, baseType: !127, size: 64, offset: 4544)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1932, file: !1933, line: 183, baseType: !127, size: 64, offset: 4608)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1932, file: !1933, line: 184, baseType: !2015, offset: 4672)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2016, line: 12, elements: !260)
!2016 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1932, file: !1933, line: 192, baseType: !225, size: 64, offset: 4672)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1932, file: !1933, line: 203, baseType: !2019, size: 2048, offset: 4736)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 2048, elements: !1913)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2021, line: 43, size: 128, elements: !2022)
!2021 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2020, file: !2021, line: 44, baseType: !1121, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2020, file: !2021, line: 45, baseType: !1121, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1932, file: !1933, line: 220, baseType: !329, size: 8, offset: 6784)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1932, file: !1933, line: 221, baseType: !1476, size: 16, offset: 6800)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1932, file: !1933, line: 222, baseType: !1476, size: 16, offset: 6816)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1932, file: !1933, line: 224, baseType: !966, size: 64, offset: 6848)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1932, file: !1933, line: 227, baseType: !503, size: 192, offset: 6912)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1932, file: !1933, line: 233, baseType: !503, size: 192, offset: 7104)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !793, file: !706, line: 970, baseType: !2032, size: 64, offset: 9280)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1933, line: 20, size: 16576, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2033, file: !1933, line: 21, baseType: !246)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2033, file: !1933, line: 22, baseType: !805, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2033, file: !1933, line: 23, baseType: !758, size: 128, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2033, file: !1933, line: 24, baseType: !2039, size: 16384, offset: 192)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2040, size: 16384, elements: !2060)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1943, line: 49, size: 256, elements: !2041)
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2040, file: !1943, line: 50, baseType: !2043, size: 256)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1943, line: 35, size: 256, elements: !2044)
!2044 = !{!2045, !2052, !2053, !2059}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2043, file: !1943, line: 37, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2047, line: 19, baseType: !2048)
!2047 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2047, line: 18, baseType: !2050)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !126}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2043, file: !1943, line: 38, baseType: !127, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2043, file: !1943, line: 44, baseType: !2054, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2047, line: 22, baseType: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2047, line: 21, baseType: !2057)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2043, file: !1943, line: 46, baseType: !1947, size: 64, offset: 192)
!2060 = !{!2061}
!2061 = !DISubrange(count: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !793, file: !706, line: 971, baseType: !1947, size: 64, offset: 9344)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !793, file: !706, line: 972, baseType: !1947, size: 64, offset: 9408)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !793, file: !706, line: 974, baseType: !1947, size: 64, offset: 9472)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !793, file: !706, line: 975, baseType: !1942, size: 192, offset: 9536)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !793, file: !706, line: 976, baseType: !127, size: 64, offset: 9728)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !793, file: !706, line: 977, baseType: !1119, size: 64, offset: 9792)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !793, file: !706, line: 978, baseType: !7, size: 32, offset: 9856)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !793, file: !706, line: 980, baseType: !780, size: 64, offset: 9920)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !793, file: !706, line: 989, baseType: !2071, size: 128, offset: 9984)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2072, line: 35, size: 128, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2071, file: !2072, line: 36, baseType: !126, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2071, file: !2072, line: 37, baseType: !519, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2071, file: !2072, line: 38, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2072, line: 23, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !793, file: !706, line: 992, baseType: !223, size: 64, offset: 10112)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !793, file: !706, line: 993, baseType: !223, size: 64, offset: 10176)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !793, file: !706, line: 996, baseType: !246, offset: 10240)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !793, file: !706, line: 999, baseType: !686, offset: 10240)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !793, file: !706, line: 1001, baseType: !2084, size: 64, offset: 10240)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !706, line: 636, size: 64, elements: !2085)
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !706, line: 637, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !793, file: !706, line: 1005, baseType: !927, size: 128, offset: 10304)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !793, file: !706, line: 1007, baseType: !792, size: 64, offset: 10432)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !793, file: !706, line: 1009, baseType: !2091, size: 64, offset: 10496)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !706, line: 1009, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !793, file: !706, line: 1043, baseType: !123, size: 64, offset: 10560)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !793, file: !706, line: 1046, baseType: !2095, size: 64, offset: 10624)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !706, line: 41, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !793, file: !706, line: 1050, baseType: !2098, size: 64, offset: 10688)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !706, line: 42, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !793, file: !706, line: 1054, baseType: !2101, size: 64, offset: 10752)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !706, line: 55, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !793, file: !706, line: 1056, baseType: !704, size: 64, offset: 10816)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !793, file: !706, line: 1058, baseType: !2105, size: 64, offset: 10880)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2107, line: 99, size: 704, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2121, !2142, !2143}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2106, file: !2107, line: 100, baseType: !507, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2106, file: !2107, line: 101, baseType: !519, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2106, file: !2107, line: 102, baseType: !519, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !2107, line: 105, baseType: !246, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2106, file: !2107, line: 107, baseType: !155, size: 16, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2106, file: !2107, line: 109, baseType: !2115, size: 128, offset: 192)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2116, line: 292, size: 128, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2115, file: !2116, line: 293, baseType: !246)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2115, file: !2116, line: 295, baseType: !121, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2115, file: !2116, line: 296, baseType: !123, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2106, file: !2107, line: 110, baseType: !2122, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2107, line: 73, size: 448, elements: !2124)
!2124 = !{!2125, !2128, !2129, !2136, !2141}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2123, file: !2107, line: 74, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2107, line: 74, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2123, file: !2107, line: 75, baseType: !2105, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2107, line: 83, baseType: !2130, size: 128, offset: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2107, line: 83, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2130, file: !2107, line: 84, baseType: !140, size: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2130, file: !2107, line: 85, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !130, line: 117, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2107, line: 87, baseType: !2137, size: 128, offset: 256)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2107, line: 87, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2137, file: !2107, line: 88, baseType: !385, size: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2137, file: !2107, line: 89, baseType: !777, size: 128, align: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2107, line: 92, baseType: !7, size: 32, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2106, file: !2107, line: 111, baseType: !381, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2106, file: !2107, line: 113, baseType: !1755, size: 256, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !793, file: !706, line: 1061, baseType: !2145, size: 64, offset: 10944)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !706, line: 43, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !793, file: !706, line: 1064, baseType: !127, size: 64, offset: 11008)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !793, file: !706, line: 1065, baseType: !2149, size: 64, offset: 11072)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1943, line: 14, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1943, line: 12, size: 384, elements: !2152)
!2152 = !{!2153}
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !1943, line: 13, baseType: !2154, size: 384)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2151, file: !1943, line: 13, size: 384, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2154, file: !1943, line: 13, baseType: !126, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2154, file: !1943, line: 13, baseType: !126, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2154, file: !1943, line: 13, baseType: !126, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2154, file: !1943, line: 13, baseType: !2160, size: 256, offset: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2161, line: 32, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163, !2168, !2181, !2187, !2196, !2216, !2221}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2160, file: !2161, line: 37, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 34, size: 64, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2164, file: !2161, line: 35, baseType: !1856, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2164, file: !2161, line: 36, baseType: !164, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2160, file: !2161, line: 45, baseType: !2169, size: 192)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 40, size: 192, elements: !2170)
!2170 = !{!2171, !2173, !2174, !2180}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2169, file: !2161, line: 41, baseType: !2172, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !165, line: 95, baseType: !126)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2169, file: !2161, line: 42, baseType: !126, size: 32, offset: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2169, file: !2161, line: 43, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2161, line: 11, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2161, line: 8, size: 64, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2176, file: !2161, line: 9, baseType: !126, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2176, file: !2161, line: 10, baseType: !123, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2169, file: !2161, line: 44, baseType: !126, size: 32, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2160, file: !2161, line: 52, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 48, size: 128, elements: !2183)
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2182, file: !2161, line: 49, baseType: !1856, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2182, file: !2161, line: 50, baseType: !164, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2182, file: !2161, line: 51, baseType: !2175, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2160, file: !2161, line: 61, baseType: !2188, size: 256)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 55, size: 256, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2195}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2188, file: !2161, line: 56, baseType: !1856, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2188, file: !2161, line: 57, baseType: !164, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2188, file: !2161, line: 58, baseType: !126, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2188, file: !2161, line: 59, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !165, line: 94, baseType: !1118)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2188, file: !2161, line: 60, baseType: !2194, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2160, file: !2161, line: 95, baseType: !2197, size: 256)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 64, size: 256, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2197, file: !2161, line: 65, baseType: !123, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2161, line: 77, baseType: !2201, size: 192, offset: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !2161, line: 77, size: 192, elements: !2202)
!2202 = !{!2203, !2204, !2211}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2201, file: !2161, line: 82, baseType: !1476, size: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2201, file: !2161, line: 88, baseType: !2205, size: 192)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !2161, line: 84, size: 192, elements: !2206)
!2206 = !{!2207, !2209, !2210}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2205, file: !2161, line: 85, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !911)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2205, file: !2161, line: 86, baseType: !123, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2205, file: !2161, line: 87, baseType: !123, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2201, file: !2161, line: 93, baseType: !2212, size: 96)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !2161, line: 90, size: 96, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2212, file: !2161, line: 91, baseType: !2208, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2212, file: !2161, line: 92, baseType: !219, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2160, file: !2161, line: 101, baseType: !2217, size: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 98, size: 128, elements: !2218)
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2217, file: !2161, line: 99, baseType: !473, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2217, file: !2161, line: 100, baseType: !126, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2160, file: !2161, line: 108, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2161, line: 104, size: 128, elements: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2222, file: !2161, line: 105, baseType: !123, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2222, file: !2161, line: 106, baseType: !126, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2222, file: !2161, line: 107, baseType: !7, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !793, file: !706, line: 1067, baseType: !2015, offset: 11136)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !793, file: !706, line: 1099, baseType: !2229, size: 64, offset: 11136)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !706, line: 56, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !793, file: !706, line: 1103, baseType: !140, size: 128, offset: 11200)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !793, file: !706, line: 1104, baseType: !2233, size: 64, offset: 11328)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !706, line: 46, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !793, file: !706, line: 1105, baseType: !503, size: 192, offset: 11392)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !793, file: !706, line: 1106, baseType: !7, size: 32, offset: 11584)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !793, file: !706, line: 1109, baseType: !2238, size: 128, offset: 11648)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2239, size: 128, elements: !1434)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !706, line: 51, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !793, file: !706, line: 1110, baseType: !503, size: 192, offset: 11776)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !793, file: !706, line: 1111, baseType: !140, size: 128, offset: 11968)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !793, file: !706, line: 1173, baseType: !2244, size: 64, offset: 12096)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2246, line: 62, size: 256, align: 256, elements: !2247)
!2246 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2249, !2250, !2255}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2245, file: !2246, line: 75, baseType: !219, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2245, file: !2246, line: 90, baseType: !219, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2245, file: !2246, line: 124, baseType: !2251, size: 64, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2245, file: !2246, line: 109, size: 64, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2251, file: !2246, line: 110, baseType: !224, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2251, file: !2246, line: 112, baseType: !224, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2245, file: !2246, line: 144, baseType: !219, size: 32, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !793, file: !706, line: 1174, baseType: !217, size: 32, offset: 12160)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !793, file: !706, line: 1179, baseType: !127, size: 64, offset: 12224)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !793, file: !706, line: 1182, baseType: !2259, size: 128, offset: 12288)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1671, line: 76, size: 128, elements: !2260)
!2260 = !{!2261, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2259, file: !1671, line: 85, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2263, line: 7, size: 64, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2262, file: !2263, line: 12, baseType: !955, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2259, file: !1671, line: 88, baseType: !329, size: 8, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2259, file: !1671, line: 95, baseType: !329, size: 8, offset: 72)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !706, line: 1184, baseType: !2269, size: 128, offset: 12416)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !706, line: 1184, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2269, file: !706, line: 1185, baseType: !805, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2269, file: !706, line: 1186, baseType: !777, size: 128, align: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !793, file: !706, line: 1190, baseType: !1345, size: 64, offset: 12544)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !793, file: !706, line: 1192, baseType: !2275, size: 128, offset: 12608)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1671, line: 64, size: 128, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2275, file: !1671, line: 65, baseType: !128, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2275, file: !1671, line: 67, baseType: !219, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2275, file: !1671, line: 68, baseType: !219, size: 32, offset: 96)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !793, file: !706, line: 1206, baseType: !126, size: 32, offset: 12736)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !793, file: !706, line: 1207, baseType: !126, size: 32, offset: 12768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !793, file: !706, line: 1209, baseType: !127, size: 64, offset: 12800)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !793, file: !706, line: 1219, baseType: !223, size: 64, offset: 12864)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !793, file: !706, line: 1220, baseType: !223, size: 64, offset: 12928)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !793, file: !706, line: 1317, baseType: !126, size: 32, offset: 12992)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !793, file: !706, line: 1319, baseType: !792, size: 64, offset: 13056)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !793, file: !706, line: 1322, baseType: !2288, size: 64, offset: 13120)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2290, line: 56, size: 512, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2298, !2299, !2301}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2289, file: !2290, line: 57, baseType: !2288, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2289, file: !2290, line: 58, baseType: !123, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2289, file: !2290, line: 59, baseType: !127, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !2290, line: 60, baseType: !127, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2289, file: !2290, line: 61, baseType: !2297, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2289, file: !2290, line: 62, baseType: !7, size: 32, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2289, file: !2290, line: 63, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !122, line: 153, baseType: !223)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2289, file: !2290, line: 64, baseType: !2302, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !793, file: !706, line: 1326, baseType: !805, size: 32, offset: 13184)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !793, file: !706, line: 1342, baseType: !123, size: 64, offset: 13248)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !793, file: !706, line: 1343, baseType: !224, size: 64, offset: 13312)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !793, file: !706, line: 1344, baseType: !223, size: 64, offset: 13376)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !793, file: !706, line: 1345, baseType: !224, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !793, file: !706, line: 1346, baseType: !224, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !793, file: !706, line: 1347, baseType: !224, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !793, file: !706, line: 1348, baseType: !777, size: 128, align: 64, offset: 13504)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !793, file: !706, line: 1358, baseType: !2313, size: 34816, offset: 13824)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2314, line: 485, size: 34816, elements: !2315)
!2314 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2345, !2346, !2347, !2348, !2349, !2350, !2353, !2354, !2355}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2313, file: !2314, line: 487, baseType: !2317, size: 192)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2318, size: 192, elements: !397)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2319, line: 16, size: 64, elements: !2320)
!2319 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2318, file: !2319, line: 17, baseType: !1143, size: 16)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2318, file: !2319, line: 18, baseType: !1143, size: 16, offset: 16)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2318, file: !2319, line: 19, baseType: !1143, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2318, file: !2319, line: 19, baseType: !1143, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2318, file: !2319, line: 19, baseType: !1143, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2318, file: !2319, line: 19, baseType: !1143, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2318, file: !2319, line: 19, baseType: !1143, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2318, file: !2319, line: 20, baseType: !1143, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2313, file: !2314, line: 491, baseType: !127, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2313, file: !2314, line: 495, baseType: !155, size: 16, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2313, file: !2314, line: 496, baseType: !155, size: 16, offset: 272)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2313, file: !2314, line: 497, baseType: !155, size: 16, offset: 288)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2313, file: !2314, line: 498, baseType: !155, size: 16, offset: 304)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2313, file: !2314, line: 502, baseType: !127, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2313, file: !2314, line: 503, baseType: !127, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2313, file: !2314, line: 514, baseType: !2342, size: 256, offset: 448)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 256, elements: !1394)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2314, line: 483, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2313, file: !2314, line: 516, baseType: !127, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2313, file: !2314, line: 518, baseType: !127, size: 64, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2313, file: !2314, line: 520, baseType: !127, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2313, file: !2314, line: 521, baseType: !127, size: 64, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2313, file: !2314, line: 522, baseType: !127, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2313, file: !2314, line: 528, baseType: !2351, size: 64, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2314, line: 10, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2313, file: !2314, line: 535, baseType: !127, size: 64, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2313, file: !2314, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2313, file: !2314, line: 540, baseType: !2356, size: 33280, offset: 1536)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2357, line: 317, size: 33280, elements: !2358)
!2357 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2356, file: !2357, line: 330, baseType: !7, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2356, file: !2357, line: 337, baseType: !127, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2356, file: !2357, line: 348, baseType: !2362, size: 32768, offset: 512)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2357, line: 304, size: 32768, elements: !2363)
!2363 = !{!2364, !2379, !2416, !2466, !2479}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2362, file: !2357, line: 305, baseType: !2365, size: 896)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2357, line: 12, size: 896, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2378}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2365, file: !2357, line: 13, baseType: !217, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2365, file: !2357, line: 14, baseType: !217, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2365, file: !2357, line: 15, baseType: !217, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2365, file: !2357, line: 16, baseType: !217, size: 32, offset: 96)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2365, file: !2357, line: 17, baseType: !217, size: 32, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2365, file: !2357, line: 18, baseType: !217, size: 32, offset: 160)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2365, file: !2357, line: 19, baseType: !217, size: 32, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2365, file: !2357, line: 22, baseType: !2375, size: 640, offset: 224)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 640, elements: !2376)
!2376 = !{!2377}
!2377 = !DISubrange(count: 20)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2365, file: !2357, line: 25, baseType: !217, size: 32, offset: 864)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2362, file: !2357, line: 306, baseType: !2380, size: 4096, align: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2357, line: 34, size: 4096, align: 128, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2401, !2402, !2403, !2405, !2407, !2411}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2380, file: !2357, line: 35, baseType: !1143, size: 16)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2380, file: !2357, line: 36, baseType: !1143, size: 16, offset: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2380, file: !2357, line: 37, baseType: !1143, size: 16, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2380, file: !2357, line: 38, baseType: !1143, size: 16, offset: 48)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !2357, line: 39, baseType: !2387, size: 128, offset: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !2357, line: 39, size: 128, elements: !2388)
!2388 = !{!2389, !2394}
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2357, line: 40, baseType: !2390, size: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !2357, line: 40, size: 128, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2390, file: !2357, line: 41, baseType: !223, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2390, file: !2357, line: 42, baseType: !223, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2357, line: 44, baseType: !2395, size: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !2357, line: 44, size: 128, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2395, file: !2357, line: 45, baseType: !217, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2395, file: !2357, line: 46, baseType: !217, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2395, file: !2357, line: 47, baseType: !217, size: 32, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2395, file: !2357, line: 48, baseType: !217, size: 32, offset: 96)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2380, file: !2357, line: 51, baseType: !217, size: 32, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2380, file: !2357, line: 52, baseType: !217, size: 32, offset: 224)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2380, file: !2357, line: 55, baseType: !2404, size: 1024, offset: 256)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !233)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2380, file: !2357, line: 58, baseType: !2406, size: 2048, offset: 1280)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2048, elements: !2060)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2380, file: !2357, line: 60, baseType: !2408, size: 384, offset: 3328)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 12)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !2357, line: 62, baseType: !2412, size: 384, offset: 3712)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !2357, line: 62, size: 384, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2412, file: !2357, line: 63, baseType: !2408, size: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2412, file: !2357, line: 64, baseType: !2408, size: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2362, file: !2357, line: 307, baseType: !2417, size: 1088)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2357, line: 79, size: 1088, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2465}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2417, file: !2357, line: 80, baseType: !217, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2417, file: !2357, line: 81, baseType: !217, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2417, file: !2357, line: 82, baseType: !217, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2417, file: !2357, line: 83, baseType: !217, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2417, file: !2357, line: 84, baseType: !217, size: 32, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2417, file: !2357, line: 85, baseType: !217, size: 32, offset: 160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2417, file: !2357, line: 86, baseType: !217, size: 32, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2417, file: !2357, line: 88, baseType: !2375, size: 640, offset: 224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2417, file: !2357, line: 89, baseType: !940, size: 8, offset: 864)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2417, file: !2357, line: 90, baseType: !940, size: 8, offset: 872)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2417, file: !2357, line: 91, baseType: !940, size: 8, offset: 880)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2417, file: !2357, line: 92, baseType: !940, size: 8, offset: 888)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2417, file: !2357, line: 93, baseType: !940, size: 8, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2417, file: !2357, line: 94, baseType: !940, size: 8, offset: 904)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2417, file: !2357, line: 95, baseType: !2434, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2436, line: 11, size: 128, elements: !2437)
!2436 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2435, file: !2436, line: 12, baseType: !473, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2435, file: !2436, line: 13, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2442, line: 56, size: 1344, elements: !2443)
!2442 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2441, file: !2442, line: 61, baseType: !127, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2441, file: !2442, line: 62, baseType: !127, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2441, file: !2442, line: 63, baseType: !127, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2441, file: !2442, line: 64, baseType: !127, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2441, file: !2442, line: 65, baseType: !127, size: 64, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2441, file: !2442, line: 66, baseType: !127, size: 64, offset: 320)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2441, file: !2442, line: 68, baseType: !127, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2441, file: !2442, line: 69, baseType: !127, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2441, file: !2442, line: 70, baseType: !127, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2441, file: !2442, line: 71, baseType: !127, size: 64, offset: 576)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2441, file: !2442, line: 72, baseType: !127, size: 64, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2441, file: !2442, line: 73, baseType: !127, size: 64, offset: 704)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2441, file: !2442, line: 74, baseType: !127, size: 64, offset: 768)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2441, file: !2442, line: 75, baseType: !127, size: 64, offset: 832)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2441, file: !2442, line: 76, baseType: !127, size: 64, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2441, file: !2442, line: 81, baseType: !127, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2441, file: !2442, line: 83, baseType: !127, size: 64, offset: 1024)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2441, file: !2442, line: 84, baseType: !127, size: 64, offset: 1088)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2441, file: !2442, line: 85, baseType: !127, size: 64, offset: 1152)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2441, file: !2442, line: 86, baseType: !127, size: 64, offset: 1216)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2441, file: !2442, line: 87, baseType: !127, size: 64, offset: 1280)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2417, file: !2357, line: 96, baseType: !217, size: 32, offset: 1024)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2362, file: !2357, line: 308, baseType: !2467, size: 4608, align: 512)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2357, line: 289, size: 4608, align: 512, elements: !2468)
!2468 = !{!2469, !2470, !2477}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2467, file: !2357, line: 290, baseType: !2380, size: 4096, align: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2467, file: !2357, line: 291, baseType: !2471, size: 512, offset: 4096)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2357, line: 268, size: 512, elements: !2472)
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2471, file: !2357, line: 269, baseType: !223, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2471, file: !2357, line: 270, baseType: !223, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2471, file: !2357, line: 271, baseType: !2476, size: 384, offset: 128)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !1494)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2467, file: !2357, line: 292, baseType: !2478, offset: 4608)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, elements: !1592)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2362, file: !2357, line: 309, baseType: !2480, size: 32768)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 32768, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 4096)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !766, file: !767, line: 16, baseType: !758, size: 128, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !766, file: !767, line: 17, baseType: !519, size: 32, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !339, file: !44, line: 1465, baseType: !123, size: 64, offset: 6400)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !339, file: !44, line: 1468, baseType: !217, size: 32, offset: 6464)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !339, file: !44, line: 1470, baseType: !554, size: 64, offset: 6528)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !339, file: !44, line: 1471, baseType: !554, size: 64, offset: 6592)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !339, file: !44, line: 1473, baseType: !219, size: 32, offset: 6656)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !339, file: !44, line: 1474, baseType: !2491, size: 64, offset: 6720)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !339, file: !44, line: 1477, baseType: !2494, size: 256, offset: 6784)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !233)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !339, file: !44, line: 1478, baseType: !2496, size: 128, offset: 7040)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2497, line: 18, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2497, line: 16, size: 128, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2498, file: !2497, line: 17, baseType: !2501, size: 128)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 128, elements: !1913)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !339, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !339, file: !44, line: 1481, baseType: !1378, size: 32, offset: 7200)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !339, file: !44, line: 1487, baseType: !503, size: 192, offset: 7232)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !339, file: !44, line: 1493, baseType: !283, size: 64, offset: 7424)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !339, file: !44, line: 1495, baseType: !263, size: 64, offset: 7488)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !339, file: !44, line: 1500, baseType: !126, size: 32, offset: 7552)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !339, file: !44, line: 1502, baseType: !2509, size: 448, offset: 7616)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !476, line: 60, size: 448, elements: !2510)
!2510 = !{!2511, !2516, !2517, !2518, !2519, !2520, !2521}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2509, file: !476, line: 61, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!127, !2515, !474}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2509, file: !476, line: 63, baseType: !2512, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2509, file: !476, line: 66, baseType: !473, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2509, file: !476, line: 67, baseType: !126, size: 32, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !476, line: 68, baseType: !7, size: 32, offset: 224)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2509, file: !476, line: 71, baseType: !140, size: 128, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2509, file: !476, line: 77, baseType: !2522, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !339, file: !44, line: 1505, baseType: !507, size: 64, offset: 8064)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !339, file: !44, line: 1508, baseType: !507, size: 64, offset: 8128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !339, file: !44, line: 1511, baseType: !126, size: 32, offset: 8192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !339, file: !44, line: 1514, baseType: !1614, size: 32, offset: 8224)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !339, file: !44, line: 1517, baseType: !2528, size: 64, offset: 8256)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1756, line: 18, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !339, file: !44, line: 1518, baseType: !381, size: 64, offset: 8320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !339, file: !44, line: 1525, baseType: !1582, size: 64, offset: 8384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !339, file: !44, line: 1532, baseType: !2533, size: 64, offset: 8448)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2534, line: 52, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2533, file: !2534, line: 53, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2534, line: 40, size: 256, elements: !2539)
!2539 = !{!2540, !2541, !2546}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2538, file: !2534, line: 42, baseType: !246)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2538, file: !2534, line: 44, baseType: !2542, size: 192)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2534, line: 28, size: 192, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2542, file: !2534, line: 29, baseType: !140, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2542, file: !2534, line: 31, baseType: !473, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2538, file: !2534, line: 49, baseType: !473, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !339, file: !44, line: 1533, baseType: !2533, size: 64, offset: 8512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !339, file: !44, line: 1534, baseType: !777, size: 128, align: 64, offset: 8576)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !339, file: !44, line: 1535, baseType: !1755, size: 256, offset: 8704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !339, file: !44, line: 1537, baseType: !503, size: 192, offset: 8960)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !339, file: !44, line: 1542, baseType: !126, size: 32, offset: 9152)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !339, file: !44, line: 1545, baseType: !246, offset: 9184)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !339, file: !44, line: 1546, baseType: !140, size: 128, offset: 9216)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !339, file: !44, line: 1548, baseType: !246, offset: 9344)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !339, file: !44, line: 1549, baseType: !140, size: 128, offset: 9344)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !184, file: !185, line: 104, baseType: !127, size: 64, offset: 896)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !184, file: !185, line: 105, baseType: !123, size: 64, offset: 960)
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !185, line: 107, baseType: !2559, size: 128, offset: 1024)
!2559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !185, line: 107, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2559, file: !185, line: 108, baseType: !140, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2559, file: !185, line: 109, baseType: !1189, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !184, file: !185, line: 111, baseType: !140, size: 128, offset: 1152)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !184, file: !185, line: 112, baseType: !140, size: 128, offset: 1280)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !184, file: !185, line: 120, baseType: !2566, size: 128, offset: 1408)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !185, line: 116, size: 128, elements: !2567)
!2567 = !{!2568, !2569, !2570}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2566, file: !185, line: 117, baseType: !385, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2566, file: !185, line: 118, baseType: !199, size: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2566, file: !185, line: 119, baseType: !777, size: 128, align: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !177, file: !44, line: 1866, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!283, !183, !150, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2577, line: 10, size: 128, elements: !2578)
!2577 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2578 = !{!2579, !2583}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2576, file: !2577, line: 11, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !123}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2576, file: !2577, line: 12, baseType: !123, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !177, file: !44, line: 1867, baseType: !2585, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!126, !150, !126}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !177, file: !44, line: 1868, baseType: !2589, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!2592, !150, !126}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !177, file: !44, line: 1870, baseType: !2595, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!126, !183, !309, !126}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !177, file: !44, line: 1872, baseType: !2599, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!126, !150, !183, !154, !329}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !177, file: !44, line: 1873, baseType: !2603, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!126, !183, !150, !183}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !177, file: !44, line: 1874, baseType: !2607, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!126, !150, !183}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !177, file: !44, line: 1875, baseType: !2611, size: 64, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!126, !150, !183, !283}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !177, file: !44, line: 1876, baseType: !2615, size: 64, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!126, !150, !183, !154}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !177, file: !44, line: 1877, baseType: !2607, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !177, file: !44, line: 1878, baseType: !2620, size: 64, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!126, !150, !183, !154, !343}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !177, file: !44, line: 1879, baseType: !2624, size: 64, offset: 768)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!126, !150, !183, !150, !183, !7}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !177, file: !44, line: 1881, baseType: !2628, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!126, !183, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2644, !2645, !2646}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2632, file: !44, line: 220, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2632, file: !44, line: 221, baseType: !154, size: 16, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2632, file: !44, line: 222, baseType: !158, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2632, file: !44, line: 223, baseType: !167, size: 32, offset: 96)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2632, file: !44, line: 224, baseType: !348, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2632, file: !44, line: 225, baseType: !2640, size: 128, offset: 192)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !555, line: 13, size: 128, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2640, file: !555, line: 14, baseType: !554, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2640, file: !555, line: 15, baseType: !473, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2632, file: !44, line: 226, baseType: !2640, size: 128, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2632, file: !44, line: 227, baseType: !2640, size: 128, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2632, file: !44, line: 234, baseType: !1087, size: 64, offset: 576)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !177, file: !44, line: 1882, baseType: !2648, size: 64, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!126, !327, !2651, !217, !7}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2653, line: 22, size: 1152, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2652, file: !2653, line: 23, baseType: !217, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2652, file: !2653, line: 24, baseType: !154, size: 16, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2652, file: !2653, line: 25, baseType: !7, size: 32, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2652, file: !2653, line: 26, baseType: !1472, size: 32, offset: 96)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2652, file: !2653, line: 27, baseType: !223, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2652, file: !2653, line: 28, baseType: !223, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2652, file: !2653, line: 37, baseType: !223, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2652, file: !2653, line: 38, baseType: !343, size: 32, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2652, file: !2653, line: 39, baseType: !343, size: 32, offset: 352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2652, file: !2653, line: 40, baseType: !158, size: 32, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2652, file: !2653, line: 41, baseType: !167, size: 32, offset: 416)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2652, file: !2653, line: 42, baseType: !348, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2652, file: !2653, line: 43, baseType: !2640, size: 128, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2652, file: !2653, line: 44, baseType: !2640, size: 128, offset: 640)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2652, file: !2653, line: 45, baseType: !2640, size: 128, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2652, file: !2653, line: 46, baseType: !2640, size: 128, offset: 896)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2652, file: !2653, line: 47, baseType: !223, size: 64, offset: 1024)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2652, file: !2653, line: 48, baseType: !223, size: 64, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !177, file: !44, line: 1883, baseType: !2674, size: 64, offset: 960)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!1116, !183, !309, !1119}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !177, file: !44, line: 1884, baseType: !2678, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!126, !150, !2681, !223, !223}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !177, file: !44, line: 1886, baseType: !2684, size: 64, offset: 1088)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!126, !150, !2687, !126}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !177, file: !44, line: 1887, baseType: !2689, size: 64, offset: 1152)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!126, !150, !183, !1087, !7, !154}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !177, file: !44, line: 1890, baseType: !2615, size: 64, offset: 1216)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !177, file: !44, line: 1891, baseType: !2694, size: 64, offset: 1280)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!126, !150, !2592, !126}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !151, file: !44, line: 623, baseType: !338, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !151, file: !44, line: 624, baseType: !146, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !151, file: !44, line: 631, baseType: !127, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 639, baseType: !2701, size: 32, offset: 384)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 639, size: 32, elements: !2702)
!2702 = !{!2703, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2701, file: !44, line: 640, baseType: !2704, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2701, file: !44, line: 641, baseType: !7, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !151, file: !44, line: 643, baseType: !343, size: 32, offset: 416)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !151, file: !44, line: 644, baseType: !348, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !151, file: !44, line: 645, baseType: !2640, size: 128, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !151, file: !44, line: 646, baseType: !2640, size: 128, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !151, file: !44, line: 647, baseType: !2640, size: 128, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !151, file: !44, line: 648, baseType: !246, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !151, file: !44, line: 649, baseType: !155, size: 16, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !151, file: !44, line: 650, baseType: !940, size: 8, offset: 912)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !151, file: !44, line: 651, baseType: !940, size: 8, offset: 920)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !151, file: !44, line: 652, baseType: !668, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !151, file: !44, line: 659, baseType: !127, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !151, file: !44, line: 660, baseType: !680, size: 256, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !151, file: !44, line: 662, baseType: !127, size: 64, offset: 1344)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !151, file: !44, line: 663, baseType: !127, size: 64, offset: 1408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !151, file: !44, line: 665, baseType: !385, size: 128, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !151, file: !44, line: 666, baseType: !140, size: 128, offset: 1600)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !151, file: !44, line: 675, baseType: !140, size: 128, offset: 1728)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !151, file: !44, line: 676, baseType: !140, size: 128, offset: 1856)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !151, file: !44, line: 677, baseType: !140, size: 128, offset: 1984)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 678, baseType: !2726, size: 128, offset: 2112)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 678, size: 128, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2726, file: !44, line: 679, baseType: !381, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2726, file: !44, line: 680, baseType: !777, size: 128, align: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !151, file: !44, line: 682, baseType: !509, size: 64, offset: 2240)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !151, file: !44, line: 683, baseType: !509, size: 64, offset: 2304)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !151, file: !44, line: 684, baseType: !519, size: 32, offset: 2368)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !151, file: !44, line: 685, baseType: !519, size: 32, offset: 2400)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !151, file: !44, line: 686, baseType: !519, size: 32, offset: 2432)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !151, file: !44, line: 688, baseType: !519, size: 32, offset: 2464)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 690, baseType: !2737, size: 64, offset: 2496)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 690, size: 64, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2737, file: !44, line: 691, baseType: !1103, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2737, file: !44, line: 692, baseType: !412, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !151, file: !44, line: 694, baseType: !2742, size: 64, offset: 2560)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2743, file: !44, line: 1101, baseType: !246)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2743, file: !44, line: 1102, baseType: !140, size: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2743, file: !44, line: 1103, baseType: !140, size: 128, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2743, file: !44, line: 1104, baseType: !140, size: 128, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !151, file: !44, line: 695, baseType: !147, size: 1216, align: 64, offset: 2624)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !151, file: !44, line: 696, baseType: !140, size: 128, offset: 3840)
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 697, baseType: !2752, size: 64, offset: 3968)
!2752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 697, size: 64, elements: !2753)
!2753 = !{!2754, !2755, !2756, !3064, !3065}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2752, file: !44, line: 698, baseType: !1345, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2752, file: !44, line: 699, baseType: !701, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2752, file: !44, line: 700, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2759, line: 14, size: 832, elements: !2760)
!2759 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2760 = !{!2761, !3059, !3060, !3061, !3062, !3063}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2758, file: !2759, line: 15, baseType: !2762, size: 512)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2763, line: 64, size: 512, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2764 = !{!2765, !2766, !2767, !2769, !2809, !2909, !3049, !3054, !3055, !3056, !3057, !3058}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2762, file: !2763, line: 65, baseType: !283, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2762, file: !2763, line: 66, baseType: !140, size: 128, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2762, file: !2763, line: 67, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2762, file: !2763, line: 68, baseType: !2770, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2763, line: 192, size: 704, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2771, file: !2763, line: 193, baseType: !140, size: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2771, file: !2763, line: 194, baseType: !246, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2771, file: !2763, line: 195, baseType: !2762, size: 512, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2771, file: !2763, line: 196, baseType: !2777, size: 64, offset: 640)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2763, line: 156, size: 192, elements: !2780)
!2780 = !{!2781, !2786, !2791}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2779, file: !2763, line: 157, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2783)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!126, !2770, !2768}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2779, file: !2763, line: 158, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!283, !2770, !2768}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2779, file: !2763, line: 159, baseType: !2792, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!126, !2770, !2768, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2763, line: 148, size: 20736, elements: !2798)
!2798 = !{!2799, !2801, !2803, !2804, !2808}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2797, file: !2763, line: 149, baseType: !2800, size: 192)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 192, elements: !397)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2797, file: !2763, line: 150, baseType: !2802, size: 4096, offset: 192)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 4096, elements: !2060)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2797, file: !2763, line: 151, baseType: !126, size: 32, offset: 4288)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2797, file: !2763, line: 152, baseType: !2805, size: 16384, offset: 4320)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 16384, elements: !2806)
!2806 = !{!2807}
!2807 = !DISubrange(count: 2048)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2797, file: !2763, line: 153, baseType: !126, size: 32, offset: 20704)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2762, file: !2763, line: 69, baseType: !2810, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2763, line: 138, size: 448, elements: !2812)
!2812 = !{!2813, !2817, !2836, !2838, !2871, !2899, !2903}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2811, file: !2763, line: 139, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2768}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2811, file: !2763, line: 140, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2821, line: 230, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2822 = !{!2823, !2832}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2820, file: !2821, line: 231, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!1116, !2768, !2827, !309}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2821, line: 30, size: 128, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2828, file: !2821, line: 31, baseType: !283, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2828, file: !2821, line: 32, baseType: !154, size: 16, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2820, file: !2821, line: 232, baseType: !2833, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!1116, !2768, !2827, !283, !1119}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2811, file: !2763, line: 141, baseType: !2837, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2811, file: !2763, line: 142, baseType: !2839, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2842)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2821, line: 84, size: 320, elements: !2843)
!2843 = !{!2844, !2845, !2849, !2868, !2869}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2842, file: !2821, line: 85, baseType: !283, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2842, file: !2821, line: 86, baseType: !2846, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!154, !2768, !2827, !126}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2842, file: !2821, line: 88, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!154, !2768, !2853, !126}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2821, line: 168, size: 448, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2863, !2864}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2854, file: !2821, line: 169, baseType: !2828, size: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2854, file: !2821, line: 170, baseType: !1119, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2854, file: !2821, line: 171, baseType: !123, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2854, file: !2821, line: 172, baseType: !2860, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!1116, !1087, !2768, !2853, !309, !348, !1119}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2854, file: !2821, line: 174, baseType: !2860, size: 64, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2854, file: !2821, line: 176, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!126, !1087, !2768, !2853, !973}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2842, file: !2821, line: 90, baseType: !2837, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2842, file: !2821, line: 91, baseType: !2870, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2811, file: !2763, line: 143, baseType: !2872, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!2875, !2768}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !2878)
!2878 = !{!2879, !2880, !2884, !2888, !2894, !2898}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2877, file: !61, line: 40, baseType: !60, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2877, file: !61, line: 41, baseType: !2881, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!329}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2877, file: !61, line: 42, baseType: !2885, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!123}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2877, file: !61, line: 43, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!2302, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2877, file: !61, line: 44, baseType: !2895, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!2302}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2877, file: !61, line: 45, baseType: !2580, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2811, file: !2763, line: 144, baseType: !2900, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2302, !2768}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2811, file: !2763, line: 145, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2768, !2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2762, file: !2763, line: 70, baseType: !2910, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2912, line: 123, size: 1024, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !3042, !3043, !3044, !3045, !3046}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2911, file: !2912, line: 124, baseType: !519, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2911, file: !2912, line: 125, baseType: !519, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2911, file: !2912, line: 135, baseType: !2910, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2911, file: !2912, line: 136, baseType: !283, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2911, file: !2912, line: 138, baseType: !829, size: 192, align: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2911, file: !2912, line: 140, baseType: !2302, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2911, file: !2912, line: 141, baseType: !7, size: 32, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !2912, line: 142, baseType: !2922, size: 256, offset: 512)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !2912, line: 142, size: 256, elements: !2923)
!2923 = !{!2924, !2970, !2974}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2922, file: !2912, line: 143, baseType: !2925, size: 192)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2912, line: 91, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2925, file: !2912, line: 92, baseType: !127, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2925, file: !2912, line: 94, baseType: !930, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2925, file: !2912, line: 100, baseType: !2930, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2912, line: 180, size: 704, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2942, !2943, !2944, !2968, !2969}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2931, file: !2912, line: 182, baseType: !2910, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2931, file: !2912, line: 183, baseType: !7, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2931, file: !2912, line: 186, baseType: !2936, size: 192, offset: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2937, line: 19, size: 192, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !{!2939, !2940, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2936, file: !2937, line: 20, baseType: !2115, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2936, file: !2937, line: 21, baseType: !7, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2936, file: !2937, line: 22, baseType: !7, size: 32, offset: 160)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2931, file: !2912, line: 187, baseType: !217, size: 32, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2931, file: !2912, line: 188, baseType: !217, size: 32, offset: 352)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2931, file: !2912, line: 189, baseType: !2945, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !2912, line: 168, size: 320, elements: !2947)
!2947 = !{!2948, !2952, !2956, !2960, !2964}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2946, file: !2912, line: 169, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!126, !459, !2930}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2946, file: !2912, line: 171, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!126, !2910, !283, !154}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2946, file: !2912, line: 173, baseType: !2957, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!126, !2910}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2946, file: !2912, line: 174, baseType: !2961, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!126, !2910, !2910, !283}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2946, file: !2912, line: 176, baseType: !2965, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!126, !459, !2910, !2930}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2931, file: !2912, line: 192, baseType: !140, size: 128, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2931, file: !2912, line: 194, baseType: !758, size: 128, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2922, file: !2912, line: 144, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2912, line: 103, size: 64, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2971, file: !2912, line: 104, baseType: !2910, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2922, file: !2912, line: 145, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2912, line: 107, size: 256, elements: !2976)
!2976 = !{!2977, !3037, !3040, !3041}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2975, file: !2912, line: 108, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2912, line: 217, size: 768, elements: !2981)
!2981 = !{!2982, !3002, !3006, !3010, !3014, !3018, !3022, !3026, !3027, !3028, !3029, !3033}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2980, file: !2912, line: 222, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!126, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2912, line: 197, size: 1088, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2987, file: !2912, line: 199, baseType: !2910, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2987, file: !2912, line: 200, baseType: !1087, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2987, file: !2912, line: 201, baseType: !459, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2987, file: !2912, line: 202, baseType: !123, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2987, file: !2912, line: 205, baseType: !503, size: 192, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2987, file: !2912, line: 206, baseType: !503, size: 192, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2987, file: !2912, line: 207, baseType: !126, size: 32, offset: 640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2987, file: !2912, line: 208, baseType: !140, size: 128, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2987, file: !2912, line: 209, baseType: !309, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2987, file: !2912, line: 211, baseType: !1119, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2987, file: !2912, line: 212, baseType: !329, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2987, file: !2912, line: 213, baseType: !329, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2987, file: !2912, line: 214, baseType: !1001, size: 64, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2980, file: !2912, line: 223, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2986}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2980, file: !2912, line: 236, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!126, !459, !123}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2980, file: !2912, line: 238, baseType: !3011, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!123, !459, !1122}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2980, file: !2912, line: 239, baseType: !3015, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!123, !459, !123, !1122}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2980, file: !2912, line: 240, baseType: !3019, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !459, !123}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2980, file: !2912, line: 242, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!1116, !2986, !309, !1119, !348}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2980, file: !2912, line: 252, baseType: !1119, size: 64, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2980, file: !2912, line: 259, baseType: !329, size: 8, offset: 512)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2980, file: !2912, line: 260, baseType: !3023, size: 64, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2980, file: !2912, line: 263, baseType: !3030, size: 64, offset: 640)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!1178, !2986, !1180}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2980, file: !2912, line: 266, baseType: !3034, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!126, !2986, !973}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2975, file: !2912, line: 109, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2912, line: 31, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2975, file: !2912, line: 110, baseType: !348, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2975, file: !2912, line: 111, baseType: !2910, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2911, file: !2912, line: 148, baseType: !123, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2911, file: !2912, line: 154, baseType: !223, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2911, file: !2912, line: 156, baseType: !155, size: 16, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2911, file: !2912, line: 157, baseType: !154, size: 16, offset: 912)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2911, file: !2912, line: 158, baseType: !3047, size: 64, offset: 960)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2912, line: 32, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2762, file: !2763, line: 71, baseType: !3050, size: 32, offset: 448)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3051, line: 19, size: 32, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3050, file: !3051, line: 20, baseType: !805, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2762, file: !2763, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2762, file: !2763, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2762, file: !2763, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2762, file: !2763, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2762, file: !2763, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2758, file: !2759, line: 16, baseType: !376, size: 64, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2758, file: !2759, line: 17, baseType: !1103, size: 64, offset: 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2758, file: !2759, line: 18, baseType: !140, size: 128, offset: 640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2758, file: !2759, line: 19, baseType: !343, size: 32, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2758, file: !2759, line: 20, baseType: !7, size: 32, offset: 800)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2752, file: !44, line: 701, baseType: !309, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2752, file: !44, line: 702, baseType: !7, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !151, file: !44, line: 705, baseType: !219, size: 32, offset: 4032)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !151, file: !44, line: 708, baseType: !219, size: 32, offset: 4064)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !151, file: !44, line: 709, baseType: !2491, size: 64, offset: 4096)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !151, file: !44, line: 720, baseType: !123, size: 64, offset: 4160)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !147, file: !44, line: 453, baseType: !2115, size: 128, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !147, file: !44, line: 454, baseType: !121, size: 32, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !147, file: !44, line: 455, baseType: !519, size: 32, offset: 224)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !147, file: !44, line: 460, baseType: !927, size: 128, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !147, file: !44, line: 461, baseType: !680, size: 256, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !147, file: !44, line: 462, baseType: !127, size: 64, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !147, file: !44, line: 463, baseType: !127, size: 64, offset: 704)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !147, file: !44, line: 464, baseType: !127, size: 64, offset: 768)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !147, file: !44, line: 465, baseType: !3079, size: 64, offset: 832)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3081)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !3082)
!3082 = !{!3083, !3087, !3091, !3095, !3099, !3103, !3109, !3113, !3117, !3122, !3126, !3130, !3134, !3135, !3139, !3145, !3146, !3147, !3151, !3156, !3160, !3167}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3081, file: !44, line: 368, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!126, !128, !424}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3081, file: !44, line: 369, baseType: !3088, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!126, !1087, !128}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3081, file: !44, line: 372, baseType: !3092, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!126, !146, !424}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3081, file: !44, line: 375, baseType: !3096, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!126, !128}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3081, file: !44, line: 381, baseType: !3100, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!126, !1087, !146, !143, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3081, file: !44, line: 383, baseType: !3104, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !3107}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3081, file: !44, line: 385, baseType: !3110, size: 64, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!126, !1087, !146, !348, !7, !7, !2297, !1302}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3081, file: !44, line: 388, baseType: !3114, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!126, !1087, !146, !348, !7, !7, !128, !123}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3081, file: !44, line: 393, baseType: !3118, size: 64, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!3121, !146, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !122, line: 125, baseType: !223)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3081, file: !44, line: 394, baseType: !3123, size: 64, offset: 576)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !128, !7, !7}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3081, file: !44, line: 395, baseType: !3127, size: 64, offset: 640)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!126, !128, !121}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3081, file: !44, line: 396, baseType: !3131, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !128}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3081, file: !44, line: 397, baseType: !1128, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3081, file: !44, line: 402, baseType: !3136, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!126, !146, !128, !128, !5}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3081, file: !44, line: 404, baseType: !3140, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!329, !128, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3144, line: 305, baseType: !7)
!3144 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3081, file: !44, line: 405, baseType: !3131, size: 64, offset: 960)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3081, file: !44, line: 406, baseType: !3096, size: 64, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3081, file: !44, line: 407, baseType: !3148, size: 64, offset: 1088)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!126, !128, !127, !127}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3081, file: !44, line: 409, baseType: !3152, size: 64, offset: 1152)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !128, !3155, !3155}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3081, file: !44, line: 410, baseType: !3157, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!126, !146, !128}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3081, file: !44, line: 413, baseType: !3161, size: 64, offset: 1280)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!126, !3164, !1087, !3166}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3081, file: !44, line: 415, baseType: !3168, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !1087}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !44, line: 466, baseType: !127, size: 64, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !147, file: !44, line: 467, baseType: !1614, size: 32, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !147, file: !44, line: 468, baseType: !246, offset: 992)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !147, file: !44, line: 469, baseType: !140, size: 128, offset: 1024)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !147, file: !44, line: 470, baseType: !123, size: 64, offset: 1152)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !137, file: !130, line: 87, baseType: !127, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !137, file: !130, line: 94, baseType: !127, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 96, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 96, size: 64, elements: !3180)
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3179, file: !130, line: 101, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !122, line: 143, baseType: !223)
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 103, baseType: !3184, size: 320)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 103, size: 320, elements: !3185)
!3185 = !{!3186, !3196, !3197, !3198}
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !130, line: 104, baseType: !3187, size: 128)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !130, line: 104, size: 128, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3187, file: !130, line: 105, baseType: !140, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !3187, file: !130, line: 106, baseType: !3191, size: 128)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3187, file: !130, line: 106, size: 128, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3191, file: !130, line: 107, baseType: !128, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3191, file: !130, line: 109, baseType: !126, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3191, file: !130, line: 110, baseType: !126, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3184, file: !130, line: 117, baseType: !2134, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3184, file: !130, line: 119, baseType: !123, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !130, line: 120, baseType: !3199, size: 64, offset: 256)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !130, line: 120, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3199, file: !130, line: 121, baseType: !123, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3199, file: !130, line: 122, baseType: !127, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3199, file: !130, line: 123, baseType: !3204, size: 32)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3199, file: !130, line: 123, size: 32, elements: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3204, file: !130, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3204, file: !130, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3204, file: !130, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 130, baseType: !3210, size: 192)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 130, size: 192, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3210, file: !130, line: 131, baseType: !127, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3210, file: !130, line: 134, baseType: !229, size: 8, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3210, file: !130, line: 135, baseType: !229, size: 8, offset: 72)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3210, file: !130, line: 136, baseType: !519, size: 32, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3210, file: !130, line: 137, baseType: !7, size: 32, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 139, baseType: !3218, size: 256)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 139, size: 256, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3218, file: !130, line: 140, baseType: !127, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3218, file: !130, line: 141, baseType: !519, size: 32, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3218, file: !130, line: 143, baseType: !140, size: 128, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 145, baseType: !3224, size: 256)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 145, size: 256, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3234}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3224, file: !130, line: 146, baseType: !127, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3224, file: !130, line: 147, baseType: !1058, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3224, file: !130, line: 148, baseType: !127, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !130, line: 149, baseType: !3230, size: 64, offset: 192)
!3230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !130, line: 149, size: 64, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3230, file: !130, line: 150, baseType: !966, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3230, file: !130, line: 151, baseType: !519, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3224, file: !130, line: 156, baseType: !246, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !130, line: 159, baseType: !3236, size: 128)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !130, line: 159, size: 128, elements: !3237)
!3237 = !{!3238, !3302}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3236, file: !130, line: 161, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !3241)
!3241 = !{!3242, !3252, !3273, !3274, !3275, !3276, !3277, !3289, !3290, !3291}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3240, file: !31, line: 111, baseType: !3243, size: 384)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !3244)
!3244 = !{!3245, !3247, !3248, !3249, !3250, !3251}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3243, file: !31, line: 20, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3243, file: !31, line: 21, baseType: !3246, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3243, file: !31, line: 22, baseType: !3246, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3243, file: !31, line: 23, baseType: !127, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3243, file: !31, line: 24, baseType: !127, size: 64, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3243, file: !31, line: 25, baseType: !127, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3240, file: !31, line: 112, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3255, line: 105, size: 128, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3254, file: !3255, line: 110, baseType: !127, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3254, file: !3255, line: 118, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3255, line: 95, size: 448, elements: !3261)
!3261 = !{!3262, !3263, !3268, !3269, !3270, !3271, !3272}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3260, file: !3255, line: 96, baseType: !507, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3260, file: !3255, line: 97, baseType: !3264, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3255, line: 60, baseType: !3266)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3253}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3260, file: !3255, line: 98, baseType: !3264, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3260, file: !3255, line: 99, baseType: !329, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3260, file: !3255, line: 100, baseType: !329, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3260, file: !3255, line: 101, baseType: !777, size: 128, align: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3260, file: !3255, line: 102, baseType: !3253, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3240, file: !31, line: 113, baseType: !3254, size: 128, offset: 448)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3240, file: !31, line: 114, baseType: !1730, size: 192, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3240, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3240, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3240, file: !31, line: 117, baseType: !3278, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !3281)
!3281 = !{!3282, !3283, !3287, !3288}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3280, file: !31, line: 73, baseType: !3131, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3280, file: !31, line: 78, baseType: !3284, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3239}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3280, file: !31, line: 83, baseType: !3284, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3280, file: !31, line: 89, baseType: !1019, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3240, file: !31, line: 118, baseType: !123, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3240, file: !31, line: 119, baseType: !126, size: 32, offset: 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !31, line: 120, baseType: !3292, size: 128, offset: 1024)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !31, line: 120, size: 128, elements: !3293)
!3293 = !{!3294, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3292, file: !31, line: 121, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3296, line: 6, size: 128, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3295, file: !3296, line: 7, baseType: !223, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3295, file: !3296, line: 8, baseType: !223, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3292, file: !31, line: 122, baseType: !3301)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3295, elements: !1592)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3236, file: !130, line: 162, baseType: !123, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !134, file: !130, line: 176, baseType: !777, size: 128, align: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !130, line: 179, baseType: !3305, size: 32, offset: 384)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !130, line: 179, size: 32, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3305, file: !130, line: 184, baseType: !519, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3305, file: !130, line: 192, baseType: !7, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3305, file: !130, line: 194, baseType: !7, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3305, file: !130, line: 195, baseType: !126, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !129, file: !130, line: 199, baseType: !519, size: 32, offset: 416)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!3315 = !{!0, !3316, !3321, !3326, !3331, !3336}
!3316 = !DIGlobalVariableExpression(var: !3317, expr: !DIExpression())
!3317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description256", scope: !2, file: !3, line: 748, type: !3318, isLocal: true, isDefinition: true, align: 8)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 664, elements: !3319)
!3319 = !{!3320}
!3320 = !DISubrange(count: 83)
!3321 = !DIGlobalVariableExpression(var: !3322, expr: !DIExpression())
!3322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author257", scope: !2, file: !3, line: 749, type: !3323, isLocal: true, isDefinition: true, align: 8)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 480, elements: !3324)
!3324 = !{!3325}
!3325 = !DISubrange(count: 60)
!3326 = !DIGlobalVariableExpression(var: !3327, expr: !DIExpression())
!3327 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file258", scope: !2, file: !3, line: 750, type: !3328, isLocal: true, isDefinition: true, align: 8)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 624, elements: !3329)
!3329 = !{!3330}
!3330 = !DISubrange(count: 78)
!3331 = !DIGlobalVariableExpression(var: !3332, expr: !DIExpression())
!3332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license259", scope: !2, file: !3, line: 750, type: !3333, isLocal: true, isDefinition: true, align: 8)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 264, elements: !3334)
!3334 = !{!3335}
!3335 = !DISubrange(count: 33)
!3336 = !DIGlobalVariableExpression(var: !3337, expr: !DIExpression())
!3337 = distinct !DIGlobalVariable(name: "vb2_dc_dmabuf_ops", scope: !2, file: !3, line: 360, type: !3338, isLocal: true, isDefinition: true)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_ops", file: !3340, line: 35, size: 832, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/dma-buf.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342, !3343, !3898, !3902, !3906, !3907, !3911, !3915, !3919, !3923, !3924, !3928, !3932}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sgt_mapping", scope: !3339, file: !3340, line: 43, baseType: !329, size: 8)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3339, file: !3340, line: 71, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!126, !3347, !3429}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !3340, line: 305, size: 1856, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3367, !3368, !3428}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3348, file: !3340, line: 306, baseType: !1119, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3348, file: !3340, line: 307, baseType: !1087, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "attachments", scope: !3348, file: !3340, line: 308, baseType: !140, size: 128, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3348, file: !3340, line: 309, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3348, file: !3340, line: 310, baseType: !503, size: 192, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "vmapping_counter", scope: !3348, file: !3340, line: 311, baseType: !7, size: 32, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_ptr", scope: !3348, file: !3340, line: 312, baseType: !123, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !3348, file: !3340, line: 313, baseType: !283, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3348, file: !3340, line: 314, baseType: !283, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "name_lock", scope: !3348, file: !3340, line: 315, baseType: !246, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3348, file: !3340, line: 316, baseType: !376, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3348, file: !3340, line: 317, baseType: !140, size: 128, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3348, file: !3340, line: 318, baseType: !123, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3348, file: !3340, line: 319, baseType: !3365, size: 64, offset: 1024)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !3340, line: 319, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3348, file: !3340, line: 322, baseType: !758, size: 128, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cb_excl", scope: !3348, file: !3340, line: 329, baseType: !3369, size: 320, offset: 1216)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_poll_cb_t", file: !3340, line: 324, size: 320, elements: !3370)
!3370 = !{!3371, !3426, !3427}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3369, file: !3340, line: 325, baseType: !3372, size: 192)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !3373, line: 116, size: 192, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3372, file: !3373, line: 117, baseType: !140, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3372, file: !3373, line: 118, baseType: !3377, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !3373, line: 105, baseType: !3378)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3381, !3425}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !3373, line: 65, size: 512, elements: !3383)
!3383 = !{!3384, !3385, !3414, !3420, !3421, !3422, !3423, !3424}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !3373, line: 66, baseType: !1056, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3382, file: !3373, line: 67, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !3373, line: 125, size: 576, elements: !3389)
!3389 = !{!3390, !3391, !3395, !3396, !3400, !3401, !3405, !3409, !3413}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !3388, file: !3373, line: 132, baseType: !329, size: 8)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !3388, file: !3373, line: 143, baseType: !3392, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!283, !3381}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !3388, file: !3373, line: 155, baseType: !3392, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !3388, file: !3373, line: 192, baseType: !3397, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!329, !3381}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !3388, file: !3373, line: 209, baseType: !3397, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3388, file: !3373, line: 231, baseType: !3402, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!473, !3381, !329, !473}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3388, file: !3373, line: 242, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3381}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !3388, file: !3373, line: 252, baseType: !3410, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3381, !309, !126}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !3388, file: !3373, line: 262, baseType: !3410, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !3373, line: 84, baseType: !3415, size: 128, offset: 128)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3382, file: !3373, line: 84, size: 128, elements: !3416)
!3416 = !{!3417, !3418, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3415, file: !3373, line: 85, baseType: !140, size: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3415, file: !3373, line: 87, baseType: !881, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3415, file: !3373, line: 89, baseType: !777, size: 128, align: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3382, file: !3373, line: 91, baseType: !223, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !3382, file: !3373, line: 92, baseType: !223, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3373, line: 93, baseType: !127, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3382, file: !3373, line: 94, baseType: !3050, size: 32, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3382, file: !3373, line: 95, baseType: !126, size: 32, offset: 480)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3369, file: !3340, line: 326, baseType: !1189, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3369, file: !3340, line: 328, baseType: !1178, size: 32, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cb_shared", scope: !3348, file: !3340, line: 329, baseType: !3369, size: 320, offset: 1536)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !3340, line: 389, size: 576, elements: !3431)
!3431 = !{!3432, !3433, !3867, !3868, !3884, !3885, !3886, !3896, !3897}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !3430, file: !3340, line: 390, baseType: !3347, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3430, file: !3340, line: 391, baseType: !3434, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3442, !3443, !3494, !3567, !3568, !3569, !3570, !3571, !3580, !3685, !3698, !3702, !3703, !3707, !3709, !3710, !3711, !3715, !3721, !3722, !3725, !3729, !3819, !3820, !3821, !3822, !3823, !3855, !3856, !3857, !3860, !3863, !3864, !3865, !3866}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3435, file: !73, line: 462, baseType: !2762, size: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3435, file: !73, line: 463, baseType: !3434, size: 64, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3435, file: !73, line: 465, baseType: !3440, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3435, file: !73, line: 467, baseType: !283, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !73, line: 468, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3454, !3459, !3463}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3446, file: !73, line: 88, baseType: !283, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3446, file: !73, line: 89, baseType: !2839, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3446, file: !73, line: 90, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!126, !3434, !2796}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3446, file: !73, line: 91, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!309, !3434, !3458, !2907, !2908}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
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
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3496, file: !3497, line: 83, baseType: !283, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3496, file: !3497, line: 84, baseType: !283, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3496, file: !3497, line: 85, baseType: !3434, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3496, file: !3497, line: 86, baseType: !2839, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3496, file: !3497, line: 87, baseType: !2839, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3496, file: !3497, line: 88, baseType: !2839, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3496, file: !3497, line: 90, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!126, !3434, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3522, !3526, !3527, !3528, !3529, !3530, !3538, !3539, !3540, !3541, !3542, !3543}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3510, file: !67, line: 96, baseType: !283, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3510, file: !67, line: 97, baseType: !3495, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3510, file: !67, line: 99, baseType: !376, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3510, file: !67, line: 100, baseType: !283, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3510, file: !67, line: 102, baseType: !329, size: 8, offset: 256)
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
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3510, file: !67, line: 114, baseType: !2839, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3510, file: !67, line: 115, baseType: !2839, size: 64, offset: 896)
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
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3496, file: !3497, line: 112, baseType: !391, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3496, file: !3497, line: 114, baseType: !329, size: 8, offset: 1344)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3435, file: !73, line: 471, baseType: !3509, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3435, file: !73, line: 473, baseType: !123, size: 64, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3435, file: !73, line: 475, baseType: !123, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3435, file: !73, line: 480, baseType: !503, size: 192, offset: 1024)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3435, file: !73, line: 484, baseType: !3572, size: 576, offset: 1216)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3572, file: !73, line: 362, baseType: !140, size: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3572, file: !73, line: 363, baseType: !140, size: 128, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3572, file: !73, line: 364, baseType: !140, size: 128, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3572, file: !73, line: 365, baseType: !140, size: 128, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3572, file: !73, line: 366, baseType: !329, size: 8, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3572, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3435, file: !73, line: 485, baseType: !3581, size: 2304, offset: 1792)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3678, !3682}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3581, file: !80, line: 566, baseType: !3534, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3581, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3581, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3581, file: !80, line: 569, baseType: !329, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3581, file: !80, line: 570, baseType: !329, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3581, file: !80, line: 571, baseType: !329, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3581, file: !80, line: 572, baseType: !329, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3581, file: !80, line: 573, baseType: !329, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3581, file: !80, line: 574, baseType: !329, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3581, file: !80, line: 575, baseType: !329, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3581, file: !80, line: 576, baseType: !329, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3581, file: !80, line: 577, baseType: !217, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !80, line: 578, baseType: !246, offset: 96)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3581, file: !80, line: 580, baseType: !140, size: 128, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3581, file: !80, line: 581, baseType: !1730, size: 192, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3581, file: !80, line: 582, baseType: !3599, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3601, line: 43, size: 1472, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3610, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !3601, line: 44, baseType: !283, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3600, file: !3601, line: 45, baseType: !126, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3600, file: !3601, line: 46, baseType: !140, size: 128, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3600, file: !3601, line: 47, baseType: !246, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3600, file: !3601, line: 48, baseType: !3608, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3600, file: !3601, line: 49, baseType: !3611, size: 320, offset: 320)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3612, line: 11, size: 320, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !{!3614, !3615, !3616, !3621}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3611, file: !3612, line: 16, baseType: !385, size: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3611, file: !3612, line: 17, baseType: !127, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3611, file: !3612, line: 18, baseType: !3617, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !3612, line: 19, baseType: !217, size: 32, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3600, file: !3601, line: 50, baseType: !127, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3600, file: !3601, line: 51, baseType: !881, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3600, file: !3601, line: 52, baseType: !881, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3600, file: !3601, line: 53, baseType: !881, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3600, file: !3601, line: 54, baseType: !881, size: 64, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3600, file: !3601, line: 55, baseType: !881, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3600, file: !3601, line: 56, baseType: !127, size: 64, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3600, file: !3601, line: 57, baseType: !127, size: 64, offset: 1088)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3600, file: !3601, line: 58, baseType: !127, size: 64, offset: 1152)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3600, file: !3601, line: 59, baseType: !127, size: 64, offset: 1216)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3600, file: !3601, line: 60, baseType: !127, size: 64, offset: 1280)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3600, file: !3601, line: 61, baseType: !3434, size: 64, offset: 1344)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3600, file: !3601, line: 62, baseType: !329, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3600, file: !3601, line: 63, baseType: !329, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3581, file: !80, line: 583, baseType: !329, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3581, file: !80, line: 584, baseType: !329, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3581, file: !80, line: 585, baseType: !329, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3581, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3581, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3581, file: !80, line: 592, baseType: !873, size: 512, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3581, file: !80, line: 593, baseType: !223, size: 64, offset: 1088)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3581, file: !80, line: 594, baseType: !1755, size: 256, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3581, file: !80, line: 595, baseType: !758, size: 128, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3581, file: !80, line: 596, baseType: !3608, size: 64, offset: 1536)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3581, file: !80, line: 597, baseType: !519, size: 32, offset: 1600)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3581, file: !80, line: 598, baseType: !519, size: 32, offset: 1632)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3581, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3581, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3581, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3581, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3581, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3581, file: !80, line: 604, baseType: !329, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
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
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3581, file: !80, line: 615, baseType: !223, size: 64, offset: 1856)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3581, file: !80, line: 616, baseType: !223, size: 64, offset: 1920)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3581, file: !80, line: 617, baseType: !223, size: 64, offset: 1984)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3581, file: !80, line: 618, baseType: !223, size: 64, offset: 2048)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3581, file: !80, line: 620, baseType: !3669, size: 64, offset: 2112)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3670, file: !80, line: 537, baseType: !246)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3670, file: !80, line: 538, baseType: !7, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3670, file: !80, line: 540, baseType: !140, size: 128, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3670, file: !80, line: 543, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3581, file: !80, line: 621, baseType: !3679, size: 64, offset: 2176)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3434, !1450}
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
!3694 = !{null, !3434, !329}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3687, file: !80, line: 646, baseType: !3469, size: 64, offset: 1600)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3687, file: !80, line: 647, baseType: !3460, size: 64, offset: 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3687, file: !80, line: 648, baseType: !3460, size: 64, offset: 1728)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3435, file: !73, line: 493, baseType: !3699, size: 64, offset: 4160)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3701, line: 13, flags: DIFlagFwdDecl)
!3701 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3435, file: !73, line: 499, baseType: !140, size: 128, offset: 4224)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3435, file: !73, line: 502, baseType: !3704, size: 64, offset: 4352)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3435, file: !73, line: 504, baseType: !3708, size: 64, offset: 4416)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3435, file: !73, line: 505, baseType: !223, size: 64, offset: 4480)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3435, file: !73, line: 510, baseType: !223, size: 64, offset: 4544)
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
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3435, file: !73, line: 515, baseType: !140, size: 128, offset: 4736)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3435, file: !73, line: 526, baseType: !3723, offset: 4864)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3724, line: 5, elements: !260)
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
!3751 = !{!329, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3738, file: !3732, line: 114, baseType: !3755, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!2302, !3752, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3738, file: !3732, line: 116, baseType: !3761, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!329, !3752, !283}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3738, file: !3732, line: 118, baseType: !3765, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!126, !3752, !283, !7, !123, !1119}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3738, file: !3732, line: 123, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!126, !3752, !283, !3772, !1119}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3738, file: !3732, line: 126, baseType: !3774, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!283, !3752}
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
!3789 = !{!3730, !3752, !283}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3738, file: !3732, line: 135, baseType: !3791, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!126, !3752, !283, !283, !7, !7, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3732, line: 43, size: 640, elements: !3796)
!3796 = !{!3797, !3798, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3795, file: !3732, line: 44, baseType: !3730, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3795, file: !3732, line: 45, baseType: !7, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3795, file: !3732, line: 46, baseType: !3800, size: 512, offset: 128)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !911)
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
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3435, file: !73, line: 534, baseType: !343, size: 32, offset: 4992)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3435, file: !73, line: 535, baseType: !217, size: 32, offset: 5024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3435, file: !73, line: 537, baseType: !246, offset: 5056)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3435, file: !73, line: 538, baseType: !140, size: 128, offset: 5056)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3435, file: !73, line: 540, baseType: !3824, size: 64, offset: 5184)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3826, line: 54, size: 960, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833, !3834, !3838, !3842, !3843, !3844, !3845, !3849, !3853, !3854}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3825, file: !3826, line: 55, baseType: !283, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3825, file: !3826, line: 56, baseType: !376, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3825, file: !3826, line: 58, baseType: !2839, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3825, file: !3826, line: 59, baseType: !2839, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3825, file: !3826, line: 60, baseType: !2768, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3825, file: !3826, line: 62, baseType: !3451, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3825, file: !3826, line: 63, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!309, !3434, !3458}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3825, file: !3826, line: 65, baseType: !3839, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !3824}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3825, file: !3826, line: 66, baseType: !3460, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3825, file: !3826, line: 68, baseType: !3469, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3825, file: !3826, line: 70, baseType: !2875, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3825, file: !3826, line: 71, baseType: !3846, size: 64, offset: 704)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!2302, !3434}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3825, file: !3826, line: 73, baseType: !3850, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3434, !2907, !2908}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3825, file: !3826, line: 75, baseType: !3464, size: 64, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3825, file: !3826, line: 77, baseType: !3563, size: 64, offset: 896)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3435, file: !73, line: 541, baseType: !2839, size: 64, offset: 5248)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3435, file: !73, line: 543, baseType: !3460, size: 64, offset: 5312)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3435, file: !73, line: 544, baseType: !3858, size: 64, offset: 5376)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3435, file: !73, line: 545, baseType: !3861, size: 64, offset: 5440)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3435, file: !73, line: 547, baseType: !329, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3435, file: !73, line: 548, baseType: !329, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3435, file: !73, line: 549, baseType: !329, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3435, file: !73, line: 550, baseType: !329, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3430, file: !3340, line: 392, baseType: !140, size: 128, offset: 128)
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
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3875, file: !3871, line: 15, baseType: !3182, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3875, file: !3871, line: 17, baseType: !7, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3870, file: !3871, line: 44, baseType: !7, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3870, file: !3871, line: 45, baseType: !7, size: 32, offset: 96)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3430, file: !3340, line: 394, baseType: !93, size: 32, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "peer2peer", scope: !3430, file: !3340, line: 395, baseType: !329, size: 8, offset: 352)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "importer_ops", scope: !3430, file: !3340, line: 396, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attach_ops", file: !3340, line: 337, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "allow_peer2peer", scope: !3889, file: !3340, line: 344, baseType: !329, size: 8)
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
!3927 = !{!126, !3347, !973}
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
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3937, file: !3938, line: 123, baseType: !2580, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "get_dmabuf", scope: !3937, file: !3938, line: 124, baseType: !3946, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!3347, !123, !127}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "get_userptr", scope: !3937, file: !3938, line: 126, baseType: !3950, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!123, !3434, !127, !127, !93}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "put_userptr", scope: !3937, file: !3938, line: 129, baseType: !2580, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3937, file: !3938, line: 131, baseType: !2580, size: 64, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !3937, file: !3938, line: 132, baseType: !2580, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dmabuf", scope: !3937, file: !3938, line: 134, baseType: !3957, size: 64, offset: 448)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!123, !3434, !3347, !127, !93}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "detach_dmabuf", scope: !3937, file: !3938, line: 138, baseType: !2580, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "map_dmabuf", scope: !3937, file: !3938, line: 139, baseType: !3962, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!126, !123}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dmabuf", scope: !3937, file: !3938, line: 140, baseType: !2580, size: 64, offset: 640)
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
!3978 = !{!126, !123, !973}
!3979 = !{i32 7, !"Dwarf Version", i32 4}
!3980 = !{i32 2, !"Debug Info Version", i32 3}
!3981 = !{i32 1, !"wchar_size", i32 2}
!3982 = !{i32 1, !"Code Model", i32 2}
!3983 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3984 = distinct !DISubprogram(name: "vb2_dc_alloc", scope: !3, file: !3, line: 136, type: !3942, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!3985 = !DILocalVariable(name: "dev", arg: 1, scope: !3984, file: !3, line: 136, type: !3434)
!3986 = !DILocation(line: 136, column: 42, scope: !3984)
!3987 = !DILocalVariable(name: "attrs", arg: 2, scope: !3984, file: !3, line: 136, type: !127)
!3988 = !DILocation(line: 136, column: 61, scope: !3984)
!3989 = !DILocalVariable(name: "size", arg: 3, scope: !3984, file: !3, line: 137, type: !127)
!3990 = !DILocation(line: 137, column: 20, scope: !3984)
!3991 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !3984, file: !3, line: 137, type: !93)
!3992 = !DILocation(line: 137, column: 50, scope: !3984)
!3993 = !DILocalVariable(name: "gfp_flags", arg: 5, scope: !3984, file: !3, line: 138, type: !121)
!3994 = !DILocation(line: 138, column: 12, scope: !3984)
!3995 = !DILocalVariable(name: "buf", scope: !3984, file: !3, line: 140, type: !3996)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_dc_buf", file: !3, line: 25, size: 960, elements: !3998)
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4017, !4025, !4026, !4027}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3997, file: !3, line: 26, baseType: !3434, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3997, file: !3, line: 27, baseType: !123, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3997, file: !3, line: 28, baseType: !127, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !3997, file: !3, line: 29, baseType: !123, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3997, file: !3, line: 30, baseType: !3182, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3997, file: !3, line: 31, baseType: !127, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3997, file: !3, line: 32, baseType: !93, size: 32, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dma_sgt", scope: !3997, file: !3, line: 33, baseType: !3869, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3997, file: !3, line: 34, baseType: !4008, size: 64, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_vector", file: !14, line: 1755, size: 128, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_allocated", scope: !4009, file: !14, line: 1756, baseType: !7, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frames", scope: !4009, file: !14, line: 1757, baseType: !7, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "got_ref", scope: !4009, file: !14, line: 1758, baseType: !329, size: 8, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "is_pfns", scope: !4009, file: !14, line: 1759, baseType: !329, size: 8, offset: 72)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs", scope: !4009, file: !14, line: 1760, baseType: !4016, offset: 128)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !1769)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3997, file: !3, line: 37, baseType: !4018, size: 192, offset: 576)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_vmarea_handler", file: !4019, line: 28, size: 192, elements: !4020)
!4019 = !DIFile(filename: "./include/media/videobuf2-memops.h", directory: "/home/lizy2001/genbc/linux")
!4020 = !{!4021, !4023, !4024}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4018, file: !4019, line: 29, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4018, file: !4019, line: 30, baseType: !2580, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4018, file: !4019, line: 31, baseType: !123, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3997, file: !3, line: 38, baseType: !805, size: 32, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "sgt_base", scope: !3997, file: !3, line: 39, baseType: !3869, size: 64, offset: 832)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "db_attach", scope: !3997, file: !3, line: 42, baseType: !3429, size: 64, offset: 896)
!4028 = !DILocation(line: 140, column: 21, scope: !3984)
!4029 = !DILocalVariable(name: "__ret_warn_on", scope: !4030, file: !3, line: 142, type: !126)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 142, column: 6)
!4031 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 142, column: 6)
!4032 = !DILocation(line: 142, column: 6, scope: !4030)
!4033 = !DILocation(line: 142, column: 6, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 142, column: 6)
!4035 = !DILocation(line: 142, column: 6, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 142, column: 6)
!4037 = !DILocation(line: 142, column: 6, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 142, column: 6)
!4039 = !DILocation(line: 142, column: 6, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 142, column: 6)
!4041 = !{i32 -2141732336, i32 -2141732307, i32 -2141732261, i32 -2141732203, i32 -2141732149, i32 -2141732095, i32 -2141732040, i32 -2141732009}
!4042 = !DILocation(line: 142, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 142, column: 6)
!4044 = !{i32 -2141731574, i32 -2141731567, i32 -2141731515, i32 -2141731484, i32 -2141731454}
!4045 = !DILocation(line: 142, column: 6, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 142, column: 6)
!4047 = !DILocation(line: 142, column: 6, scope: !4031)
!4048 = !DILocation(line: 142, column: 6, scope: !3984)
!4049 = !DILocation(line: 143, column: 10, scope: !4031)
!4050 = !DILocation(line: 143, column: 3, scope: !4031)
!4051 = !DILocation(line: 145, column: 8, scope: !3984)
!4052 = !DILocation(line: 145, column: 6, scope: !3984)
!4053 = !DILocation(line: 146, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 146, column: 6)
!4055 = !DILocation(line: 146, column: 6, scope: !3984)
!4056 = !DILocation(line: 147, column: 10, scope: !4054)
!4057 = !DILocation(line: 147, column: 3, scope: !4054)
!4058 = !DILocation(line: 149, column: 15, scope: !3984)
!4059 = !DILocation(line: 149, column: 2, scope: !3984)
!4060 = !DILocation(line: 149, column: 7, scope: !3984)
!4061 = !DILocation(line: 149, column: 13, scope: !3984)
!4062 = !DILocation(line: 150, column: 32, scope: !3984)
!4063 = !DILocation(line: 150, column: 37, scope: !3984)
!4064 = !DILocation(line: 150, column: 44, scope: !3984)
!4065 = !DILocation(line: 150, column: 49, scope: !3984)
!4066 = !DILocation(line: 151, column: 19, scope: !3984)
!4067 = !DILocation(line: 151, column: 17, scope: !3984)
!4068 = !DILocation(line: 151, column: 30, scope: !3984)
!4069 = !DILocation(line: 151, column: 35, scope: !3984)
!4070 = !DILocation(line: 150, column: 16, scope: !3984)
!4071 = !DILocation(line: 150, column: 2, scope: !3984)
!4072 = !DILocation(line: 150, column: 7, scope: !3984)
!4073 = !DILocation(line: 150, column: 14, scope: !3984)
!4074 = !DILocation(line: 152, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 152, column: 6)
!4076 = !DILocation(line: 152, column: 12, scope: !4075)
!4077 = !DILocation(line: 152, column: 6, scope: !3984)
!4078 = !DILocation(line: 153, column: 3, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 152, column: 20)
!4080 = !DILocation(line: 154, column: 9, scope: !4079)
!4081 = !DILocation(line: 154, column: 3, scope: !4079)
!4082 = !DILocation(line: 155, column: 10, scope: !4079)
!4083 = !DILocation(line: 155, column: 3, scope: !4079)
!4084 = !DILocation(line: 158, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 158, column: 6)
!4086 = !DILocation(line: 158, column: 12, scope: !4085)
!4087 = !DILocation(line: 158, column: 18, scope: !4085)
!4088 = !DILocation(line: 158, column: 48, scope: !4085)
!4089 = !DILocation(line: 158, column: 6, scope: !3984)
!4090 = !DILocation(line: 159, column: 16, scope: !4085)
!4091 = !DILocation(line: 159, column: 21, scope: !4085)
!4092 = !DILocation(line: 159, column: 3, scope: !4085)
!4093 = !DILocation(line: 159, column: 8, scope: !4085)
!4094 = !DILocation(line: 159, column: 14, scope: !4085)
!4095 = !DILocation(line: 162, column: 24, scope: !3984)
!4096 = !DILocation(line: 162, column: 13, scope: !3984)
!4097 = !DILocation(line: 162, column: 2, scope: !3984)
!4098 = !DILocation(line: 162, column: 7, scope: !3984)
!4099 = !DILocation(line: 162, column: 11, scope: !3984)
!4100 = !DILocation(line: 163, column: 14, scope: !3984)
!4101 = !DILocation(line: 163, column: 2, scope: !3984)
!4102 = !DILocation(line: 163, column: 7, scope: !3984)
!4103 = !DILocation(line: 163, column: 12, scope: !3984)
!4104 = !DILocation(line: 164, column: 17, scope: !3984)
!4105 = !DILocation(line: 164, column: 2, scope: !3984)
!4106 = !DILocation(line: 164, column: 7, scope: !3984)
!4107 = !DILocation(line: 164, column: 15, scope: !3984)
!4108 = !DILocation(line: 166, column: 27, scope: !3984)
!4109 = !DILocation(line: 166, column: 32, scope: !3984)
!4110 = !DILocation(line: 166, column: 2, scope: !3984)
!4111 = !DILocation(line: 166, column: 7, scope: !3984)
!4112 = !DILocation(line: 166, column: 15, scope: !3984)
!4113 = !DILocation(line: 166, column: 24, scope: !3984)
!4114 = !DILocation(line: 167, column: 2, scope: !3984)
!4115 = !DILocation(line: 167, column: 7, scope: !3984)
!4116 = !DILocation(line: 167, column: 15, scope: !3984)
!4117 = !DILocation(line: 167, column: 19, scope: !3984)
!4118 = !DILocation(line: 168, column: 21, scope: !3984)
!4119 = !DILocation(line: 168, column: 2, scope: !3984)
!4120 = !DILocation(line: 168, column: 7, scope: !3984)
!4121 = !DILocation(line: 168, column: 15, scope: !3984)
!4122 = !DILocation(line: 168, column: 19, scope: !3984)
!4123 = !DILocation(line: 170, column: 16, scope: !3984)
!4124 = !DILocation(line: 170, column: 21, scope: !3984)
!4125 = !DILocation(line: 170, column: 2, scope: !3984)
!4126 = !DILocation(line: 172, column: 9, scope: !3984)
!4127 = !DILocation(line: 172, column: 2, scope: !3984)
!4128 = !DILocation(line: 173, column: 1, scope: !3984)
!4129 = distinct !DISubprogram(name: "vb2_dc_put", scope: !3, file: !3, line: 119, type: !2581, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4130 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4129, file: !3, line: 119, type: !123)
!4131 = !DILocation(line: 119, column: 30, scope: !4129)
!4132 = !DILocalVariable(name: "buf", scope: !4129, file: !3, line: 121, type: !3996)
!4133 = !DILocation(line: 121, column: 21, scope: !4129)
!4134 = !DILocation(line: 121, column: 27, scope: !4129)
!4135 = !DILocation(line: 123, column: 30, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 123, column: 6)
!4137 = !DILocation(line: 123, column: 35, scope: !4136)
!4138 = !DILocation(line: 123, column: 7, scope: !4136)
!4139 = !DILocation(line: 123, column: 6, scope: !4129)
!4140 = !DILocation(line: 124, column: 3, scope: !4136)
!4141 = !DILocation(line: 126, column: 6, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 126, column: 6)
!4143 = !DILocation(line: 126, column: 11, scope: !4142)
!4144 = !DILocation(line: 126, column: 6, scope: !4129)
!4145 = !DILocation(line: 127, column: 17, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 126, column: 21)
!4147 = !DILocation(line: 127, column: 22, scope: !4146)
!4148 = !DILocation(line: 127, column: 3, scope: !4146)
!4149 = !DILocation(line: 128, column: 9, scope: !4146)
!4150 = !DILocation(line: 128, column: 14, scope: !4146)
!4151 = !DILocation(line: 128, column: 3, scope: !4146)
!4152 = !DILocation(line: 129, column: 2, scope: !4146)
!4153 = !DILocation(line: 130, column: 17, scope: !4129)
!4154 = !DILocation(line: 130, column: 22, scope: !4129)
!4155 = !DILocation(line: 130, column: 27, scope: !4129)
!4156 = !DILocation(line: 130, column: 32, scope: !4129)
!4157 = !DILocation(line: 130, column: 38, scope: !4129)
!4158 = !DILocation(line: 130, column: 43, scope: !4129)
!4159 = !DILocation(line: 130, column: 51, scope: !4129)
!4160 = !DILocation(line: 130, column: 56, scope: !4129)
!4161 = !DILocation(line: 131, column: 10, scope: !4129)
!4162 = !DILocation(line: 131, column: 15, scope: !4129)
!4163 = !DILocation(line: 130, column: 2, scope: !4129)
!4164 = !DILocation(line: 132, column: 13, scope: !4129)
!4165 = !DILocation(line: 132, column: 18, scope: !4129)
!4166 = !DILocation(line: 132, column: 2, scope: !4129)
!4167 = !DILocation(line: 133, column: 8, scope: !4129)
!4168 = !DILocation(line: 133, column: 2, scope: !4129)
!4169 = !DILocation(line: 134, column: 1, scope: !4129)
!4170 = distinct !DISubprogram(name: "vb2_dc_get_dmabuf", scope: !3, file: !3, line: 394, type: !3947, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4171 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4170, file: !3, line: 394, type: !123)
!4172 = !DILocation(line: 394, column: 48, scope: !4170)
!4173 = !DILocalVariable(name: "flags", arg: 2, scope: !4170, file: !3, line: 394, type: !127)
!4174 = !DILocation(line: 394, column: 72, scope: !4170)
!4175 = !DILocalVariable(name: "buf", scope: !4170, file: !3, line: 396, type: !3996)
!4176 = !DILocation(line: 396, column: 21, scope: !4170)
!4177 = !DILocation(line: 396, column: 27, scope: !4170)
!4178 = !DILocalVariable(name: "dbuf", scope: !4170, file: !3, line: 397, type: !3347)
!4179 = !DILocation(line: 397, column: 18, scope: !4170)
!4180 = !DILocalVariable(name: "exp_info", scope: !4170, file: !3, line: 398, type: !4181)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_export_info", file: !3340, line: 414, size: 448, elements: !4182)
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !4181, file: !3340, line: 415, baseType: !283, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4181, file: !3340, line: 416, baseType: !376, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4181, file: !3340, line: 417, baseType: !3354, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4181, file: !3340, line: 418, baseType: !1119, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4181, file: !3340, line: 419, baseType: !126, size: 32, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4181, file: !3340, line: 420, baseType: !3365, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4181, file: !3340, line: 421, baseType: !123, size: 64, offset: 384)
!4190 = !DILocation(line: 398, column: 2, scope: !4170)
!4191 = !DILocation(line: 400, column: 11, scope: !4170)
!4192 = !DILocation(line: 400, column: 15, scope: !4170)
!4193 = !DILocation(line: 401, column: 18, scope: !4170)
!4194 = !DILocation(line: 401, column: 23, scope: !4170)
!4195 = !DILocation(line: 401, column: 11, scope: !4170)
!4196 = !DILocation(line: 401, column: 16, scope: !4170)
!4197 = !DILocation(line: 402, column: 19, scope: !4170)
!4198 = !DILocation(line: 402, column: 11, scope: !4170)
!4199 = !DILocation(line: 402, column: 17, scope: !4170)
!4200 = !DILocation(line: 403, column: 18, scope: !4170)
!4201 = !DILocation(line: 403, column: 11, scope: !4170)
!4202 = !DILocation(line: 403, column: 16, scope: !4170)
!4203 = !DILocation(line: 405, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 405, column: 6)
!4205 = !DILocation(line: 405, column: 12, scope: !4204)
!4206 = !DILocation(line: 405, column: 6, scope: !4170)
!4207 = !DILocation(line: 406, column: 39, scope: !4204)
!4208 = !DILocation(line: 406, column: 19, scope: !4204)
!4209 = !DILocation(line: 406, column: 3, scope: !4204)
!4210 = !DILocation(line: 406, column: 8, scope: !4204)
!4211 = !DILocation(line: 406, column: 17, scope: !4204)
!4212 = !DILocalVariable(name: "__ret_warn_on", scope: !4213, file: !3, line: 408, type: !126)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 408, column: 6)
!4214 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 408, column: 6)
!4215 = !DILocation(line: 408, column: 6, scope: !4213)
!4216 = !DILocation(line: 408, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 408, column: 6)
!4218 = !DILocation(line: 408, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 408, column: 6)
!4220 = !DILocation(line: 408, column: 6, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 408, column: 6)
!4222 = !DILocation(line: 408, column: 6, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 408, column: 6)
!4224 = !{i32 -2141728547, i32 -2141728518, i32 -2141728472, i32 -2141728414, i32 -2141728360, i32 -2141728306, i32 -2141728251, i32 -2141728220}
!4225 = !DILocation(line: 408, column: 6, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 408, column: 6)
!4227 = !{i32 -2141727785, i32 -2141727778, i32 -2141727726, i32 -2141727695, i32 -2141727665}
!4228 = !DILocation(line: 408, column: 6, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 408, column: 6)
!4230 = !DILocation(line: 408, column: 6, scope: !4214)
!4231 = !DILocation(line: 408, column: 6, scope: !4170)
!4232 = !DILocation(line: 409, column: 3, scope: !4214)
!4233 = !DILocation(line: 411, column: 9, scope: !4170)
!4234 = !DILocation(line: 411, column: 7, scope: !4170)
!4235 = !DILocation(line: 412, column: 13, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 412, column: 6)
!4237 = !DILocation(line: 412, column: 6, scope: !4236)
!4238 = !DILocation(line: 412, column: 6, scope: !4170)
!4239 = !DILocation(line: 413, column: 3, scope: !4236)
!4240 = !DILocation(line: 416, column: 16, scope: !4170)
!4241 = !DILocation(line: 416, column: 21, scope: !4170)
!4242 = !DILocation(line: 416, column: 2, scope: !4170)
!4243 = !DILocation(line: 418, column: 9, scope: !4170)
!4244 = !DILocation(line: 418, column: 2, scope: !4170)
!4245 = !DILocation(line: 419, column: 1, scope: !4170)
!4246 = distinct !DISubprogram(name: "vb2_dc_get_userptr", scope: !3, file: !3, line: 456, type: !3951, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4247 = !DILocalVariable(name: "dev", arg: 1, scope: !4246, file: !3, line: 456, type: !3434)
!4248 = !DILocation(line: 456, column: 48, scope: !4246)
!4249 = !DILocalVariable(name: "vaddr", arg: 2, scope: !4246, file: !3, line: 456, type: !127)
!4250 = !DILocation(line: 456, column: 67, scope: !4246)
!4251 = !DILocalVariable(name: "size", arg: 3, scope: !4246, file: !3, line: 457, type: !127)
!4252 = !DILocation(line: 457, column: 16, scope: !4246)
!4253 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4246, file: !3, line: 457, type: !93)
!4254 = !DILocation(line: 457, column: 46, scope: !4246)
!4255 = !DILocalVariable(name: "buf", scope: !4246, file: !3, line: 459, type: !3996)
!4256 = !DILocation(line: 459, column: 21, scope: !4246)
!4257 = !DILocalVariable(name: "vec", scope: !4246, file: !3, line: 460, type: !4008)
!4258 = !DILocation(line: 460, column: 23, scope: !4246)
!4259 = !DILocalVariable(name: "offset", scope: !4246, file: !3, line: 461, type: !7)
!4260 = !DILocation(line: 461, column: 15, scope: !4246)
!4261 = !DILocalVariable(name: "n_pages", scope: !4246, file: !3, line: 462, type: !126)
!4262 = !DILocation(line: 462, column: 6, scope: !4246)
!4263 = !DILocalVariable(name: "i", scope: !4246, file: !3, line: 462, type: !126)
!4264 = !DILocation(line: 462, column: 15, scope: !4246)
!4265 = !DILocalVariable(name: "ret", scope: !4246, file: !3, line: 463, type: !126)
!4266 = !DILocation(line: 463, column: 6, scope: !4246)
!4267 = !DILocalVariable(name: "sgt", scope: !4246, file: !3, line: 464, type: !3869)
!4268 = !DILocation(line: 464, column: 19, scope: !4246)
!4269 = !DILocalVariable(name: "contig_size", scope: !4246, file: !3, line: 465, type: !127)
!4270 = !DILocation(line: 465, column: 16, scope: !4246)
!4271 = !DILocalVariable(name: "dma_align", scope: !4246, file: !3, line: 466, type: !127)
!4272 = !DILocation(line: 466, column: 16, scope: !4246)
!4273 = !DILocation(line: 466, column: 28, scope: !4246)
!4274 = !DILocation(line: 469, column: 7, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 469, column: 6)
!4276 = !DILocation(line: 469, column: 6, scope: !4246)
!4277 = !DILocation(line: 470, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 470, column: 3)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 470, column: 3)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 469, column: 44)
!4281 = !DILocation(line: 470, column: 3, scope: !4279)
!4282 = !DILocation(line: 471, column: 10, scope: !4280)
!4283 = !DILocation(line: 471, column: 3, scope: !4280)
!4284 = !DILocation(line: 474, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 474, column: 6)
!4286 = !DILocation(line: 474, column: 6, scope: !4246)
!4287 = !DILocation(line: 475, column: 3, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 475, column: 3)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 475, column: 3)
!4290 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 474, column: 13)
!4291 = !DILocation(line: 475, column: 3, scope: !4289)
!4292 = !DILocation(line: 476, column: 10, scope: !4290)
!4293 = !DILocation(line: 476, column: 3, scope: !4290)
!4294 = !DILocalVariable(name: "__ret_warn_on", scope: !4295, file: !3, line: 479, type: !126)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 479, column: 6)
!4296 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 479, column: 6)
!4297 = !DILocation(line: 479, column: 6, scope: !4295)
!4298 = !DILocation(line: 479, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 479, column: 6)
!4300 = !DILocation(line: 479, column: 6, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 479, column: 6)
!4302 = !DILocation(line: 479, column: 6, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 479, column: 6)
!4304 = !DILocation(line: 479, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 479, column: 6)
!4306 = !{i32 -2141725224, i32 -2141725195, i32 -2141725149, i32 -2141725091, i32 -2141725037, i32 -2141724983, i32 -2141724928, i32 -2141724897}
!4307 = !DILocation(line: 479, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 479, column: 6)
!4309 = !{i32 -2141724462, i32 -2141724455, i32 -2141724403, i32 -2141724372, i32 -2141724342}
!4310 = !DILocation(line: 479, column: 6, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 479, column: 6)
!4312 = !DILocation(line: 479, column: 6, scope: !4296)
!4313 = !DILocation(line: 479, column: 6, scope: !4246)
!4314 = !DILocation(line: 480, column: 10, scope: !4296)
!4315 = !DILocation(line: 480, column: 3, scope: !4296)
!4316 = !DILocation(line: 482, column: 8, scope: !4246)
!4317 = !DILocation(line: 482, column: 6, scope: !4246)
!4318 = !DILocation(line: 483, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 483, column: 6)
!4320 = !DILocation(line: 483, column: 6, scope: !4246)
!4321 = !DILocation(line: 484, column: 10, scope: !4319)
!4322 = !DILocation(line: 484, column: 3, scope: !4319)
!4323 = !DILocation(line: 486, column: 13, scope: !4246)
!4324 = !DILocation(line: 486, column: 2, scope: !4246)
!4325 = !DILocation(line: 486, column: 7, scope: !4246)
!4326 = !DILocation(line: 486, column: 11, scope: !4246)
!4327 = !DILocation(line: 487, column: 17, scope: !4246)
!4328 = !DILocation(line: 487, column: 2, scope: !4246)
!4329 = !DILocation(line: 487, column: 7, scope: !4246)
!4330 = !DILocation(line: 487, column: 15, scope: !4246)
!4331 = !DILocation(line: 489, column: 11, scope: !4246)
!4332 = !DILocation(line: 489, column: 9, scope: !4246)
!4333 = !DILocation(line: 490, column: 28, scope: !4246)
!4334 = !DILocation(line: 490, column: 35, scope: !4246)
!4335 = !DILocation(line: 490, column: 8, scope: !4246)
!4336 = !DILocation(line: 490, column: 6, scope: !4246)
!4337 = !DILocation(line: 491, column: 13, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 491, column: 6)
!4339 = !DILocation(line: 491, column: 6, scope: !4338)
!4340 = !DILocation(line: 491, column: 6, scope: !4246)
!4341 = !DILocation(line: 492, column: 17, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 491, column: 19)
!4343 = !DILocation(line: 492, column: 9, scope: !4342)
!4344 = !DILocation(line: 492, column: 7, scope: !4342)
!4345 = !DILocation(line: 493, column: 3, scope: !4342)
!4346 = !DILocation(line: 495, column: 13, scope: !4246)
!4347 = !DILocation(line: 495, column: 2, scope: !4246)
!4348 = !DILocation(line: 495, column: 7, scope: !4246)
!4349 = !DILocation(line: 495, column: 11, scope: !4246)
!4350 = !DILocation(line: 496, column: 31, scope: !4246)
!4351 = !DILocation(line: 496, column: 12, scope: !4246)
!4352 = !DILocation(line: 496, column: 10, scope: !4246)
!4353 = !DILocation(line: 497, column: 30, scope: !4246)
!4354 = !DILocation(line: 497, column: 8, scope: !4246)
!4355 = !DILocation(line: 497, column: 6, scope: !4246)
!4356 = !DILocation(line: 498, column: 6, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 498, column: 6)
!4358 = !DILocation(line: 498, column: 10, scope: !4357)
!4359 = !DILocation(line: 498, column: 6, scope: !4246)
!4360 = !DILocalVariable(name: "nums", scope: !4361, file: !3, line: 499, type: !3312)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 498, column: 15)
!4362 = !DILocation(line: 499, column: 18, scope: !4361)
!4363 = !DILocation(line: 499, column: 43, scope: !4361)
!4364 = !DILocation(line: 499, column: 25, scope: !4361)
!4365 = !DILocation(line: 505, column: 10, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 505, column: 3)
!4367 = !DILocation(line: 505, column: 8, scope: !4366)
!4368 = !DILocation(line: 505, column: 15, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 505, column: 3)
!4370 = !DILocation(line: 505, column: 19, scope: !4369)
!4371 = !DILocation(line: 505, column: 17, scope: !4369)
!4372 = !DILocation(line: 505, column: 3, scope: !4366)
!4373 = !DILocation(line: 506, column: 8, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 506, column: 8)
!4375 = !DILocation(line: 506, column: 13, scope: !4374)
!4376 = !DILocation(line: 506, column: 14, scope: !4374)
!4377 = !DILocation(line: 506, column: 18, scope: !4374)
!4378 = !DILocation(line: 506, column: 25, scope: !4374)
!4379 = !DILocation(line: 506, column: 30, scope: !4374)
!4380 = !DILocation(line: 506, column: 22, scope: !4374)
!4381 = !DILocation(line: 506, column: 8, scope: !4369)
!4382 = !DILocation(line: 507, column: 5, scope: !4374)
!4383 = !DILocation(line: 506, column: 31, scope: !4374)
!4384 = !DILocation(line: 505, column: 29, scope: !4369)
!4385 = !DILocation(line: 505, column: 3, scope: !4369)
!4386 = distinct !{!4386, !4372, !4387}
!4387 = !DILocation(line: 507, column: 10, scope: !4366)
!4388 = !DILocation(line: 508, column: 36, scope: !4361)
!4389 = !DILocation(line: 508, column: 41, scope: !4361)
!4390 = !DILocation(line: 509, column: 5, scope: !4361)
!4391 = !DILocation(line: 509, column: 29, scope: !4361)
!4392 = !DILocation(line: 509, column: 35, scope: !4361)
!4393 = !DILocation(line: 509, column: 40, scope: !4361)
!4394 = !DILocation(line: 508, column: 19, scope: !4361)
!4395 = !DILocation(line: 508, column: 3, scope: !4361)
!4396 = !DILocation(line: 508, column: 8, scope: !4361)
!4397 = !DILocation(line: 508, column: 17, scope: !4361)
!4398 = !DILocation(line: 510, column: 25, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 510, column: 7)
!4400 = !DILocation(line: 510, column: 30, scope: !4399)
!4401 = !DILocation(line: 510, column: 35, scope: !4399)
!4402 = !DILocation(line: 510, column: 40, scope: !4399)
!4403 = !DILocation(line: 510, column: 7, scope: !4399)
!4404 = !DILocation(line: 510, column: 7, scope: !4361)
!4405 = !DILocation(line: 511, column: 8, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 510, column: 51)
!4407 = !DILocation(line: 512, column: 4, scope: !4406)
!4408 = !DILocation(line: 514, column: 3, scope: !4361)
!4409 = !DILocation(line: 517, column: 8, scope: !4246)
!4410 = !DILocation(line: 517, column: 6, scope: !4246)
!4411 = !DILocation(line: 518, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 518, column: 6)
!4413 = !DILocation(line: 518, column: 6, scope: !4246)
!4414 = !DILocation(line: 519, column: 3, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 518, column: 12)
!4416 = !DILocation(line: 520, column: 7, scope: !4415)
!4417 = !DILocation(line: 521, column: 3, scope: !4415)
!4418 = !DILocation(line: 524, column: 34, scope: !4246)
!4419 = !DILocation(line: 524, column: 58, scope: !4246)
!4420 = !DILocation(line: 524, column: 39, scope: !4246)
!4421 = !DILocation(line: 524, column: 64, scope: !4246)
!4422 = !DILocation(line: 525, column: 3, scope: !4246)
!4423 = !DILocation(line: 525, column: 11, scope: !4246)
!4424 = !DILocation(line: 524, column: 8, scope: !4246)
!4425 = !DILocation(line: 524, column: 6, scope: !4246)
!4426 = !DILocation(line: 526, column: 6, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 526, column: 6)
!4428 = !DILocation(line: 526, column: 6, scope: !4246)
!4429 = !DILocation(line: 527, column: 3, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 526, column: 11)
!4431 = !DILocation(line: 528, column: 3, scope: !4430)
!4432 = !DILocation(line: 535, column: 22, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 535, column: 6)
!4434 = !DILocation(line: 535, column: 27, scope: !4433)
!4435 = !DILocation(line: 535, column: 32, scope: !4433)
!4436 = !DILocation(line: 535, column: 37, scope: !4433)
!4437 = !DILocation(line: 535, column: 42, scope: !4433)
!4438 = !DILocation(line: 535, column: 6, scope: !4433)
!4439 = !DILocation(line: 535, column: 6, scope: !4246)
!4440 = !DILocation(line: 537, column: 3, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 536, column: 33)
!4442 = !DILocation(line: 538, column: 7, scope: !4441)
!4443 = !DILocation(line: 539, column: 3, scope: !4441)
!4444 = !DILocation(line: 542, column: 43, scope: !4246)
!4445 = !DILocation(line: 542, column: 16, scope: !4246)
!4446 = !DILocation(line: 542, column: 14, scope: !4246)
!4447 = !DILocation(line: 543, column: 6, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 543, column: 6)
!4449 = !DILocation(line: 543, column: 20, scope: !4448)
!4450 = !DILocation(line: 543, column: 18, scope: !4448)
!4451 = !DILocation(line: 543, column: 6, scope: !4246)
!4452 = !DILocation(line: 544, column: 3, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 543, column: 26)
!4454 = !DILocation(line: 546, column: 7, scope: !4453)
!4455 = !DILocation(line: 547, column: 3, scope: !4453)
!4456 = !DILocation(line: 550, column: 18, scope: !4246)
!4457 = !DILocation(line: 550, column: 2, scope: !4246)
!4458 = !DILocation(line: 550, column: 7, scope: !4246)
!4459 = !DILocation(line: 550, column: 16, scope: !4246)
!4460 = !DILocation(line: 551, column: 17, scope: !4246)
!4461 = !DILocation(line: 551, column: 2, scope: !4246)
!4462 = !DILocation(line: 551, column: 7, scope: !4246)
!4463 = !DILocation(line: 551, column: 15, scope: !4246)
!4464 = !DILabel(scope: !4246, name: "out", file: !3, line: 552)
!4465 = !DILocation(line: 552, column: 1, scope: !4246)
!4466 = !DILocation(line: 553, column: 14, scope: !4246)
!4467 = !DILocation(line: 553, column: 2, scope: !4246)
!4468 = !DILocation(line: 553, column: 7, scope: !4246)
!4469 = !DILocation(line: 553, column: 12, scope: !4246)
!4470 = !DILocation(line: 555, column: 9, scope: !4246)
!4471 = !DILocation(line: 555, column: 2, scope: !4246)
!4472 = !DILabel(scope: !4246, name: "fail_map_sg", file: !3, line: 557)
!4473 = !DILocation(line: 557, column: 1, scope: !4246)
!4474 = !DILocation(line: 558, column: 20, scope: !4246)
!4475 = !DILocation(line: 558, column: 25, scope: !4246)
!4476 = !DILocation(line: 558, column: 30, scope: !4246)
!4477 = !DILocation(line: 558, column: 35, scope: !4246)
!4478 = !DILocation(line: 558, column: 40, scope: !4246)
!4479 = !DILocation(line: 558, column: 2, scope: !4246)
!4480 = !DILabel(scope: !4246, name: "fail_sgt_init", file: !3, line: 560)
!4481 = !DILocation(line: 560, column: 1, scope: !4246)
!4482 = !DILocation(line: 561, column: 16, scope: !4246)
!4483 = !DILocation(line: 561, column: 2, scope: !4246)
!4484 = !DILabel(scope: !4246, name: "fail_sgt", file: !3, line: 563)
!4485 = !DILocation(line: 563, column: 1, scope: !4246)
!4486 = !DILocation(line: 564, column: 8, scope: !4246)
!4487 = !DILocation(line: 564, column: 2, scope: !4246)
!4488 = !DILabel(scope: !4246, name: "fail_pfnvec", file: !3, line: 566)
!4489 = !DILocation(line: 566, column: 1, scope: !4246)
!4490 = !DILocation(line: 567, column: 23, scope: !4246)
!4491 = !DILocation(line: 567, column: 2, scope: !4246)
!4492 = !DILabel(scope: !4246, name: "fail_buf", file: !3, line: 569)
!4493 = !DILocation(line: 569, column: 1, scope: !4246)
!4494 = !DILocation(line: 570, column: 8, scope: !4246)
!4495 = !DILocation(line: 570, column: 2, scope: !4246)
!4496 = !DILocation(line: 572, column: 17, scope: !4246)
!4497 = !DILocation(line: 572, column: 9, scope: !4246)
!4498 = !DILocation(line: 572, column: 2, scope: !4246)
!4499 = !DILocation(line: 573, column: 1, scope: !4246)
!4500 = distinct !DISubprogram(name: "vb2_dc_put_userptr", scope: !3, file: !3, line: 425, type: !2581, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4501 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4500, file: !3, line: 425, type: !123)
!4502 = !DILocation(line: 425, column: 38, scope: !4500)
!4503 = !DILocalVariable(name: "buf", scope: !4500, file: !3, line: 427, type: !3996)
!4504 = !DILocation(line: 427, column: 21, scope: !4500)
!4505 = !DILocation(line: 427, column: 27, scope: !4500)
!4506 = !DILocalVariable(name: "sgt", scope: !4500, file: !3, line: 428, type: !3869)
!4507 = !DILocation(line: 428, column: 19, scope: !4500)
!4508 = !DILocation(line: 428, column: 25, scope: !4500)
!4509 = !DILocation(line: 428, column: 30, scope: !4500)
!4510 = !DILocalVariable(name: "i", scope: !4500, file: !3, line: 429, type: !126)
!4511 = !DILocation(line: 429, column: 6, scope: !4500)
!4512 = !DILocalVariable(name: "pages", scope: !4500, file: !3, line: 430, type: !2297)
!4513 = !DILocation(line: 430, column: 16, scope: !4500)
!4514 = !DILocation(line: 432, column: 6, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 432, column: 6)
!4516 = !DILocation(line: 432, column: 6, scope: !4500)
!4517 = !DILocation(line: 437, column: 21, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 432, column: 11)
!4519 = !DILocation(line: 437, column: 26, scope: !4518)
!4520 = !DILocation(line: 437, column: 31, scope: !4518)
!4521 = !DILocation(line: 437, column: 36, scope: !4518)
!4522 = !DILocation(line: 437, column: 41, scope: !4518)
!4523 = !DILocation(line: 437, column: 3, scope: !4518)
!4524 = !DILocation(line: 439, column: 30, scope: !4518)
!4525 = !DILocation(line: 439, column: 35, scope: !4518)
!4526 = !DILocation(line: 439, column: 11, scope: !4518)
!4527 = !DILocation(line: 439, column: 9, scope: !4518)
!4528 = !DILocation(line: 441, column: 3, scope: !4518)
!4529 = !DILocation(line: 441, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 441, column: 3)
!4531 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 441, column: 3)
!4532 = !DILocation(line: 441, column: 3, scope: !4531)
!4533 = !DILocation(line: 441, column: 3, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 441, column: 3)
!4535 = !DILocation(line: 441, column: 3, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 441, column: 3)
!4537 = !DILocation(line: 441, column: 3, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 441, column: 3)
!4539 = !{i32 -2141727264, i32 -2141727235, i32 -2141727189, i32 -2141727131, i32 -2141727077, i32 -2141727023, i32 -2141726968, i32 -2141726937}
!4540 = !DILocation(line: 441, column: 3, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 441, column: 3)
!4542 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 441, column: 3)
!4543 = !{i32 -2141726461, i32 -2141726454, i32 -2141726400, i32 -2141726369, i32 -2141726339}
!4544 = !DILocation(line: 441, column: 3, scope: !4542)
!4545 = !DILocation(line: 442, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 442, column: 7)
!4547 = !DILocation(line: 442, column: 12, scope: !4546)
!4548 = !DILocation(line: 442, column: 20, scope: !4546)
!4549 = !DILocation(line: 442, column: 39, scope: !4546)
!4550 = !DILocation(line: 443, column: 7, scope: !4546)
!4551 = !DILocation(line: 443, column: 12, scope: !4546)
!4552 = !DILocation(line: 443, column: 20, scope: !4546)
!4553 = !DILocation(line: 442, column: 7, scope: !4518)
!4554 = !DILocation(line: 444, column: 11, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 444, column: 4)
!4556 = !DILocation(line: 444, column: 9, scope: !4555)
!4557 = !DILocation(line: 444, column: 16, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 444, column: 4)
!4559 = !DILocation(line: 444, column: 39, scope: !4558)
!4560 = !DILocation(line: 444, column: 44, scope: !4558)
!4561 = !DILocation(line: 444, column: 20, scope: !4558)
!4562 = !DILocation(line: 444, column: 18, scope: !4558)
!4563 = !DILocation(line: 444, column: 4, scope: !4555)
!4564 = !DILocation(line: 445, column: 25, scope: !4558)
!4565 = !DILocation(line: 445, column: 31, scope: !4558)
!4566 = !DILocation(line: 445, column: 5, scope: !4558)
!4567 = !DILocation(line: 444, column: 51, scope: !4558)
!4568 = !DILocation(line: 444, column: 4, scope: !4558)
!4569 = distinct !{!4569, !4563, !4570}
!4570 = !DILocation(line: 445, column: 33, scope: !4555)
!4571 = !DILocation(line: 446, column: 17, scope: !4518)
!4572 = !DILocation(line: 446, column: 3, scope: !4518)
!4573 = !DILocation(line: 447, column: 9, scope: !4518)
!4574 = !DILocation(line: 447, column: 3, scope: !4518)
!4575 = !DILocation(line: 448, column: 2, scope: !4518)
!4576 = !DILocation(line: 449, column: 22, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 448, column: 9)
!4578 = !DILocation(line: 449, column: 27, scope: !4577)
!4579 = !DILocation(line: 449, column: 32, scope: !4577)
!4580 = !DILocation(line: 449, column: 37, scope: !4577)
!4581 = !DILocation(line: 449, column: 47, scope: !4577)
!4582 = !DILocation(line: 449, column: 52, scope: !4577)
!4583 = !DILocation(line: 450, column: 8, scope: !4577)
!4584 = !DILocation(line: 450, column: 13, scope: !4577)
!4585 = !DILocation(line: 449, column: 3, scope: !4577)
!4586 = !DILocation(line: 452, column: 23, scope: !4500)
!4587 = !DILocation(line: 452, column: 28, scope: !4500)
!4588 = !DILocation(line: 452, column: 2, scope: !4500)
!4589 = !DILocation(line: 453, column: 8, scope: !4500)
!4590 = !DILocation(line: 453, column: 2, scope: !4500)
!4591 = !DILocation(line: 454, column: 1, scope: !4500)
!4592 = distinct !DISubprogram(name: "vb2_dc_prepare", scope: !3, file: !3, line: 93, type: !2581, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4593 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4592, file: !3, line: 93, type: !123)
!4594 = !DILocation(line: 93, column: 34, scope: !4592)
!4595 = !DILocalVariable(name: "buf", scope: !4592, file: !3, line: 95, type: !3996)
!4596 = !DILocation(line: 95, column: 21, scope: !4592)
!4597 = !DILocation(line: 95, column: 27, scope: !4592)
!4598 = !DILocalVariable(name: "sgt", scope: !4592, file: !3, line: 96, type: !3869)
!4599 = !DILocation(line: 96, column: 19, scope: !4592)
!4600 = !DILocation(line: 96, column: 25, scope: !4592)
!4601 = !DILocation(line: 96, column: 30, scope: !4592)
!4602 = !DILocation(line: 98, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 98, column: 6)
!4604 = !DILocation(line: 98, column: 6, scope: !4592)
!4605 = !DILocation(line: 99, column: 3, scope: !4603)
!4606 = !DILocation(line: 101, column: 30, scope: !4592)
!4607 = !DILocation(line: 101, column: 35, scope: !4592)
!4608 = !DILocation(line: 101, column: 40, scope: !4592)
!4609 = !DILocation(line: 101, column: 45, scope: !4592)
!4610 = !DILocation(line: 101, column: 50, scope: !4592)
!4611 = !DILocation(line: 101, column: 2, scope: !4592)
!4612 = !DILocation(line: 102, column: 1, scope: !4592)
!4613 = distinct !DISubprogram(name: "vb2_dc_finish", scope: !3, file: !3, line: 104, type: !2581, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4614 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4613, file: !3, line: 104, type: !123)
!4615 = !DILocation(line: 104, column: 33, scope: !4613)
!4616 = !DILocalVariable(name: "buf", scope: !4613, file: !3, line: 106, type: !3996)
!4617 = !DILocation(line: 106, column: 21, scope: !4613)
!4618 = !DILocation(line: 106, column: 27, scope: !4613)
!4619 = !DILocalVariable(name: "sgt", scope: !4613, file: !3, line: 107, type: !3869)
!4620 = !DILocation(line: 107, column: 19, scope: !4613)
!4621 = !DILocation(line: 107, column: 25, scope: !4613)
!4622 = !DILocation(line: 107, column: 30, scope: !4613)
!4623 = !DILocation(line: 109, column: 7, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 109, column: 6)
!4625 = !DILocation(line: 109, column: 6, scope: !4613)
!4626 = !DILocation(line: 110, column: 3, scope: !4624)
!4627 = !DILocation(line: 112, column: 27, scope: !4613)
!4628 = !DILocation(line: 112, column: 32, scope: !4613)
!4629 = !DILocation(line: 112, column: 37, scope: !4613)
!4630 = !DILocation(line: 112, column: 42, scope: !4613)
!4631 = !DILocation(line: 112, column: 47, scope: !4613)
!4632 = !DILocation(line: 112, column: 2, scope: !4613)
!4633 = !DILocation(line: 113, column: 1, scope: !4613)
!4634 = distinct !DISubprogram(name: "vb2_dc_attach_dmabuf", scope: !3, file: !3, line: 656, type: !3958, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4635 = !DILocalVariable(name: "dev", arg: 1, scope: !4634, file: !3, line: 656, type: !3434)
!4636 = !DILocation(line: 656, column: 50, scope: !4634)
!4637 = !DILocalVariable(name: "dbuf", arg: 2, scope: !4634, file: !3, line: 656, type: !3347)
!4638 = !DILocation(line: 656, column: 71, scope: !4634)
!4639 = !DILocalVariable(name: "size", arg: 3, scope: !4634, file: !3, line: 657, type: !127)
!4640 = !DILocation(line: 657, column: 16, scope: !4634)
!4641 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4634, file: !3, line: 657, type: !93)
!4642 = !DILocation(line: 657, column: 46, scope: !4634)
!4643 = !DILocalVariable(name: "buf", scope: !4634, file: !3, line: 659, type: !3996)
!4644 = !DILocation(line: 659, column: 21, scope: !4634)
!4645 = !DILocalVariable(name: "dba", scope: !4634, file: !3, line: 660, type: !3429)
!4646 = !DILocation(line: 660, column: 29, scope: !4634)
!4647 = !DILocation(line: 662, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 662, column: 6)
!4649 = !DILocation(line: 662, column: 12, scope: !4648)
!4650 = !DILocation(line: 662, column: 19, scope: !4648)
!4651 = !DILocation(line: 662, column: 17, scope: !4648)
!4652 = !DILocation(line: 662, column: 6, scope: !4634)
!4653 = !DILocation(line: 663, column: 10, scope: !4648)
!4654 = !DILocation(line: 663, column: 3, scope: !4648)
!4655 = !DILocalVariable(name: "__ret_warn_on", scope: !4656, file: !3, line: 665, type: !126)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 665, column: 6)
!4657 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 665, column: 6)
!4658 = !DILocation(line: 665, column: 6, scope: !4656)
!4659 = !DILocation(line: 665, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 665, column: 6)
!4661 = !DILocation(line: 665, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 665, column: 6)
!4663 = !DILocation(line: 665, column: 6, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 665, column: 6)
!4665 = !DILocation(line: 665, column: 6, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 665, column: 6)
!4667 = !{i32 -2141709949, i32 -2141709920, i32 -2141709874, i32 -2141709816, i32 -2141709762, i32 -2141709708, i32 -2141709653, i32 -2141709622}
!4668 = !DILocation(line: 665, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 665, column: 6)
!4670 = !{i32 -2141709187, i32 -2141709180, i32 -2141709128, i32 -2141709097, i32 -2141709067}
!4671 = !DILocation(line: 665, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 665, column: 6)
!4673 = !DILocation(line: 665, column: 6, scope: !4657)
!4674 = !DILocation(line: 665, column: 6, scope: !4634)
!4675 = !DILocation(line: 666, column: 10, scope: !4657)
!4676 = !DILocation(line: 666, column: 3, scope: !4657)
!4677 = !DILocation(line: 668, column: 8, scope: !4634)
!4678 = !DILocation(line: 668, column: 6, scope: !4634)
!4679 = !DILocation(line: 669, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 669, column: 6)
!4681 = !DILocation(line: 669, column: 6, scope: !4634)
!4682 = !DILocation(line: 670, column: 10, scope: !4680)
!4683 = !DILocation(line: 670, column: 3, scope: !4680)
!4684 = !DILocation(line: 672, column: 13, scope: !4634)
!4685 = !DILocation(line: 672, column: 2, scope: !4634)
!4686 = !DILocation(line: 672, column: 7, scope: !4634)
!4687 = !DILocation(line: 672, column: 11, scope: !4634)
!4688 = !DILocation(line: 674, column: 23, scope: !4634)
!4689 = !DILocation(line: 674, column: 29, scope: !4634)
!4690 = !DILocation(line: 674, column: 34, scope: !4634)
!4691 = !DILocation(line: 674, column: 8, scope: !4634)
!4692 = !DILocation(line: 674, column: 6, scope: !4634)
!4693 = !DILocation(line: 675, column: 13, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 675, column: 6)
!4695 = !DILocation(line: 675, column: 6, scope: !4694)
!4696 = !DILocation(line: 675, column: 6, scope: !4634)
!4697 = !DILocation(line: 676, column: 3, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 675, column: 19)
!4699 = !DILocation(line: 677, column: 9, scope: !4698)
!4700 = !DILocation(line: 677, column: 3, scope: !4698)
!4701 = !DILocation(line: 678, column: 10, scope: !4698)
!4702 = !DILocation(line: 678, column: 3, scope: !4698)
!4703 = !DILocation(line: 681, column: 17, scope: !4634)
!4704 = !DILocation(line: 681, column: 2, scope: !4634)
!4705 = !DILocation(line: 681, column: 7, scope: !4634)
!4706 = !DILocation(line: 681, column: 15, scope: !4634)
!4707 = !DILocation(line: 682, column: 14, scope: !4634)
!4708 = !DILocation(line: 682, column: 2, scope: !4634)
!4709 = !DILocation(line: 682, column: 7, scope: !4634)
!4710 = !DILocation(line: 682, column: 12, scope: !4634)
!4711 = !DILocation(line: 683, column: 19, scope: !4634)
!4712 = !DILocation(line: 683, column: 2, scope: !4634)
!4713 = !DILocation(line: 683, column: 7, scope: !4634)
!4714 = !DILocation(line: 683, column: 17, scope: !4634)
!4715 = !DILocation(line: 685, column: 9, scope: !4634)
!4716 = !DILocation(line: 685, column: 2, scope: !4634)
!4717 = !DILocation(line: 686, column: 1, scope: !4634)
!4718 = distinct !DISubprogram(name: "vb2_dc_detach_dmabuf", scope: !3, file: !3, line: 643, type: !2581, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4719 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4718, file: !3, line: 643, type: !123)
!4720 = !DILocation(line: 643, column: 40, scope: !4718)
!4721 = !DILocalVariable(name: "buf", scope: !4718, file: !3, line: 645, type: !3996)
!4722 = !DILocation(line: 645, column: 21, scope: !4718)
!4723 = !DILocation(line: 645, column: 27, scope: !4718)
!4724 = !DILocalVariable(name: "__ret_warn_on", scope: !4725, file: !3, line: 648, type: !126)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 648, column: 6)
!4726 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 648, column: 6)
!4727 = !DILocation(line: 648, column: 6, scope: !4725)
!4728 = !DILocation(line: 648, column: 6, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 648, column: 6)
!4730 = !DILocation(line: 648, column: 6, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 648, column: 6)
!4732 = !DILocation(line: 648, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 648, column: 6)
!4734 = !DILocation(line: 648, column: 6, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 648, column: 6)
!4736 = !{i32 -2141711410, i32 -2141711381, i32 -2141711335, i32 -2141711277, i32 -2141711223, i32 -2141711169, i32 -2141711114, i32 -2141711083}
!4737 = !DILocation(line: 648, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 648, column: 6)
!4739 = !{i32 -2141710648, i32 -2141710641, i32 -2141710589, i32 -2141710558, i32 -2141710528}
!4740 = !DILocation(line: 648, column: 6, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 648, column: 6)
!4742 = !DILocation(line: 648, column: 6, scope: !4726)
!4743 = !DILocation(line: 648, column: 6, scope: !4718)
!4744 = !DILocation(line: 649, column: 23, scope: !4726)
!4745 = !DILocation(line: 649, column: 3, scope: !4726)
!4746 = !DILocation(line: 652, column: 17, scope: !4718)
!4747 = !DILocation(line: 652, column: 22, scope: !4718)
!4748 = !DILocation(line: 652, column: 33, scope: !4718)
!4749 = !DILocation(line: 652, column: 41, scope: !4718)
!4750 = !DILocation(line: 652, column: 46, scope: !4718)
!4751 = !DILocation(line: 652, column: 2, scope: !4718)
!4752 = !DILocation(line: 653, column: 8, scope: !4718)
!4753 = !DILocation(line: 653, column: 2, scope: !4718)
!4754 = !DILocation(line: 654, column: 1, scope: !4718)
!4755 = distinct !DISubprogram(name: "vb2_dc_map_dmabuf", scope: !3, file: !3, line: 579, type: !3963, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4756 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4755, file: !3, line: 579, type: !123)
!4757 = !DILocation(line: 579, column: 36, scope: !4755)
!4758 = !DILocalVariable(name: "buf", scope: !4755, file: !3, line: 581, type: !3996)
!4759 = !DILocation(line: 581, column: 21, scope: !4755)
!4760 = !DILocation(line: 581, column: 27, scope: !4755)
!4761 = !DILocalVariable(name: "sgt", scope: !4755, file: !3, line: 582, type: !3869)
!4762 = !DILocation(line: 582, column: 19, scope: !4755)
!4763 = !DILocalVariable(name: "contig_size", scope: !4755, file: !3, line: 583, type: !127)
!4764 = !DILocation(line: 583, column: 16, scope: !4755)
!4765 = !DILocalVariable(name: "__ret_warn_on", scope: !4766, file: !3, line: 585, type: !126)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 585, column: 6)
!4767 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 585, column: 6)
!4768 = !DILocation(line: 585, column: 6, scope: !4766)
!4769 = !DILocation(line: 585, column: 6, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 585, column: 6)
!4771 = !DILocation(line: 585, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 585, column: 6)
!4773 = !DILocation(line: 585, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 585, column: 6)
!4775 = !DILocation(line: 585, column: 6, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 585, column: 6)
!4777 = !{i32 -2141722306, i32 -2141722277, i32 -2141722231, i32 -2141722173, i32 -2141722119, i32 -2141722065, i32 -2141722010, i32 -2141721979}
!4778 = !DILocation(line: 585, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 585, column: 6)
!4780 = !{i32 -2141721544, i32 -2141721537, i32 -2141721485, i32 -2141721454, i32 -2141721424}
!4781 = !DILocation(line: 585, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 585, column: 6)
!4783 = !DILocation(line: 585, column: 6, scope: !4767)
!4784 = !DILocation(line: 585, column: 6, scope: !4755)
!4785 = !DILocation(line: 586, column: 3, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 585, column: 32)
!4787 = !DILocation(line: 587, column: 3, scope: !4786)
!4788 = !DILocalVariable(name: "__ret_warn_on", scope: !4789, file: !3, line: 590, type: !126)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 590, column: 6)
!4790 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 590, column: 6)
!4791 = !DILocation(line: 590, column: 6, scope: !4789)
!4792 = !DILocation(line: 590, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 590, column: 6)
!4794 = !DILocation(line: 590, column: 6, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 590, column: 6)
!4796 = !DILocation(line: 590, column: 6, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 590, column: 6)
!4798 = !DILocation(line: 590, column: 6, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 590, column: 6)
!4800 = !{i32 -2141720689, i32 -2141720660, i32 -2141720614, i32 -2141720556, i32 -2141720502, i32 -2141720448, i32 -2141720393, i32 -2141720362}
!4801 = !DILocation(line: 590, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 590, column: 6)
!4803 = !{i32 -2141719927, i32 -2141719920, i32 -2141719868, i32 -2141719837, i32 -2141719807}
!4804 = !DILocation(line: 590, column: 6, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 590, column: 6)
!4806 = !DILocation(line: 590, column: 6, scope: !4790)
!4807 = !DILocation(line: 590, column: 6, scope: !4755)
!4808 = !DILocation(line: 591, column: 3, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 590, column: 29)
!4810 = !DILocation(line: 592, column: 3, scope: !4809)
!4811 = !DILocation(line: 596, column: 31, scope: !4755)
!4812 = !DILocation(line: 596, column: 36, scope: !4755)
!4813 = !DILocation(line: 596, column: 47, scope: !4755)
!4814 = !DILocation(line: 596, column: 52, scope: !4755)
!4815 = !DILocation(line: 596, column: 8, scope: !4755)
!4816 = !DILocation(line: 596, column: 6, scope: !4755)
!4817 = !DILocation(line: 597, column: 13, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 597, column: 6)
!4819 = !DILocation(line: 597, column: 6, scope: !4818)
!4820 = !DILocation(line: 597, column: 6, scope: !4755)
!4821 = !DILocation(line: 598, column: 3, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 597, column: 19)
!4823 = !DILocation(line: 599, column: 3, scope: !4822)
!4824 = !DILocation(line: 603, column: 43, scope: !4755)
!4825 = !DILocation(line: 603, column: 16, scope: !4755)
!4826 = !DILocation(line: 603, column: 14, scope: !4755)
!4827 = !DILocation(line: 604, column: 6, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 604, column: 6)
!4829 = !DILocation(line: 604, column: 20, scope: !4828)
!4830 = !DILocation(line: 604, column: 25, scope: !4828)
!4831 = !DILocation(line: 604, column: 18, scope: !4828)
!4832 = !DILocation(line: 604, column: 6, scope: !4755)
!4833 = !DILocation(line: 605, column: 3, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 604, column: 31)
!4835 = !DILocation(line: 607, column: 28, scope: !4834)
!4836 = !DILocation(line: 607, column: 33, scope: !4834)
!4837 = !DILocation(line: 607, column: 44, scope: !4834)
!4838 = !DILocation(line: 607, column: 49, scope: !4834)
!4839 = !DILocation(line: 607, column: 54, scope: !4834)
!4840 = !DILocation(line: 607, column: 3, scope: !4834)
!4841 = !DILocation(line: 608, column: 3, scope: !4834)
!4842 = !DILocation(line: 611, column: 18, scope: !4755)
!4843 = !DILocation(line: 611, column: 2, scope: !4755)
!4844 = !DILocation(line: 611, column: 7, scope: !4755)
!4845 = !DILocation(line: 611, column: 16, scope: !4755)
!4846 = !DILocation(line: 612, column: 17, scope: !4755)
!4847 = !DILocation(line: 612, column: 2, scope: !4755)
!4848 = !DILocation(line: 612, column: 7, scope: !4755)
!4849 = !DILocation(line: 612, column: 15, scope: !4755)
!4850 = !DILocation(line: 613, column: 2, scope: !4755)
!4851 = !DILocation(line: 613, column: 7, scope: !4755)
!4852 = !DILocation(line: 613, column: 13, scope: !4755)
!4853 = !DILocation(line: 615, column: 2, scope: !4755)
!4854 = !DILocation(line: 616, column: 1, scope: !4755)
!4855 = distinct !DISubprogram(name: "vb2_dc_unmap_dmabuf", scope: !3, file: !3, line: 618, type: !2581, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4856 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4855, file: !3, line: 618, type: !123)
!4857 = !DILocation(line: 618, column: 39, scope: !4855)
!4858 = !DILocalVariable(name: "buf", scope: !4855, file: !3, line: 620, type: !3996)
!4859 = !DILocation(line: 620, column: 21, scope: !4855)
!4860 = !DILocation(line: 620, column: 27, scope: !4855)
!4861 = !DILocalVariable(name: "sgt", scope: !4855, file: !3, line: 621, type: !3869)
!4862 = !DILocation(line: 621, column: 19, scope: !4855)
!4863 = !DILocation(line: 621, column: 25, scope: !4855)
!4864 = !DILocation(line: 621, column: 30, scope: !4855)
!4865 = !DILocalVariable(name: "__ret_warn_on", scope: !4866, file: !3, line: 623, type: !126)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 623, column: 6)
!4867 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 623, column: 6)
!4868 = !DILocation(line: 623, column: 6, scope: !4866)
!4869 = !DILocation(line: 623, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 623, column: 6)
!4871 = !DILocation(line: 623, column: 6, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 623, column: 6)
!4873 = !DILocation(line: 623, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 623, column: 6)
!4875 = !DILocation(line: 623, column: 6, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 623, column: 6)
!4877 = !{i32 -2141718716, i32 -2141718687, i32 -2141718641, i32 -2141718583, i32 -2141718529, i32 -2141718475, i32 -2141718420, i32 -2141718389}
!4878 = !DILocation(line: 623, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 623, column: 6)
!4880 = !{i32 -2141713893, i32 -2141713886, i32 -2141713834, i32 -2141713803, i32 -2141713773}
!4881 = !DILocation(line: 623, column: 6, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 623, column: 6)
!4883 = !DILocation(line: 623, column: 6, scope: !4867)
!4884 = !DILocation(line: 623, column: 6, scope: !4855)
!4885 = !DILocation(line: 624, column: 3, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 623, column: 32)
!4887 = !DILocation(line: 625, column: 3, scope: !4886)
!4888 = !DILocalVariable(name: "__ret_warn_on", scope: !4889, file: !3, line: 628, type: !126)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 628, column: 6)
!4890 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 628, column: 6)
!4891 = !DILocation(line: 628, column: 6, scope: !4889)
!4892 = !DILocation(line: 628, column: 6, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 628, column: 6)
!4894 = !DILocation(line: 628, column: 6, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 628, column: 6)
!4896 = !DILocation(line: 628, column: 6, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 628, column: 6)
!4898 = !DILocation(line: 628, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 628, column: 6)
!4900 = !{i32 -2141713045, i32 -2141713016, i32 -2141712970, i32 -2141712912, i32 -2141712858, i32 -2141712804, i32 -2141712749, i32 -2141712718}
!4901 = !DILocation(line: 628, column: 6, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 628, column: 6)
!4903 = !{i32 -2141712283, i32 -2141712276, i32 -2141712224, i32 -2141712193, i32 -2141712163}
!4904 = !DILocation(line: 628, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 628, column: 6)
!4906 = !DILocation(line: 628, column: 6, scope: !4890)
!4907 = !DILocation(line: 628, column: 6, scope: !4855)
!4908 = !DILocation(line: 629, column: 3, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 628, column: 21)
!4910 = !DILocation(line: 630, column: 3, scope: !4909)
!4911 = !DILocation(line: 633, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 633, column: 6)
!4913 = !DILocation(line: 633, column: 11, scope: !4912)
!4914 = !DILocation(line: 633, column: 6, scope: !4855)
!4915 = !DILocation(line: 634, column: 18, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 633, column: 18)
!4917 = !DILocation(line: 634, column: 23, scope: !4916)
!4918 = !DILocation(line: 634, column: 34, scope: !4916)
!4919 = !DILocation(line: 634, column: 42, scope: !4916)
!4920 = !DILocation(line: 634, column: 47, scope: !4916)
!4921 = !DILocation(line: 634, column: 3, scope: !4916)
!4922 = !DILocation(line: 635, column: 3, scope: !4916)
!4923 = !DILocation(line: 635, column: 8, scope: !4916)
!4924 = !DILocation(line: 635, column: 14, scope: !4916)
!4925 = !DILocation(line: 636, column: 2, scope: !4916)
!4926 = !DILocation(line: 637, column: 27, scope: !4855)
!4927 = !DILocation(line: 637, column: 32, scope: !4855)
!4928 = !DILocation(line: 637, column: 43, scope: !4855)
!4929 = !DILocation(line: 637, column: 48, scope: !4855)
!4930 = !DILocation(line: 637, column: 53, scope: !4855)
!4931 = !DILocation(line: 637, column: 2, scope: !4855)
!4932 = !DILocation(line: 639, column: 2, scope: !4855)
!4933 = !DILocation(line: 639, column: 7, scope: !4855)
!4934 = !DILocation(line: 639, column: 16, scope: !4855)
!4935 = !DILocation(line: 640, column: 2, scope: !4855)
!4936 = !DILocation(line: 640, column: 7, scope: !4855)
!4937 = !DILocation(line: 640, column: 15, scope: !4855)
!4938 = !DILocation(line: 641, column: 1, scope: !4855)
!4939 = distinct !DISubprogram(name: "vb2_dc_vaddr", scope: !3, file: !3, line: 76, type: !3968, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4940 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4939, file: !3, line: 76, type: !123)
!4941 = !DILocation(line: 76, column: 33, scope: !4939)
!4942 = !DILocalVariable(name: "buf", scope: !4939, file: !3, line: 78, type: !3996)
!4943 = !DILocation(line: 78, column: 21, scope: !4939)
!4944 = !DILocation(line: 78, column: 27, scope: !4939)
!4945 = !DILocation(line: 80, column: 7, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 80, column: 6)
!4947 = !DILocation(line: 80, column: 12, scope: !4946)
!4948 = !DILocation(line: 80, column: 18, scope: !4946)
!4949 = !DILocation(line: 80, column: 21, scope: !4946)
!4950 = !DILocation(line: 80, column: 26, scope: !4946)
!4951 = !DILocation(line: 80, column: 6, scope: !4939)
!4952 = !DILocation(line: 81, column: 29, scope: !4946)
!4953 = !DILocation(line: 81, column: 34, scope: !4946)
!4954 = !DILocation(line: 81, column: 45, scope: !4946)
!4955 = !DILocation(line: 81, column: 16, scope: !4946)
!4956 = !DILocation(line: 81, column: 3, scope: !4946)
!4957 = !DILocation(line: 81, column: 8, scope: !4946)
!4958 = !DILocation(line: 81, column: 14, scope: !4946)
!4959 = !DILocation(line: 83, column: 9, scope: !4939)
!4960 = !DILocation(line: 83, column: 14, scope: !4939)
!4961 = !DILocation(line: 83, column: 2, scope: !4939)
!4962 = distinct !DISubprogram(name: "vb2_dc_cookie", scope: !3, file: !3, line: 69, type: !3968, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4963 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4962, file: !3, line: 69, type: !123)
!4964 = !DILocation(line: 69, column: 34, scope: !4962)
!4965 = !DILocalVariable(name: "buf", scope: !4962, file: !3, line: 71, type: !3996)
!4966 = !DILocation(line: 71, column: 21, scope: !4962)
!4967 = !DILocation(line: 71, column: 27, scope: !4962)
!4968 = !DILocation(line: 73, column: 10, scope: !4962)
!4969 = !DILocation(line: 73, column: 15, scope: !4962)
!4970 = !DILocation(line: 73, column: 9, scope: !4962)
!4971 = !DILocation(line: 73, column: 2, scope: !4962)
!4972 = distinct !DISubprogram(name: "vb2_dc_num_users", scope: !3, file: !3, line: 86, type: !3973, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4973 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4972, file: !3, line: 86, type: !123)
!4974 = !DILocation(line: 86, column: 44, scope: !4972)
!4975 = !DILocalVariable(name: "buf", scope: !4972, file: !3, line: 88, type: !3996)
!4976 = !DILocation(line: 88, column: 21, scope: !4972)
!4977 = !DILocation(line: 88, column: 27, scope: !4972)
!4978 = !DILocation(line: 90, column: 24, scope: !4972)
!4979 = !DILocation(line: 90, column: 29, scope: !4972)
!4980 = !DILocation(line: 90, column: 9, scope: !4972)
!4981 = !DILocation(line: 90, column: 2, scope: !4972)
!4982 = distinct !DISubprogram(name: "vb2_dc_mmap", scope: !3, file: !3, line: 175, type: !3977, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4983 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4982, file: !3, line: 175, type: !123)
!4984 = !DILocation(line: 175, column: 30, scope: !4982)
!4985 = !DILocalVariable(name: "vma", arg: 2, scope: !4982, file: !3, line: 175, type: !973)
!4986 = !DILocation(line: 175, column: 63, scope: !4982)
!4987 = !DILocalVariable(name: "buf", scope: !4982, file: !3, line: 177, type: !3996)
!4988 = !DILocation(line: 177, column: 21, scope: !4982)
!4989 = !DILocation(line: 177, column: 27, scope: !4982)
!4990 = !DILocalVariable(name: "ret", scope: !4982, file: !3, line: 178, type: !126)
!4991 = !DILocation(line: 178, column: 6, scope: !4982)
!4992 = !DILocation(line: 180, column: 7, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 180, column: 6)
!4994 = !DILocation(line: 180, column: 6, scope: !4982)
!4995 = !DILocation(line: 181, column: 3, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 180, column: 12)
!4997 = !DILocation(line: 182, column: 3, scope: !4996)
!4998 = !DILocation(line: 185, column: 23, scope: !4982)
!4999 = !DILocation(line: 185, column: 28, scope: !4982)
!5000 = !DILocation(line: 185, column: 33, scope: !4982)
!5001 = !DILocation(line: 185, column: 38, scope: !4982)
!5002 = !DILocation(line: 185, column: 43, scope: !4982)
!5003 = !DILocation(line: 186, column: 3, scope: !4982)
!5004 = !DILocation(line: 186, column: 8, scope: !4982)
!5005 = !DILocation(line: 186, column: 18, scope: !4982)
!5006 = !DILocation(line: 186, column: 23, scope: !4982)
!5007 = !DILocation(line: 186, column: 29, scope: !4982)
!5008 = !DILocation(line: 186, column: 34, scope: !4982)
!5009 = !DILocation(line: 185, column: 8, scope: !4982)
!5010 = !DILocation(line: 185, column: 6, scope: !4982)
!5011 = !DILocation(line: 188, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 188, column: 6)
!5013 = !DILocation(line: 188, column: 6, scope: !4982)
!5014 = !DILocation(line: 189, column: 3, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 188, column: 11)
!5016 = !DILocation(line: 190, column: 10, scope: !5015)
!5017 = !DILocation(line: 190, column: 3, scope: !5015)
!5018 = !DILocation(line: 193, column: 2, scope: !4982)
!5019 = !DILocation(line: 193, column: 7, scope: !4982)
!5020 = !DILocation(line: 193, column: 17, scope: !4982)
!5021 = !DILocation(line: 194, column: 26, scope: !4982)
!5022 = !DILocation(line: 194, column: 31, scope: !4982)
!5023 = !DILocation(line: 194, column: 25, scope: !4982)
!5024 = !DILocation(line: 194, column: 2, scope: !4982)
!5025 = !DILocation(line: 194, column: 7, scope: !4982)
!5026 = !DILocation(line: 194, column: 23, scope: !4982)
!5027 = !DILocation(line: 195, column: 2, scope: !4982)
!5028 = !DILocation(line: 195, column: 7, scope: !4982)
!5029 = !DILocation(line: 195, column: 15, scope: !4982)
!5030 = !DILocation(line: 197, column: 2, scope: !4982)
!5031 = !DILocation(line: 197, column: 7, scope: !4982)
!5032 = !DILocation(line: 197, column: 15, scope: !4982)
!5033 = !DILocation(line: 197, column: 20, scope: !4982)
!5034 = !DILocation(line: 199, column: 2, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 199, column: 2)
!5036 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 199, column: 2)
!5037 = !DILocation(line: 199, column: 2, scope: !5036)
!5038 = !DILocation(line: 203, column: 2, scope: !4982)
!5039 = !DILocation(line: 204, column: 1, scope: !4982)
!5040 = distinct !DISubprogram(name: "vb2_dma_contig_set_max_seg_size", scope: !3, file: !3, line: 735, type: !5041, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!126, !3434, !7}
!5043 = !DILocalVariable(name: "dev", arg: 1, scope: !5040, file: !3, line: 735, type: !3434)
!5044 = !DILocation(line: 735, column: 52, scope: !5040)
!5045 = !DILocalVariable(name: "size", arg: 2, scope: !5040, file: !3, line: 735, type: !7)
!5046 = !DILocation(line: 735, column: 70, scope: !5040)
!5047 = !DILocation(line: 737, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 737, column: 6)
!5049 = !DILocation(line: 737, column: 12, scope: !5048)
!5050 = !DILocation(line: 737, column: 6, scope: !5040)
!5051 = !DILocation(line: 738, column: 3, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 737, column: 23)
!5053 = !DILocation(line: 739, column: 3, scope: !5052)
!5054 = !DILocation(line: 741, column: 27, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 741, column: 6)
!5056 = !DILocation(line: 741, column: 6, scope: !5055)
!5057 = !DILocation(line: 741, column: 34, scope: !5055)
!5058 = !DILocation(line: 741, column: 32, scope: !5055)
!5059 = !DILocation(line: 741, column: 6, scope: !5040)
!5060 = !DILocation(line: 742, column: 31, scope: !5055)
!5061 = !DILocation(line: 742, column: 36, scope: !5055)
!5062 = !DILocation(line: 742, column: 10, scope: !5055)
!5063 = !DILocation(line: 742, column: 3, scope: !5055)
!5064 = !DILocation(line: 744, column: 2, scope: !5040)
!5065 = !DILocation(line: 745, column: 1, scope: !5040)
!5066 = distinct !DISubprogram(name: "dma_get_max_seg_size", scope: !5067, file: !5067, line: 452, type: !5068, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5067 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!7, !3434}
!5070 = !DILocalVariable(name: "dev", arg: 1, scope: !5066, file: !5067, line: 452, type: !3434)
!5071 = !DILocation(line: 452, column: 64, scope: !5066)
!5072 = !DILocation(line: 454, column: 6, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5066, file: !5067, line: 454, column: 6)
!5074 = !DILocation(line: 454, column: 11, scope: !5073)
!5075 = !DILocation(line: 454, column: 21, scope: !5073)
!5076 = !DILocation(line: 454, column: 24, scope: !5073)
!5077 = !DILocation(line: 454, column: 29, scope: !5073)
!5078 = !DILocation(line: 454, column: 40, scope: !5073)
!5079 = !DILocation(line: 454, column: 6, scope: !5066)
!5080 = !DILocation(line: 455, column: 10, scope: !5073)
!5081 = !DILocation(line: 455, column: 15, scope: !5073)
!5082 = !DILocation(line: 455, column: 26, scope: !5073)
!5083 = !DILocation(line: 455, column: 3, scope: !5073)
!5084 = !DILocation(line: 456, column: 2, scope: !5066)
!5085 = !DILocation(line: 457, column: 1, scope: !5066)
!5086 = distinct !DISubprogram(name: "dma_set_max_seg_size", scope: !5067, file: !5067, line: 459, type: !5041, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5087 = !DILocalVariable(name: "dev", arg: 1, scope: !5086, file: !5067, line: 459, type: !3434)
!5088 = !DILocation(line: 459, column: 55, scope: !5086)
!5089 = !DILocalVariable(name: "size", arg: 2, scope: !5086, file: !5067, line: 459, type: !7)
!5090 = !DILocation(line: 459, column: 73, scope: !5086)
!5091 = !DILocation(line: 461, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5086, file: !5067, line: 461, column: 6)
!5093 = !DILocation(line: 461, column: 11, scope: !5092)
!5094 = !DILocation(line: 461, column: 6, scope: !5086)
!5095 = !DILocation(line: 462, column: 38, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5092, file: !5067, line: 461, column: 22)
!5097 = !DILocation(line: 462, column: 3, scope: !5096)
!5098 = !DILocation(line: 462, column: 8, scope: !5096)
!5099 = !DILocation(line: 462, column: 19, scope: !5096)
!5100 = !DILocation(line: 462, column: 36, scope: !5096)
!5101 = !DILocation(line: 463, column: 3, scope: !5096)
!5102 = !DILocation(line: 465, column: 2, scope: !5086)
!5103 = !DILocation(line: 466, column: 1, scope: !5086)
!5104 = distinct !DISubprogram(name: "ERR_PTR", scope: !5105, file: !5105, line: 24, type: !5106, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5105 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!123, !473}
!5108 = !DILocalVariable(name: "error", arg: 1, scope: !5104, file: !5105, line: 24, type: !473)
!5109 = !DILocation(line: 24, column: 48, scope: !5104)
!5110 = !DILocation(line: 26, column: 18, scope: !5104)
!5111 = !DILocation(line: 26, column: 9, scope: !5104)
!5112 = !DILocation(line: 26, column: 2, scope: !5104)
!5113 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 662, type: !5114, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!123, !1119, !121}
!5116 = !DILocalVariable(name: "s", arg: 1, scope: !5117, file: !101, line: 445, type: !2134)
!5117 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !101, file: !101, line: 445, type: !5118, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!123, !2134, !121, !1119}
!5120 = !DILocation(line: 445, column: 72, scope: !5117, inlinedAt: !5121)
!5121 = distinct !DILocation(line: 552, column: 10, scope: !5122, inlinedAt: !5125)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !101, line: 540, column: 34)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !101, line: 540, column: 6)
!5124 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 538, type: !5114, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5125 = distinct !DILocation(line: 664, column: 9, scope: !5113)
!5126 = !DILocalVariable(name: "flags", arg: 2, scope: !5117, file: !101, line: 446, type: !121)
!5127 = !DILocation(line: 446, column: 9, scope: !5117, inlinedAt: !5121)
!5128 = !DILocalVariable(name: "size", arg: 3, scope: !5117, file: !101, line: 446, type: !1119)
!5129 = !DILocation(line: 446, column: 23, scope: !5117, inlinedAt: !5121)
!5130 = !DILocalVariable(name: "ret", scope: !5117, file: !101, line: 448, type: !123)
!5131 = !DILocation(line: 448, column: 8, scope: !5117, inlinedAt: !5121)
!5132 = !DILocalVariable(name: "flags", arg: 1, scope: !5133, file: !101, line: 318, type: !121)
!5133 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 318, type: !5134, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!100, !121}
!5136 = !DILocation(line: 318, column: 67, scope: !5133, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 553, column: 20, scope: !5122, inlinedAt: !5125)
!5138 = !DILocalVariable(name: "size", arg: 1, scope: !5139, file: !101, line: 346, type: !1119)
!5139 = distinct !DISubprogram(name: "kmalloc_index", scope: !101, file: !101, line: 346, type: !5140, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!7, !1119}
!5142 = !DILocation(line: 346, column: 58, scope: !5139, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 547, column: 11, scope: !5122, inlinedAt: !5125)
!5144 = !DILocalVariable(name: "size", arg: 1, scope: !5145, file: !101, line: 472, type: !1119)
!5145 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !101, file: !101, line: 472, type: !5146, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!123, !1119, !121, !7}
!5148 = !DILocation(line: 472, column: 28, scope: !5145, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 481, column: 9, scope: !5150, inlinedAt: !5151)
!5150 = distinct !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 478, type: !5114, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5151 = distinct !DILocation(line: 545, column: 11, scope: !5152, inlinedAt: !5125)
!5152 = distinct !DILexicalBlock(scope: !5122, file: !101, line: 544, column: 7)
!5153 = !DILocalVariable(name: "flags", arg: 2, scope: !5145, file: !101, line: 472, type: !121)
!5154 = !DILocation(line: 472, column: 40, scope: !5145, inlinedAt: !5149)
!5155 = !DILocalVariable(name: "order", arg: 3, scope: !5145, file: !101, line: 472, type: !7)
!5156 = !DILocation(line: 472, column: 60, scope: !5145, inlinedAt: !5149)
!5157 = !DILocalVariable(name: "size", arg: 1, scope: !5150, file: !101, line: 478, type: !1119)
!5158 = !DILocation(line: 478, column: 51, scope: !5150, inlinedAt: !5151)
!5159 = !DILocalVariable(name: "flags", arg: 2, scope: !5150, file: !101, line: 478, type: !121)
!5160 = !DILocation(line: 478, column: 63, scope: !5150, inlinedAt: !5151)
!5161 = !DILocalVariable(name: "order", scope: !5150, file: !101, line: 480, type: !7)
!5162 = !DILocation(line: 480, column: 15, scope: !5150, inlinedAt: !5151)
!5163 = !DILocalVariable(name: "size", arg: 1, scope: !5124, file: !101, line: 538, type: !1119)
!5164 = !DILocation(line: 538, column: 45, scope: !5124, inlinedAt: !5125)
!5165 = !DILocalVariable(name: "flags", arg: 2, scope: !5124, file: !101, line: 538, type: !121)
!5166 = !DILocation(line: 538, column: 57, scope: !5124, inlinedAt: !5125)
!5167 = !DILocalVariable(name: "index", scope: !5122, file: !101, line: 542, type: !7)
!5168 = !DILocation(line: 542, column: 16, scope: !5122, inlinedAt: !5125)
!5169 = !DILocalVariable(name: "size", arg: 1, scope: !5113, file: !101, line: 662, type: !1119)
!5170 = !DILocation(line: 662, column: 36, scope: !5113)
!5171 = !DILocalVariable(name: "flags", arg: 2, scope: !5113, file: !101, line: 662, type: !121)
!5172 = !DILocation(line: 662, column: 48, scope: !5113)
!5173 = !DILocation(line: 664, column: 17, scope: !5113)
!5174 = !DILocation(line: 664, column: 23, scope: !5113)
!5175 = !DILocation(line: 664, column: 29, scope: !5113)
!5176 = !DILocation(line: 540, column: 27, scope: !5123, inlinedAt: !5125)
!5177 = !DILocation(line: 540, column: 6, scope: !5123, inlinedAt: !5125)
!5178 = !DILocation(line: 540, column: 6, scope: !5124, inlinedAt: !5125)
!5179 = !DILocation(line: 544, column: 7, scope: !5152, inlinedAt: !5125)
!5180 = !DILocation(line: 544, column: 12, scope: !5152, inlinedAt: !5125)
!5181 = !DILocation(line: 544, column: 7, scope: !5122, inlinedAt: !5125)
!5182 = !DILocation(line: 545, column: 25, scope: !5152, inlinedAt: !5125)
!5183 = !DILocation(line: 545, column: 31, scope: !5152, inlinedAt: !5125)
!5184 = !DILocation(line: 480, column: 33, scope: !5150, inlinedAt: !5151)
!5185 = !DILocation(line: 480, column: 23, scope: !5150, inlinedAt: !5151)
!5186 = !DILocation(line: 481, column: 29, scope: !5150, inlinedAt: !5151)
!5187 = !DILocation(line: 481, column: 35, scope: !5150, inlinedAt: !5151)
!5188 = !DILocation(line: 481, column: 42, scope: !5150, inlinedAt: !5151)
!5189 = !DILocation(line: 474, column: 23, scope: !5145, inlinedAt: !5149)
!5190 = !DILocation(line: 474, column: 29, scope: !5145, inlinedAt: !5149)
!5191 = !DILocation(line: 474, column: 36, scope: !5145, inlinedAt: !5149)
!5192 = !DILocation(line: 474, column: 9, scope: !5145, inlinedAt: !5149)
!5193 = !DILocation(line: 545, column: 4, scope: !5152, inlinedAt: !5125)
!5194 = !DILocation(line: 547, column: 25, scope: !5122, inlinedAt: !5125)
!5195 = !DILocation(line: 348, column: 7, scope: !5196, inlinedAt: !5143)
!5196 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 348, column: 6)
!5197 = !DILocation(line: 348, column: 6, scope: !5139, inlinedAt: !5143)
!5198 = !DILocation(line: 349, column: 3, scope: !5196, inlinedAt: !5143)
!5199 = !DILocation(line: 351, column: 6, scope: !5200, inlinedAt: !5143)
!5200 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 351, column: 6)
!5201 = !DILocation(line: 351, column: 11, scope: !5200, inlinedAt: !5143)
!5202 = !DILocation(line: 351, column: 6, scope: !5139, inlinedAt: !5143)
!5203 = !DILocation(line: 352, column: 3, scope: !5200, inlinedAt: !5143)
!5204 = !DILocation(line: 354, column: 32, scope: !5205, inlinedAt: !5143)
!5205 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 354, column: 6)
!5206 = !DILocation(line: 354, column: 37, scope: !5205, inlinedAt: !5143)
!5207 = !DILocation(line: 354, column: 42, scope: !5205, inlinedAt: !5143)
!5208 = !DILocation(line: 354, column: 45, scope: !5205, inlinedAt: !5143)
!5209 = !DILocation(line: 354, column: 50, scope: !5205, inlinedAt: !5143)
!5210 = !DILocation(line: 354, column: 6, scope: !5139, inlinedAt: !5143)
!5211 = !DILocation(line: 355, column: 3, scope: !5205, inlinedAt: !5143)
!5212 = !DILocation(line: 356, column: 32, scope: !5213, inlinedAt: !5143)
!5213 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 356, column: 6)
!5214 = !DILocation(line: 356, column: 37, scope: !5213, inlinedAt: !5143)
!5215 = !DILocation(line: 356, column: 43, scope: !5213, inlinedAt: !5143)
!5216 = !DILocation(line: 356, column: 46, scope: !5213, inlinedAt: !5143)
!5217 = !DILocation(line: 356, column: 51, scope: !5213, inlinedAt: !5143)
!5218 = !DILocation(line: 356, column: 6, scope: !5139, inlinedAt: !5143)
!5219 = !DILocation(line: 357, column: 3, scope: !5213, inlinedAt: !5143)
!5220 = !DILocation(line: 358, column: 6, scope: !5221, inlinedAt: !5143)
!5221 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 358, column: 6)
!5222 = !DILocation(line: 358, column: 11, scope: !5221, inlinedAt: !5143)
!5223 = !DILocation(line: 358, column: 6, scope: !5139, inlinedAt: !5143)
!5224 = !DILocation(line: 358, column: 26, scope: !5221, inlinedAt: !5143)
!5225 = !DILocation(line: 359, column: 6, scope: !5226, inlinedAt: !5143)
!5226 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 359, column: 6)
!5227 = !DILocation(line: 359, column: 11, scope: !5226, inlinedAt: !5143)
!5228 = !DILocation(line: 359, column: 6, scope: !5139, inlinedAt: !5143)
!5229 = !DILocation(line: 359, column: 26, scope: !5226, inlinedAt: !5143)
!5230 = !DILocation(line: 360, column: 6, scope: !5231, inlinedAt: !5143)
!5231 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 360, column: 6)
!5232 = !DILocation(line: 360, column: 11, scope: !5231, inlinedAt: !5143)
!5233 = !DILocation(line: 360, column: 6, scope: !5139, inlinedAt: !5143)
!5234 = !DILocation(line: 360, column: 26, scope: !5231, inlinedAt: !5143)
!5235 = !DILocation(line: 361, column: 6, scope: !5236, inlinedAt: !5143)
!5236 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 361, column: 6)
!5237 = !DILocation(line: 361, column: 11, scope: !5236, inlinedAt: !5143)
!5238 = !DILocation(line: 361, column: 6, scope: !5139, inlinedAt: !5143)
!5239 = !DILocation(line: 361, column: 26, scope: !5236, inlinedAt: !5143)
!5240 = !DILocation(line: 362, column: 6, scope: !5241, inlinedAt: !5143)
!5241 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 362, column: 6)
!5242 = !DILocation(line: 362, column: 11, scope: !5241, inlinedAt: !5143)
!5243 = !DILocation(line: 362, column: 6, scope: !5139, inlinedAt: !5143)
!5244 = !DILocation(line: 362, column: 26, scope: !5241, inlinedAt: !5143)
!5245 = !DILocation(line: 363, column: 6, scope: !5246, inlinedAt: !5143)
!5246 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 363, column: 6)
!5247 = !DILocation(line: 363, column: 11, scope: !5246, inlinedAt: !5143)
!5248 = !DILocation(line: 363, column: 6, scope: !5139, inlinedAt: !5143)
!5249 = !DILocation(line: 363, column: 26, scope: !5246, inlinedAt: !5143)
!5250 = !DILocation(line: 364, column: 6, scope: !5251, inlinedAt: !5143)
!5251 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 364, column: 6)
!5252 = !DILocation(line: 364, column: 11, scope: !5251, inlinedAt: !5143)
!5253 = !DILocation(line: 364, column: 6, scope: !5139, inlinedAt: !5143)
!5254 = !DILocation(line: 364, column: 26, scope: !5251, inlinedAt: !5143)
!5255 = !DILocation(line: 365, column: 6, scope: !5256, inlinedAt: !5143)
!5256 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 365, column: 6)
!5257 = !DILocation(line: 365, column: 11, scope: !5256, inlinedAt: !5143)
!5258 = !DILocation(line: 365, column: 6, scope: !5139, inlinedAt: !5143)
!5259 = !DILocation(line: 365, column: 26, scope: !5256, inlinedAt: !5143)
!5260 = !DILocation(line: 366, column: 6, scope: !5261, inlinedAt: !5143)
!5261 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 366, column: 6)
!5262 = !DILocation(line: 366, column: 11, scope: !5261, inlinedAt: !5143)
!5263 = !DILocation(line: 366, column: 6, scope: !5139, inlinedAt: !5143)
!5264 = !DILocation(line: 366, column: 26, scope: !5261, inlinedAt: !5143)
!5265 = !DILocation(line: 367, column: 6, scope: !5266, inlinedAt: !5143)
!5266 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 367, column: 6)
!5267 = !DILocation(line: 367, column: 11, scope: !5266, inlinedAt: !5143)
!5268 = !DILocation(line: 367, column: 6, scope: !5139, inlinedAt: !5143)
!5269 = !DILocation(line: 367, column: 26, scope: !5266, inlinedAt: !5143)
!5270 = !DILocation(line: 368, column: 6, scope: !5271, inlinedAt: !5143)
!5271 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 368, column: 6)
!5272 = !DILocation(line: 368, column: 11, scope: !5271, inlinedAt: !5143)
!5273 = !DILocation(line: 368, column: 6, scope: !5139, inlinedAt: !5143)
!5274 = !DILocation(line: 368, column: 26, scope: !5271, inlinedAt: !5143)
!5275 = !DILocation(line: 369, column: 6, scope: !5276, inlinedAt: !5143)
!5276 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 369, column: 6)
!5277 = !DILocation(line: 369, column: 11, scope: !5276, inlinedAt: !5143)
!5278 = !DILocation(line: 369, column: 6, scope: !5139, inlinedAt: !5143)
!5279 = !DILocation(line: 369, column: 26, scope: !5276, inlinedAt: !5143)
!5280 = !DILocation(line: 370, column: 6, scope: !5281, inlinedAt: !5143)
!5281 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 370, column: 6)
!5282 = !DILocation(line: 370, column: 11, scope: !5281, inlinedAt: !5143)
!5283 = !DILocation(line: 370, column: 6, scope: !5139, inlinedAt: !5143)
!5284 = !DILocation(line: 370, column: 26, scope: !5281, inlinedAt: !5143)
!5285 = !DILocation(line: 371, column: 6, scope: !5286, inlinedAt: !5143)
!5286 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 371, column: 6)
!5287 = !DILocation(line: 371, column: 11, scope: !5286, inlinedAt: !5143)
!5288 = !DILocation(line: 371, column: 6, scope: !5139, inlinedAt: !5143)
!5289 = !DILocation(line: 371, column: 26, scope: !5286, inlinedAt: !5143)
!5290 = !DILocation(line: 372, column: 6, scope: !5291, inlinedAt: !5143)
!5291 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 372, column: 6)
!5292 = !DILocation(line: 372, column: 11, scope: !5291, inlinedAt: !5143)
!5293 = !DILocation(line: 372, column: 6, scope: !5139, inlinedAt: !5143)
!5294 = !DILocation(line: 372, column: 26, scope: !5291, inlinedAt: !5143)
!5295 = !DILocation(line: 373, column: 6, scope: !5296, inlinedAt: !5143)
!5296 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 373, column: 6)
!5297 = !DILocation(line: 373, column: 11, scope: !5296, inlinedAt: !5143)
!5298 = !DILocation(line: 373, column: 6, scope: !5139, inlinedAt: !5143)
!5299 = !DILocation(line: 373, column: 26, scope: !5296, inlinedAt: !5143)
!5300 = !DILocation(line: 374, column: 6, scope: !5301, inlinedAt: !5143)
!5301 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 374, column: 6)
!5302 = !DILocation(line: 374, column: 11, scope: !5301, inlinedAt: !5143)
!5303 = !DILocation(line: 374, column: 6, scope: !5139, inlinedAt: !5143)
!5304 = !DILocation(line: 374, column: 26, scope: !5301, inlinedAt: !5143)
!5305 = !DILocation(line: 375, column: 6, scope: !5306, inlinedAt: !5143)
!5306 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 375, column: 6)
!5307 = !DILocation(line: 375, column: 11, scope: !5306, inlinedAt: !5143)
!5308 = !DILocation(line: 375, column: 6, scope: !5139, inlinedAt: !5143)
!5309 = !DILocation(line: 375, column: 27, scope: !5306, inlinedAt: !5143)
!5310 = !DILocation(line: 376, column: 6, scope: !5311, inlinedAt: !5143)
!5311 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 376, column: 6)
!5312 = !DILocation(line: 376, column: 11, scope: !5311, inlinedAt: !5143)
!5313 = !DILocation(line: 376, column: 6, scope: !5139, inlinedAt: !5143)
!5314 = !DILocation(line: 376, column: 32, scope: !5311, inlinedAt: !5143)
!5315 = !DILocation(line: 377, column: 6, scope: !5316, inlinedAt: !5143)
!5316 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 377, column: 6)
!5317 = !DILocation(line: 377, column: 11, scope: !5316, inlinedAt: !5143)
!5318 = !DILocation(line: 377, column: 6, scope: !5139, inlinedAt: !5143)
!5319 = !DILocation(line: 377, column: 32, scope: !5316, inlinedAt: !5143)
!5320 = !DILocation(line: 378, column: 6, scope: !5321, inlinedAt: !5143)
!5321 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 378, column: 6)
!5322 = !DILocation(line: 378, column: 11, scope: !5321, inlinedAt: !5143)
!5323 = !DILocation(line: 378, column: 6, scope: !5139, inlinedAt: !5143)
!5324 = !DILocation(line: 378, column: 32, scope: !5321, inlinedAt: !5143)
!5325 = !DILocation(line: 379, column: 6, scope: !5326, inlinedAt: !5143)
!5326 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 379, column: 6)
!5327 = !DILocation(line: 379, column: 11, scope: !5326, inlinedAt: !5143)
!5328 = !DILocation(line: 379, column: 6, scope: !5139, inlinedAt: !5143)
!5329 = !DILocation(line: 379, column: 33, scope: !5326, inlinedAt: !5143)
!5330 = !DILocation(line: 380, column: 6, scope: !5331, inlinedAt: !5143)
!5331 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 380, column: 6)
!5332 = !DILocation(line: 380, column: 11, scope: !5331, inlinedAt: !5143)
!5333 = !DILocation(line: 380, column: 6, scope: !5139, inlinedAt: !5143)
!5334 = !DILocation(line: 380, column: 33, scope: !5331, inlinedAt: !5143)
!5335 = !DILocation(line: 381, column: 6, scope: !5336, inlinedAt: !5143)
!5336 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 381, column: 6)
!5337 = !DILocation(line: 381, column: 11, scope: !5336, inlinedAt: !5143)
!5338 = !DILocation(line: 381, column: 6, scope: !5139, inlinedAt: !5143)
!5339 = !DILocation(line: 381, column: 33, scope: !5336, inlinedAt: !5143)
!5340 = !DILocation(line: 382, column: 2, scope: !5341, inlinedAt: !5143)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !101, line: 382, column: 2)
!5342 = distinct !DILexicalBlock(scope: !5139, file: !101, line: 382, column: 2)
!5343 = !{i32 -2142088017, i32 -2142087988, i32 -2142087942, i32 -2142087884, i32 -2142087830, i32 -2142087776, i32 -2142087721, i32 -2142087690}
!5344 = !DILocation(line: 382, column: 2, scope: !5345, inlinedAt: !5143)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !101, line: 382, column: 2)
!5346 = distinct !DILexicalBlock(scope: !5342, file: !101, line: 382, column: 2)
!5347 = !{i32 -2142087247, i32 -2142087240, i32 -2142087186, i32 -2142087155, i32 -2142087125}
!5348 = !DILocation(line: 382, column: 2, scope: !5346, inlinedAt: !5143)
!5349 = !DILocation(line: 386, column: 1, scope: !5139, inlinedAt: !5143)
!5350 = !DILocation(line: 547, column: 9, scope: !5122, inlinedAt: !5125)
!5351 = !DILocation(line: 549, column: 8, scope: !5352, inlinedAt: !5125)
!5352 = distinct !DILexicalBlock(scope: !5122, file: !101, line: 549, column: 7)
!5353 = !DILocation(line: 549, column: 7, scope: !5122, inlinedAt: !5125)
!5354 = !DILocation(line: 550, column: 4, scope: !5352, inlinedAt: !5125)
!5355 = !DILocation(line: 553, column: 33, scope: !5122, inlinedAt: !5125)
!5356 = !DILocation(line: 325, column: 6, scope: !5357, inlinedAt: !5137)
!5357 = distinct !DILexicalBlock(scope: !5133, file: !101, line: 325, column: 6)
!5358 = !DILocation(line: 325, column: 6, scope: !5133, inlinedAt: !5137)
!5359 = !DILocation(line: 326, column: 3, scope: !5357, inlinedAt: !5137)
!5360 = !DILocation(line: 332, column: 9, scope: !5133, inlinedAt: !5137)
!5361 = !DILocation(line: 332, column: 15, scope: !5133, inlinedAt: !5137)
!5362 = !DILocation(line: 332, column: 2, scope: !5133, inlinedAt: !5137)
!5363 = !DILocation(line: 336, column: 1, scope: !5133, inlinedAt: !5137)
!5364 = !DILocation(line: 553, column: 5, scope: !5122, inlinedAt: !5125)
!5365 = !DILocation(line: 553, column: 41, scope: !5122, inlinedAt: !5125)
!5366 = !DILocation(line: 554, column: 5, scope: !5122, inlinedAt: !5125)
!5367 = !DILocation(line: 554, column: 12, scope: !5122, inlinedAt: !5125)
!5368 = !DILocation(line: 448, column: 31, scope: !5117, inlinedAt: !5121)
!5369 = !DILocation(line: 448, column: 34, scope: !5117, inlinedAt: !5121)
!5370 = !DILocation(line: 448, column: 14, scope: !5117, inlinedAt: !5121)
!5371 = !DILocation(line: 450, column: 22, scope: !5117, inlinedAt: !5121)
!5372 = !DILocation(line: 450, column: 25, scope: !5117, inlinedAt: !5121)
!5373 = !DILocation(line: 450, column: 30, scope: !5117, inlinedAt: !5121)
!5374 = !DILocation(line: 450, column: 36, scope: !5117, inlinedAt: !5121)
!5375 = !DILocation(line: 450, column: 8, scope: !5117, inlinedAt: !5121)
!5376 = !DILocation(line: 450, column: 6, scope: !5117, inlinedAt: !5121)
!5377 = !DILocation(line: 451, column: 9, scope: !5117, inlinedAt: !5121)
!5378 = !DILocation(line: 552, column: 3, scope: !5122, inlinedAt: !5125)
!5379 = !DILocation(line: 557, column: 19, scope: !5124, inlinedAt: !5125)
!5380 = !DILocation(line: 557, column: 25, scope: !5124, inlinedAt: !5125)
!5381 = !DILocation(line: 557, column: 9, scope: !5124, inlinedAt: !5125)
!5382 = !DILocation(line: 557, column: 2, scope: !5124, inlinedAt: !5125)
!5383 = !DILocation(line: 558, column: 1, scope: !5124, inlinedAt: !5125)
!5384 = !DILocation(line: 664, column: 2, scope: !5113)
!5385 = distinct !DISubprogram(name: "refcount_set", scope: !113, file: !113, line: 134, type: !5386, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !4022, !126}
!5388 = !DILocalVariable(name: "v", arg: 1, scope: !5389, file: !5390, line: 39, type: !5393)
!5389 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5390, file: !5390, line: 39, type: !5391, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5390 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !5393, !126}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!5394 = !DILocation(line: 39, column: 55, scope: !5389, inlinedAt: !5395)
!5395 = distinct !DILocation(line: 46, column: 2, scope: !5396, inlinedAt: !5398)
!5396 = distinct !DISubprogram(name: "atomic_set", scope: !5397, file: !5397, line: 43, type: !5391, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5397 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5398 = distinct !DILocation(line: 136, column: 2, scope: !5385)
!5399 = !DILocalVariable(name: "i", arg: 2, scope: !5389, file: !5390, line: 39, type: !126)
!5400 = !DILocation(line: 39, column: 62, scope: !5389, inlinedAt: !5395)
!5401 = !DILocalVariable(name: "v", arg: 1, scope: !5402, file: !5403, line: 84, type: !5406)
!5402 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5403, file: !5403, line: 84, type: !5404, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5403 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !5406, !1119}
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5408)
!5408 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5409 = !DILocation(line: 84, column: 74, scope: !5402, inlinedAt: !5410)
!5410 = distinct !DILocation(line: 45, column: 2, scope: !5396, inlinedAt: !5398)
!5411 = !DILocalVariable(name: "size", arg: 2, scope: !5402, file: !5403, line: 84, type: !1119)
!5412 = !DILocation(line: 84, column: 84, scope: !5402, inlinedAt: !5410)
!5413 = !DILocalVariable(name: "v", arg: 1, scope: !5396, file: !5397, line: 43, type: !5393)
!5414 = !DILocation(line: 43, column: 22, scope: !5396, inlinedAt: !5398)
!5415 = !DILocalVariable(name: "i", arg: 2, scope: !5396, file: !5397, line: 43, type: !126)
!5416 = !DILocation(line: 43, column: 29, scope: !5396, inlinedAt: !5398)
!5417 = !DILocalVariable(name: "r", arg: 1, scope: !5385, file: !113, line: 134, type: !4022)
!5418 = !DILocation(line: 134, column: 45, scope: !5385)
!5419 = !DILocalVariable(name: "n", arg: 2, scope: !5385, file: !113, line: 134, type: !126)
!5420 = !DILocation(line: 134, column: 52, scope: !5385)
!5421 = !DILocation(line: 136, column: 14, scope: !5385)
!5422 = !DILocation(line: 136, column: 17, scope: !5385)
!5423 = !DILocation(line: 136, column: 23, scope: !5385)
!5424 = !DILocation(line: 45, column: 26, scope: !5396, inlinedAt: !5398)
!5425 = !DILocation(line: 86, column: 20, scope: !5402, inlinedAt: !5410)
!5426 = !DILocation(line: 86, column: 23, scope: !5402, inlinedAt: !5410)
!5427 = !DILocation(line: 86, column: 2, scope: !5402, inlinedAt: !5410)
!5428 = !DILocation(line: 87, column: 2, scope: !5402, inlinedAt: !5410)
!5429 = !DILocation(line: 46, column: 18, scope: !5396, inlinedAt: !5398)
!5430 = !DILocation(line: 46, column: 21, scope: !5396, inlinedAt: !5398)
!5431 = !DILocation(line: 41, column: 2, scope: !5432, inlinedAt: !5395)
!5432 = distinct !DILexicalBlock(scope: !5389, file: !5390, line: 41, column: 2)
!5433 = !DILocation(line: 137, column: 1, scope: !5385)
!5434 = distinct !DISubprogram(name: "get_order", scope: !5435, file: !5435, line: 29, type: !5436, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5435 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!126, !127}
!5438 = !DILocalVariable(name: "x", arg: 1, scope: !5439, file: !5440, line: 366, type: !224)
!5439 = distinct !DISubprogram(name: "fls64", scope: !5440, file: !5440, line: 366, type: !5441, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5440 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!126, !224}
!5443 = !DILocation(line: 366, column: 40, scope: !5439, inlinedAt: !5444)
!5444 = distinct !DILocation(line: 46, column: 9, scope: !5434)
!5445 = !DILocalVariable(name: "bitpos", scope: !5439, file: !5440, line: 368, type: !126)
!5446 = !DILocation(line: 368, column: 6, scope: !5439, inlinedAt: !5444)
!5447 = !DILocalVariable(name: "size", arg: 1, scope: !5434, file: !5435, line: 29, type: !127)
!5448 = !DILocation(line: 29, column: 63, scope: !5434)
!5449 = !DILocation(line: 31, column: 27, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5434, file: !5435, line: 31, column: 6)
!5451 = !DILocation(line: 31, column: 6, scope: !5450)
!5452 = !DILocation(line: 31, column: 6, scope: !5434)
!5453 = !DILocation(line: 32, column: 8, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !5435, line: 32, column: 7)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !5435, line: 31, column: 34)
!5456 = !DILocation(line: 32, column: 7, scope: !5455)
!5457 = !DILocation(line: 33, column: 4, scope: !5454)
!5458 = !DILocation(line: 35, column: 7, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !5435, line: 35, column: 7)
!5460 = !DILocation(line: 35, column: 12, scope: !5459)
!5461 = !DILocation(line: 35, column: 7, scope: !5455)
!5462 = !DILocation(line: 36, column: 4, scope: !5459)
!5463 = !DILocation(line: 38, column: 10, scope: !5455)
!5464 = !DILocation(line: 38, column: 28, scope: !5455)
!5465 = !DILocation(line: 38, column: 41, scope: !5455)
!5466 = !DILocation(line: 38, column: 3, scope: !5455)
!5467 = !DILocation(line: 41, column: 6, scope: !5434)
!5468 = !DILocation(line: 42, column: 7, scope: !5434)
!5469 = !DILocation(line: 46, column: 15, scope: !5434)
!5470 = !DILocation(line: 374, column: 2, scope: !5439, inlinedAt: !5444)
!5471 = !DILocation(line: 376, column: 14, scope: !5439, inlinedAt: !5444)
!5472 = !{i32 701894}
!5473 = !DILocation(line: 377, column: 9, scope: !5439, inlinedAt: !5444)
!5474 = !DILocation(line: 377, column: 16, scope: !5439, inlinedAt: !5444)
!5475 = !DILocation(line: 46, column: 2, scope: !5434)
!5476 = !DILocation(line: 48, column: 1, scope: !5434)
!5477 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5478, file: !5478, line: 30, type: !5479, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5478 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!126, !223}
!5481 = !DILocation(line: 366, column: 40, scope: !5439, inlinedAt: !5482)
!5482 = distinct !DILocation(line: 32, column: 9, scope: !5477)
!5483 = !DILocation(line: 368, column: 6, scope: !5439, inlinedAt: !5482)
!5484 = !DILocalVariable(name: "n", arg: 1, scope: !5477, file: !5478, line: 30, type: !223)
!5485 = !DILocation(line: 30, column: 21, scope: !5477)
!5486 = !DILocation(line: 32, column: 15, scope: !5477)
!5487 = !DILocation(line: 374, column: 2, scope: !5439, inlinedAt: !5482)
!5488 = !DILocation(line: 376, column: 14, scope: !5439, inlinedAt: !5482)
!5489 = !DILocation(line: 377, column: 9, scope: !5439, inlinedAt: !5482)
!5490 = !DILocation(line: 377, column: 16, scope: !5439, inlinedAt: !5482)
!5491 = !DILocation(line: 32, column: 18, scope: !5477)
!5492 = !DILocation(line: 32, column: 2, scope: !5477)
!5493 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5494, file: !5494, line: 137, type: !5495, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5494 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!123, !2134, !2302, !1119, !121}
!5497 = !DILocalVariable(name: "s", arg: 1, scope: !5493, file: !5494, line: 137, type: !2134)
!5498 = !DILocation(line: 137, column: 54, scope: !5493)
!5499 = !DILocalVariable(name: "object", arg: 2, scope: !5493, file: !5494, line: 137, type: !2302)
!5500 = !DILocation(line: 137, column: 69, scope: !5493)
!5501 = !DILocalVariable(name: "size", arg: 3, scope: !5493, file: !5494, line: 138, type: !1119)
!5502 = !DILocation(line: 138, column: 12, scope: !5493)
!5503 = !DILocalVariable(name: "flags", arg: 4, scope: !5493, file: !5494, line: 138, type: !121)
!5504 = !DILocation(line: 138, column: 24, scope: !5493)
!5505 = !DILocation(line: 140, column: 17, scope: !5493)
!5506 = !DILocation(line: 140, column: 2, scope: !5493)
!5507 = distinct !DISubprogram(name: "kasan_check_write", scope: !5508, file: !5508, line: 38, type: !5509, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5508 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!329, !5406, !7}
!5511 = !DILocalVariable(name: "p", arg: 1, scope: !5507, file: !5508, line: 38, type: !5406)
!5512 = !DILocation(line: 38, column: 59, scope: !5507)
!5513 = !DILocalVariable(name: "size", arg: 2, scope: !5507, file: !5508, line: 38, type: !7)
!5514 = !DILocation(line: 38, column: 75, scope: !5507)
!5515 = !DILocation(line: 40, column: 2, scope: !5507)
!5516 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5517, file: !5517, line: 178, type: !5518, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5517 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5518 = !DISubroutineType(types: !5519)
!5519 = !{null, !5406, !1119, !126}
!5520 = !DILocalVariable(name: "ptr", arg: 1, scope: !5516, file: !5517, line: 178, type: !5406)
!5521 = !DILocation(line: 178, column: 60, scope: !5516)
!5522 = !DILocalVariable(name: "size", arg: 2, scope: !5516, file: !5517, line: 178, type: !1119)
!5523 = !DILocation(line: 178, column: 72, scope: !5516)
!5524 = !DILocalVariable(name: "type", arg: 3, scope: !5516, file: !5517, line: 179, type: !126)
!5525 = !DILocation(line: 179, column: 15, scope: !5516)
!5526 = !DILocation(line: 179, column: 23, scope: !5516)
!5527 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !113, file: !113, line: 331, type: !5528, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!329, !4022}
!5530 = !DILocalVariable(name: "r", arg: 1, scope: !5527, file: !113, line: 331, type: !4022)
!5531 = !DILocation(line: 331, column: 67, scope: !5527)
!5532 = !DILocation(line: 333, column: 33, scope: !5527)
!5533 = !DILocation(line: 333, column: 9, scope: !5527)
!5534 = !DILocation(line: 333, column: 2, scope: !5527)
!5535 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !113, file: !113, line: 313, type: !5536, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!329, !4022, !453}
!5538 = !DILocalVariable(name: "r", arg: 1, scope: !5535, file: !113, line: 313, type: !4022)
!5539 = !DILocation(line: 313, column: 69, scope: !5535)
!5540 = !DILocalVariable(name: "oldp", arg: 2, scope: !5535, file: !113, line: 313, type: !453)
!5541 = !DILocation(line: 313, column: 77, scope: !5535)
!5542 = !DILocation(line: 315, column: 36, scope: !5535)
!5543 = !DILocation(line: 315, column: 39, scope: !5535)
!5544 = !DILocation(line: 315, column: 9, scope: !5535)
!5545 = !DILocation(line: 315, column: 2, scope: !5535)
!5546 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !113, file: !113, line: 270, type: !5547, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!329, !126, !4022, !453}
!5549 = !DILocalVariable(name: "i", arg: 1, scope: !5550, file: !5390, line: 188, type: !126)
!5550 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5390, file: !5390, line: 188, type: !5551, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!126, !126, !5393}
!5553 = !DILocation(line: 188, column: 54, scope: !5550, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 221, column: 9, scope: !5555, inlinedAt: !5556)
!5555 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5397, file: !5397, line: 218, type: !5551, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5556 = distinct !DILocation(line: 272, column: 12, scope: !5546)
!5557 = !DILocalVariable(name: "v", arg: 2, scope: !5550, file: !5390, line: 188, type: !5393)
!5558 = !DILocation(line: 188, column: 67, scope: !5550, inlinedAt: !5554)
!5559 = !DILocalVariable(name: "__ret", scope: !5560, file: !5390, line: 190, type: !126)
!5560 = distinct !DILexicalBlock(scope: !5550, file: !5390, line: 190, column: 9)
!5561 = !DILocation(line: 190, column: 9, scope: !5560, inlinedAt: !5554)
!5562 = !DILocalVariable(name: "v", arg: 1, scope: !5563, file: !5403, line: 99, type: !5406)
!5563 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5403, file: !5403, line: 99, type: !5404, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5564 = !DILocation(line: 99, column: 79, scope: !5563, inlinedAt: !5565)
!5565 = distinct !DILocation(line: 220, column: 2, scope: !5555, inlinedAt: !5556)
!5566 = !DILocalVariable(name: "size", arg: 2, scope: !5563, file: !5403, line: 99, type: !1119)
!5567 = !DILocation(line: 99, column: 89, scope: !5563, inlinedAt: !5565)
!5568 = !DILocalVariable(name: "i", arg: 1, scope: !5555, file: !5397, line: 218, type: !126)
!5569 = !DILocation(line: 218, column: 30, scope: !5555, inlinedAt: !5556)
!5570 = !DILocalVariable(name: "v", arg: 2, scope: !5555, file: !5397, line: 218, type: !5393)
!5571 = !DILocation(line: 218, column: 43, scope: !5555, inlinedAt: !5556)
!5572 = !DILocalVariable(name: "i", arg: 1, scope: !5546, file: !113, line: 270, type: !126)
!5573 = !DILocation(line: 270, column: 61, scope: !5546)
!5574 = !DILocalVariable(name: "r", arg: 2, scope: !5546, file: !113, line: 270, type: !4022)
!5575 = !DILocation(line: 270, column: 76, scope: !5546)
!5576 = !DILocalVariable(name: "oldp", arg: 3, scope: !5546, file: !113, line: 270, type: !453)
!5577 = !DILocation(line: 270, column: 84, scope: !5546)
!5578 = !DILocalVariable(name: "old", scope: !5546, file: !113, line: 272, type: !126)
!5579 = !DILocation(line: 272, column: 6, scope: !5546)
!5580 = !DILocation(line: 272, column: 37, scope: !5546)
!5581 = !DILocation(line: 272, column: 41, scope: !5546)
!5582 = !DILocation(line: 272, column: 44, scope: !5546)
!5583 = !DILocation(line: 220, column: 31, scope: !5555, inlinedAt: !5556)
!5584 = !DILocation(line: 101, column: 20, scope: !5563, inlinedAt: !5565)
!5585 = !DILocation(line: 101, column: 23, scope: !5563, inlinedAt: !5565)
!5586 = !DILocation(line: 101, column: 2, scope: !5563, inlinedAt: !5565)
!5587 = !DILocation(line: 102, column: 2, scope: !5563, inlinedAt: !5565)
!5588 = !DILocation(line: 221, column: 39, scope: !5555, inlinedAt: !5556)
!5589 = !DILocation(line: 221, column: 42, scope: !5555, inlinedAt: !5556)
!5590 = !{i32 -2147119946}
!5591 = !DILocation(line: 274, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5546, file: !113, line: 274, column: 6)
!5593 = !DILocation(line: 274, column: 6, scope: !5546)
!5594 = !DILocation(line: 275, column: 11, scope: !5592)
!5595 = !DILocation(line: 275, column: 4, scope: !5592)
!5596 = !DILocation(line: 275, column: 9, scope: !5592)
!5597 = !DILocation(line: 275, column: 3, scope: !5592)
!5598 = !DILocation(line: 277, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5546, file: !113, line: 277, column: 6)
!5600 = !DILocation(line: 277, column: 13, scope: !5599)
!5601 = !DILocation(line: 277, column: 10, scope: !5599)
!5602 = !DILocation(line: 277, column: 6, scope: !5546)
!5603 = !DILocation(line: 278, column: 3, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5599, file: !113, line: 277, column: 16)
!5605 = !{i32 -2144263953}
!5606 = !DILocation(line: 279, column: 3, scope: !5604)
!5607 = !DILocation(line: 282, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5546, file: !113, line: 282, column: 6)
!5609 = !DILocation(line: 282, column: 6, scope: !5546)
!5610 = !DILocation(line: 283, column: 26, scope: !5608)
!5611 = !DILocation(line: 283, column: 3, scope: !5608)
!5612 = !DILocation(line: 285, column: 2, scope: !5546)
!5613 = !DILocation(line: 286, column: 1, scope: !5546)
!5614 = distinct !DISubprogram(name: "vb2_dc_get_base_sgt", scope: !3, file: !3, line: 372, type: !5615, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!3869, !3996}
!5617 = !DILocation(line: 445, column: 72, scope: !5117, inlinedAt: !5618)
!5618 = distinct !DILocation(line: 552, column: 10, scope: !5122, inlinedAt: !5619)
!5619 = distinct !DILocation(line: 377, column: 8, scope: !5614)
!5620 = !DILocation(line: 446, column: 9, scope: !5117, inlinedAt: !5618)
!5621 = !DILocation(line: 446, column: 23, scope: !5117, inlinedAt: !5618)
!5622 = !DILocation(line: 448, column: 8, scope: !5117, inlinedAt: !5618)
!5623 = !DILocation(line: 318, column: 67, scope: !5133, inlinedAt: !5624)
!5624 = distinct !DILocation(line: 553, column: 20, scope: !5122, inlinedAt: !5619)
!5625 = !DILocation(line: 346, column: 58, scope: !5139, inlinedAt: !5626)
!5626 = distinct !DILocation(line: 547, column: 11, scope: !5122, inlinedAt: !5619)
!5627 = !DILocation(line: 472, column: 28, scope: !5145, inlinedAt: !5628)
!5628 = distinct !DILocation(line: 481, column: 9, scope: !5150, inlinedAt: !5629)
!5629 = distinct !DILocation(line: 545, column: 11, scope: !5152, inlinedAt: !5619)
!5630 = !DILocation(line: 472, column: 40, scope: !5145, inlinedAt: !5628)
!5631 = !DILocation(line: 472, column: 60, scope: !5145, inlinedAt: !5628)
!5632 = !DILocation(line: 478, column: 51, scope: !5150, inlinedAt: !5629)
!5633 = !DILocation(line: 478, column: 63, scope: !5150, inlinedAt: !5629)
!5634 = !DILocation(line: 480, column: 15, scope: !5150, inlinedAt: !5629)
!5635 = !DILocation(line: 538, column: 45, scope: !5124, inlinedAt: !5619)
!5636 = !DILocation(line: 538, column: 57, scope: !5124, inlinedAt: !5619)
!5637 = !DILocation(line: 542, column: 16, scope: !5122, inlinedAt: !5619)
!5638 = !DILocalVariable(name: "buf", arg: 1, scope: !5614, file: !3, line: 372, type: !3996)
!5639 = !DILocation(line: 372, column: 64, scope: !5614)
!5640 = !DILocalVariable(name: "ret", scope: !5614, file: !3, line: 374, type: !126)
!5641 = !DILocation(line: 374, column: 6, scope: !5614)
!5642 = !DILocalVariable(name: "sgt", scope: !5614, file: !3, line: 375, type: !3869)
!5643 = !DILocation(line: 375, column: 19, scope: !5614)
!5644 = !DILocation(line: 540, column: 27, scope: !5123, inlinedAt: !5619)
!5645 = !DILocation(line: 540, column: 6, scope: !5123, inlinedAt: !5619)
!5646 = !DILocation(line: 540, column: 6, scope: !5124, inlinedAt: !5619)
!5647 = !DILocation(line: 544, column: 7, scope: !5152, inlinedAt: !5619)
!5648 = !DILocation(line: 544, column: 12, scope: !5152, inlinedAt: !5619)
!5649 = !DILocation(line: 544, column: 7, scope: !5122, inlinedAt: !5619)
!5650 = !DILocation(line: 545, column: 25, scope: !5152, inlinedAt: !5619)
!5651 = !DILocation(line: 545, column: 31, scope: !5152, inlinedAt: !5619)
!5652 = !DILocation(line: 480, column: 33, scope: !5150, inlinedAt: !5629)
!5653 = !DILocation(line: 480, column: 23, scope: !5150, inlinedAt: !5629)
!5654 = !DILocation(line: 481, column: 29, scope: !5150, inlinedAt: !5629)
!5655 = !DILocation(line: 481, column: 35, scope: !5150, inlinedAt: !5629)
!5656 = !DILocation(line: 481, column: 42, scope: !5150, inlinedAt: !5629)
!5657 = !DILocation(line: 474, column: 23, scope: !5145, inlinedAt: !5628)
!5658 = !DILocation(line: 474, column: 29, scope: !5145, inlinedAt: !5628)
!5659 = !DILocation(line: 474, column: 36, scope: !5145, inlinedAt: !5628)
!5660 = !DILocation(line: 474, column: 9, scope: !5145, inlinedAt: !5628)
!5661 = !DILocation(line: 545, column: 4, scope: !5152, inlinedAt: !5619)
!5662 = !DILocation(line: 547, column: 25, scope: !5122, inlinedAt: !5619)
!5663 = !DILocation(line: 348, column: 7, scope: !5196, inlinedAt: !5626)
!5664 = !DILocation(line: 348, column: 6, scope: !5139, inlinedAt: !5626)
!5665 = !DILocation(line: 349, column: 3, scope: !5196, inlinedAt: !5626)
!5666 = !DILocation(line: 351, column: 6, scope: !5200, inlinedAt: !5626)
!5667 = !DILocation(line: 351, column: 11, scope: !5200, inlinedAt: !5626)
!5668 = !DILocation(line: 351, column: 6, scope: !5139, inlinedAt: !5626)
!5669 = !DILocation(line: 352, column: 3, scope: !5200, inlinedAt: !5626)
!5670 = !DILocation(line: 354, column: 32, scope: !5205, inlinedAt: !5626)
!5671 = !DILocation(line: 354, column: 37, scope: !5205, inlinedAt: !5626)
!5672 = !DILocation(line: 354, column: 42, scope: !5205, inlinedAt: !5626)
!5673 = !DILocation(line: 354, column: 45, scope: !5205, inlinedAt: !5626)
!5674 = !DILocation(line: 354, column: 50, scope: !5205, inlinedAt: !5626)
!5675 = !DILocation(line: 354, column: 6, scope: !5139, inlinedAt: !5626)
!5676 = !DILocation(line: 355, column: 3, scope: !5205, inlinedAt: !5626)
!5677 = !DILocation(line: 356, column: 32, scope: !5213, inlinedAt: !5626)
!5678 = !DILocation(line: 356, column: 37, scope: !5213, inlinedAt: !5626)
!5679 = !DILocation(line: 356, column: 43, scope: !5213, inlinedAt: !5626)
!5680 = !DILocation(line: 356, column: 46, scope: !5213, inlinedAt: !5626)
!5681 = !DILocation(line: 356, column: 51, scope: !5213, inlinedAt: !5626)
!5682 = !DILocation(line: 356, column: 6, scope: !5139, inlinedAt: !5626)
!5683 = !DILocation(line: 357, column: 3, scope: !5213, inlinedAt: !5626)
!5684 = !DILocation(line: 358, column: 6, scope: !5221, inlinedAt: !5626)
!5685 = !DILocation(line: 358, column: 11, scope: !5221, inlinedAt: !5626)
!5686 = !DILocation(line: 358, column: 6, scope: !5139, inlinedAt: !5626)
!5687 = !DILocation(line: 358, column: 26, scope: !5221, inlinedAt: !5626)
!5688 = !DILocation(line: 359, column: 6, scope: !5226, inlinedAt: !5626)
!5689 = !DILocation(line: 359, column: 11, scope: !5226, inlinedAt: !5626)
!5690 = !DILocation(line: 359, column: 6, scope: !5139, inlinedAt: !5626)
!5691 = !DILocation(line: 359, column: 26, scope: !5226, inlinedAt: !5626)
!5692 = !DILocation(line: 360, column: 6, scope: !5231, inlinedAt: !5626)
!5693 = !DILocation(line: 360, column: 11, scope: !5231, inlinedAt: !5626)
!5694 = !DILocation(line: 360, column: 6, scope: !5139, inlinedAt: !5626)
!5695 = !DILocation(line: 360, column: 26, scope: !5231, inlinedAt: !5626)
!5696 = !DILocation(line: 361, column: 6, scope: !5236, inlinedAt: !5626)
!5697 = !DILocation(line: 361, column: 11, scope: !5236, inlinedAt: !5626)
!5698 = !DILocation(line: 361, column: 6, scope: !5139, inlinedAt: !5626)
!5699 = !DILocation(line: 361, column: 26, scope: !5236, inlinedAt: !5626)
!5700 = !DILocation(line: 362, column: 6, scope: !5241, inlinedAt: !5626)
!5701 = !DILocation(line: 362, column: 11, scope: !5241, inlinedAt: !5626)
!5702 = !DILocation(line: 362, column: 6, scope: !5139, inlinedAt: !5626)
!5703 = !DILocation(line: 362, column: 26, scope: !5241, inlinedAt: !5626)
!5704 = !DILocation(line: 363, column: 6, scope: !5246, inlinedAt: !5626)
!5705 = !DILocation(line: 363, column: 11, scope: !5246, inlinedAt: !5626)
!5706 = !DILocation(line: 363, column: 6, scope: !5139, inlinedAt: !5626)
!5707 = !DILocation(line: 363, column: 26, scope: !5246, inlinedAt: !5626)
!5708 = !DILocation(line: 364, column: 6, scope: !5251, inlinedAt: !5626)
!5709 = !DILocation(line: 364, column: 11, scope: !5251, inlinedAt: !5626)
!5710 = !DILocation(line: 364, column: 6, scope: !5139, inlinedAt: !5626)
!5711 = !DILocation(line: 364, column: 26, scope: !5251, inlinedAt: !5626)
!5712 = !DILocation(line: 365, column: 6, scope: !5256, inlinedAt: !5626)
!5713 = !DILocation(line: 365, column: 11, scope: !5256, inlinedAt: !5626)
!5714 = !DILocation(line: 365, column: 6, scope: !5139, inlinedAt: !5626)
!5715 = !DILocation(line: 365, column: 26, scope: !5256, inlinedAt: !5626)
!5716 = !DILocation(line: 366, column: 6, scope: !5261, inlinedAt: !5626)
!5717 = !DILocation(line: 366, column: 11, scope: !5261, inlinedAt: !5626)
!5718 = !DILocation(line: 366, column: 6, scope: !5139, inlinedAt: !5626)
!5719 = !DILocation(line: 366, column: 26, scope: !5261, inlinedAt: !5626)
!5720 = !DILocation(line: 367, column: 6, scope: !5266, inlinedAt: !5626)
!5721 = !DILocation(line: 367, column: 11, scope: !5266, inlinedAt: !5626)
!5722 = !DILocation(line: 367, column: 6, scope: !5139, inlinedAt: !5626)
!5723 = !DILocation(line: 367, column: 26, scope: !5266, inlinedAt: !5626)
!5724 = !DILocation(line: 368, column: 6, scope: !5271, inlinedAt: !5626)
!5725 = !DILocation(line: 368, column: 11, scope: !5271, inlinedAt: !5626)
!5726 = !DILocation(line: 368, column: 6, scope: !5139, inlinedAt: !5626)
!5727 = !DILocation(line: 368, column: 26, scope: !5271, inlinedAt: !5626)
!5728 = !DILocation(line: 369, column: 6, scope: !5276, inlinedAt: !5626)
!5729 = !DILocation(line: 369, column: 11, scope: !5276, inlinedAt: !5626)
!5730 = !DILocation(line: 369, column: 6, scope: !5139, inlinedAt: !5626)
!5731 = !DILocation(line: 369, column: 26, scope: !5276, inlinedAt: !5626)
!5732 = !DILocation(line: 370, column: 6, scope: !5281, inlinedAt: !5626)
!5733 = !DILocation(line: 370, column: 11, scope: !5281, inlinedAt: !5626)
!5734 = !DILocation(line: 370, column: 6, scope: !5139, inlinedAt: !5626)
!5735 = !DILocation(line: 370, column: 26, scope: !5281, inlinedAt: !5626)
!5736 = !DILocation(line: 371, column: 6, scope: !5286, inlinedAt: !5626)
!5737 = !DILocation(line: 371, column: 11, scope: !5286, inlinedAt: !5626)
!5738 = !DILocation(line: 371, column: 6, scope: !5139, inlinedAt: !5626)
!5739 = !DILocation(line: 371, column: 26, scope: !5286, inlinedAt: !5626)
!5740 = !DILocation(line: 372, column: 6, scope: !5291, inlinedAt: !5626)
!5741 = !DILocation(line: 372, column: 11, scope: !5291, inlinedAt: !5626)
!5742 = !DILocation(line: 372, column: 6, scope: !5139, inlinedAt: !5626)
!5743 = !DILocation(line: 372, column: 26, scope: !5291, inlinedAt: !5626)
!5744 = !DILocation(line: 373, column: 6, scope: !5296, inlinedAt: !5626)
!5745 = !DILocation(line: 373, column: 11, scope: !5296, inlinedAt: !5626)
!5746 = !DILocation(line: 373, column: 6, scope: !5139, inlinedAt: !5626)
!5747 = !DILocation(line: 373, column: 26, scope: !5296, inlinedAt: !5626)
!5748 = !DILocation(line: 374, column: 6, scope: !5301, inlinedAt: !5626)
!5749 = !DILocation(line: 374, column: 11, scope: !5301, inlinedAt: !5626)
!5750 = !DILocation(line: 374, column: 6, scope: !5139, inlinedAt: !5626)
!5751 = !DILocation(line: 374, column: 26, scope: !5301, inlinedAt: !5626)
!5752 = !DILocation(line: 375, column: 6, scope: !5306, inlinedAt: !5626)
!5753 = !DILocation(line: 375, column: 11, scope: !5306, inlinedAt: !5626)
!5754 = !DILocation(line: 375, column: 6, scope: !5139, inlinedAt: !5626)
!5755 = !DILocation(line: 375, column: 27, scope: !5306, inlinedAt: !5626)
!5756 = !DILocation(line: 376, column: 6, scope: !5311, inlinedAt: !5626)
!5757 = !DILocation(line: 376, column: 11, scope: !5311, inlinedAt: !5626)
!5758 = !DILocation(line: 376, column: 6, scope: !5139, inlinedAt: !5626)
!5759 = !DILocation(line: 376, column: 32, scope: !5311, inlinedAt: !5626)
!5760 = !DILocation(line: 377, column: 6, scope: !5316, inlinedAt: !5626)
!5761 = !DILocation(line: 377, column: 11, scope: !5316, inlinedAt: !5626)
!5762 = !DILocation(line: 377, column: 6, scope: !5139, inlinedAt: !5626)
!5763 = !DILocation(line: 377, column: 32, scope: !5316, inlinedAt: !5626)
!5764 = !DILocation(line: 378, column: 6, scope: !5321, inlinedAt: !5626)
!5765 = !DILocation(line: 378, column: 11, scope: !5321, inlinedAt: !5626)
!5766 = !DILocation(line: 378, column: 6, scope: !5139, inlinedAt: !5626)
!5767 = !DILocation(line: 378, column: 32, scope: !5321, inlinedAt: !5626)
!5768 = !DILocation(line: 379, column: 6, scope: !5326, inlinedAt: !5626)
!5769 = !DILocation(line: 379, column: 11, scope: !5326, inlinedAt: !5626)
!5770 = !DILocation(line: 379, column: 6, scope: !5139, inlinedAt: !5626)
!5771 = !DILocation(line: 379, column: 33, scope: !5326, inlinedAt: !5626)
!5772 = !DILocation(line: 380, column: 6, scope: !5331, inlinedAt: !5626)
!5773 = !DILocation(line: 380, column: 11, scope: !5331, inlinedAt: !5626)
!5774 = !DILocation(line: 380, column: 6, scope: !5139, inlinedAt: !5626)
!5775 = !DILocation(line: 380, column: 33, scope: !5331, inlinedAt: !5626)
!5776 = !DILocation(line: 381, column: 6, scope: !5336, inlinedAt: !5626)
!5777 = !DILocation(line: 381, column: 11, scope: !5336, inlinedAt: !5626)
!5778 = !DILocation(line: 381, column: 6, scope: !5139, inlinedAt: !5626)
!5779 = !DILocation(line: 381, column: 33, scope: !5336, inlinedAt: !5626)
!5780 = !DILocation(line: 382, column: 2, scope: !5341, inlinedAt: !5626)
!5781 = !DILocation(line: 382, column: 2, scope: !5345, inlinedAt: !5626)
!5782 = !DILocation(line: 382, column: 2, scope: !5346, inlinedAt: !5626)
!5783 = !DILocation(line: 386, column: 1, scope: !5139, inlinedAt: !5626)
!5784 = !DILocation(line: 547, column: 9, scope: !5122, inlinedAt: !5619)
!5785 = !DILocation(line: 549, column: 8, scope: !5352, inlinedAt: !5619)
!5786 = !DILocation(line: 549, column: 7, scope: !5122, inlinedAt: !5619)
!5787 = !DILocation(line: 550, column: 4, scope: !5352, inlinedAt: !5619)
!5788 = !DILocation(line: 553, column: 33, scope: !5122, inlinedAt: !5619)
!5789 = !DILocation(line: 325, column: 6, scope: !5357, inlinedAt: !5624)
!5790 = !DILocation(line: 325, column: 6, scope: !5133, inlinedAt: !5624)
!5791 = !DILocation(line: 326, column: 3, scope: !5357, inlinedAt: !5624)
!5792 = !DILocation(line: 332, column: 9, scope: !5133, inlinedAt: !5624)
!5793 = !DILocation(line: 332, column: 15, scope: !5133, inlinedAt: !5624)
!5794 = !DILocation(line: 332, column: 2, scope: !5133, inlinedAt: !5624)
!5795 = !DILocation(line: 336, column: 1, scope: !5133, inlinedAt: !5624)
!5796 = !DILocation(line: 553, column: 5, scope: !5122, inlinedAt: !5619)
!5797 = !DILocation(line: 553, column: 41, scope: !5122, inlinedAt: !5619)
!5798 = !DILocation(line: 554, column: 5, scope: !5122, inlinedAt: !5619)
!5799 = !DILocation(line: 554, column: 12, scope: !5122, inlinedAt: !5619)
!5800 = !DILocation(line: 448, column: 31, scope: !5117, inlinedAt: !5618)
!5801 = !DILocation(line: 448, column: 34, scope: !5117, inlinedAt: !5618)
!5802 = !DILocation(line: 448, column: 14, scope: !5117, inlinedAt: !5618)
!5803 = !DILocation(line: 450, column: 22, scope: !5117, inlinedAt: !5618)
!5804 = !DILocation(line: 450, column: 25, scope: !5117, inlinedAt: !5618)
!5805 = !DILocation(line: 450, column: 30, scope: !5117, inlinedAt: !5618)
!5806 = !DILocation(line: 450, column: 36, scope: !5117, inlinedAt: !5618)
!5807 = !DILocation(line: 450, column: 8, scope: !5117, inlinedAt: !5618)
!5808 = !DILocation(line: 450, column: 6, scope: !5117, inlinedAt: !5618)
!5809 = !DILocation(line: 451, column: 9, scope: !5117, inlinedAt: !5618)
!5810 = !DILocation(line: 552, column: 3, scope: !5122, inlinedAt: !5619)
!5811 = !DILocation(line: 557, column: 19, scope: !5124, inlinedAt: !5619)
!5812 = !DILocation(line: 557, column: 25, scope: !5124, inlinedAt: !5619)
!5813 = !DILocation(line: 557, column: 9, scope: !5124, inlinedAt: !5619)
!5814 = !DILocation(line: 557, column: 2, scope: !5124, inlinedAt: !5619)
!5815 = !DILocation(line: 558, column: 1, scope: !5124, inlinedAt: !5619)
!5816 = !DILocation(line: 377, column: 8, scope: !5614)
!5817 = !DILocation(line: 377, column: 6, scope: !5614)
!5818 = !DILocation(line: 378, column: 7, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 378, column: 6)
!5820 = !DILocation(line: 378, column: 6, scope: !5614)
!5821 = !DILocation(line: 379, column: 3, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 378, column: 12)
!5823 = !DILocation(line: 380, column: 3, scope: !5822)
!5824 = !DILocation(line: 383, column: 30, scope: !5614)
!5825 = !DILocation(line: 383, column: 35, scope: !5614)
!5826 = !DILocation(line: 383, column: 40, scope: !5614)
!5827 = !DILocation(line: 383, column: 45, scope: !5614)
!5828 = !DILocation(line: 383, column: 50, scope: !5614)
!5829 = !DILocation(line: 383, column: 58, scope: !5614)
!5830 = !DILocation(line: 383, column: 63, scope: !5614)
!5831 = !DILocation(line: 384, column: 3, scope: !5614)
!5832 = !DILocation(line: 384, column: 8, scope: !5614)
!5833 = !DILocation(line: 384, column: 14, scope: !5614)
!5834 = !DILocation(line: 384, column: 19, scope: !5614)
!5835 = !DILocation(line: 383, column: 8, scope: !5614)
!5836 = !DILocation(line: 383, column: 6, scope: !5614)
!5837 = !DILocation(line: 385, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 385, column: 6)
!5839 = !DILocation(line: 385, column: 10, scope: !5838)
!5840 = !DILocation(line: 385, column: 6, scope: !5614)
!5841 = !DILocation(line: 386, column: 3, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 385, column: 15)
!5843 = !DILocation(line: 387, column: 9, scope: !5842)
!5844 = !DILocation(line: 387, column: 3, scope: !5842)
!5845 = !DILocation(line: 388, column: 3, scope: !5842)
!5846 = !DILocation(line: 391, column: 9, scope: !5614)
!5847 = !DILocation(line: 391, column: 2, scope: !5614)
!5848 = !DILocation(line: 392, column: 1, scope: !5614)
!5849 = distinct !DISubprogram(name: "IS_ERR", scope: !5105, file: !5105, line: 34, type: !5850, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!329, !2302}
!5852 = !DILocalVariable(name: "ptr", arg: 1, scope: !5849, file: !5105, line: 34, type: !2302)
!5853 = !DILocation(line: 34, column: 60, scope: !5849)
!5854 = !DILocation(line: 36, column: 9, scope: !5849)
!5855 = !DILocation(line: 36, column: 2, scope: !5849)
!5856 = distinct !DISubprogram(name: "refcount_inc", scope: !113, file: !113, line: 265, type: !5857, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{null, !4022}
!5859 = !DILocalVariable(name: "r", arg: 1, scope: !5856, file: !113, line: 265, type: !4022)
!5860 = !DILocation(line: 265, column: 45, scope: !5856)
!5861 = !DILocation(line: 267, column: 17, scope: !5856)
!5862 = !DILocation(line: 267, column: 2, scope: !5856)
!5863 = !DILocation(line: 268, column: 1, scope: !5856)
!5864 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_attach", scope: !3, file: !3, line: 215, type: !3345, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5865 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5864, file: !3, line: 215, type: !3347)
!5866 = !DILocation(line: 215, column: 53, scope: !5864)
!5867 = !DILocalVariable(name: "dbuf_attach", arg: 2, scope: !5864, file: !3, line: 216, type: !3429)
!5868 = !DILocation(line: 216, column: 29, scope: !5864)
!5869 = !DILocalVariable(name: "attach", scope: !5864, file: !3, line: 218, type: !5870)
!5870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5871, size: 64)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_dc_attachment", file: !3, line: 210, size: 192, elements: !5872)
!5872 = !{!5873, !5874}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !5871, file: !3, line: 211, baseType: !3870, size: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !5871, file: !3, line: 212, baseType: !93, size: 32, offset: 128)
!5875 = !DILocation(line: 218, column: 28, scope: !5864)
!5876 = !DILocalVariable(name: "i", scope: !5864, file: !3, line: 219, type: !7)
!5877 = !DILocation(line: 219, column: 15, scope: !5864)
!5878 = !DILocalVariable(name: "rd", scope: !5864, file: !3, line: 220, type: !3874)
!5879 = !DILocation(line: 220, column: 22, scope: !5864)
!5880 = !DILocalVariable(name: "wr", scope: !5864, file: !3, line: 220, type: !3874)
!5881 = !DILocation(line: 220, column: 27, scope: !5864)
!5882 = !DILocalVariable(name: "sgt", scope: !5864, file: !3, line: 221, type: !3869)
!5883 = !DILocation(line: 221, column: 19, scope: !5864)
!5884 = !DILocalVariable(name: "buf", scope: !5864, file: !3, line: 222, type: !3996)
!5885 = !DILocation(line: 222, column: 21, scope: !5864)
!5886 = !DILocation(line: 222, column: 27, scope: !5864)
!5887 = !DILocation(line: 222, column: 33, scope: !5864)
!5888 = !DILocalVariable(name: "ret", scope: !5864, file: !3, line: 223, type: !126)
!5889 = !DILocation(line: 223, column: 6, scope: !5864)
!5890 = !DILocation(line: 225, column: 11, scope: !5864)
!5891 = !DILocation(line: 225, column: 9, scope: !5864)
!5892 = !DILocation(line: 226, column: 7, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 226, column: 6)
!5894 = !DILocation(line: 226, column: 6, scope: !5864)
!5895 = !DILocation(line: 227, column: 3, scope: !5893)
!5896 = !DILocation(line: 229, column: 9, scope: !5864)
!5897 = !DILocation(line: 229, column: 17, scope: !5864)
!5898 = !DILocation(line: 229, column: 6, scope: !5864)
!5899 = !DILocation(line: 233, column: 23, scope: !5864)
!5900 = !DILocation(line: 233, column: 28, scope: !5864)
!5901 = !DILocation(line: 233, column: 33, scope: !5864)
!5902 = !DILocation(line: 233, column: 43, scope: !5864)
!5903 = !DILocation(line: 233, column: 8, scope: !5864)
!5904 = !DILocation(line: 233, column: 6, scope: !5864)
!5905 = !DILocation(line: 234, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 234, column: 6)
!5907 = !DILocation(line: 234, column: 6, scope: !5864)
!5908 = !DILocation(line: 235, column: 9, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 234, column: 11)
!5910 = !DILocation(line: 235, column: 3, scope: !5909)
!5911 = !DILocation(line: 236, column: 3, scope: !5909)
!5912 = !DILocation(line: 239, column: 7, scope: !5864)
!5913 = !DILocation(line: 239, column: 12, scope: !5864)
!5914 = !DILocation(line: 239, column: 22, scope: !5864)
!5915 = !DILocation(line: 239, column: 5, scope: !5864)
!5916 = !DILocation(line: 240, column: 7, scope: !5864)
!5917 = !DILocation(line: 240, column: 12, scope: !5864)
!5918 = !DILocation(line: 240, column: 5, scope: !5864)
!5919 = !DILocation(line: 241, column: 9, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 241, column: 2)
!5921 = !DILocation(line: 241, column: 7, scope: !5920)
!5922 = !DILocation(line: 241, column: 14, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 241, column: 2)
!5924 = !DILocation(line: 241, column: 18, scope: !5923)
!5925 = !DILocation(line: 241, column: 23, scope: !5923)
!5926 = !DILocation(line: 241, column: 16, scope: !5923)
!5927 = !DILocation(line: 241, column: 2, scope: !5920)
!5928 = !DILocation(line: 242, column: 15, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 241, column: 40)
!5930 = !DILocation(line: 242, column: 27, scope: !5929)
!5931 = !DILocation(line: 242, column: 19, scope: !5929)
!5932 = !DILocation(line: 242, column: 32, scope: !5929)
!5933 = !DILocation(line: 242, column: 36, scope: !5929)
!5934 = !DILocation(line: 242, column: 44, scope: !5929)
!5935 = !DILocation(line: 242, column: 48, scope: !5929)
!5936 = !DILocation(line: 242, column: 3, scope: !5929)
!5937 = !DILocation(line: 243, column: 16, scope: !5929)
!5938 = !DILocation(line: 243, column: 8, scope: !5929)
!5939 = !DILocation(line: 243, column: 6, scope: !5929)
!5940 = !DILocation(line: 244, column: 16, scope: !5929)
!5941 = !DILocation(line: 244, column: 8, scope: !5929)
!5942 = !DILocation(line: 244, column: 6, scope: !5929)
!5943 = !DILocation(line: 245, column: 2, scope: !5929)
!5944 = !DILocation(line: 241, column: 35, scope: !5923)
!5945 = !DILocation(line: 241, column: 2, scope: !5923)
!5946 = distinct !{!5946, !5927, !5947}
!5947 = !DILocation(line: 245, column: 2, scope: !5920)
!5948 = !DILocation(line: 247, column: 2, scope: !5864)
!5949 = !DILocation(line: 247, column: 10, scope: !5864)
!5950 = !DILocation(line: 247, column: 18, scope: !5864)
!5951 = !DILocation(line: 248, column: 22, scope: !5864)
!5952 = !DILocation(line: 248, column: 2, scope: !5864)
!5953 = !DILocation(line: 248, column: 15, scope: !5864)
!5954 = !DILocation(line: 248, column: 20, scope: !5864)
!5955 = !DILocation(line: 250, column: 2, scope: !5864)
!5956 = !DILocation(line: 251, column: 1, scope: !5864)
!5957 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_detach", scope: !3, file: !3, line: 253, type: !3900, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5958 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5957, file: !3, line: 253, type: !3347)
!5959 = !DILocation(line: 253, column: 54, scope: !5957)
!5960 = !DILocalVariable(name: "db_attach", arg: 2, scope: !5957, file: !3, line: 254, type: !3429)
!5961 = !DILocation(line: 254, column: 29, scope: !5957)
!5962 = !DILocalVariable(name: "attach", scope: !5957, file: !3, line: 256, type: !5870)
!5963 = !DILocation(line: 256, column: 28, scope: !5957)
!5964 = !DILocation(line: 256, column: 37, scope: !5957)
!5965 = !DILocation(line: 256, column: 48, scope: !5957)
!5966 = !DILocalVariable(name: "sgt", scope: !5957, file: !3, line: 257, type: !3869)
!5967 = !DILocation(line: 257, column: 19, scope: !5957)
!5968 = !DILocation(line: 259, column: 7, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 259, column: 6)
!5970 = !DILocation(line: 259, column: 6, scope: !5957)
!5971 = !DILocation(line: 260, column: 3, scope: !5969)
!5972 = !DILocation(line: 262, column: 9, scope: !5957)
!5973 = !DILocation(line: 262, column: 17, scope: !5957)
!5974 = !DILocation(line: 262, column: 6, scope: !5957)
!5975 = !DILocation(line: 265, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 265, column: 6)
!5977 = !DILocation(line: 265, column: 14, scope: !5976)
!5978 = !DILocation(line: 265, column: 22, scope: !5976)
!5979 = !DILocation(line: 265, column: 6, scope: !5957)
!5980 = !DILocation(line: 272, column: 21, scope: !5976)
!5981 = !DILocation(line: 272, column: 32, scope: !5976)
!5982 = !DILocation(line: 272, column: 37, scope: !5976)
!5983 = !DILocation(line: 272, column: 42, scope: !5976)
!5984 = !DILocation(line: 272, column: 50, scope: !5976)
!5985 = !DILocation(line: 272, column: 3, scope: !5976)
!5986 = !DILocation(line: 274, column: 16, scope: !5957)
!5987 = !DILocation(line: 274, column: 2, scope: !5957)
!5988 = !DILocation(line: 275, column: 8, scope: !5957)
!5989 = !DILocation(line: 275, column: 2, scope: !5957)
!5990 = !DILocation(line: 276, column: 2, scope: !5957)
!5991 = !DILocation(line: 276, column: 13, scope: !5957)
!5992 = !DILocation(line: 276, column: 18, scope: !5957)
!5993 = !DILocation(line: 277, column: 1, scope: !5957)
!5994 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_map", scope: !3, file: !3, line: 279, type: !3909, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5995 = !DILocalVariable(name: "db_attach", arg: 1, scope: !5994, file: !3, line: 280, type: !3429)
!5996 = !DILocation(line: 280, column: 29, scope: !5994)
!5997 = !DILocalVariable(name: "dma_dir", arg: 2, scope: !5994, file: !3, line: 280, type: !93)
!5998 = !DILocation(line: 280, column: 64, scope: !5994)
!5999 = !DILocalVariable(name: "attach", scope: !5994, file: !3, line: 282, type: !5870)
!6000 = !DILocation(line: 282, column: 28, scope: !5994)
!6001 = !DILocation(line: 282, column: 37, scope: !5994)
!6002 = !DILocation(line: 282, column: 48, scope: !5994)
!6003 = !DILocalVariable(name: "lock", scope: !5994, file: !3, line: 284, type: !6004)
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!6005 = !DILocation(line: 284, column: 16, scope: !5994)
!6006 = !DILocation(line: 284, column: 24, scope: !5994)
!6007 = !DILocation(line: 284, column: 35, scope: !5994)
!6008 = !DILocation(line: 284, column: 43, scope: !5994)
!6009 = !DILocalVariable(name: "sgt", scope: !5994, file: !3, line: 285, type: !3869)
!6010 = !DILocation(line: 285, column: 19, scope: !5994)
!6011 = !DILocation(line: 287, column: 13, scope: !5994)
!6012 = !DILocation(line: 287, column: 2, scope: !5994)
!6013 = !DILocation(line: 289, column: 9, scope: !5994)
!6014 = !DILocation(line: 289, column: 17, scope: !5994)
!6015 = !DILocation(line: 289, column: 6, scope: !5994)
!6016 = !DILocation(line: 291, column: 6, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 291, column: 6)
!6018 = !DILocation(line: 291, column: 14, scope: !6017)
!6019 = !DILocation(line: 291, column: 25, scope: !6017)
!6020 = !DILocation(line: 291, column: 22, scope: !6017)
!6021 = !DILocation(line: 291, column: 6, scope: !5994)
!6022 = !DILocation(line: 292, column: 16, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 291, column: 34)
!6024 = !DILocation(line: 292, column: 3, scope: !6023)
!6025 = !DILocation(line: 293, column: 10, scope: !6023)
!6026 = !DILocation(line: 293, column: 3, scope: !6023)
!6027 = !DILocation(line: 297, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 297, column: 6)
!6029 = !DILocation(line: 297, column: 14, scope: !6028)
!6030 = !DILocation(line: 297, column: 22, scope: !6028)
!6031 = !DILocation(line: 297, column: 6, scope: !5994)
!6032 = !DILocation(line: 298, column: 21, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 297, column: 35)
!6034 = !DILocation(line: 298, column: 32, scope: !6033)
!6035 = !DILocation(line: 298, column: 37, scope: !6033)
!6036 = !DILocation(line: 298, column: 42, scope: !6033)
!6037 = !DILocation(line: 298, column: 50, scope: !6033)
!6038 = !DILocation(line: 298, column: 3, scope: !6033)
!6039 = !DILocation(line: 300, column: 3, scope: !6033)
!6040 = !DILocation(line: 300, column: 11, scope: !6033)
!6041 = !DILocation(line: 300, column: 19, scope: !6033)
!6042 = !DILocation(line: 301, column: 2, scope: !6033)
!6043 = !DILocation(line: 307, column: 22, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 307, column: 6)
!6045 = !DILocation(line: 307, column: 33, scope: !6044)
!6046 = !DILocation(line: 307, column: 38, scope: !6044)
!6047 = !DILocation(line: 307, column: 43, scope: !6044)
!6048 = !DILocation(line: 307, column: 6, scope: !6044)
!6049 = !DILocation(line: 307, column: 6, scope: !5994)
!6050 = !DILocation(line: 309, column: 3, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 308, column: 33)
!6052 = !DILocation(line: 310, column: 16, scope: !6051)
!6053 = !DILocation(line: 310, column: 3, scope: !6051)
!6054 = !DILocation(line: 311, column: 10, scope: !6051)
!6055 = !DILocation(line: 311, column: 3, scope: !6051)
!6056 = !DILocation(line: 314, column: 20, scope: !5994)
!6057 = !DILocation(line: 314, column: 2, scope: !5994)
!6058 = !DILocation(line: 314, column: 10, scope: !5994)
!6059 = !DILocation(line: 314, column: 18, scope: !5994)
!6060 = !DILocation(line: 316, column: 15, scope: !5994)
!6061 = !DILocation(line: 316, column: 2, scope: !5994)
!6062 = !DILocation(line: 318, column: 9, scope: !5994)
!6063 = !DILocation(line: 318, column: 2, scope: !5994)
!6064 = !DILocation(line: 319, column: 1, scope: !5994)
!6065 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_unmap", scope: !3, file: !3, line: 321, type: !3913, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6066 = !DILocalVariable(name: "db_attach", arg: 1, scope: !6065, file: !3, line: 321, type: !3429)
!6067 = !DILocation(line: 321, column: 64, scope: !6065)
!6068 = !DILocalVariable(name: "sgt", arg: 2, scope: !6065, file: !3, line: 322, type: !3869)
!6069 = !DILocation(line: 322, column: 19, scope: !6065)
!6070 = !DILocalVariable(name: "dma_dir", arg: 3, scope: !6065, file: !3, line: 322, type: !93)
!6071 = !DILocation(line: 322, column: 48, scope: !6065)
!6072 = !DILocation(line: 325, column: 1, scope: !6065)
!6073 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_release", scope: !3, file: !3, line: 327, type: !3917, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6074 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6073, file: !3, line: 327, type: !3347)
!6075 = !DILocation(line: 327, column: 55, scope: !6073)
!6076 = !DILocation(line: 330, column: 13, scope: !6073)
!6077 = !DILocation(line: 330, column: 19, scope: !6073)
!6078 = !DILocation(line: 330, column: 2, scope: !6073)
!6079 = !DILocation(line: 331, column: 1, scope: !6073)
!6080 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_begin_cpu_access", scope: !3, file: !3, line: 334, type: !3921, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6081 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6080, file: !3, line: 334, type: !3347)
!6082 = !DILocation(line: 334, column: 52, scope: !6080)
!6083 = !DILocalVariable(name: "direction", arg: 2, scope: !6080, file: !3, line: 335, type: !93)
!6084 = !DILocation(line: 335, column: 32, scope: !6080)
!6085 = !DILocation(line: 337, column: 2, scope: !6080)
!6086 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_end_cpu_access", scope: !3, file: !3, line: 341, type: !3921, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6087 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6086, file: !3, line: 341, type: !3347)
!6088 = !DILocation(line: 341, column: 50, scope: !6086)
!6089 = !DILocalVariable(name: "direction", arg: 2, scope: !6086, file: !3, line: 342, type: !93)
!6090 = !DILocation(line: 342, column: 30, scope: !6086)
!6091 = !DILocation(line: 344, column: 2, scope: !6086)
!6092 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_mmap", scope: !3, file: !3, line: 354, type: !3926, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6093 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6092, file: !3, line: 354, type: !3347)
!6094 = !DILocation(line: 354, column: 51, scope: !6092)
!6095 = !DILocalVariable(name: "vma", arg: 2, scope: !6092, file: !3, line: 355, type: !973)
!6096 = !DILocation(line: 355, column: 25, scope: !6092)
!6097 = !DILocation(line: 357, column: 21, scope: !6092)
!6098 = !DILocation(line: 357, column: 27, scope: !6092)
!6099 = !DILocation(line: 357, column: 33, scope: !6092)
!6100 = !DILocation(line: 357, column: 9, scope: !6092)
!6101 = !DILocation(line: 357, column: 2, scope: !6092)
!6102 = distinct !DISubprogram(name: "vb2_dc_dmabuf_ops_vmap", scope: !3, file: !3, line: 347, type: !3930, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6103 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6102, file: !3, line: 347, type: !3347)
!6104 = !DILocation(line: 347, column: 53, scope: !6102)
!6105 = !DILocalVariable(name: "buf", scope: !6102, file: !3, line: 349, type: !3996)
!6106 = !DILocation(line: 349, column: 21, scope: !6102)
!6107 = !DILocation(line: 349, column: 27, scope: !6102)
!6108 = !DILocation(line: 349, column: 33, scope: !6102)
!6109 = !DILocation(line: 351, column: 9, scope: !6102)
!6110 = !DILocation(line: 351, column: 14, scope: !6102)
!6111 = !DILocation(line: 351, column: 2, scope: !6102)
!6112 = distinct !DISubprogram(name: "sg_set_page", scope: !3871, file: !3871, line: 116, type: !6113, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6113 = !DISubroutineType(types: !6114)
!6114 = !{null, !3874, !128, !7, !7}
!6115 = !DILocalVariable(name: "sg", arg: 1, scope: !6112, file: !3871, line: 116, type: !3874)
!6116 = !DILocation(line: 116, column: 52, scope: !6112)
!6117 = !DILocalVariable(name: "page", arg: 2, scope: !6112, file: !3871, line: 116, type: !128)
!6118 = !DILocation(line: 116, column: 69, scope: !6112)
!6119 = !DILocalVariable(name: "len", arg: 3, scope: !6112, file: !3871, line: 117, type: !7)
!6120 = !DILocation(line: 117, column: 24, scope: !6112)
!6121 = !DILocalVariable(name: "offset", arg: 4, scope: !6112, file: !3871, line: 117, type: !7)
!6122 = !DILocation(line: 117, column: 42, scope: !6112)
!6123 = !DILocation(line: 119, column: 17, scope: !6112)
!6124 = !DILocation(line: 119, column: 21, scope: !6112)
!6125 = !DILocation(line: 119, column: 2, scope: !6112)
!6126 = !DILocation(line: 120, column: 15, scope: !6112)
!6127 = !DILocation(line: 120, column: 2, scope: !6112)
!6128 = !DILocation(line: 120, column: 6, scope: !6112)
!6129 = !DILocation(line: 120, column: 13, scope: !6112)
!6130 = !DILocation(line: 121, column: 15, scope: !6112)
!6131 = !DILocation(line: 121, column: 2, scope: !6112)
!6132 = !DILocation(line: 121, column: 6, scope: !6112)
!6133 = !DILocation(line: 121, column: 13, scope: !6112)
!6134 = !DILocation(line: 122, column: 1, scope: !6112)
!6135 = distinct !DISubprogram(name: "sg_page", scope: !3871, file: !3871, line: 124, type: !6136, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6136 = !DISubroutineType(types: !6137)
!6137 = !{!128, !3874}
!6138 = !DILocalVariable(name: "sg", arg: 1, scope: !6135, file: !3871, line: 124, type: !3874)
!6139 = !DILocation(line: 124, column: 56, scope: !6135)
!6140 = !DILocation(line: 129, column: 26, scope: !6135)
!6141 = !DILocation(line: 129, column: 31, scope: !6135)
!6142 = !DILocation(line: 129, column: 41, scope: !6135)
!6143 = !DILocation(line: 129, column: 9, scope: !6135)
!6144 = !DILocation(line: 129, column: 2, scope: !6135)
!6145 = distinct !DISubprogram(name: "sg_assign_page", scope: !3871, file: !3871, line: 87, type: !6146, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{null, !3874, !128}
!6148 = !DILocalVariable(name: "sg", arg: 1, scope: !6145, file: !3871, line: 87, type: !3874)
!6149 = !DILocation(line: 87, column: 55, scope: !6145)
!6150 = !DILocalVariable(name: "page", arg: 2, scope: !6145, file: !3871, line: 87, type: !128)
!6151 = !DILocation(line: 87, column: 72, scope: !6145)
!6152 = !DILocalVariable(name: "page_link", scope: !6145, file: !3871, line: 89, type: !127)
!6153 = !DILocation(line: 89, column: 16, scope: !6145)
!6154 = !DILocation(line: 89, column: 28, scope: !6145)
!6155 = !DILocation(line: 89, column: 32, scope: !6145)
!6156 = !DILocation(line: 89, column: 42, scope: !6145)
!6157 = !DILocation(line: 95, column: 2, scope: !6145)
!6158 = !DILocation(line: 95, column: 2, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !3871, line: 95, column: 2)
!6160 = distinct !DILexicalBlock(scope: !6145, file: !3871, line: 95, column: 2)
!6161 = !DILocation(line: 95, column: 2, scope: !6160)
!6162 = !DILocation(line: 95, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6159, file: !3871, line: 95, column: 2)
!6164 = !DILocation(line: 95, column: 2, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6163, file: !3871, line: 95, column: 2)
!6166 = !DILocation(line: 95, column: 2, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !3871, line: 95, column: 2)
!6168 = !{i32 -2142578831, i32 -2142578802, i32 -2142578756, i32 -2142578698, i32 -2142578644, i32 -2142578590, i32 -2142578535, i32 -2142578504}
!6169 = !DILocation(line: 95, column: 2, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6171, file: !3871, line: 95, column: 2)
!6171 = distinct !DILexicalBlock(scope: !6163, file: !3871, line: 95, column: 2)
!6172 = !{i32 -2142578055, i32 -2142578048, i32 -2142577994, i32 -2142577963, i32 -2142577933}
!6173 = !DILocation(line: 95, column: 2, scope: !6171)
!6174 = !DILocation(line: 99, column: 18, scope: !6145)
!6175 = !DILocation(line: 99, column: 46, scope: !6145)
!6176 = !DILocation(line: 99, column: 30, scope: !6145)
!6177 = !DILocation(line: 99, column: 28, scope: !6145)
!6178 = !DILocation(line: 99, column: 2, scope: !6145)
!6179 = !DILocation(line: 99, column: 6, scope: !6145)
!6180 = !DILocation(line: 99, column: 16, scope: !6145)
!6181 = !DILocation(line: 100, column: 1, scope: !6145)
!6182 = distinct !DISubprogram(name: "dma_unmap_sgtable", scope: !5067, file: !5067, line: 342, type: !6183, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{null, !3434, !3869, !93, !127}
!6185 = !DILocalVariable(name: "dev", arg: 1, scope: !6182, file: !5067, line: 342, type: !3434)
!6186 = !DILocation(line: 342, column: 53, scope: !6182)
!6187 = !DILocalVariable(name: "sgt", arg: 2, scope: !6182, file: !5067, line: 342, type: !3869)
!6188 = !DILocation(line: 342, column: 75, scope: !6182)
!6189 = !DILocalVariable(name: "dir", arg: 3, scope: !6182, file: !5067, line: 343, type: !93)
!6190 = !DILocation(line: 343, column: 27, scope: !6182)
!6191 = !DILocalVariable(name: "attrs", arg: 4, scope: !6182, file: !5067, line: 343, type: !127)
!6192 = !DILocation(line: 343, column: 46, scope: !6182)
!6193 = !DILocation(line: 345, column: 21, scope: !6182)
!6194 = !DILocation(line: 345, column: 26, scope: !6182)
!6195 = !DILocation(line: 345, column: 31, scope: !6182)
!6196 = !DILocation(line: 345, column: 36, scope: !6182)
!6197 = !DILocation(line: 345, column: 41, scope: !6182)
!6198 = !DILocation(line: 345, column: 53, scope: !6182)
!6199 = !DILocation(line: 345, column: 58, scope: !6182)
!6200 = !DILocation(line: 345, column: 2, scope: !6182)
!6201 = !DILocation(line: 346, column: 1, scope: !6182)
!6202 = distinct !DISubprogram(name: "dma_map_sgtable", scope: !5067, file: !5067, line: 319, type: !6203, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!126, !3434, !3869, !93, !127}
!6205 = !DILocalVariable(name: "dev", arg: 1, scope: !6202, file: !5067, line: 319, type: !3434)
!6206 = !DILocation(line: 319, column: 50, scope: !6202)
!6207 = !DILocalVariable(name: "sgt", arg: 2, scope: !6202, file: !5067, line: 319, type: !3869)
!6208 = !DILocation(line: 319, column: 72, scope: !6202)
!6209 = !DILocalVariable(name: "dir", arg: 3, scope: !6202, file: !5067, line: 320, type: !93)
!6210 = !DILocation(line: 320, column: 27, scope: !6202)
!6211 = !DILocalVariable(name: "attrs", arg: 4, scope: !6202, file: !5067, line: 320, type: !127)
!6212 = !DILocation(line: 320, column: 46, scope: !6202)
!6213 = !DILocalVariable(name: "nents", scope: !6202, file: !5067, line: 322, type: !126)
!6214 = !DILocation(line: 322, column: 6, scope: !6202)
!6215 = !DILocation(line: 324, column: 27, scope: !6202)
!6216 = !DILocation(line: 324, column: 32, scope: !6202)
!6217 = !DILocation(line: 324, column: 37, scope: !6202)
!6218 = !DILocation(line: 324, column: 42, scope: !6202)
!6219 = !DILocation(line: 324, column: 47, scope: !6202)
!6220 = !DILocation(line: 324, column: 59, scope: !6202)
!6221 = !DILocation(line: 324, column: 64, scope: !6202)
!6222 = !DILocation(line: 324, column: 10, scope: !6202)
!6223 = !DILocation(line: 324, column: 8, scope: !6202)
!6224 = !DILocation(line: 325, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6202, file: !5067, line: 325, column: 6)
!6226 = !DILocation(line: 325, column: 12, scope: !6225)
!6227 = !DILocation(line: 325, column: 6, scope: !6202)
!6228 = !DILocation(line: 326, column: 3, scope: !6225)
!6229 = !DILocation(line: 327, column: 15, scope: !6202)
!6230 = !DILocation(line: 327, column: 2, scope: !6202)
!6231 = !DILocation(line: 327, column: 7, scope: !6202)
!6232 = !DILocation(line: 327, column: 13, scope: !6202)
!6233 = !DILocation(line: 328, column: 2, scope: !6202)
!6234 = !DILocation(line: 329, column: 1, scope: !6202)
!6235 = distinct !DISubprogram(name: "__refcount_inc", scope: !113, file: !113, line: 248, type: !6236, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{null, !4022, !453}
!6238 = !DILocalVariable(name: "r", arg: 1, scope: !6235, file: !113, line: 248, type: !4022)
!6239 = !DILocation(line: 248, column: 47, scope: !6235)
!6240 = !DILocalVariable(name: "oldp", arg: 2, scope: !6235, file: !113, line: 248, type: !453)
!6241 = !DILocation(line: 248, column: 55, scope: !6235)
!6242 = !DILocation(line: 250, column: 20, scope: !6235)
!6243 = !DILocation(line: 250, column: 23, scope: !6235)
!6244 = !DILocation(line: 250, column: 2, scope: !6235)
!6245 = !DILocation(line: 251, column: 1, scope: !6235)
!6246 = distinct !DISubprogram(name: "__refcount_add", scope: !113, file: !113, line: 191, type: !6247, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{null, !126, !4022, !453}
!6249 = !DILocalVariable(name: "i", arg: 1, scope: !6250, file: !5390, line: 182, type: !126)
!6250 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5390, file: !5390, line: 182, type: !5551, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6251 = !DILocation(line: 182, column: 54, scope: !6250, inlinedAt: !6252)
!6252 = distinct !DILocation(line: 143, column: 9, scope: !6253, inlinedAt: !6254)
!6253 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5397, file: !5397, line: 140, type: !5551, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6254 = distinct !DILocation(line: 193, column: 12, scope: !6246)
!6255 = !DILocalVariable(name: "v", arg: 2, scope: !6250, file: !5390, line: 182, type: !5393)
!6256 = !DILocation(line: 182, column: 67, scope: !6250, inlinedAt: !6252)
!6257 = !DILocalVariable(name: "__ret", scope: !6258, file: !5390, line: 184, type: !126)
!6258 = distinct !DILexicalBlock(scope: !6250, file: !5390, line: 184, column: 9)
!6259 = !DILocation(line: 184, column: 9, scope: !6258, inlinedAt: !6252)
!6260 = !DILocation(line: 99, column: 79, scope: !5563, inlinedAt: !6261)
!6261 = distinct !DILocation(line: 142, column: 2, scope: !6253, inlinedAt: !6254)
!6262 = !DILocation(line: 99, column: 89, scope: !5563, inlinedAt: !6261)
!6263 = !DILocalVariable(name: "i", arg: 1, scope: !6253, file: !5397, line: 140, type: !126)
!6264 = !DILocation(line: 140, column: 30, scope: !6253, inlinedAt: !6254)
!6265 = !DILocalVariable(name: "v", arg: 2, scope: !6253, file: !5397, line: 140, type: !5393)
!6266 = !DILocation(line: 140, column: 43, scope: !6253, inlinedAt: !6254)
!6267 = !DILocalVariable(name: "i", arg: 1, scope: !6246, file: !113, line: 191, type: !126)
!6268 = !DILocation(line: 191, column: 39, scope: !6246)
!6269 = !DILocalVariable(name: "r", arg: 2, scope: !6246, file: !113, line: 191, type: !4022)
!6270 = !DILocation(line: 191, column: 54, scope: !6246)
!6271 = !DILocalVariable(name: "oldp", arg: 3, scope: !6246, file: !113, line: 191, type: !453)
!6272 = !DILocation(line: 191, column: 62, scope: !6246)
!6273 = !DILocalVariable(name: "old", scope: !6246, file: !113, line: 193, type: !126)
!6274 = !DILocation(line: 193, column: 6, scope: !6246)
!6275 = !DILocation(line: 193, column: 37, scope: !6246)
!6276 = !DILocation(line: 193, column: 41, scope: !6246)
!6277 = !DILocation(line: 193, column: 44, scope: !6246)
!6278 = !DILocation(line: 142, column: 31, scope: !6253, inlinedAt: !6254)
!6279 = !DILocation(line: 101, column: 20, scope: !5563, inlinedAt: !6261)
!6280 = !DILocation(line: 101, column: 23, scope: !5563, inlinedAt: !6261)
!6281 = !DILocation(line: 101, column: 2, scope: !5563, inlinedAt: !6261)
!6282 = !DILocation(line: 102, column: 2, scope: !5563, inlinedAt: !6261)
!6283 = !DILocation(line: 143, column: 39, scope: !6253, inlinedAt: !6254)
!6284 = !DILocation(line: 143, column: 42, scope: !6253, inlinedAt: !6254)
!6285 = !{i32 -2147121302}
!6286 = !DILocation(line: 195, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6246, file: !113, line: 195, column: 6)
!6288 = !DILocation(line: 195, column: 6, scope: !6246)
!6289 = !DILocation(line: 196, column: 11, scope: !6287)
!6290 = !DILocation(line: 196, column: 4, scope: !6287)
!6291 = !DILocation(line: 196, column: 9, scope: !6287)
!6292 = !DILocation(line: 196, column: 3, scope: !6287)
!6293 = !DILocation(line: 198, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6246, file: !113, line: 198, column: 6)
!6295 = !DILocation(line: 198, column: 6, scope: !6246)
!6296 = !DILocation(line: 199, column: 26, scope: !6294)
!6297 = !DILocation(line: 199, column: 3, scope: !6294)
!6298 = !DILocation(line: 200, column: 11, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6294, file: !113, line: 200, column: 11)
!6300 = !DILocation(line: 200, column: 11, scope: !6294)
!6301 = !DILocation(line: 201, column: 26, scope: !6299)
!6302 = !DILocation(line: 201, column: 3, scope: !6299)
!6303 = !DILocation(line: 202, column: 1, scope: !6246)
!6304 = distinct !DISubprogram(name: "dma_get_cache_alignment", scope: !5067, file: !5067, line: 503, type: !6305, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!126}
!6307 = !DILocation(line: 508, column: 2, scope: !6304)
!6308 = distinct !DISubprogram(name: "PTR_ERR", scope: !5105, file: !5105, line: 29, type: !6309, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!473, !2302}
!6311 = !DILocalVariable(name: "ptr", arg: 1, scope: !6308, file: !5105, line: 29, type: !2302)
!6312 = !DILocation(line: 29, column: 61, scope: !6308)
!6313 = !DILocation(line: 31, column: 16, scope: !6308)
!6314 = !DILocation(line: 31, column: 9, scope: !6308)
!6315 = !DILocation(line: 31, column: 2, scope: !6308)
!6316 = distinct !DISubprogram(name: "frame_vector_count", scope: !14, file: !14, line: 1773, type: !6317, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{!7, !4008}
!6319 = !DILocalVariable(name: "vec", arg: 1, scope: !6316, file: !14, line: 1773, type: !4008)
!6320 = !DILocation(line: 1773, column: 68, scope: !6316)
!6321 = !DILocation(line: 1775, column: 9, scope: !6316)
!6322 = !DILocation(line: 1775, column: 14, scope: !6316)
!6323 = !DILocation(line: 1775, column: 2, scope: !6316)
!6324 = distinct !DISubprogram(name: "frame_vector_pfns", scope: !14, file: !14, line: 1789, type: !6325, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{!3312, !4008}
!6327 = !DILocalVariable(name: "vec", arg: 1, scope: !6324, file: !14, line: 1789, type: !4008)
!6328 = !DILocation(line: 1789, column: 69, scope: !6324)
!6329 = !DILocation(line: 1791, column: 7, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6324, file: !14, line: 1791, column: 6)
!6331 = !DILocation(line: 1791, column: 12, scope: !6330)
!6332 = !DILocation(line: 1791, column: 6, scope: !6324)
!6333 = !DILocation(line: 1792, column: 24, scope: !6330)
!6334 = !DILocation(line: 1792, column: 3, scope: !6330)
!6335 = !DILocation(line: 1793, column: 27, scope: !6324)
!6336 = !DILocation(line: 1793, column: 32, scope: !6324)
!6337 = !DILocation(line: 1793, column: 26, scope: !6324)
!6338 = !DILocation(line: 1793, column: 9, scope: !6324)
!6339 = !DILocation(line: 1793, column: 2, scope: !6324)
!6340 = distinct !DISubprogram(name: "dma_mapping_error", scope: !5067, file: !5067, line: 94, type: !6341, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!126, !3434, !3182}
!6343 = !DILocalVariable(name: "dev", arg: 1, scope: !6340, file: !5067, line: 94, type: !3434)
!6344 = !DILocation(line: 94, column: 52, scope: !6340)
!6345 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6340, file: !5067, line: 94, type: !3182)
!6346 = !DILocation(line: 94, column: 68, scope: !6340)
!6347 = !DILocation(line: 96, column: 26, scope: !6340)
!6348 = !DILocation(line: 96, column: 31, scope: !6340)
!6349 = !DILocation(line: 96, column: 2, scope: !6340)
!6350 = !DILocation(line: 98, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6340, file: !5067, line: 98, column: 6)
!6352 = !DILocation(line: 98, column: 15, scope: !6351)
!6353 = !DILocation(line: 98, column: 6, scope: !6340)
!6354 = !DILocation(line: 99, column: 3, scope: !6351)
!6355 = !DILocation(line: 100, column: 2, scope: !6340)
!6356 = !DILocation(line: 101, column: 1, scope: !6340)
!6357 = distinct !DISubprogram(name: "frame_vector_pages", scope: !14, file: !14, line: 1778, type: !6358, scopeLine: 1779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{!2297, !4008}
!6360 = !DILocalVariable(name: "vec", arg: 1, scope: !6357, file: !14, line: 1778, type: !4008)
!6361 = !DILocation(line: 1778, column: 69, scope: !6357)
!6362 = !DILocation(line: 1780, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6357, file: !14, line: 1780, column: 6)
!6364 = !DILocation(line: 1780, column: 11, scope: !6363)
!6365 = !DILocation(line: 1780, column: 6, scope: !6357)
!6366 = !DILocalVariable(name: "err", scope: !6367, file: !14, line: 1781, type: !126)
!6367 = distinct !DILexicalBlock(scope: !6363, file: !14, line: 1780, column: 20)
!6368 = !DILocation(line: 1781, column: 7, scope: !6367)
!6369 = !DILocation(line: 1781, column: 35, scope: !6367)
!6370 = !DILocation(line: 1781, column: 13, scope: !6367)
!6371 = !DILocation(line: 1783, column: 7, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6367, file: !14, line: 1783, column: 7)
!6373 = !DILocation(line: 1783, column: 7, scope: !6367)
!6374 = !DILocation(line: 1784, column: 19, scope: !6372)
!6375 = !DILocation(line: 1784, column: 11, scope: !6372)
!6376 = !DILocation(line: 1784, column: 4, scope: !6372)
!6377 = !DILocation(line: 1785, column: 2, scope: !6367)
!6378 = !DILocation(line: 1786, column: 26, scope: !6357)
!6379 = !DILocation(line: 1786, column: 31, scope: !6357)
!6380 = !DILocation(line: 1786, column: 25, scope: !6357)
!6381 = !DILocation(line: 1786, column: 9, scope: !6357)
!6382 = !DILocation(line: 1786, column: 2, scope: !6357)
!6383 = !DILocation(line: 1787, column: 1, scope: !6357)
!6384 = distinct !DISubprogram(name: "vb2_dc_get_contiguous_size", scope: !3, file: !3, line: 49, type: !6385, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!127, !3869}
!6387 = !DILocalVariable(name: "sgt", arg: 1, scope: !6384, file: !3, line: 49, type: !3869)
!6388 = !DILocation(line: 49, column: 66, scope: !6384)
!6389 = !DILocalVariable(name: "s", scope: !6384, file: !3, line: 51, type: !3874)
!6390 = !DILocation(line: 51, column: 22, scope: !6384)
!6391 = !DILocalVariable(name: "expected", scope: !6384, file: !3, line: 52, type: !3182)
!6392 = !DILocation(line: 52, column: 13, scope: !6384)
!6393 = !DILocation(line: 52, column: 24, scope: !6384)
!6394 = !DILocalVariable(name: "i", scope: !6384, file: !3, line: 53, type: !7)
!6395 = !DILocation(line: 53, column: 15, scope: !6384)
!6396 = !DILocalVariable(name: "size", scope: !6384, file: !3, line: 54, type: !127)
!6397 = !DILocation(line: 54, column: 16, scope: !6384)
!6398 = !DILocation(line: 56, column: 2, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 56, column: 2)
!6400 = !DILocation(line: 56, column: 2, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 56, column: 2)
!6402 = !DILocation(line: 57, column: 7, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 57, column: 7)
!6404 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 56, column: 37)
!6405 = !DILocation(line: 57, column: 28, scope: !6403)
!6406 = !DILocation(line: 57, column: 25, scope: !6403)
!6407 = !DILocation(line: 57, column: 7, scope: !6404)
!6408 = !DILocation(line: 58, column: 4, scope: !6403)
!6409 = !DILocation(line: 59, column: 15, scope: !6404)
!6410 = !DILocation(line: 59, column: 12, scope: !6404)
!6411 = !DILocation(line: 60, column: 11, scope: !6404)
!6412 = !DILocation(line: 60, column: 8, scope: !6404)
!6413 = !DILocation(line: 61, column: 2, scope: !6404)
!6414 = distinct !{!6414, !6398, !6415}
!6415 = !DILocation(line: 61, column: 2, scope: !6399)
!6416 = !DILocation(line: 62, column: 9, scope: !6384)
!6417 = !DILocation(line: 62, column: 2, scope: !6384)
!6418 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !5067, file: !5067, line: 83, type: !6419, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{null, !3434, !3182}
!6421 = !DILocalVariable(name: "dev", arg: 1, scope: !6418, file: !5067, line: 83, type: !3434)
!6422 = !DILocation(line: 83, column: 59, scope: !6418)
!6423 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6418, file: !5067, line: 84, type: !3182)
!6424 = !DILocation(line: 84, column: 14, scope: !6418)
!6425 = !DILocation(line: 86, column: 1, scope: !6418)
!6426 = distinct !DISubprogram(name: "dma_sync_sgtable_for_device", scope: !5067, file: !5067, line: 377, type: !6427, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{null, !3434, !3869, !93}
!6429 = !DILocalVariable(name: "dev", arg: 1, scope: !6426, file: !5067, line: 377, type: !3434)
!6430 = !DILocation(line: 377, column: 63, scope: !6426)
!6431 = !DILocalVariable(name: "sgt", arg: 2, scope: !6426, file: !5067, line: 378, type: !3869)
!6432 = !DILocation(line: 378, column: 20, scope: !6426)
!6433 = !DILocalVariable(name: "dir", arg: 3, scope: !6426, file: !5067, line: 378, type: !93)
!6434 = !DILocation(line: 378, column: 49, scope: !6426)
!6435 = !DILocation(line: 380, column: 25, scope: !6426)
!6436 = !DILocation(line: 380, column: 30, scope: !6426)
!6437 = !DILocation(line: 380, column: 35, scope: !6426)
!6438 = !DILocation(line: 380, column: 40, scope: !6426)
!6439 = !DILocation(line: 380, column: 45, scope: !6426)
!6440 = !DILocation(line: 380, column: 57, scope: !6426)
!6441 = !DILocation(line: 380, column: 2, scope: !6426)
!6442 = !DILocation(line: 381, column: 1, scope: !6426)
!6443 = distinct !DISubprogram(name: "dma_sync_sgtable_for_cpu", scope: !5067, file: !5067, line: 360, type: !6427, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6444 = !DILocalVariable(name: "dev", arg: 1, scope: !6443, file: !5067, line: 360, type: !3434)
!6445 = !DILocation(line: 360, column: 60, scope: !6443)
!6446 = !DILocalVariable(name: "sgt", arg: 2, scope: !6443, file: !5067, line: 361, type: !3869)
!6447 = !DILocation(line: 361, column: 20, scope: !6443)
!6448 = !DILocalVariable(name: "dir", arg: 3, scope: !6443, file: !5067, line: 361, type: !93)
!6449 = !DILocation(line: 361, column: 49, scope: !6443)
!6450 = !DILocation(line: 363, column: 22, scope: !6443)
!6451 = !DILocation(line: 363, column: 27, scope: !6443)
!6452 = !DILocation(line: 363, column: 32, scope: !6443)
!6453 = !DILocation(line: 363, column: 37, scope: !6443)
!6454 = !DILocation(line: 363, column: 42, scope: !6443)
!6455 = !DILocation(line: 363, column: 54, scope: !6443)
!6456 = !DILocation(line: 363, column: 2, scope: !6443)
!6457 = !DILocation(line: 364, column: 1, scope: !6443)
!6458 = distinct !DISubprogram(name: "refcount_read", scope: !113, file: !113, line: 145, type: !6459, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!7, !6461}
!6461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6462, size: 64)
!6462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!6463 = !DILocalVariable(name: "v", arg: 1, scope: !6464, file: !5390, line: 23, type: !6467)
!6464 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5390, file: !5390, line: 23, type: !6465, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!126, !6467}
!6467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6468, size: 64)
!6468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!6469 = !DILocation(line: 23, column: 61, scope: !6464, inlinedAt: !6470)
!6470 = distinct !DILocation(line: 28, column: 9, scope: !6471, inlinedAt: !6472)
!6471 = distinct !DISubprogram(name: "atomic_read", scope: !5397, file: !5397, line: 25, type: !6465, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6472 = distinct !DILocation(line: 147, column: 9, scope: !6458)
!6473 = !DILocalVariable(name: "v", arg: 1, scope: !6474, file: !5403, line: 69, type: !5406)
!6474 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5403, file: !5403, line: 69, type: !5404, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6475 = !DILocation(line: 69, column: 73, scope: !6474, inlinedAt: !6476)
!6476 = distinct !DILocation(line: 27, column: 2, scope: !6471, inlinedAt: !6472)
!6477 = !DILocalVariable(name: "size", arg: 2, scope: !6474, file: !5403, line: 69, type: !1119)
!6478 = !DILocation(line: 69, column: 83, scope: !6474, inlinedAt: !6476)
!6479 = !DILocalVariable(name: "v", arg: 1, scope: !6471, file: !5397, line: 25, type: !6467)
!6480 = !DILocation(line: 25, column: 29, scope: !6471, inlinedAt: !6472)
!6481 = !DILocalVariable(name: "r", arg: 1, scope: !6458, file: !113, line: 145, type: !6461)
!6482 = !DILocation(line: 145, column: 60, scope: !6458)
!6483 = !DILocation(line: 147, column: 22, scope: !6458)
!6484 = !DILocation(line: 147, column: 25, scope: !6458)
!6485 = !DILocation(line: 27, column: 25, scope: !6471, inlinedAt: !6472)
!6486 = !DILocation(line: 71, column: 19, scope: !6474, inlinedAt: !6476)
!6487 = !DILocation(line: 71, column: 22, scope: !6474, inlinedAt: !6476)
!6488 = !DILocation(line: 71, column: 2, scope: !6474, inlinedAt: !6476)
!6489 = !DILocation(line: 72, column: 2, scope: !6474, inlinedAt: !6476)
!6490 = !DILocation(line: 28, column: 26, scope: !6471, inlinedAt: !6472)
!6491 = !DILocation(line: 29, column: 9, scope: !6464, inlinedAt: !6470)
!6492 = !DILocation(line: 147, column: 2, scope: !6458)
!6493 = distinct !DISubprogram(name: "kasan_check_read", scope: !5508, file: !5508, line: 34, type: !5509, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6494 = !DILocalVariable(name: "p", arg: 1, scope: !6493, file: !5508, line: 34, type: !5406)
!6495 = !DILocation(line: 34, column: 58, scope: !6493)
!6496 = !DILocalVariable(name: "size", arg: 2, scope: !6493, file: !5508, line: 34, type: !7)
!6497 = !DILocation(line: 34, column: 74, scope: !6493)
!6498 = !DILocation(line: 36, column: 2, scope: !6493)
