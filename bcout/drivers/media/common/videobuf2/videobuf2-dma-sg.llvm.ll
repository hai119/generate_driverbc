; ModuleID = '../bcout/drivers/media/common/videobuf2/videobuf2-dma-sg.llvm.bc'
source_filename = "drivers/media/common/videobuf2/videobuf2-dma-sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.66, i64, i64, i64, %struct.kref, i32 }
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.66 = type { %struct.list_head }
%struct.kmem_cache = type opaque
%struct.vb2_dma_sg_buf = type { %struct.device*, i8*, %struct.page**, %struct.frame_vector*, i32, i32, %struct.sg_table, %struct.sg_table*, i64, i32, %struct.refcount_struct, %struct.vb2_vmarea_handler, %struct.dma_buf_attachment* }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x i8*] }
%struct.vb2_vmarea_handler = type { %struct.refcount_struct*, void (i8*)*, i8* }
%struct.dma_buf_export_info = type { i8*, %struct.module*, %struct.dma_buf_ops*, i64, i32, %struct.dma_resv*, i8* }
%struct.nodemask_t = type { [1 x i64] }
%struct.vb2_dma_sg_attachment = type { %struct.sg_table, i32 }

@__param_str_debug = internal constant [23 x i8] c"videobuf2_dma_sg.debug\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !4035
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !3315
@__UNIQUE_ID_debugtype246 = internal constant [36 x i8] c"videobuf2_dma_sg.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !3367
@vb2_dma_sg_memops = dso_local constant %struct.vb2_mem_ops { i8* (%struct.device*, i64, i64, i32, i32)* @vb2_dma_sg_alloc, void (i8*)* @vb2_dma_sg_put, %struct.dma_buf* (i8*, i64)* @vb2_dma_sg_get_dmabuf, i8* (%struct.device*, i64, i64, i32)* @vb2_dma_sg_get_userptr, void (i8*)* @vb2_dma_sg_put_userptr, void (i8*)* @vb2_dma_sg_prepare, void (i8*)* @vb2_dma_sg_finish, i8* (%struct.device*, %struct.dma_buf*, i64, i32)* @vb2_dma_sg_attach_dmabuf, void (i8*)* @vb2_dma_sg_detach_dmabuf, i32 (i8*)* @vb2_dma_sg_map_dmabuf, void (i8*)* @vb2_dma_sg_unmap_dmabuf, i8* (i8*)* @vb2_dma_sg_vaddr, i8* (i8*)* @vb2_dma_sg_cookie, i32 (i8*)* @vb2_dma_sg_num_users, i32 (i8*, %struct.vm_area_struct*)* @vb2_dma_sg_mmap }, align 8, !dbg !3372
@__UNIQUE_ID_description257 = internal constant [87 x i8] c"videobuf2_dma_sg.description=dma scatter/gather memory handling routines for videobuf2\00", section ".modinfo", align 1, !dbg !4015
@__UNIQUE_ID_author258 = internal constant [46 x i8] c"videobuf2_dma_sg.author=Andrzej Pietrasiewicz\00", section ".modinfo", align 1, !dbg !4020
@__UNIQUE_ID_file259 = internal constant [70 x i8] c"videobuf2_dma_sg.file=drivers/media/common/videobuf2/videobuf2-dma-sg\00", section ".modinfo", align 1, !dbg !4025
@__UNIQUE_ID_license260 = internal constant [29 x i8] c"videobuf2_dma_sg.license=GPL\00", section ".modinfo", align 1, !dbg !4030
@.str = private unnamed_addr constant [50 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-sg.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\017vb2-dma-sg: %s: Allocated buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_alloc = private unnamed_addr constant [17 x i8] c"vb2_dma_sg_alloc\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\017vb2-dma-sg: %s: Freeing buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_put = private unnamed_addr constant [15 x i8] c"vb2_dma_sg_put\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"videobuf2_dma_sg\00", align 1
@vb2_dma_sg_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dma_sg_dmabuf_ops_attach, void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dma_sg_dmabuf_ops_detach, i32 (%struct.dma_buf_attachment*)* null, void (%struct.dma_buf_attachment*)* null, %struct.sg_table* (%struct.dma_buf_attachment*, i32)* @vb2_dma_sg_dmabuf_ops_map, void (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* @vb2_dma_sg_dmabuf_ops_unmap, void (%struct.dma_buf*)* @vb2_dma_sg_dmabuf_ops_release, i32 (%struct.dma_buf*, i32)* @vb2_dma_sg_dmabuf_ops_begin_cpu_access, i32 (%struct.dma_buf*, i32)* @vb2_dma_sg_dmabuf_ops_end_cpu_access, i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @vb2_dma_sg_dmabuf_ops_mmap, i8* (%struct.dma_buf*)* @vb2_dma_sg_dmabuf_ops_vmap, void (%struct.dma_buf*, i8*)* null }, align 8, !dbg !4037
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\017vb2-dma-sg: %s: Releasing userspace buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_put_userptr = private unnamed_addr constant [23 x i8] c"vb2_dma_sg_put_userptr\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\013failed to attach dmabuf\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\013trying to pin a non attached buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\013No memory to map\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"\013Remapping memory, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 8
@llvm.used = appending global [6 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_debugtype246, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__UNIQUE_ID_description257, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_author258, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_file259, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_license260, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_alloc(%struct.device* %dev, i64 %dma_attrs, i64 %size, i32 %dma_dir, i32 %gfp_flags) #0 !dbg !4047 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dma_attrs.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %gfp_flags.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %ret = alloca i32, align 4
  %num_pages = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4048, metadata !DIExpression()), !dbg !4049
  store i64 %dma_attrs, i64* %dma_attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_attrs.addr, metadata !4050, metadata !DIExpression()), !dbg !4051
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4052, metadata !DIExpression()), !dbg !4053
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4054, metadata !DIExpression()), !dbg !4055
  store i32 %gfp_flags, i32* %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_flags.addr, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4058, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata i32* %num_pages, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4098, metadata !DIExpression()), !dbg !4101
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4101
  %tobool = icmp ne %struct.device* %0, null, !dbg !4101
  %lnot = xor i1 %tobool, true, !dbg !4101
  %lnot1 = xor i1 %lnot, true, !dbg !4101
  %lnot2 = xor i1 %lnot1, true, !dbg !4101
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4101
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4101
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4102
  %tobool3 = icmp ne i32 %1, 0, !dbg !4102
  %lnot4 = xor i1 %tobool3, true, !dbg !4102
  %lnot6 = xor i1 %lnot4, true, !dbg !4102
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4102
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4102
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4102
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4101

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4102

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4104

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4106

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4104

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 108, i32 2305, i64 12) #8, !dbg !4108, !srcloc !4110
  br label %do.end11, !dbg !4108

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 247) #8, !dbg !4111, !srcloc !4113
  br label %do.body12, !dbg !4104

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4114

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4104

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4104

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4101
  %tobool15 = icmp ne i32 %2, 0, !dbg !4101
  %lnot16 = xor i1 %tobool15, true, !dbg !4101
  %lnot18 = xor i1 %lnot16, true, !dbg !4101
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4101
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4101
  store i64 %conv20, i64* %tmp, align 8, !dbg !4102
  %3 = load i64, i64* %tmp, align 8, !dbg !4101
  %tobool21 = icmp ne i64 %3, 0, !dbg !4116
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4117

if.then22:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -22) #9, !dbg !4118
  store i8* %call, i8** %retval, align 8, !dbg !4119
  br label %return, !dbg !4119

if.end23:                                         ; preds = %if.end
  %call24 = call i8* @kzalloc(i64 112, i32 3264) #9, !dbg !4120
  %4 = bitcast i8* %call24 to %struct.vb2_dma_sg_buf*, !dbg !4120
  store %struct.vb2_dma_sg_buf* %4, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4121
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4122
  %tobool25 = icmp ne %struct.vb2_dma_sg_buf* %5, null, !dbg !4122
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !4124

if.then26:                                        ; preds = %if.end23
  %call27 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4125
  store i8* %call27, i8** %retval, align 8, !dbg !4126
  br label %return, !dbg !4126

if.end28:                                         ; preds = %if.end23
  %6 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4127
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %6, i32 0, i32 1, !dbg !4128
  store i8* null, i8** %vaddr, align 8, !dbg !4129
  %7 = load i32, i32* %dma_dir.addr, align 4, !dbg !4130
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4131
  %dma_dir29 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %8, i32 0, i32 5, !dbg !4132
  store i32 %7, i32* %dma_dir29, align 4, !dbg !4133
  %9 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4134
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %9, i32 0, i32 4, !dbg !4135
  store i32 0, i32* %offset, align 8, !dbg !4136
  %10 = load i64, i64* %size.addr, align 8, !dbg !4137
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4138
  %size30 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 8, !dbg !4139
  store i64 %10, i64* %size30, align 8, !dbg !4140
  %12 = load i64, i64* %size.addr, align 8, !dbg !4141
  %shr = lshr i64 %12, 12, !dbg !4142
  %conv31 = trunc i64 %shr to i32, !dbg !4141
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4143
  %num_pages32 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 9, !dbg !4144
  store i32 %conv31, i32* %num_pages32, align 8, !dbg !4145
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4146
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %14, i32 0, i32 6, !dbg !4147
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4148
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %15, i32 0, i32 7, !dbg !4149
  store %struct.sg_table* %sg_table, %struct.sg_table** %dma_sgt, align 8, !dbg !4150
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4151
  %num_pages33 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 9, !dbg !4152
  %17 = load i32, i32* %num_pages33, align 8, !dbg !4152
  %conv34 = zext i32 %17 to i64, !dbg !4151
  %call35 = call i8* @kvmalloc_array(i64 %conv34, i64 8, i32 3520) #9, !dbg !4153
  %18 = bitcast i8* %call35 to %struct.page**, !dbg !4153
  %19 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4154
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %19, i32 0, i32 2, !dbg !4155
  store %struct.page** %18, %struct.page*** %pages, align 8, !dbg !4156
  %20 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4157
  %pages36 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %20, i32 0, i32 2, !dbg !4159
  %21 = load %struct.page**, %struct.page*** %pages36, align 8, !dbg !4159
  %tobool37 = icmp ne %struct.page** %21, null, !dbg !4157
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !4160

if.then38:                                        ; preds = %if.end28
  br label %fail_pages_array_alloc, !dbg !4161

if.end39:                                         ; preds = %if.end28
  %22 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4162
  %23 = load i32, i32* %gfp_flags.addr, align 4, !dbg !4163
  %call40 = call i32 @vb2_dma_sg_alloc_compacted(%struct.vb2_dma_sg_buf* %22, i32 %23) #9, !dbg !4164
  store i32 %call40, i32* %ret, align 4, !dbg !4165
  %24 = load i32, i32* %ret, align 4, !dbg !4166
  %tobool41 = icmp ne i32 %24, 0, !dbg !4166
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4168

if.then42:                                        ; preds = %if.end39
  br label %fail_pages_alloc, !dbg !4169

if.end43:                                         ; preds = %if.end39
  %25 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4170
  %dma_sgt44 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %25, i32 0, i32 7, !dbg !4171
  %26 = load %struct.sg_table*, %struct.sg_table** %dma_sgt44, align 8, !dbg !4171
  %27 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4172
  %pages45 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %27, i32 0, i32 2, !dbg !4173
  %28 = load %struct.page**, %struct.page*** %pages45, align 8, !dbg !4173
  %29 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4174
  %num_pages46 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %29, i32 0, i32 9, !dbg !4175
  %30 = load i32, i32* %num_pages46, align 8, !dbg !4175
  %31 = load i64, i64* %size.addr, align 8, !dbg !4176
  %call47 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %26, %struct.page** %28, i32 %30, i32 0, i64 %31, i32 3264) #9, !dbg !4177
  store i32 %call47, i32* %ret, align 4, !dbg !4178
  %32 = load i32, i32* %ret, align 4, !dbg !4179
  %tobool48 = icmp ne i32 %32, 0, !dbg !4179
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4181

if.then49:                                        ; preds = %if.end43
  br label %fail_table_alloc, !dbg !4182

if.end50:                                         ; preds = %if.end43
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4183
  %call51 = call %struct.device* @get_device(%struct.device* %33) #9, !dbg !4184
  %34 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4185
  %dev52 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %34, i32 0, i32 0, !dbg !4186
  store %struct.device* %call51, %struct.device** %dev52, align 8, !dbg !4187
  %35 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4188
  %sg_table53 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %35, i32 0, i32 6, !dbg !4189
  store %struct.sg_table* %sg_table53, %struct.sg_table** %sgt, align 8, !dbg !4190
  %36 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4191
  %dev54 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %36, i32 0, i32 0, !dbg !4193
  %37 = load %struct.device*, %struct.device** %dev54, align 8, !dbg !4193
  %38 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4194
  %39 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4195
  %dma_dir55 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %39, i32 0, i32 5, !dbg !4196
  %40 = load i32, i32* %dma_dir55, align 4, !dbg !4196
  %call56 = call i32 @dma_map_sgtable(%struct.device* %37, %struct.sg_table* %38, i32 %40, i64 32) #9, !dbg !4197
  %tobool57 = icmp ne i32 %call56, 0, !dbg !4197
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4198

if.then58:                                        ; preds = %if.end50
  br label %fail_map, !dbg !4199

if.end59:                                         ; preds = %if.end50
  %41 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4200
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %41, i32 0, i32 10, !dbg !4201
  %42 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4202
  %handler = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %42, i32 0, i32 11, !dbg !4203
  %refcount60 = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler, i32 0, i32 0, !dbg !4204
  store %struct.refcount_struct* %refcount, %struct.refcount_struct** %refcount60, align 8, !dbg !4205
  %43 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4206
  %handler61 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %43, i32 0, i32 11, !dbg !4207
  %put = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler61, i32 0, i32 1, !dbg !4208
  store void (i8*)* @vb2_dma_sg_put, void (i8*)** %put, align 8, !dbg !4209
  %44 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4210
  %45 = bitcast %struct.vb2_dma_sg_buf* %44 to i8*, !dbg !4210
  %46 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4211
  %handler62 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %46, i32 0, i32 11, !dbg !4212
  %arg = getelementptr inbounds %struct.vb2_vmarea_handler, %struct.vb2_vmarea_handler* %handler62, i32 0, i32 2, !dbg !4213
  store i8* %45, i8** %arg, align 8, !dbg !4214
  %47 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4215
  %refcount63 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %47, i32 0, i32 10, !dbg !4216
  call void @refcount_set(%struct.refcount_struct* %refcount63, i32 1) #9, !dbg !4217
  br label %do.body64, !dbg !4218

do.body64:                                        ; preds = %if.end59
  %48 = load i32, i32* @debug, align 4, !dbg !4219
  %cmp = icmp sge i32 %48, 1, !dbg !4219
  br i1 %cmp, label %if.then66, label %if.end69, !dbg !4222

if.then66:                                        ; preds = %do.body64
  %49 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4219
  %num_pages67 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %49, i32 0, i32 9, !dbg !4219
  %50 = load i32, i32* %num_pages67, align 8, !dbg !4219
  %call68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.vb2_dma_sg_alloc, i64 0, i64 0), i32 %50) #10, !dbg !4219
  br label %if.end69, !dbg !4219

if.end69:                                         ; preds = %if.then66, %do.body64
  br label %do.end70, !dbg !4222

do.end70:                                         ; preds = %if.end69
  %51 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4223
  %52 = bitcast %struct.vb2_dma_sg_buf* %51 to i8*, !dbg !4223
  store i8* %52, i8** %retval, align 8, !dbg !4224
  br label %return, !dbg !4224

fail_map:                                         ; preds = %if.then58
  call void @llvm.dbg.label(metadata !4225), !dbg !4226
  %53 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4227
  %dev71 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %53, i32 0, i32 0, !dbg !4228
  %54 = load %struct.device*, %struct.device** %dev71, align 8, !dbg !4228
  call void @put_device(%struct.device* %54) #9, !dbg !4229
  %55 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4230
  %dma_sgt72 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %55, i32 0, i32 7, !dbg !4231
  %56 = load %struct.sg_table*, %struct.sg_table** %dma_sgt72, align 8, !dbg !4231
  call void @sg_free_table(%struct.sg_table* %56) #9, !dbg !4232
  br label %fail_table_alloc, !dbg !4232

fail_table_alloc:                                 ; preds = %fail_map, %if.then49
  call void @llvm.dbg.label(metadata !4233), !dbg !4234
  %57 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4235
  %num_pages73 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %57, i32 0, i32 9, !dbg !4236
  %58 = load i32, i32* %num_pages73, align 8, !dbg !4236
  store i32 %58, i32* %num_pages, align 4, !dbg !4237
  br label %while.cond, !dbg !4238

while.cond:                                       ; preds = %while.body, %fail_table_alloc
  %59 = load i32, i32* %num_pages, align 4, !dbg !4239
  %dec = add i32 %59, -1, !dbg !4239
  store i32 %dec, i32* %num_pages, align 4, !dbg !4239
  %tobool74 = icmp ne i32 %59, 0, !dbg !4238
  br i1 %tobool74, label %while.body, label %while.end, !dbg !4238

while.body:                                       ; preds = %while.cond
  %60 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4240
  %pages75 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %60, i32 0, i32 2, !dbg !4240
  %61 = load %struct.page**, %struct.page*** %pages75, align 8, !dbg !4240
  %62 = load i32, i32* %num_pages, align 4, !dbg !4240
  %idxprom = sext i32 %62 to i64, !dbg !4240
  %arrayidx = getelementptr %struct.page*, %struct.page** %61, i64 %idxprom, !dbg !4240
  %63 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4240
  call void @__free_pages(%struct.page* %63, i32 0) #9, !dbg !4240
  br label %while.cond, !dbg !4238, !llvm.loop !4241

while.end:                                        ; preds = %while.cond
  br label %fail_pages_alloc, !dbg !4238

fail_pages_alloc:                                 ; preds = %while.end, %if.then42
  call void @llvm.dbg.label(metadata !4242), !dbg !4243
  %64 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4244
  %pages76 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %64, i32 0, i32 2, !dbg !4245
  %65 = load %struct.page**, %struct.page*** %pages76, align 8, !dbg !4245
  %66 = bitcast %struct.page** %65 to i8*, !dbg !4244
  call void @kvfree(i8* %66) #9, !dbg !4246
  br label %fail_pages_array_alloc, !dbg !4246

fail_pages_array_alloc:                           ; preds = %fail_pages_alloc, %if.then38
  call void @llvm.dbg.label(metadata !4247), !dbg !4248
  %67 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4249
  %68 = bitcast %struct.vb2_dma_sg_buf* %67 to i8*, !dbg !4249
  call void @kfree(i8* %68) #9, !dbg !4250
  %call77 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4251
  store i8* %call77, i8** %retval, align 8, !dbg !4252
  br label %return, !dbg !4252

return:                                           ; preds = %fail_pages_array_alloc, %do.end70, %if.then26, %if.then22
  %69 = load i8*, i8** %retval, align 8, !dbg !4253
  ret i8* %69, !dbg !4253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_put(i8* %buf_priv) #0 !dbg !4254 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %i = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4257, metadata !DIExpression()), !dbg !4258
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4259
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4259
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4258
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4260, metadata !DIExpression()), !dbg !4261
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4262
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 6, !dbg !4263
  store %struct.sg_table* %sg_table, %struct.sg_table** %sgt, align 8, !dbg !4261
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4264, metadata !DIExpression()), !dbg !4265
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4266
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %3, i32 0, i32 9, !dbg !4267
  %4 = load i32, i32* %num_pages, align 8, !dbg !4267
  store i32 %4, i32* %i, align 4, !dbg !4265
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4268
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %5, i32 0, i32 10, !dbg !4270
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !4271
  br i1 %call, label %if.then, label %if.end11, !dbg !4272

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4273

do.body:                                          ; preds = %if.then
  %6 = load i32, i32* @debug, align 4, !dbg !4275
  %cmp = icmp sge i32 %6, 1, !dbg !4275
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4278

if.then1:                                         ; preds = %do.body
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4275
  %num_pages2 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 9, !dbg !4275
  %8 = load i32, i32* %num_pages2, align 8, !dbg !4275
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.vb2_dma_sg_put, i64 0, i64 0), i32 %8) #10, !dbg !4275
  br label %if.end, !dbg !4275

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !4278

do.end:                                           ; preds = %if.end
  %9 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4279
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %9, i32 0, i32 0, !dbg !4280
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4280
  %11 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4281
  %12 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4282
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %12, i32 0, i32 5, !dbg !4283
  %13 = load i32, i32* %dma_dir, align 4, !dbg !4283
  call void @dma_unmap_sgtable(%struct.device* %10, %struct.sg_table* %11, i32 %13, i64 32) #9, !dbg !4284
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4285
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %14, i32 0, i32 1, !dbg !4287
  %15 = load i8*, i8** %vaddr, align 8, !dbg !4287
  %tobool = icmp ne i8* %15, null, !dbg !4285
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !4288

if.then4:                                         ; preds = %do.end
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4289
  %vaddr5 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 1, !dbg !4290
  %17 = load i8*, i8** %vaddr5, align 8, !dbg !4290
  %18 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4291
  %num_pages6 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %18, i32 0, i32 9, !dbg !4292
  %19 = load i32, i32* %num_pages6, align 8, !dbg !4292
  call void @vm_unmap_ram(i8* %17, i32 %19) #9, !dbg !4293
  br label %if.end7, !dbg !4293

if.end7:                                          ; preds = %if.then4, %do.end
  %20 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4294
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %20, i32 0, i32 7, !dbg !4295
  %21 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4295
  call void @sg_free_table(%struct.sg_table* %21) #9, !dbg !4296
  br label %while.cond, !dbg !4297

while.cond:                                       ; preds = %while.body, %if.end7
  %22 = load i32, i32* %i, align 4, !dbg !4298
  %dec = add i32 %22, -1, !dbg !4298
  store i32 %dec, i32* %i, align 4, !dbg !4298
  %cmp8 = icmp sge i32 %dec, 0, !dbg !4299
  br i1 %cmp8, label %while.body, label %while.end, !dbg !4297

while.body:                                       ; preds = %while.cond
  %23 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4300
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %23, i32 0, i32 2, !dbg !4300
  %24 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4300
  %25 = load i32, i32* %i, align 4, !dbg !4300
  %idxprom = sext i32 %25 to i64, !dbg !4300
  %arrayidx = getelementptr %struct.page*, %struct.page** %24, i64 %idxprom, !dbg !4300
  %26 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4300
  call void @__free_pages(%struct.page* %26, i32 0) #9, !dbg !4300
  br label %while.cond, !dbg !4297, !llvm.loop !4301

while.end:                                        ; preds = %while.cond
  %27 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4302
  %pages9 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %27, i32 0, i32 2, !dbg !4303
  %28 = load %struct.page**, %struct.page*** %pages9, align 8, !dbg !4303
  %29 = bitcast %struct.page** %28 to i8*, !dbg !4302
  call void @kvfree(i8* %29) #9, !dbg !4304
  %30 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4305
  %dev10 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %30, i32 0, i32 0, !dbg !4306
  %31 = load %struct.device*, %struct.device** %dev10, align 8, !dbg !4306
  call void @put_device(%struct.device* %31) #9, !dbg !4307
  %32 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4308
  %33 = bitcast %struct.vb2_dma_sg_buf* %32 to i8*, !dbg !4308
  call void @kfree(i8* %33) #9, !dbg !4309
  br label %if.end11, !dbg !4310

if.end11:                                         ; preds = %while.end, %entry
  ret void, !dbg !4311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_buf* @vb2_dma_sg_get_dmabuf(i8* %buf_priv, i64 %flags) #0 !dbg !4312 {
entry:
  %retval = alloca %struct.dma_buf*, align 8
  %buf_priv.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %dbuf = alloca %struct.dma_buf*, align 8
  %exp_info = alloca %struct.dma_buf_export_info, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4319
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4319
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4318
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf, metadata !4320, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.dma_buf_export_info* %exp_info, metadata !4322, metadata !DIExpression()), !dbg !4332
  %2 = bitcast %struct.dma_buf_export_info* %exp_info to i8*, !dbg !4332
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 56, i1 false), !dbg !4332
  %3 = bitcast i8* %2 to %struct.dma_buf_export_info*, !dbg !4332
  %4 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %3, i32 0, i32 0, !dbg !4332
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8** %4, align 8, !dbg !4332
  %ops = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 2, !dbg !4333
  store %struct.dma_buf_ops* @vb2_dma_sg_dmabuf_ops, %struct.dma_buf_ops** %ops, align 8, !dbg !4334
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4335
  %size = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %5, i32 0, i32 8, !dbg !4336
  %6 = load i64, i64* %size, align 8, !dbg !4336
  %size1 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 3, !dbg !4337
  store i64 %6, i64* %size1, align 8, !dbg !4338
  %7 = load i64, i64* %flags.addr, align 8, !dbg !4339
  %conv = trunc i64 %7 to i32, !dbg !4339
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 4, !dbg !4340
  store i32 %conv, i32* %flags2, align 8, !dbg !4341
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4342
  %9 = bitcast %struct.vb2_dma_sg_buf* %8 to i8*, !dbg !4342
  %priv = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %exp_info, i32 0, i32 6, !dbg !4343
  store i8* %9, i8** %priv, align 8, !dbg !4344
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4345, metadata !DIExpression()), !dbg !4348
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4348
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 7, !dbg !4348
  %11 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4348
  %tobool = icmp ne %struct.sg_table* %11, null, !dbg !4348
  %lnot = xor i1 %tobool, true, !dbg !4348
  %lnot3 = xor i1 %lnot, true, !dbg !4348
  %lnot4 = xor i1 %lnot3, true, !dbg !4348
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4348
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4348
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !4349
  %tobool5 = icmp ne i32 %12, 0, !dbg !4349
  %lnot6 = xor i1 %tobool5, true, !dbg !4349
  %lnot8 = xor i1 %lnot6, true, !dbg !4349
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4349
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !4349
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !4349
  br i1 %tobool11, label %if.then, label %if.end, !dbg !4348

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4349

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !4351

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !4353

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !4351

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 519, i32 2305, i64 12) #8, !dbg !4355, !srcloc !4357
  br label %do.end14, !dbg !4355

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 250) #8, !dbg !4358, !srcloc !4360
  br label %do.body15, !dbg !4351

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4361

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !4351

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !4351

if.end:                                           ; preds = %do.end17, %entry
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !4348
  %tobool18 = icmp ne i32 %13, 0, !dbg !4348
  %lnot19 = xor i1 %tobool18, true, !dbg !4348
  %lnot21 = xor i1 %lnot19, true, !dbg !4348
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4348
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4348
  store i64 %conv23, i64* %tmp, align 8, !dbg !4349
  %14 = load i64, i64* %tmp, align 8, !dbg !4348
  %tobool24 = icmp ne i64 %14, 0, !dbg !4363
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4364

if.then25:                                        ; preds = %if.end
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4365
  br label %return, !dbg !4365

if.end26:                                         ; preds = %if.end
  %call = call %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info* %exp_info) #9, !dbg !4366
  store %struct.dma_buf* %call, %struct.dma_buf** %dbuf, align 8, !dbg !4367
  %15 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4368
  %16 = bitcast %struct.dma_buf* %15 to i8*, !dbg !4368
  %call27 = call zeroext i1 @IS_ERR(i8* %16) #9, !dbg !4370
  br i1 %call27, label %if.then28, label %if.end29, !dbg !4371

if.then28:                                        ; preds = %if.end26
  store %struct.dma_buf* null, %struct.dma_buf** %retval, align 8, !dbg !4372
  br label %return, !dbg !4372

if.end29:                                         ; preds = %if.end26
  %17 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4373
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %17, i32 0, i32 10, !dbg !4374
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !4375
  %18 = load %struct.dma_buf*, %struct.dma_buf** %dbuf, align 8, !dbg !4376
  store %struct.dma_buf* %18, %struct.dma_buf** %retval, align 8, !dbg !4377
  br label %return, !dbg !4377

return:                                           ; preds = %if.end29, %if.then28, %if.then25
  %19 = load %struct.dma_buf*, %struct.dma_buf** %retval, align 8, !dbg !4378
  ret %struct.dma_buf* %19, !dbg !4378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_get_userptr(%struct.device* %dev, i64 %vaddr, i64 %size, i32 %dma_dir) #0 !dbg !4379 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %vaddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %vec = alloca %struct.frame_vector*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4380, metadata !DIExpression()), !dbg !4381
  store i64 %vaddr, i64* %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vaddr.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4394, metadata !DIExpression()), !dbg !4397
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4397
  %tobool = icmp ne %struct.device* %0, null, !dbg !4397
  %lnot = xor i1 %tobool, true, !dbg !4397
  %lnot1 = xor i1 %lnot, true, !dbg !4397
  %lnot2 = xor i1 %lnot1, true, !dbg !4397
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4397
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4397
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4398
  %tobool3 = icmp ne i32 %1, 0, !dbg !4398
  %lnot4 = xor i1 %tobool3, true, !dbg !4398
  %lnot6 = xor i1 %lnot4, true, !dbg !4398
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4398
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4398
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4398
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4397

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4398

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4400

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4402

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4400

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 224, i32 2305, i64 12) #8, !dbg !4404, !srcloc !4406
  br label %do.end11, !dbg !4404

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 248) #8, !dbg !4407, !srcloc !4409
  br label %do.body12, !dbg !4400

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4410

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4400

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4400

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4397
  %tobool15 = icmp ne i32 %2, 0, !dbg !4397
  %lnot16 = xor i1 %tobool15, true, !dbg !4397
  %lnot18 = xor i1 %lnot16, true, !dbg !4397
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4397
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4397
  store i64 %conv20, i64* %tmp, align 8, !dbg !4398
  %3 = load i64, i64* %tmp, align 8, !dbg !4397
  %tobool21 = icmp ne i64 %3, 0, !dbg !4412
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4413

if.then22:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -22) #9, !dbg !4414
  store i8* %call, i8** %retval, align 8, !dbg !4415
  br label %return, !dbg !4415

if.end23:                                         ; preds = %if.end
  %call24 = call i8* @kzalloc(i64 112, i32 3264) #9, !dbg !4416
  %4 = bitcast i8* %call24 to %struct.vb2_dma_sg_buf*, !dbg !4416
  store %struct.vb2_dma_sg_buf* %4, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4417
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4418
  %tobool25 = icmp ne %struct.vb2_dma_sg_buf* %5, null, !dbg !4418
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !4420

if.then26:                                        ; preds = %if.end23
  %call27 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4421
  store i8* %call27, i8** %retval, align 8, !dbg !4422
  br label %return, !dbg !4422

if.end28:                                         ; preds = %if.end23
  %6 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4423
  %vaddr29 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %6, i32 0, i32 1, !dbg !4424
  store i8* null, i8** %vaddr29, align 8, !dbg !4425
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4426
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4427
  %dev30 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %8, i32 0, i32 0, !dbg !4428
  store %struct.device* %7, %struct.device** %dev30, align 8, !dbg !4429
  %9 = load i32, i32* %dma_dir.addr, align 4, !dbg !4430
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4431
  %dma_dir31 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 5, !dbg !4432
  store i32 %9, i32* %dma_dir31, align 4, !dbg !4433
  %11 = load i64, i64* %vaddr.addr, align 8, !dbg !4434
  %and = and i64 %11, 4095, !dbg !4435
  %conv32 = trunc i64 %and to i32, !dbg !4434
  %12 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4436
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %12, i32 0, i32 4, !dbg !4437
  store i32 %conv32, i32* %offset, align 8, !dbg !4438
  %13 = load i64, i64* %size.addr, align 8, !dbg !4439
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4440
  %size33 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %14, i32 0, i32 8, !dbg !4441
  store i64 %13, i64* %size33, align 8, !dbg !4442
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4443
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %15, i32 0, i32 6, !dbg !4444
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4445
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 7, !dbg !4446
  store %struct.sg_table* %sg_table, %struct.sg_table** %dma_sgt, align 8, !dbg !4447
  %17 = load i64, i64* %vaddr.addr, align 8, !dbg !4448
  %18 = load i64, i64* %size.addr, align 8, !dbg !4449
  %call34 = call %struct.frame_vector* @vb2_create_framevec(i64 %17, i64 %18) #9, !dbg !4450
  store %struct.frame_vector* %call34, %struct.frame_vector** %vec, align 8, !dbg !4451
  %19 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4452
  %20 = bitcast %struct.frame_vector* %19 to i8*, !dbg !4452
  %call35 = call zeroext i1 @IS_ERR(i8* %20) #9, !dbg !4454
  br i1 %call35, label %if.then36, label %if.end37, !dbg !4455

if.then36:                                        ; preds = %if.end28
  br label %userptr_fail_pfnvec, !dbg !4456

if.end37:                                         ; preds = %if.end28
  %21 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4457
  %22 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4458
  %vec38 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %22, i32 0, i32 3, !dbg !4459
  store %struct.frame_vector* %21, %struct.frame_vector** %vec38, align 8, !dbg !4460
  %23 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4461
  %call39 = call %struct.page** @frame_vector_pages(%struct.frame_vector* %23) #9, !dbg !4462
  %24 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4463
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %24, i32 0, i32 2, !dbg !4464
  store %struct.page** %call39, %struct.page*** %pages, align 8, !dbg !4465
  %25 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4466
  %pages40 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %25, i32 0, i32 2, !dbg !4468
  %26 = load %struct.page**, %struct.page*** %pages40, align 8, !dbg !4468
  %27 = bitcast %struct.page** %26 to i8*, !dbg !4466
  %call41 = call zeroext i1 @IS_ERR(i8* %27) #9, !dbg !4469
  br i1 %call41, label %if.then42, label %if.end43, !dbg !4470

if.then42:                                        ; preds = %if.end37
  br label %userptr_fail_sgtable, !dbg !4471

if.end43:                                         ; preds = %if.end37
  %28 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4472
  %call44 = call i32 @frame_vector_count(%struct.frame_vector* %28) #9, !dbg !4473
  %29 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4474
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %29, i32 0, i32 9, !dbg !4475
  store i32 %call44, i32* %num_pages, align 8, !dbg !4476
  %30 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4477
  %dma_sgt45 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %30, i32 0, i32 7, !dbg !4479
  %31 = load %struct.sg_table*, %struct.sg_table** %dma_sgt45, align 8, !dbg !4479
  %32 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4480
  %pages46 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %32, i32 0, i32 2, !dbg !4481
  %33 = load %struct.page**, %struct.page*** %pages46, align 8, !dbg !4481
  %34 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4482
  %num_pages47 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %34, i32 0, i32 9, !dbg !4483
  %35 = load i32, i32* %num_pages47, align 8, !dbg !4483
  %36 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4484
  %offset48 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %36, i32 0, i32 4, !dbg !4485
  %37 = load i32, i32* %offset48, align 8, !dbg !4485
  %38 = load i64, i64* %size.addr, align 8, !dbg !4486
  %call49 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %31, %struct.page** %33, i32 %35, i32 %37, i64 %38, i32 0) #9, !dbg !4487
  %tobool50 = icmp ne i32 %call49, 0, !dbg !4487
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4488

if.then51:                                        ; preds = %if.end43
  br label %userptr_fail_sgtable, !dbg !4489

if.end52:                                         ; preds = %if.end43
  %39 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4490
  %sg_table53 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %39, i32 0, i32 6, !dbg !4491
  store %struct.sg_table* %sg_table53, %struct.sg_table** %sgt, align 8, !dbg !4492
  %40 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4493
  %dev54 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %40, i32 0, i32 0, !dbg !4495
  %41 = load %struct.device*, %struct.device** %dev54, align 8, !dbg !4495
  %42 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4496
  %43 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4497
  %dma_dir55 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %43, i32 0, i32 5, !dbg !4498
  %44 = load i32, i32* %dma_dir55, align 4, !dbg !4498
  %call56 = call i32 @dma_map_sgtable(%struct.device* %41, %struct.sg_table* %42, i32 %44, i64 32) #9, !dbg !4499
  %tobool57 = icmp ne i32 %call56, 0, !dbg !4499
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4500

if.then58:                                        ; preds = %if.end52
  br label %userptr_fail_map, !dbg !4501

if.end59:                                         ; preds = %if.end52
  %45 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4502
  %46 = bitcast %struct.vb2_dma_sg_buf* %45 to i8*, !dbg !4502
  store i8* %46, i8** %retval, align 8, !dbg !4503
  br label %return, !dbg !4503

userptr_fail_map:                                 ; preds = %if.then58
  call void @llvm.dbg.label(metadata !4504), !dbg !4505
  %47 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4506
  %sg_table60 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %47, i32 0, i32 6, !dbg !4507
  call void @sg_free_table(%struct.sg_table* %sg_table60) #9, !dbg !4508
  br label %userptr_fail_sgtable, !dbg !4508

userptr_fail_sgtable:                             ; preds = %userptr_fail_map, %if.then51, %if.then42
  call void @llvm.dbg.label(metadata !4509), !dbg !4510
  %48 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4511
  call void @vb2_destroy_framevec(%struct.frame_vector* %48) #9, !dbg !4512
  br label %userptr_fail_pfnvec, !dbg !4512

userptr_fail_pfnvec:                              ; preds = %userptr_fail_sgtable, %if.then36
  call void @llvm.dbg.label(metadata !4513), !dbg !4514
  %49 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4515
  %50 = bitcast %struct.vb2_dma_sg_buf* %49 to i8*, !dbg !4515
  call void @kfree(i8* %50) #9, !dbg !4516
  %call61 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4517
  store i8* %call61, i8** %retval, align 8, !dbg !4518
  br label %return, !dbg !4518

return:                                           ; preds = %userptr_fail_pfnvec, %if.end59, %if.then26, %if.then22
  %51 = load i8*, i8** %retval, align 8, !dbg !4519
  ret i8* %51, !dbg !4519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_put_userptr(i8* %buf_priv) #0 !dbg !4520 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %i = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4525
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4525
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4524
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4526, metadata !DIExpression()), !dbg !4527
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4528
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 6, !dbg !4529
  store %struct.sg_table* %sg_table, %struct.sg_table** %sgt, align 8, !dbg !4527
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4530, metadata !DIExpression()), !dbg !4531
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4532
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %3, i32 0, i32 9, !dbg !4533
  %4 = load i32, i32* %num_pages, align 8, !dbg !4533
  store i32 %4, i32* %i, align 4, !dbg !4531
  br label %do.body, !dbg !4534

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !4535
  %cmp = icmp sge i32 %5, 1, !dbg !4535
  br i1 %cmp, label %if.then, label %if.end, !dbg !4538

if.then:                                          ; preds = %do.body
  %6 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4535
  %num_pages1 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %6, i32 0, i32 9, !dbg !4535
  %7 = load i32, i32* %num_pages1, align 8, !dbg !4535
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.vb2_dma_sg_put_userptr, i64 0, i64 0), i32 %7) #10, !dbg !4535
  br label %if.end, !dbg !4535

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4538

do.end:                                           ; preds = %if.end
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4539
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %8, i32 0, i32 0, !dbg !4540
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4540
  %10 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4541
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4542
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 5, !dbg !4543
  %12 = load i32, i32* %dma_dir, align 4, !dbg !4543
  call void @dma_unmap_sgtable(%struct.device* %9, %struct.sg_table* %10, i32 %12, i64 32) #9, !dbg !4544
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4545
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 1, !dbg !4547
  %14 = load i8*, i8** %vaddr, align 8, !dbg !4547
  %tobool = icmp ne i8* %14, null, !dbg !4545
  br i1 %tobool, label %if.then2, label %if.end5, !dbg !4548

if.then2:                                         ; preds = %do.end
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4549
  %vaddr3 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %15, i32 0, i32 1, !dbg !4550
  %16 = load i8*, i8** %vaddr3, align 8, !dbg !4550
  %17 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4551
  %num_pages4 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %17, i32 0, i32 9, !dbg !4552
  %18 = load i32, i32* %num_pages4, align 8, !dbg !4552
  call void @vm_unmap_ram(i8* %16, i32 %18) #9, !dbg !4553
  br label %if.end5, !dbg !4553

if.end5:                                          ; preds = %if.then2, %do.end
  %19 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4554
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %19, i32 0, i32 7, !dbg !4555
  %20 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4555
  call void @sg_free_table(%struct.sg_table* %20) #9, !dbg !4556
  %21 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4557
  %dma_dir6 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %21, i32 0, i32 5, !dbg !4559
  %22 = load i32, i32* %dma_dir6, align 4, !dbg !4559
  %cmp7 = icmp eq i32 %22, 2, !dbg !4560
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !4561

lor.lhs.false:                                    ; preds = %if.end5
  %23 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4562
  %dma_dir8 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %23, i32 0, i32 5, !dbg !4563
  %24 = load i32, i32* %dma_dir8, align 4, !dbg !4563
  %cmp9 = icmp eq i32 %24, 0, !dbg !4564
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !4565

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  br label %while.cond, !dbg !4566

while.cond:                                       ; preds = %while.body, %if.then10
  %25 = load i32, i32* %i, align 4, !dbg !4567
  %dec = add i32 %25, -1, !dbg !4567
  store i32 %dec, i32* %i, align 4, !dbg !4567
  %cmp11 = icmp sge i32 %dec, 0, !dbg !4568
  br i1 %cmp11, label %while.body, label %while.end, !dbg !4566

while.body:                                       ; preds = %while.cond
  %26 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4569
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %26, i32 0, i32 2, !dbg !4570
  %27 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4570
  %28 = load i32, i32* %i, align 4, !dbg !4571
  %idxprom = sext i32 %28 to i64, !dbg !4569
  %arrayidx = getelementptr %struct.page*, %struct.page** %27, i64 %idxprom, !dbg !4569
  %29 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !4569
  %call12 = call i32 @set_page_dirty_lock(%struct.page* %29) #9, !dbg !4572
  br label %while.cond, !dbg !4566, !llvm.loop !4573

while.end:                                        ; preds = %while.cond
  br label %if.end13, !dbg !4566

if.end13:                                         ; preds = %while.end, %lor.lhs.false
  %30 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4575
  %vec = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %30, i32 0, i32 3, !dbg !4576
  %31 = load %struct.frame_vector*, %struct.frame_vector** %vec, align 8, !dbg !4576
  call void @vb2_destroy_framevec(%struct.frame_vector* %31) #9, !dbg !4577
  %32 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4578
  %33 = bitcast %struct.vb2_dma_sg_buf* %32 to i8*, !dbg !4578
  call void @kfree(i8* %33) #9, !dbg !4579
  ret void, !dbg !4580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_prepare(i8* %buf_priv) #0 !dbg !4581 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4582, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4584, metadata !DIExpression()), !dbg !4585
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4586
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4586
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4585
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4587, metadata !DIExpression()), !dbg !4588
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4589
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 7, !dbg !4590
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4590
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4588
  %4 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4591
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %4, i32 0, i32 0, !dbg !4592
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4592
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4593
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4594
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 5, !dbg !4595
  %8 = load i32, i32* %dma_dir, align 4, !dbg !4595
  call void @dma_sync_sgtable_for_device(%struct.device* %5, %struct.sg_table* %6, i32 %8) #9, !dbg !4596
  ret void, !dbg !4597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_finish(i8* %buf_priv) #0 !dbg !4598 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4601, metadata !DIExpression()), !dbg !4602
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4603
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4603
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4602
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4604, metadata !DIExpression()), !dbg !4605
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4606
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 7, !dbg !4607
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4607
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4605
  %4 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4608
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %4, i32 0, i32 0, !dbg !4609
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4609
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4610
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4611
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 5, !dbg !4612
  %8 = load i32, i32* %dma_dir, align 4, !dbg !4612
  call void @dma_sync_sgtable_for_cpu(%struct.device* %5, %struct.sg_table* %6, i32 %8) #9, !dbg !4613
  ret void, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_attach_dmabuf(%struct.device* %dev, %struct.dma_buf* %dbuf, i64 %size, i32 %dma_dir) #0 !dbg !4615 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %size.addr = alloca i64, align 8
  %dma_dir.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %dba = alloca %struct.dma_buf_attachment*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4616, metadata !DIExpression()), !dbg !4617
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %dba, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4628, metadata !DIExpression()), !dbg !4631
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4631
  %tobool = icmp ne %struct.device* %0, null, !dbg !4631
  %lnot = xor i1 %tobool, true, !dbg !4631
  %lnot1 = xor i1 %lnot, true, !dbg !4631
  %lnot2 = xor i1 %lnot1, true, !dbg !4631
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4631
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4631
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4632
  %tobool3 = icmp ne i32 %1, 0, !dbg !4632
  %lnot4 = xor i1 %tobool3, true, !dbg !4632
  %lnot6 = xor i1 %lnot4, true, !dbg !4632
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4632
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4632
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4632
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4631

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4632

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4634

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4636

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4634

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 607, i32 2305, i64 12) #8, !dbg !4638, !srcloc !4640
  br label %do.end11, !dbg !4638

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 256) #8, !dbg !4641, !srcloc !4643
  br label %do.body12, !dbg !4634

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4644

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4634

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4634

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4631
  %tobool15 = icmp ne i32 %2, 0, !dbg !4631
  %lnot16 = xor i1 %tobool15, true, !dbg !4631
  %lnot18 = xor i1 %lnot16, true, !dbg !4631
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4631
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4631
  store i64 %conv20, i64* %tmp, align 8, !dbg !4632
  %3 = load i64, i64* %tmp, align 8, !dbg !4631
  %tobool21 = icmp ne i64 %3, 0, !dbg !4646
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4647

if.then22:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -22) #9, !dbg !4648
  store i8* %call, i8** %retval, align 8, !dbg !4649
  br label %return, !dbg !4649

if.end23:                                         ; preds = %if.end
  %4 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4650
  %size24 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 0, !dbg !4652
  %5 = load i64, i64* %size24, align 8, !dbg !4652
  %6 = load i64, i64* %size.addr, align 8, !dbg !4653
  %cmp = icmp ult i64 %5, %6, !dbg !4654
  br i1 %cmp, label %if.then26, label %if.end28, !dbg !4655

if.then26:                                        ; preds = %if.end23
  %call27 = call i8* @ERR_PTR(i64 -14) #9, !dbg !4656
  store i8* %call27, i8** %retval, align 8, !dbg !4657
  br label %return, !dbg !4657

if.end28:                                         ; preds = %if.end23
  %call29 = call i8* @kzalloc(i64 112, i32 3264) #9, !dbg !4658
  %7 = bitcast i8* %call29 to %struct.vb2_dma_sg_buf*, !dbg !4658
  store %struct.vb2_dma_sg_buf* %7, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4659
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4660
  %tobool30 = icmp ne %struct.vb2_dma_sg_buf* %8, null, !dbg !4660
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !4662

if.then31:                                        ; preds = %if.end28
  %call32 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4663
  store i8* %call32, i8** %retval, align 8, !dbg !4664
  br label %return, !dbg !4664

if.end33:                                         ; preds = %if.end28
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4665
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4666
  %dev34 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 0, !dbg !4667
  store %struct.device* %9, %struct.device** %dev34, align 8, !dbg !4668
  %11 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !4669
  %12 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4670
  %dev35 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %12, i32 0, i32 0, !dbg !4671
  %13 = load %struct.device*, %struct.device** %dev35, align 8, !dbg !4671
  %call36 = call %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf* %11, %struct.device* %13) #9, !dbg !4672
  store %struct.dma_buf_attachment* %call36, %struct.dma_buf_attachment** %dba, align 8, !dbg !4673
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4674
  %15 = bitcast %struct.dma_buf_attachment* %14 to i8*, !dbg !4674
  %call37 = call zeroext i1 @IS_ERR(i8* %15) #9, !dbg !4676
  br i1 %call37, label %if.then38, label %if.end40, !dbg !4677

if.then38:                                        ; preds = %if.end33
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !4678
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4680
  %17 = bitcast %struct.vb2_dma_sg_buf* %16 to i8*, !dbg !4680
  call void @kfree(i8* %17) #9, !dbg !4681
  %18 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4682
  %19 = bitcast %struct.dma_buf_attachment* %18 to i8*, !dbg !4682
  store i8* %19, i8** %retval, align 8, !dbg !4683
  br label %return, !dbg !4683

if.end40:                                         ; preds = %if.end33
  %20 = load i32, i32* %dma_dir.addr, align 4, !dbg !4684
  %21 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4685
  %dma_dir41 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %21, i32 0, i32 5, !dbg !4686
  store i32 %20, i32* %dma_dir41, align 4, !dbg !4687
  %22 = load i64, i64* %size.addr, align 8, !dbg !4688
  %23 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4689
  %size42 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %23, i32 0, i32 8, !dbg !4690
  store i64 %22, i64* %size42, align 8, !dbg !4691
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dba, align 8, !dbg !4692
  %25 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4693
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %25, i32 0, i32 12, !dbg !4694
  store %struct.dma_buf_attachment* %24, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4695
  %26 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4696
  %27 = bitcast %struct.vb2_dma_sg_buf* %26 to i8*, !dbg !4696
  store i8* %27, i8** %retval, align 8, !dbg !4697
  br label %return, !dbg !4697

return:                                           ; preds = %if.end40, %if.then38, %if.then31, %if.then26, %if.then22
  %28 = load i8*, i8** %retval, align 8, !dbg !4698
  ret i8* %28, !dbg !4698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_detach_dmabuf(i8* %mem_priv) #0 !dbg !4699 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4702, metadata !DIExpression()), !dbg !4703
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4704
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4704
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4703
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4705, metadata !DIExpression()), !dbg !4708
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4708
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 7, !dbg !4708
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4708
  %tobool = icmp ne %struct.sg_table* %3, null, !dbg !4708
  %lnot = xor i1 %tobool, true, !dbg !4708
  %lnot1 = xor i1 %lnot, true, !dbg !4708
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4708
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4708
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4709
  %tobool2 = icmp ne i32 %4, 0, !dbg !4709
  %lnot3 = xor i1 %tobool2, true, !dbg !4709
  %lnot5 = xor i1 %lnot3, true, !dbg !4709
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4709
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4709
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4709
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4708

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4709

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4711

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4713

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4711

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 593, i32 2305, i64 12) #8, !dbg !4715, !srcloc !4717
  br label %do.end10, !dbg !4715

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 255) #8, !dbg !4718, !srcloc !4720
  br label %do.body11, !dbg !4711

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4721

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4711

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4711

if.end:                                           ; preds = %do.end13, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4708
  %tobool14 = icmp ne i32 %5, 0, !dbg !4708
  %lnot15 = xor i1 %tobool14, true, !dbg !4708
  %lnot17 = xor i1 %lnot15, true, !dbg !4708
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4708
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4708
  store i64 %conv19, i64* %tmp, align 8, !dbg !4709
  %6 = load i64, i64* %tmp, align 8, !dbg !4708
  %tobool20 = icmp ne i64 %6, 0, !dbg !4723
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4724

if.then21:                                        ; preds = %if.end
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4725
  %8 = bitcast %struct.vb2_dma_sg_buf* %7 to i8*, !dbg !4725
  call void @vb2_dma_sg_unmap_dmabuf(i8* %8) #9, !dbg !4726
  br label %if.end22, !dbg !4726

if.end22:                                         ; preds = %if.then21, %if.end
  %9 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4727
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %9, i32 0, i32 12, !dbg !4728
  %10 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4728
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %10, i32 0, i32 0, !dbg !4729
  %11 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4729
  %12 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4730
  %db_attach23 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %12, i32 0, i32 12, !dbg !4731
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach23, align 8, !dbg !4731
  call void @dma_buf_detach(%struct.dma_buf* %11, %struct.dma_buf_attachment* %13) #9, !dbg !4732
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4733
  %15 = bitcast %struct.vb2_dma_sg_buf* %14 to i8*, !dbg !4733
  call void @kfree(i8* %15) #9, !dbg !4734
  ret void, !dbg !4735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_map_dmabuf(i8* %mem_priv) #0 !dbg !4736 {
entry:
  %retval = alloca i32, align 4
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4741
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4741
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4740
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4744, metadata !DIExpression()), !dbg !4747
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4747
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 12, !dbg !4747
  %3 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4747
  %tobool = icmp ne %struct.dma_buf_attachment* %3, null, !dbg !4747
  %lnot = xor i1 %tobool, true, !dbg !4747
  %lnot1 = xor i1 %lnot, true, !dbg !4747
  %lnot2 = xor i1 %lnot1, true, !dbg !4747
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4747
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4747
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4748
  %tobool3 = icmp ne i32 %4, 0, !dbg !4748
  %lnot4 = xor i1 %tobool3, true, !dbg !4748
  %lnot6 = xor i1 %lnot4, true, !dbg !4748
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4748
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4748
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4748
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4747

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4748

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4750

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4752

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4750

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 541, i32 2305, i64 12) #8, !dbg !4754, !srcloc !4756
  br label %do.end11, !dbg !4754

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 251) #8, !dbg !4757, !srcloc !4759
  br label %do.body12, !dbg !4750

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4760

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4750

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4750

if.end:                                           ; preds = %do.end14, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4747
  %tobool15 = icmp ne i32 %5, 0, !dbg !4747
  %lnot16 = xor i1 %tobool15, true, !dbg !4747
  %lnot18 = xor i1 %lnot16, true, !dbg !4747
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4747
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4747
  store i64 %conv20, i64* %tmp, align 8, !dbg !4748
  %6 = load i64, i64* %tmp, align 8, !dbg !4747
  %tobool21 = icmp ne i64 %6, 0, !dbg !4762
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4763

if.then22:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !4764
  store i32 -22, i32* %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

if.end23:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on24, metadata !4767, metadata !DIExpression()), !dbg !4770
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4770
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 7, !dbg !4770
  %8 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4770
  %tobool25 = icmp ne %struct.sg_table* %8, null, !dbg !4770
  %lnot26 = xor i1 %tobool25, true, !dbg !4770
  %lnot28 = xor i1 %lnot26, true, !dbg !4770
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4770
  store i32 %lnot.ext29, i32* %__ret_warn_on24, align 4, !dbg !4770
  %9 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4771
  %tobool30 = icmp ne i32 %9, 0, !dbg !4771
  %lnot31 = xor i1 %tobool30, true, !dbg !4771
  %lnot33 = xor i1 %lnot31, true, !dbg !4771
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !4771
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !4771
  %tobool36 = icmp ne i64 %conv35, 0, !dbg !4771
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !4770

if.then37:                                        ; preds = %if.end23
  br label %do.body38, !dbg !4771

do.body38:                                        ; preds = %if.then37
  br label %do.body39, !dbg !4773

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4775

do.end40:                                         ; preds = %do.body39
  br label %do.body41, !dbg !4773

do.body41:                                        ; preds = %do.end40
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 546, i32 2305, i64 12) #8, !dbg !4777, !srcloc !4779
  br label %do.end42, !dbg !4777

do.end42:                                         ; preds = %do.body41
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #8, !dbg !4780, !srcloc !4782
  br label %do.body43, !dbg !4773

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !4783

do.end44:                                         ; preds = %do.body43
  br label %do.end45, !dbg !4773

do.end45:                                         ; preds = %do.end44
  br label %if.end46, !dbg !4773

if.end46:                                         ; preds = %do.end45, %if.end23
  %10 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4770
  %tobool48 = icmp ne i32 %10, 0, !dbg !4770
  %lnot49 = xor i1 %tobool48, true, !dbg !4770
  %lnot51 = xor i1 %lnot49, true, !dbg !4770
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !4770
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !4770
  store i64 %conv53, i64* %tmp47, align 8, !dbg !4771
  %11 = load i64, i64* %tmp47, align 8, !dbg !4770
  %tobool54 = icmp ne i64 %11, 0, !dbg !4785
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !4786

if.then55:                                        ; preds = %if.end46
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !4787
  store i32 0, i32* %retval, align 4, !dbg !4789
  br label %return, !dbg !4789

if.end57:                                         ; preds = %if.end46
  %12 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4790
  %db_attach58 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %12, i32 0, i32 12, !dbg !4791
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach58, align 8, !dbg !4791
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4792
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %14, i32 0, i32 5, !dbg !4793
  %15 = load i32, i32* %dma_dir, align 4, !dbg !4793
  %call59 = call %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment* %13, i32 %15) #9, !dbg !4794
  store %struct.sg_table* %call59, %struct.sg_table** %sgt, align 8, !dbg !4795
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4796
  %17 = bitcast %struct.sg_table* %16 to i8*, !dbg !4796
  %call60 = call zeroext i1 @IS_ERR(i8* %17) #9, !dbg !4798
  br i1 %call60, label %if.then61, label %if.end63, !dbg !4799

if.then61:                                        ; preds = %if.end57
  %call62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !4800
  store i32 -22, i32* %retval, align 4, !dbg !4802
  br label %return, !dbg !4802

if.end63:                                         ; preds = %if.end57
  %18 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4803
  %19 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4804
  %dma_sgt64 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %19, i32 0, i32 7, !dbg !4805
  store %struct.sg_table* %18, %struct.sg_table** %dma_sgt64, align 8, !dbg !4806
  %20 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4807
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %20, i32 0, i32 1, !dbg !4808
  store i8* null, i8** %vaddr, align 8, !dbg !4809
  store i32 0, i32* %retval, align 4, !dbg !4810
  br label %return, !dbg !4810

return:                                           ; preds = %if.end63, %if.then61, %if.then55, %if.then22
  %21 = load i32, i32* %retval, align 4, !dbg !4811
  ret i32 %21, !dbg !4811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_unmap_dmabuf(i8* %mem_priv) #0 !dbg !4812 {
entry:
  %mem_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store i8* %mem_priv, i8** %mem_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem_priv.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load i8*, i8** %mem_priv.addr, align 8, !dbg !4817
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4817
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4816
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !4818, metadata !DIExpression()), !dbg !4819
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4820
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 7, !dbg !4821
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4821
  store %struct.sg_table* %3, %struct.sg_table** %sgt, align 8, !dbg !4819
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4822, metadata !DIExpression()), !dbg !4825
  %4 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4825
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %4, i32 0, i32 12, !dbg !4825
  %5 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4825
  %tobool = icmp ne %struct.dma_buf_attachment* %5, null, !dbg !4825
  %lnot = xor i1 %tobool, true, !dbg !4825
  %lnot1 = xor i1 %lnot, true, !dbg !4825
  %lnot2 = xor i1 %lnot1, true, !dbg !4825
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4825
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4825
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4826
  %tobool3 = icmp ne i32 %6, 0, !dbg !4826
  %lnot4 = xor i1 %tobool3, true, !dbg !4826
  %lnot6 = xor i1 %lnot4, true, !dbg !4826
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4826
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4826
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4826
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4826

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4828

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4830

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4828

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 569, i32 2305, i64 12) #8, !dbg !4832, !srcloc !4834
  br label %do.end11, !dbg !4832

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 253) #8, !dbg !4835, !srcloc !4837
  br label %do.body12, !dbg !4828

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4838

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4828

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %do.end14, %entry
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4825
  %tobool15 = icmp ne i32 %7, 0, !dbg !4825
  %lnot16 = xor i1 %tobool15, true, !dbg !4825
  %lnot18 = xor i1 %lnot16, true, !dbg !4825
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4825
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4825
  store i64 %conv20, i64* %tmp, align 8, !dbg !4826
  %8 = load i64, i64* %tmp, align 8, !dbg !4825
  %tobool21 = icmp ne i64 %8, 0, !dbg !4840
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4841

if.then22:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !4842
  br label %return, !dbg !4844

if.end23:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on24, metadata !4845, metadata !DIExpression()), !dbg !4848
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4848
  %tobool25 = icmp ne %struct.sg_table* %9, null, !dbg !4848
  %lnot26 = xor i1 %tobool25, true, !dbg !4848
  %lnot28 = xor i1 %lnot26, true, !dbg !4848
  %lnot30 = xor i1 %lnot28, true, !dbg !4848
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4848
  store i32 %lnot.ext31, i32* %__ret_warn_on24, align 4, !dbg !4848
  %10 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4849
  %tobool32 = icmp ne i32 %10, 0, !dbg !4849
  %lnot33 = xor i1 %tobool32, true, !dbg !4849
  %lnot35 = xor i1 %lnot33, true, !dbg !4849
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !4849
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !4849
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !4849
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !4848

if.then39:                                        ; preds = %if.end23
  br label %do.body40, !dbg !4849

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !4851

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4853

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !4851

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 574, i32 2305, i64 12) #8, !dbg !4855, !srcloc !4857
  br label %do.end44, !dbg !4855

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 254) #8, !dbg !4858, !srcloc !4860
  br label %do.body45, !dbg !4851

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4861

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !4851

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !4851

if.end48:                                         ; preds = %do.end47, %if.end23
  %11 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4848
  %tobool50 = icmp ne i32 %11, 0, !dbg !4848
  %lnot51 = xor i1 %tobool50, true, !dbg !4848
  %lnot53 = xor i1 %lnot51, true, !dbg !4848
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !4848
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !4848
  store i64 %conv55, i64* %tmp49, align 8, !dbg !4849
  %12 = load i64, i64* %tmp49, align 8, !dbg !4848
  %tobool56 = icmp ne i64 %12, 0, !dbg !4863
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !4864

if.then57:                                        ; preds = %if.end48
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !4865
  br label %return, !dbg !4867

if.end59:                                         ; preds = %if.end48
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4868
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 1, !dbg !4870
  %14 = load i8*, i8** %vaddr, align 8, !dbg !4870
  %tobool60 = icmp ne i8* %14, null, !dbg !4868
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !4871

if.then61:                                        ; preds = %if.end59
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4872
  %db_attach62 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %15, i32 0, i32 12, !dbg !4874
  %16 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach62, align 8, !dbg !4874
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %16, i32 0, i32 0, !dbg !4875
  %17 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4875
  %18 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4876
  %vaddr63 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %18, i32 0, i32 1, !dbg !4877
  %19 = load i8*, i8** %vaddr63, align 8, !dbg !4877
  call void @dma_buf_vunmap(%struct.dma_buf* %17, i8* %19) #9, !dbg !4878
  %20 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4879
  %vaddr64 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %20, i32 0, i32 1, !dbg !4880
  store i8* null, i8** %vaddr64, align 8, !dbg !4881
  br label %if.end65, !dbg !4882

if.end65:                                         ; preds = %if.then61, %if.end59
  %21 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4883
  %db_attach66 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %21, i32 0, i32 12, !dbg !4884
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach66, align 8, !dbg !4884
  %23 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !4885
  %24 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4886
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %24, i32 0, i32 5, !dbg !4887
  %25 = load i32, i32* %dma_dir, align 4, !dbg !4887
  call void @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %22, %struct.sg_table* %23, i32 %25) #9, !dbg !4888
  %26 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4889
  %dma_sgt67 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %26, i32 0, i32 7, !dbg !4890
  store %struct.sg_table* null, %struct.sg_table** %dma_sgt67, align 8, !dbg !4891
  br label %return, !dbg !4892

return:                                           ; preds = %if.end65, %if.then57, %if.then22
  ret void, !dbg !4892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_vaddr(i8* %buf_priv) #0 !dbg !4893 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4896, metadata !DIExpression()), !dbg !4897
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4898
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4898
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4897
  br label %do.body, !dbg !4899

do.body:                                          ; preds = %entry
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4900
  %tobool = icmp ne %struct.vb2_dma_sg_buf* %2, null, !dbg !4900
  %lnot = xor i1 %tobool, true, !dbg !4900
  %lnot1 = xor i1 %lnot, true, !dbg !4900
  %lnot2 = xor i1 %lnot1, true, !dbg !4900
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4900
  %conv = sext i32 %lnot.ext to i64, !dbg !4900
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4900
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4903

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4900

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4904

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4906

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4904

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 299, i32 0, i64 12) #8, !dbg !4908, !srcloc !4910
  br label %do.end7, !dbg !4908

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4904

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 249) #8, !dbg !4911, !srcloc !4914
  unreachable, !dbg !4915

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !4904

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !4904

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !4903

do.end11:                                         ; preds = %if.end
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4916
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %3, i32 0, i32 1, !dbg !4918
  %4 = load i8*, i8** %vaddr, align 8, !dbg !4918
  %tobool12 = icmp ne i8* %4, null, !dbg !4916
  br i1 %tobool12, label %if.end21, label %if.then13, !dbg !4919

if.then13:                                        ; preds = %do.end11
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4920
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %5, i32 0, i32 12, !dbg !4923
  %6 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach, align 8, !dbg !4923
  %tobool14 = icmp ne %struct.dma_buf_attachment* %6, null, !dbg !4920
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4924

if.then15:                                        ; preds = %if.then13
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4925
  %db_attach16 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 12, !dbg !4926
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach16, align 8, !dbg !4926
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %8, i32 0, i32 0, !dbg !4927
  %9 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !4927
  %call = call i8* @dma_buf_vmap(%struct.dma_buf* %9) #9, !dbg !4928
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4929
  %vaddr17 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 1, !dbg !4930
  store i8* %call, i8** %vaddr17, align 8, !dbg !4931
  br label %if.end20, !dbg !4929

if.else:                                          ; preds = %if.then13
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4932
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 2, !dbg !4933
  %12 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4933
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4934
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 9, !dbg !4935
  %14 = load i32, i32* %num_pages, align 8, !dbg !4935
  %call18 = call i8* @vm_map_ram(%struct.page** %12, i32 %14, i32 -1) #9, !dbg !4936
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4937
  %vaddr19 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %15, i32 0, i32 1, !dbg !4938
  store i8* %call18, i8** %vaddr19, align 8, !dbg !4939
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  br label %if.end21, !dbg !4940

if.end21:                                         ; preds = %if.end20, %do.end11
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4941
  %vaddr22 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 1, !dbg !4942
  %17 = load i8*, i8** %vaddr22, align 8, !dbg !4942
  %tobool23 = icmp ne i8* %17, null, !dbg !4941
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !4941

cond.true:                                        ; preds = %if.end21
  %18 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4943
  %vaddr24 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %18, i32 0, i32 1, !dbg !4944
  %19 = load i8*, i8** %vaddr24, align 8, !dbg !4944
  %20 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4945
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %20, i32 0, i32 4, !dbg !4946
  %21 = load i32, i32* %offset, align 8, !dbg !4946
  %idx.ext = sext i32 %21 to i64, !dbg !4947
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext, !dbg !4947
  br label %cond.end, !dbg !4941

cond.false:                                       ; preds = %if.end21
  br label %cond.end, !dbg !4941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ], !dbg !4941
  ret i8* %cond, !dbg !4948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_cookie(i8* %buf_priv) #0 !dbg !4949 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4954
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4954
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4953
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4955
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 7, !dbg !4956
  %3 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !4956
  %4 = bitcast %struct.sg_table* %3 to i8*, !dbg !4955
  ret i8* %4, !dbg !4957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_num_users(i8* %buf_priv) #0 !dbg !4958 {
entry:
  %buf_priv.addr = alloca i8*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4963
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4963
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4962
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4964
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %2, i32 0, i32 10, !dbg !4965
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #9, !dbg !4966
  ret i32 %call, !dbg !4967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_mmap(i8* %buf_priv, %struct.vm_area_struct* %vma) #0 !dbg !4968 {
entry:
  %retval = alloca i32, align 4
  %buf_priv.addr = alloca i8*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %err = alloca i32, align 4
  store i8* %buf_priv, i8** %buf_priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_priv.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load i8*, i8** %buf_priv.addr, align 8, !dbg !4975
  %1 = bitcast i8* %0 to %struct.vb2_dma_sg_buf*, !dbg !4975
  store %struct.vb2_dma_sg_buf* %1, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4974
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4976, metadata !DIExpression()), !dbg !4977
  %2 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4978
  %tobool = icmp ne %struct.vb2_dma_sg_buf* %2, null, !dbg !4978
  br i1 %tobool, label %if.end, label %if.then, !dbg !4980

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !4981
  store i32 -22, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

if.end:                                           ; preds = %entry
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4984
  %4 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4985
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %4, i32 0, i32 2, !dbg !4986
  %5 = load %struct.page**, %struct.page*** %pages, align 8, !dbg !4986
  %6 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4987
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %6, i32 0, i32 9, !dbg !4988
  %7 = load i32, i32* %num_pages, align 8, !dbg !4988
  %conv = zext i32 %7 to i64, !dbg !4987
  %call1 = call i32 @vm_map_pages(%struct.vm_area_struct* %3, %struct.page** %5, i64 %conv) #9, !dbg !4989
  store i32 %call1, i32* %err, align 4, !dbg !4990
  %8 = load i32, i32* %err, align 4, !dbg !4991
  %tobool2 = icmp ne i32 %8, 0, !dbg !4991
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4993

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %err, align 4, !dbg !4994
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %9) #10, !dbg !4996
  %10 = load i32, i32* %err, align 4, !dbg !4997
  store i32 %10, i32* %retval, align 4, !dbg !4998
  br label %return, !dbg !4998

if.end5:                                          ; preds = %if.end
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !4999
  %handler = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 11, !dbg !5000
  %12 = bitcast %struct.vb2_vmarea_handler* %handler to i8*, !dbg !5001
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5002
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 15, !dbg !5003
  store i8* %12, i8** %vm_private_data, align 8, !dbg !5004
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5005
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 12, !dbg !5006
  store %struct.vm_operations_struct* @vb2_common_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8, !dbg !5007
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5008
  %vm_ops6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 12, !dbg !5009
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops6, align 8, !dbg !5009
  %open = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %16, i32 0, i32 0, !dbg !5010
  %17 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open, align 8, !dbg !5010
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5011
  call void %17(%struct.vm_area_struct* %18) #9, !dbg !5008
  store i32 0, i32* %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5013
  ret i32 %19, !dbg !5013
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5014 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = load i64, i64* %error.addr, align 8, !dbg !5020
  %1 = inttoptr i64 %0 to i8*, !dbg !5021
  ret i8* %1, !dbg !5022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5023 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5026, metadata !DIExpression()), !dbg !5030
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5036, metadata !DIExpression()), !dbg !5037
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5038, metadata !DIExpression()), !dbg !5039
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5040, metadata !DIExpression()), !dbg !5041
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5042, metadata !DIExpression()), !dbg !5046
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5048, metadata !DIExpression()), !dbg !5052
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5054, metadata !DIExpression()), !dbg !5058
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5063, metadata !DIExpression()), !dbg !5064
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5065, metadata !DIExpression()), !dbg !5066
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5067, metadata !DIExpression()), !dbg !5068
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5069, metadata !DIExpression()), !dbg !5070
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5071, metadata !DIExpression()), !dbg !5072
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5073, metadata !DIExpression()), !dbg !5074
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5075, metadata !DIExpression()), !dbg !5076
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5077, metadata !DIExpression()), !dbg !5078
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = load i64, i64* %size.addr, align 8, !dbg !5083
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5084
  %or = or i32 %1, 256, !dbg !5085
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5086
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !5087
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5088

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5089
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5090
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5091

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5092
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5093
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5094
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5095
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5072
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5096
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5097
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5098
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5099
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5100
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5101
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5102
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5102
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5102
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5102
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5102
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5103
  br label %kmalloc.exit, !dbg !5103

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5104
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5105
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5105
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5107

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5108
  br label %kmalloc_index.exit.i, !dbg !5108

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5109
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5111
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5112

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5113
  br label %kmalloc_index.exit.i, !dbg !5113

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5114
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5116
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5117

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5118
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5119
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5120

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5124
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5125

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5126
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5127
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5128

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5129
  br label %kmalloc_index.exit.i, !dbg !5129

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5132
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5133

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5134
  br label %kmalloc_index.exit.i, !dbg !5134

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5135
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5137
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5138

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5139
  br label %kmalloc_index.exit.i, !dbg !5139

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5140
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5142
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5143

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5144
  br label %kmalloc_index.exit.i, !dbg !5144

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5145
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5147
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5148

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5149
  br label %kmalloc_index.exit.i, !dbg !5149

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5150
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5152
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5153

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5154
  br label %kmalloc_index.exit.i, !dbg !5154

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5155
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5157
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5158

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5159
  br label %kmalloc_index.exit.i, !dbg !5159

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5160
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5162
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5163

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5164
  br label %kmalloc_index.exit.i, !dbg !5164

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5165
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5167
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5168

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5169
  br label %kmalloc_index.exit.i, !dbg !5169

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5170
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5172
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5173

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5174
  br label %kmalloc_index.exit.i, !dbg !5174

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5175
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5177
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5178

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5179
  br label %kmalloc_index.exit.i, !dbg !5179

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5180
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5182
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5183

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5184
  br label %kmalloc_index.exit.i, !dbg !5184

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5185
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5187
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5188

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5189
  br label %kmalloc_index.exit.i, !dbg !5189

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5190
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5192
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5193

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5194
  br label %kmalloc_index.exit.i, !dbg !5194

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5195
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5197
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5198

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5199
  br label %kmalloc_index.exit.i, !dbg !5199

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5200
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5202
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5203

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5204
  br label %kmalloc_index.exit.i, !dbg !5204

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5205
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5207
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5208

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5209
  br label %kmalloc_index.exit.i, !dbg !5209

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5210
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5212
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5213

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5214
  br label %kmalloc_index.exit.i, !dbg !5214

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5215
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5217
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5218

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5219
  br label %kmalloc_index.exit.i, !dbg !5219

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5220
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5222
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5223

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5224
  br label %kmalloc_index.exit.i, !dbg !5224

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5225
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5227
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5228

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5229
  br label %kmalloc_index.exit.i, !dbg !5229

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5230
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5232
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5233

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5234
  br label %kmalloc_index.exit.i, !dbg !5234

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5235
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5237
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5238

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5239
  br label %kmalloc_index.exit.i, !dbg !5239

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5240
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5242
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5243

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5244
  br label %kmalloc_index.exit.i, !dbg !5244

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5247
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5248

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5249
  br label %kmalloc_index.exit.i, !dbg !5249

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5250, !srcloc !5253
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 226) #8, !dbg !5254, !srcloc !5257
  unreachable, !dbg !5258

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5259
  store i32 %45, i32* %index.i, align 4, !dbg !5260
  %46 = load i32, i32* %index.i, align 4, !dbg !5261
  %tobool.i = icmp ne i32 %46, 0, !dbg !5261
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5263

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5264
  br label %kmalloc.exit, !dbg !5264

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5265
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5266
  %and.i.i = and i32 %48, 17, !dbg !5266
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5266
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5266
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5266
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5266
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5268

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5269
  br label %kmalloc_type.exit.i, !dbg !5269

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5270
  %and2.i.i = and i32 %49, 1, !dbg !5271
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5270
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5270
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5270
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5272
  br label %kmalloc_type.exit.i, !dbg !5272

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5273
  %idxprom.i = zext i32 %51 to i64, !dbg !5274
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5274
  %52 = load i32, i32* %index.i, align 4, !dbg !5275
  %idxprom6.i = zext i32 %52 to i64, !dbg !5274
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5274
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5274
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5276
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5277
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5278
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5279
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5280
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5280
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5280
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5280
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5280
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5041
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5281
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5282
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5283
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5284
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5285
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5286
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5287
  store i8* %62, i8** %retval.i, align 8, !dbg !5288
  br label %kmalloc.exit, !dbg !5288

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5289
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5290
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5291
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5291
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5291
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5291
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5291
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5292
  br label %kmalloc.exit, !dbg !5292

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5293
  ret i8* %65, !dbg !5294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kvmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5295 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5304, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5306, metadata !DIExpression()), !dbg !5309
  %0 = load i64, i64* %n.addr, align 8, !dbg !5309
  store i64 %0, i64* %__a, align 8, !dbg !5309
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5310, metadata !DIExpression()), !dbg !5309
  %1 = load i64, i64* %size.addr, align 8, !dbg !5309
  store i64 %1, i64* %__b, align 8, !dbg !5309
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5311, metadata !DIExpression()), !dbg !5309
  store i64* %bytes, i64** %__d, align 8, !dbg !5309
  %cmp = icmp eq i64* %__a, %__b, !dbg !5309
  %conv = zext i1 %cmp to i32, !dbg !5309
  %2 = load i64*, i64** %__d, align 8, !dbg !5309
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5309
  %conv2 = zext i1 %cmp1 to i32, !dbg !5309
  %3 = load i64, i64* %__a, align 8, !dbg !5309
  %4 = load i64, i64* %__b, align 8, !dbg !5309
  %5 = load i64*, i64** %__d, align 8, !dbg !5309
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5309
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5309
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5309
  store i64 %8, i64* %5, align 8, !dbg !5309
  %frombool = zext i1 %7 to i8, !dbg !5309
  store i8 %frombool, i8* %tmp, align 1, !dbg !5309
  %9 = load i8, i8* %tmp, align 1, !dbg !5309
  %tobool = trunc i8 %9 to i1, !dbg !5309
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !5313
  %lnot = xor i1 %call, true, !dbg !5313
  %lnot3 = xor i1 %lnot, true, !dbg !5313
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5313
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5313
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5313
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5314

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5315
  br label %return, !dbg !5315

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %bytes, align 8, !dbg !5316
  %11 = load i32, i32* %flags.addr, align 4, !dbg !5317
  %call6 = call i8* @kvmalloc(i64 %10, i32 %11) #9, !dbg !5318
  store i8* %call6, i8** %retval, align 8, !dbg !5319
  br label %return, !dbg !5319

return:                                           ; preds = %if.end, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !5320
  ret i8* %12, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_alloc_compacted(%struct.vb2_dma_sg_buf* %buf, i32 %gfp_flags) #0 !dbg !5321 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.vb2_dma_sg_buf*, align 8
  %gfp_flags.addr = alloca i32, align 4
  %last_page = alloca i32, align 4
  %size = alloca i64, align 8
  %pages = alloca %struct.page*, align 8
  %order = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.vb2_dma_sg_buf* %buf, %struct.vb2_dma_sg_buf** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 %gfp_flags, i32* %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_flags.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.declare(metadata i32* %last_page, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i32 0, i32* %last_page, align 4, !dbg !5329
  call void @llvm.dbg.declare(metadata i64* %size, metadata !5330, metadata !DIExpression()), !dbg !5331
  %0 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf.addr, align 8, !dbg !5332
  %size1 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %0, i32 0, i32 8, !dbg !5333
  %1 = load i64, i64* %size1, align 8, !dbg !5333
  store i64 %1, i64* %size, align 8, !dbg !5331
  br label %while.cond, !dbg !5334

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i64, i64* %size, align 8, !dbg !5335
  %cmp = icmp ugt i64 %2, 0, !dbg !5336
  br i1 %cmp, label %while.body, label %while.end29, !dbg !5334

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.page** %pages, metadata !5337, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %order, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5342, metadata !DIExpression()), !dbg !5343
  %3 = load i64, i64* %size, align 8, !dbg !5344
  %call = call i32 @get_order(i64 %3) #11, !dbg !5345
  store i32 %call, i32* %order, align 4, !dbg !5346
  %4 = load i32, i32* %order, align 4, !dbg !5347
  %sh_prom = zext i32 %4 to i64, !dbg !5349
  %shl = shl i64 4096, %sh_prom, !dbg !5349
  %5 = load i64, i64* %size, align 8, !dbg !5350
  %cmp2 = icmp ugt i64 %shl, %5, !dbg !5351
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5352

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %order, align 4, !dbg !5353
  %dec = add i32 %6, -1, !dbg !5353
  store i32 %dec, i32* %order, align 4, !dbg !5353
  br label %if.end, !dbg !5354

if.end:                                           ; preds = %if.then, %while.body
  store %struct.page* null, %struct.page** %pages, align 8, !dbg !5355
  br label %while.cond3, !dbg !5356

while.cond3:                                      ; preds = %if.end16, %if.end
  %7 = load %struct.page*, %struct.page** %pages, align 8, !dbg !5357
  %tobool = icmp ne %struct.page* %7, null, !dbg !5358
  %lnot = xor i1 %tobool, true, !dbg !5358
  br i1 %lnot, label %while.body4, label %while.end18, !dbg !5356

while.body4:                                      ; preds = %while.cond3
  %8 = load i32, i32* %gfp_flags.addr, align 4, !dbg !5359
  %or = or i32 11712, %8, !dbg !5361
  %9 = load i32, i32* %order, align 4, !dbg !5362
  %call5 = call %struct.page* @alloc_pages(i32 %or, i32 %9) #9, !dbg !5363
  store %struct.page* %call5, %struct.page** %pages, align 8, !dbg !5364
  %10 = load %struct.page*, %struct.page** %pages, align 8, !dbg !5365
  %tobool6 = icmp ne %struct.page* %10, null, !dbg !5365
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5367

if.then7:                                         ; preds = %while.body4
  br label %while.end18, !dbg !5368

if.end8:                                          ; preds = %while.body4
  %11 = load i32, i32* %order, align 4, !dbg !5369
  %cmp9 = icmp eq i32 %11, 0, !dbg !5371
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !5372

if.then10:                                        ; preds = %if.end8
  br label %while.cond11, !dbg !5373

while.cond11:                                     ; preds = %while.body14, %if.then10
  %12 = load i32, i32* %last_page, align 4, !dbg !5375
  %dec12 = add i32 %12, -1, !dbg !5375
  store i32 %dec12, i32* %last_page, align 4, !dbg !5375
  %tobool13 = icmp ne i32 %12, 0, !dbg !5373
  br i1 %tobool13, label %while.body14, label %while.end, !dbg !5373

while.body14:                                     ; preds = %while.cond11
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf.addr, align 8, !dbg !5376
  %pages15 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 2, !dbg !5376
  %14 = load %struct.page**, %struct.page*** %pages15, align 8, !dbg !5376
  %15 = load i32, i32* %last_page, align 4, !dbg !5376
  %idxprom = zext i32 %15 to i64, !dbg !5376
  %arrayidx = getelementptr %struct.page*, %struct.page** %14, i64 %idxprom, !dbg !5376
  %16 = load %struct.page*, %struct.page** %arrayidx, align 8, !dbg !5376
  call void @__free_pages(%struct.page* %16, i32 0) #9, !dbg !5376
  br label %while.cond11, !dbg !5373, !llvm.loop !5377

while.end:                                        ; preds = %while.cond11
  store i32 -12, i32* %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

if.end16:                                         ; preds = %if.end8
  %17 = load i32, i32* %order, align 4, !dbg !5379
  %dec17 = add i32 %17, -1, !dbg !5379
  store i32 %dec17, i32* %order, align 4, !dbg !5379
  br label %while.cond3, !dbg !5356, !llvm.loop !5380

while.end18:                                      ; preds = %if.then7, %while.cond3
  %18 = load %struct.page*, %struct.page** %pages, align 8, !dbg !5382
  %19 = load i32, i32* %order, align 4, !dbg !5383
  call void @split_page(%struct.page* %18, i32 %19) #9, !dbg !5384
  store i32 0, i32* %i, align 4, !dbg !5385
  br label %for.cond, !dbg !5387

for.cond:                                         ; preds = %for.inc, %while.end18
  %20 = load i32, i32* %i, align 4, !dbg !5388
  %21 = load i32, i32* %order, align 4, !dbg !5390
  %shl19 = shl i32 1, %21, !dbg !5391
  %cmp20 = icmp slt i32 %20, %shl19, !dbg !5392
  br i1 %cmp20, label %for.body, label %for.end, !dbg !5393

for.body:                                         ; preds = %for.cond
  %22 = load %struct.page*, %struct.page** %pages, align 8, !dbg !5394
  %23 = load i32, i32* %i, align 4, !dbg !5395
  %idxprom21 = sext i32 %23 to i64, !dbg !5394
  %arrayidx22 = getelementptr %struct.page, %struct.page* %22, i64 %idxprom21, !dbg !5394
  %24 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf.addr, align 8, !dbg !5396
  %pages23 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %24, i32 0, i32 2, !dbg !5397
  %25 = load %struct.page**, %struct.page*** %pages23, align 8, !dbg !5397
  %26 = load i32, i32* %last_page, align 4, !dbg !5398
  %inc = add i32 %26, 1, !dbg !5398
  store i32 %inc, i32* %last_page, align 4, !dbg !5398
  %idxprom24 = zext i32 %26 to i64, !dbg !5396
  %arrayidx25 = getelementptr %struct.page*, %struct.page** %25, i64 %idxprom24, !dbg !5396
  store %struct.page* %arrayidx22, %struct.page** %arrayidx25, align 8, !dbg !5399
  br label %for.inc, !dbg !5396

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !5400
  %inc26 = add i32 %27, 1, !dbg !5400
  store i32 %inc26, i32* %i, align 4, !dbg !5400
  br label %for.cond, !dbg !5401, !llvm.loop !5402

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %order, align 4, !dbg !5404
  %sh_prom27 = zext i32 %28 to i64, !dbg !5405
  %shl28 = shl i64 4096, %sh_prom27, !dbg !5405
  %29 = load i64, i64* %size, align 8, !dbg !5406
  %sub = sub i64 %29, %shl28, !dbg !5406
  store i64 %sub, i64* %size, align 8, !dbg !5406
  br label %while.cond, !dbg !5334, !llvm.loop !5407

while.end29:                                      ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

return:                                           ; preds = %while.end29, %while.end
  %30 = load i32, i32* %retval, align 4, !dbg !5410
  ret i32 %30, !dbg !5410
}

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i64, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_map_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !5411 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %nents = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.declare(metadata i32* %nents, metadata !5423, metadata !DIExpression()), !dbg !5424
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5425
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5426
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !5427
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5427
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5428
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !5429
  %4 = load i32, i32* %orig_nents, align 4, !dbg !5429
  %5 = load i32, i32* %dir.addr, align 4, !dbg !5430
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !5431
  %call = call i32 @dma_map_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #9, !dbg !5432
  store i32 %call, i32* %nents, align 4, !dbg !5433
  %7 = load i32, i32* %nents, align 4, !dbg !5434
  %cmp = icmp sle i32 %7, 0, !dbg !5436
  br i1 %cmp, label %if.then, label %if.end, !dbg !5437

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5438
  br label %return, !dbg !5438

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %nents, align 4, !dbg !5439
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5440
  %nents1 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1, !dbg !5441
  store i32 %8, i32* %nents1, align 8, !dbg !5442
  store i32 0, i32* %retval, align 4, !dbg !5443
  br label %return, !dbg !5443

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5444
  ret i32 %10, !dbg !5444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !5445 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5448, metadata !DIExpression()), !dbg !5454
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5459, metadata !DIExpression()), !dbg !5460
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5461, metadata !DIExpression()), !dbg !5469
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5471, metadata !DIExpression()), !dbg !5472
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5473, metadata !DIExpression()), !dbg !5474
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5475, metadata !DIExpression()), !dbg !5476
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5481
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5482
  %1 = load i32, i32* %n.addr, align 4, !dbg !5483
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5484
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5484
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5485
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5486
  %conv.i.i = trunc i64 %5 to i32, !dbg !5486
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5487
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5488
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5488
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !5488
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5489
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5490
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5491
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5491
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5491
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5491
  ret void, !dbg !5493
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @sg_free_table(%struct.sg_table*) #2

; Function Attrs: noredzone
declare dso_local void @__free_pages(%struct.page*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5494 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5498, metadata !DIExpression()), !dbg !5503
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5505, metadata !DIExpression()), !dbg !5506
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  %0 = load i64, i64* %size.addr, align 8, !dbg !5509
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5511
  br i1 %1, label %if.then, label %if.end447, !dbg !5512

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5513
  %tobool = icmp ne i64 %2, 0, !dbg !5513
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5516

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5517
  br label %return, !dbg !5517

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5518
  %cmp = icmp ult i64 %3, 4096, !dbg !5520
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5521

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5522
  br label %return, !dbg !5522

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub = sub i64 %4, 1, !dbg !5523
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5523
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5523

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub4 = sub i64 %6, 1, !dbg !5523
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5523
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5523

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub6 = sub i64 %8, 1, !dbg !5523
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5523
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5523

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5523

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub9 = sub i64 %9, 1, !dbg !5523
  %and = and i64 %sub9, -9223372036854775808, !dbg !5523
  %tobool10 = icmp ne i64 %and, 0, !dbg !5523
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5523

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5523

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub13 = sub i64 %10, 1, !dbg !5523
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5523
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5523
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5523

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5523

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub18 = sub i64 %11, 1, !dbg !5523
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5523
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5523
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5523

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5523

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub23 = sub i64 %12, 1, !dbg !5523
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5523
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5523
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5523

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5523

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub28 = sub i64 %13, 1, !dbg !5523
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5523
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5523
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5523

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5523

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub33 = sub i64 %14, 1, !dbg !5523
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5523
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5523
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5523

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5523

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub38 = sub i64 %15, 1, !dbg !5523
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5523
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5523
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5523

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5523

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub43 = sub i64 %16, 1, !dbg !5523
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5523
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5523
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5523

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5523

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub48 = sub i64 %17, 1, !dbg !5523
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5523
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5523
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5523

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5523

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub53 = sub i64 %18, 1, !dbg !5523
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5523
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5523
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5523

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5523

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub58 = sub i64 %19, 1, !dbg !5523
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5523
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5523
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5523

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5523

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub63 = sub i64 %20, 1, !dbg !5523
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5523
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5523
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5523

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5523

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub68 = sub i64 %21, 1, !dbg !5523
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5523
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5523
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5523

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5523

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub73 = sub i64 %22, 1, !dbg !5523
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5523
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5523
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5523

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5523

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub78 = sub i64 %23, 1, !dbg !5523
  %and79 = and i64 %sub78, 562949953421312, !dbg !5523
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5523
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5523

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5523

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub83 = sub i64 %24, 1, !dbg !5523
  %and84 = and i64 %sub83, 281474976710656, !dbg !5523
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5523
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5523

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5523

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub88 = sub i64 %25, 1, !dbg !5523
  %and89 = and i64 %sub88, 140737488355328, !dbg !5523
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5523
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5523

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5523

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub93 = sub i64 %26, 1, !dbg !5523
  %and94 = and i64 %sub93, 70368744177664, !dbg !5523
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5523
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5523

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5523

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub98 = sub i64 %27, 1, !dbg !5523
  %and99 = and i64 %sub98, 35184372088832, !dbg !5523
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5523
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5523

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5523

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub103 = sub i64 %28, 1, !dbg !5523
  %and104 = and i64 %sub103, 17592186044416, !dbg !5523
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5523
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5523

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5523

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub108 = sub i64 %29, 1, !dbg !5523
  %and109 = and i64 %sub108, 8796093022208, !dbg !5523
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5523
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5523

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5523

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub113 = sub i64 %30, 1, !dbg !5523
  %and114 = and i64 %sub113, 4398046511104, !dbg !5523
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5523
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5523

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5523

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub118 = sub i64 %31, 1, !dbg !5523
  %and119 = and i64 %sub118, 2199023255552, !dbg !5523
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5523
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5523

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5523

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub123 = sub i64 %32, 1, !dbg !5523
  %and124 = and i64 %sub123, 1099511627776, !dbg !5523
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5523
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5523

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5523

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub128 = sub i64 %33, 1, !dbg !5523
  %and129 = and i64 %sub128, 549755813888, !dbg !5523
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5523
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5523

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5523

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub133 = sub i64 %34, 1, !dbg !5523
  %and134 = and i64 %sub133, 274877906944, !dbg !5523
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5523
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5523

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5523

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub138 = sub i64 %35, 1, !dbg !5523
  %and139 = and i64 %sub138, 137438953472, !dbg !5523
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5523
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5523

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5523

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub143 = sub i64 %36, 1, !dbg !5523
  %and144 = and i64 %sub143, 68719476736, !dbg !5523
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5523
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5523

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5523

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub148 = sub i64 %37, 1, !dbg !5523
  %and149 = and i64 %sub148, 34359738368, !dbg !5523
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5523
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5523

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5523

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub153 = sub i64 %38, 1, !dbg !5523
  %and154 = and i64 %sub153, 17179869184, !dbg !5523
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5523
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5523

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5523

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub158 = sub i64 %39, 1, !dbg !5523
  %and159 = and i64 %sub158, 8589934592, !dbg !5523
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5523
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5523

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5523

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub163 = sub i64 %40, 1, !dbg !5523
  %and164 = and i64 %sub163, 4294967296, !dbg !5523
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5523
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5523

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5523

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub168 = sub i64 %41, 1, !dbg !5523
  %and169 = and i64 %sub168, 2147483648, !dbg !5523
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5523
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5523

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5523

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub173 = sub i64 %42, 1, !dbg !5523
  %and174 = and i64 %sub173, 1073741824, !dbg !5523
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5523
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5523

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5523

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub178 = sub i64 %43, 1, !dbg !5523
  %and179 = and i64 %sub178, 536870912, !dbg !5523
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5523
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5523

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5523

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub183 = sub i64 %44, 1, !dbg !5523
  %and184 = and i64 %sub183, 268435456, !dbg !5523
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5523
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5523

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5523

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub188 = sub i64 %45, 1, !dbg !5523
  %and189 = and i64 %sub188, 134217728, !dbg !5523
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5523
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5523

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5523

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub193 = sub i64 %46, 1, !dbg !5523
  %and194 = and i64 %sub193, 67108864, !dbg !5523
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5523
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5523

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5523

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub198 = sub i64 %47, 1, !dbg !5523
  %and199 = and i64 %sub198, 33554432, !dbg !5523
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5523
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5523

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5523

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub203 = sub i64 %48, 1, !dbg !5523
  %and204 = and i64 %sub203, 16777216, !dbg !5523
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5523
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5523

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5523

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub208 = sub i64 %49, 1, !dbg !5523
  %and209 = and i64 %sub208, 8388608, !dbg !5523
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5523
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5523

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5523

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub213 = sub i64 %50, 1, !dbg !5523
  %and214 = and i64 %sub213, 4194304, !dbg !5523
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5523
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5523

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5523

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub218 = sub i64 %51, 1, !dbg !5523
  %and219 = and i64 %sub218, 2097152, !dbg !5523
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5523
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5523

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5523

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub223 = sub i64 %52, 1, !dbg !5523
  %and224 = and i64 %sub223, 1048576, !dbg !5523
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5523
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5523

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5523

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub228 = sub i64 %53, 1, !dbg !5523
  %and229 = and i64 %sub228, 524288, !dbg !5523
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5523
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5523

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5523

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub233 = sub i64 %54, 1, !dbg !5523
  %and234 = and i64 %sub233, 262144, !dbg !5523
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5523
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5523

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5523

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub238 = sub i64 %55, 1, !dbg !5523
  %and239 = and i64 %sub238, 131072, !dbg !5523
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5523
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5523

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5523

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub243 = sub i64 %56, 1, !dbg !5523
  %and244 = and i64 %sub243, 65536, !dbg !5523
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5523
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5523

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5523

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub248 = sub i64 %57, 1, !dbg !5523
  %and249 = and i64 %sub248, 32768, !dbg !5523
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5523
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5523

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5523

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub253 = sub i64 %58, 1, !dbg !5523
  %and254 = and i64 %sub253, 16384, !dbg !5523
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5523
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5523

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5523

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub258 = sub i64 %59, 1, !dbg !5523
  %and259 = and i64 %sub258, 8192, !dbg !5523
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5523
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5523

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5523

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub263 = sub i64 %60, 1, !dbg !5523
  %and264 = and i64 %sub263, 4096, !dbg !5523
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5523
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5523

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5523

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub268 = sub i64 %61, 1, !dbg !5523
  %and269 = and i64 %sub268, 2048, !dbg !5523
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5523
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5523

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5523

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub273 = sub i64 %62, 1, !dbg !5523
  %and274 = and i64 %sub273, 1024, !dbg !5523
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5523
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5523

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5523

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub278 = sub i64 %63, 1, !dbg !5523
  %and279 = and i64 %sub278, 512, !dbg !5523
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5523
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5523

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5523

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub283 = sub i64 %64, 1, !dbg !5523
  %and284 = and i64 %sub283, 256, !dbg !5523
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5523
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5523

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5523

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub288 = sub i64 %65, 1, !dbg !5523
  %and289 = and i64 %sub288, 128, !dbg !5523
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5523
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5523

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5523

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub293 = sub i64 %66, 1, !dbg !5523
  %and294 = and i64 %sub293, 64, !dbg !5523
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5523
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5523

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5523

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub298 = sub i64 %67, 1, !dbg !5523
  %and299 = and i64 %sub298, 32, !dbg !5523
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5523
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5523

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5523

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub303 = sub i64 %68, 1, !dbg !5523
  %and304 = and i64 %sub303, 16, !dbg !5523
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5523
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5523

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5523

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub308 = sub i64 %69, 1, !dbg !5523
  %and309 = and i64 %sub308, 8, !dbg !5523
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5523
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5523

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5523

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub313 = sub i64 %70, 1, !dbg !5523
  %and314 = and i64 %sub313, 4, !dbg !5523
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5523
  %71 = zext i1 %tobool315 to i64, !dbg !5523
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5523
  br label %cond.end, !dbg !5523

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5523
  br label %cond.end317, !dbg !5523

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5523
  br label %cond.end319, !dbg !5523

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5523
  br label %cond.end321, !dbg !5523

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5523
  br label %cond.end323, !dbg !5523

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5523
  br label %cond.end325, !dbg !5523

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5523
  br label %cond.end327, !dbg !5523

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5523
  br label %cond.end329, !dbg !5523

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5523
  br label %cond.end331, !dbg !5523

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5523
  br label %cond.end333, !dbg !5523

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5523
  br label %cond.end335, !dbg !5523

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5523
  br label %cond.end337, !dbg !5523

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5523
  br label %cond.end339, !dbg !5523

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5523
  br label %cond.end341, !dbg !5523

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5523
  br label %cond.end343, !dbg !5523

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5523
  br label %cond.end345, !dbg !5523

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5523
  br label %cond.end347, !dbg !5523

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5523
  br label %cond.end349, !dbg !5523

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5523
  br label %cond.end351, !dbg !5523

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5523
  br label %cond.end353, !dbg !5523

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5523
  br label %cond.end355, !dbg !5523

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5523
  br label %cond.end357, !dbg !5523

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5523
  br label %cond.end359, !dbg !5523

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5523
  br label %cond.end361, !dbg !5523

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5523
  br label %cond.end363, !dbg !5523

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5523
  br label %cond.end365, !dbg !5523

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5523
  br label %cond.end367, !dbg !5523

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5523
  br label %cond.end369, !dbg !5523

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5523
  br label %cond.end371, !dbg !5523

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5523
  br label %cond.end373, !dbg !5523

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5523
  br label %cond.end375, !dbg !5523

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5523
  br label %cond.end377, !dbg !5523

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5523
  br label %cond.end379, !dbg !5523

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5523
  br label %cond.end381, !dbg !5523

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5523
  br label %cond.end383, !dbg !5523

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5523
  br label %cond.end385, !dbg !5523

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5523
  br label %cond.end387, !dbg !5523

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5523
  br label %cond.end389, !dbg !5523

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5523
  br label %cond.end391, !dbg !5523

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5523
  br label %cond.end393, !dbg !5523

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5523
  br label %cond.end395, !dbg !5523

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5523
  br label %cond.end397, !dbg !5523

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5523
  br label %cond.end399, !dbg !5523

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5523
  br label %cond.end401, !dbg !5523

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5523
  br label %cond.end403, !dbg !5523

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5523
  br label %cond.end405, !dbg !5523

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5523
  br label %cond.end407, !dbg !5523

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5523
  br label %cond.end409, !dbg !5523

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5523
  br label %cond.end411, !dbg !5523

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5523
  br label %cond.end413, !dbg !5523

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5523
  br label %cond.end415, !dbg !5523

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5523
  br label %cond.end417, !dbg !5523

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5523
  br label %cond.end419, !dbg !5523

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5523
  br label %cond.end421, !dbg !5523

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5523
  br label %cond.end423, !dbg !5523

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5523
  br label %cond.end425, !dbg !5523

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5523
  br label %cond.end427, !dbg !5523

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5523
  br label %cond.end429, !dbg !5523

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5523
  br label %cond.end431, !dbg !5523

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5523
  br label %cond.end433, !dbg !5523

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5523
  br label %cond.end435, !dbg !5523

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5523
  br label %cond.end437, !dbg !5523

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5523
  br label %cond.end440, !dbg !5523

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5523

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5523
  br label %cond.end444, !dbg !5523

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5523
  %sub443 = sub i64 %72, 1, !dbg !5523
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5523
  br label %cond.end444, !dbg !5523

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5523
  %sub446 = sub i32 %cond445, 12, !dbg !5524
  %add = add i32 %sub446, 1, !dbg !5525
  store i32 %add, i32* %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5527
  %dec = add i64 %73, -1, !dbg !5527
  store i64 %dec, i64* %size.addr, align 8, !dbg !5527
  %74 = load i64, i64* %size.addr, align 8, !dbg !5528
  %shr = lshr i64 %74, 12, !dbg !5528
  store i64 %shr, i64* %size.addr, align 8, !dbg !5528
  %75 = load i64, i64* %size.addr, align 8, !dbg !5529
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5506
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5530
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5531
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5530, !srcloc !5532
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5530
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5533
  %add.i = add i32 %79, 1, !dbg !5534
  store i32 %add.i, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5536
  ret i32 %80, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5537 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5498, metadata !DIExpression()), !dbg !5541
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5505, metadata !DIExpression()), !dbg !5543
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load i64, i64* %n.addr, align 8, !dbg !5546
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5543
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5547
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5548
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5547, !srcloc !5532
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5547
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5549
  %add.i = add i32 %4, 1, !dbg !5550
  %sub = sub i32 %add.i, 1, !dbg !5551
  ret i32 %sub, !dbg !5552
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5553 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5563, metadata !DIExpression()), !dbg !5564
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5565
  ret i8* %0, !dbg !5566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5567 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5571, metadata !DIExpression()), !dbg !5572
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5573
  %tobool = trunc i8 %0 to i1, !dbg !5573
  %lnot = xor i1 %tobool, true, !dbg !5573
  %lnot1 = xor i1 %lnot, true, !dbg !5573
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5573
  %conv = sext i32 %lnot.ext to i64, !dbg !5573
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5573
  ret i1 %tobool2, !dbg !5574
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kvmalloc(i64 %size, i32 %flags) #0 !dbg !5575 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  %0 = load i64, i64* %size.addr, align 8, !dbg !5580
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5581
  %call = call i8* @kvmalloc_node(i64 %0, i32 %1, i32 -1) #9, !dbg !5582
  ret i8* %call, !dbg !5583
}

; Function Attrs: noredzone
declare dso_local i8* @kvmalloc_node(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages(i32 %gfp_mask, i32 %order) #0 !dbg !5584 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  %call = call i32 @numa_node_id() #9, !dbg !5592
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5593
  %1 = load i32, i32* %order.addr, align 4, !dbg !5594
  %call1 = call %struct.page* @alloc_pages_node(i32 %call, i32 %0, i32 %1) #9, !dbg !5595
  ret %struct.page* %call1, !dbg !5596
}

; Function Attrs: noredzone
declare dso_local void @split_page(%struct.page*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5597 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5604, metadata !DIExpression()), !dbg !5605
  %0 = load i32, i32* %nid.addr, align 4, !dbg !5606
  %cmp = icmp eq i32 %0, -1, !dbg !5608
  br i1 %cmp, label %if.then, label %if.end, !dbg !5609

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #9, !dbg !5610
  store i32 %call, i32* %nid.addr, align 4, !dbg !5611
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %nid.addr, align 4, !dbg !5613
  %2 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5614
  %3 = load i32, i32* %order.addr, align 4, !dbg !5615
  %call1 = call %struct.page* @__alloc_pages_node(i32 %1, i32 %2, i32 %3) #9, !dbg !5616
  ret %struct.page* %call1, !dbg !5617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_node_id() #0 !dbg !5618 {
entry:
  ret i32 0, !dbg !5622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_mem_id() #0 !dbg !5623 {
entry:
  %call = call i32 @numa_node_id() #9, !dbg !5625
  ret i32 %call, !dbg !5626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #0 !dbg !5627 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5632, metadata !DIExpression()), !dbg !5633
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5634
  %1 = load i32, i32* %order.addr, align 4, !dbg !5635
  %2 = load i32, i32* %nid.addr, align 4, !dbg !5636
  %call = call %struct.page* @__alloc_pages(i32 %0, i32 %1, i32 %2) #9, !dbg !5637
  ret %struct.page* %call, !dbg !5638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages(i32 %gfp_mask, i32 %order, i32 %preferred_nid) #0 !dbg !5639 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %preferred_nid.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !5642, metadata !DIExpression()), !dbg !5643
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  store i32 %preferred_nid, i32* %preferred_nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preferred_nid.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !5648
  %1 = load i32, i32* %order.addr, align 4, !dbg !5649
  %2 = load i32, i32* %preferred_nid.addr, align 4, !dbg !5650
  %call = call %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, %struct.nodemask_t* null) #9, !dbg !5651
  ret %struct.page* %call, !dbg !5652
}

; Function Attrs: noredzone
declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, %struct.nodemask_t*) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_map_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5653 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  ret i1 true, !dbg !5661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5662 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  ret void, !dbg !5672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5673 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5678
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5679
  ret i1 %call, !dbg !5680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_unmap_sgtable(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir, i64 %attrs) #0 !dbg !5681 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5692
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5693
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !5694
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5694
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !5695
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !5696
  %4 = load i32, i32* %orig_nents, align 4, !dbg !5696
  %5 = load i32, i32* %dir.addr, align 4, !dbg !5697
  %6 = load i64, i64* %attrs.addr, align 8, !dbg !5698
  call void @dma_unmap_sg_attrs(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5, i64 %6) #9, !dbg !5699
  ret void, !dbg !5700
}

; Function Attrs: noredzone
declare dso_local void @vm_unmap_ram(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5701 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5708
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5709
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5710
  ret i1 %call, !dbg !5711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5712 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5715, metadata !DIExpression()), !dbg !5719
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5723, metadata !DIExpression()), !dbg !5724
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5725, metadata !DIExpression()), !dbg !5727
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5728, metadata !DIExpression()), !dbg !5730
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5732, metadata !DIExpression()), !dbg !5733
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5734, metadata !DIExpression()), !dbg !5735
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5736, metadata !DIExpression()), !dbg !5737
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5744, metadata !DIExpression()), !dbg !5745
  %0 = load i32, i32* %i.addr, align 4, !dbg !5746
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5747
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5748
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5749
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5749
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5750
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5751
  %conv.i.i = trunc i64 %5 to i32, !dbg !5751
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5752
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5753
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5753
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5753
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5754
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5755
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5727
  %sub.i.i = sub i32 0, %10, !dbg !5727
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5727
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5727
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5727
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5727
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5727, !srcloc !5756
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5727
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5727
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5727
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5727
  store i32 %15, i32* %old, align 4, !dbg !5745
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5757
  %tobool = icmp ne i32* %16, null, !dbg !5757
  br i1 %tobool, label %if.then, label %if.end, !dbg !5759

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5760
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5761
  store i32 %17, i32* %18, align 4, !dbg !5762
  br label %if.end, !dbg !5763

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5764
  %20 = load i32, i32* %i.addr, align 4, !dbg !5766
  %cmp = icmp eq i32 %19, %20, !dbg !5767
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5768

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5769, !srcloc !5771
  store i1 true, i1* %retval, align 1, !dbg !5772
  br label %return, !dbg !5772

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5773
  %cmp3 = icmp slt i32 %21, 0, !dbg !5773
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5773

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5773
  %23 = load i32, i32* %i.addr, align 4, !dbg !5773
  %sub = sub i32 %22, %23, !dbg !5773
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5773
  br label %lor.end, !dbg !5773

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5773
  %lnot5 = xor i1 %lnot, true, !dbg !5773
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5773
  %conv = sext i32 %lnot.ext to i64, !dbg !5773
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5773
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5775

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5776
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5777
  br label %if.end8, !dbg !5777

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5778
  br label %return, !dbg !5778

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5779
  ret i1 %26, !dbg !5779
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noredzone
declare dso_local void @dma_unmap_sg_attrs(%struct.device*, %struct.scatterlist*, i32, i32, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5780 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5785
  %1 = ptrtoint i8* %0 to i64, !dbg !5785
  %2 = inttoptr i64 %1 to i8*, !dbg !5785
  %3 = ptrtoint i8* %2 to i64, !dbg !5785
  %cmp = icmp uge i64 %3, -4095, !dbg !5785
  %lnot = xor i1 %cmp, true, !dbg !5785
  %lnot1 = xor i1 %lnot, true, !dbg !5785
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5785
  %conv = sext i32 %lnot.ext to i64, !dbg !5785
  %tobool = icmp ne i64 %conv, 0, !dbg !5785
  ret i1 %tobool, !dbg !5786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5787 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5792
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5793
  ret void, !dbg !5794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_dmabuf_ops_attach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %dbuf_attach) #0 !dbg !5795 {
entry:
  %retval = alloca i32, align 4
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %dbuf_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_dma_sg_attachment*, align 8
  %i = alloca i32, align 4
  %rd = alloca %struct.scatterlist*, align 8
  %wr = alloca %struct.scatterlist*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %ret = alloca i32, align 4
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store %struct.dma_buf_attachment* %dbuf_attach, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %dbuf_attach.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_attachment** %attach, metadata !5800, metadata !DIExpression()), !dbg !5806
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5807, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %rd, metadata !5809, metadata !DIExpression()), !dbg !5810
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %wr, metadata !5811, metadata !DIExpression()), !dbg !5812
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5813, metadata !DIExpression()), !dbg !5814
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !5817
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !5818
  %1 = load i8*, i8** %priv, align 8, !dbg !5818
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_buf*, !dbg !5817
  store %struct.vb2_dma_sg_buf* %2, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !5816
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5819, metadata !DIExpression()), !dbg !5820
  %call = call i8* @kzalloc(i64 24, i32 3264) #9, !dbg !5821
  %3 = bitcast i8* %call to %struct.vb2_dma_sg_attachment*, !dbg !5821
  store %struct.vb2_dma_sg_attachment* %3, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5822
  %4 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5823
  %tobool = icmp ne %struct.vb2_dma_sg_attachment* %4, null, !dbg !5823
  br i1 %tobool, label %if.end, label %if.then, !dbg !5825

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5826
  br label %return, !dbg !5826

if.end:                                           ; preds = %entry
  %5 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5827
  %sgt1 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %5, i32 0, i32 0, !dbg !5828
  store %struct.sg_table* %sgt1, %struct.sg_table** %sgt, align 8, !dbg !5829
  %6 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5830
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !5831
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 7, !dbg !5832
  %8 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !5832
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %8, i32 0, i32 2, !dbg !5833
  %9 = load i32, i32* %orig_nents, align 4, !dbg !5833
  %call2 = call i32 @sg_alloc_table(%struct.sg_table* %6, i32 %9, i32 3264) #9, !dbg !5834
  store i32 %call2, i32* %ret, align 4, !dbg !5835
  %10 = load i32, i32* %ret, align 4, !dbg !5836
  %tobool3 = icmp ne i32 %10, 0, !dbg !5836
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5838

if.then4:                                         ; preds = %if.end
  %11 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5839
  %12 = bitcast %struct.vb2_dma_sg_attachment* %11 to i8*, !dbg !5839
  call void @kfree(i8* %12) #9, !dbg !5841
  store i32 -12, i32* %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end5:                                          ; preds = %if.end
  %13 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !5843
  %dma_sgt6 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %13, i32 0, i32 7, !dbg !5844
  %14 = load %struct.sg_table*, %struct.sg_table** %dma_sgt6, align 8, !dbg !5844
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 0, !dbg !5845
  %15 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !5845
  store %struct.scatterlist* %15, %struct.scatterlist** %rd, align 8, !dbg !5846
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5847
  %sgl7 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %16, i32 0, i32 0, !dbg !5848
  %17 = load %struct.scatterlist*, %struct.scatterlist** %sgl7, align 8, !dbg !5848
  store %struct.scatterlist* %17, %struct.scatterlist** %wr, align 8, !dbg !5849
  store i32 0, i32* %i, align 4, !dbg !5850
  br label %for.cond, !dbg !5852

for.cond:                                         ; preds = %for.inc, %if.end5
  %18 = load i32, i32* %i, align 4, !dbg !5853
  %19 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5855
  %orig_nents8 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 2, !dbg !5856
  %20 = load i32, i32* %orig_nents8, align 4, !dbg !5856
  %cmp = icmp ult i32 %18, %20, !dbg !5857
  br i1 %cmp, label %for.body, label %for.end, !dbg !5858

for.body:                                         ; preds = %for.cond
  %21 = load %struct.scatterlist*, %struct.scatterlist** %wr, align 8, !dbg !5859
  %22 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5861
  %call9 = call %struct.page* @sg_page(%struct.scatterlist* %22) #9, !dbg !5862
  %23 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5863
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 2, !dbg !5864
  %24 = load i32, i32* %length, align 4, !dbg !5864
  %25 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5865
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 1, !dbg !5866
  %26 = load i32, i32* %offset, align 8, !dbg !5866
  call void @sg_set_page(%struct.scatterlist* %21, %struct.page* %call9, i32 %24, i32 %26) #9, !dbg !5867
  %27 = load %struct.scatterlist*, %struct.scatterlist** %rd, align 8, !dbg !5868
  %call10 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %27) #9, !dbg !5869
  store %struct.scatterlist* %call10, %struct.scatterlist** %rd, align 8, !dbg !5870
  %28 = load %struct.scatterlist*, %struct.scatterlist** %wr, align 8, !dbg !5871
  %call11 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %28) #9, !dbg !5872
  store %struct.scatterlist* %call11, %struct.scatterlist** %wr, align 8, !dbg !5873
  br label %for.inc, !dbg !5874

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !5875
  %inc = add i32 %29, 1, !dbg !5875
  store i32 %inc, i32* %i, align 4, !dbg !5875
  br label %for.cond, !dbg !5876, !llvm.loop !5877

for.end:                                          ; preds = %for.cond
  %30 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5879
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %30, i32 0, i32 1, !dbg !5880
  store i32 3, i32* %dma_dir, align 8, !dbg !5881
  %31 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5882
  %32 = bitcast %struct.vb2_dma_sg_attachment* %31 to i8*, !dbg !5882
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %dbuf_attach.addr, align 8, !dbg !5883
  %priv12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %33, i32 0, i32 8, !dbg !5884
  store i8* %32, i8** %priv12, align 8, !dbg !5885
  store i32 0, i32* %retval, align 4, !dbg !5886
  br label %return, !dbg !5886

return:                                           ; preds = %for.end, %if.then4, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !5887
  ret i32 %34, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_dmabuf_ops_detach(%struct.dma_buf* %dbuf, %struct.dma_buf_attachment* %db_attach) #0 !dbg !5888 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %attach = alloca %struct.vb2_dma_sg_attachment*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_attachment** %attach, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5895
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !5896
  %1 = load i8*, i8** %priv, align 8, !dbg !5896
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_attachment*, !dbg !5895
  store %struct.vb2_dma_sg_attachment* %2, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5894
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5897, metadata !DIExpression()), !dbg !5898
  %3 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5899
  %tobool = icmp ne %struct.vb2_dma_sg_attachment* %3, null, !dbg !5899
  br i1 %tobool, label %if.end, label %if.then, !dbg !5901

if.then:                                          ; preds = %entry
  br label %return, !dbg !5902

if.end:                                           ; preds = %entry
  %4 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5903
  %sgt1 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %4, i32 0, i32 0, !dbg !5904
  store %struct.sg_table* %sgt1, %struct.sg_table** %sgt, align 8, !dbg !5905
  %5 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5906
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %5, i32 0, i32 1, !dbg !5908
  %6 = load i32, i32* %dma_dir, align 8, !dbg !5908
  %cmp = icmp ne i32 %6, 3, !dbg !5909
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5910

if.then2:                                         ; preds = %if.end
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5911
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 1, !dbg !5912
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5912
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5913
  %10 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5914
  %dma_dir3 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %10, i32 0, i32 1, !dbg !5915
  %11 = load i32, i32* %dma_dir3, align 8, !dbg !5915
  call void @dma_unmap_sgtable(%struct.device* %8, %struct.sg_table* %9, i32 %11, i64 0) #9, !dbg !5916
  br label %if.end4, !dbg !5916

if.end4:                                          ; preds = %if.then2, %if.end
  %12 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5917
  call void @sg_free_table(%struct.sg_table* %12) #9, !dbg !5918
  %13 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5919
  %14 = bitcast %struct.vb2_dma_sg_attachment* %13 to i8*, !dbg !5919
  call void @kfree(i8* %14) #9, !dbg !5920
  %15 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5921
  %priv5 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %15, i32 0, i32 8, !dbg !5922
  store i8* null, i8** %priv5, align 8, !dbg !5923
  br label %return, !dbg !5924

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sg_table* @vb2_dma_sg_dmabuf_ops_map(%struct.dma_buf_attachment* %db_attach, i32 %dma_dir) #0 !dbg !5925 {
entry:
  %retval = alloca %struct.sg_table*, align 8
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %dma_dir.addr = alloca i32, align 4
  %attach = alloca %struct.vb2_dma_sg_attachment*, align 8
  %lock = alloca %struct.mutex*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_attachment** %attach, metadata !5930, metadata !DIExpression()), !dbg !5931
  %0 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5932
  %priv = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %0, i32 0, i32 8, !dbg !5933
  %1 = load i8*, i8** %priv, align 8, !dbg !5933
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_attachment*, !dbg !5932
  store %struct.vb2_dma_sg_attachment* %2, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5931
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock, metadata !5934, metadata !DIExpression()), !dbg !5936
  %3 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5937
  %dmabuf = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %3, i32 0, i32 0, !dbg !5938
  %4 = load %struct.dma_buf*, %struct.dma_buf** %dmabuf, align 8, !dbg !5938
  %lock1 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 4, !dbg !5939
  store %struct.mutex* %lock1, %struct.mutex** %lock, align 8, !dbg !5936
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !5940, metadata !DIExpression()), !dbg !5941
  %5 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5942
  call void @mutex_lock(%struct.mutex* %5) #9, !dbg !5943
  %6 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5944
  %sgt2 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %6, i32 0, i32 0, !dbg !5945
  store %struct.sg_table* %sgt2, %struct.sg_table** %sgt, align 8, !dbg !5946
  %7 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5947
  %dma_dir3 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %7, i32 0, i32 1, !dbg !5949
  %8 = load i32, i32* %dma_dir3, align 8, !dbg !5949
  %9 = load i32, i32* %dma_dir.addr, align 4, !dbg !5950
  %cmp = icmp eq i32 %8, %9, !dbg !5951
  br i1 %cmp, label %if.then, label %if.end, !dbg !5952

if.then:                                          ; preds = %entry
  %10 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5953
  call void @mutex_unlock(%struct.mutex* %10) #9, !dbg !5955
  %11 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5956
  store %struct.sg_table* %11, %struct.sg_table** %retval, align 8, !dbg !5957
  br label %return, !dbg !5957

if.end:                                           ; preds = %entry
  %12 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5958
  %dma_dir4 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %12, i32 0, i32 1, !dbg !5960
  %13 = load i32, i32* %dma_dir4, align 8, !dbg !5960
  %cmp5 = icmp ne i32 %13, 3, !dbg !5961
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !5962

if.then6:                                         ; preds = %if.end
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5963
  %dev = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 1, !dbg !5965
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5965
  %16 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5966
  %17 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5967
  %dma_dir7 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %17, i32 0, i32 1, !dbg !5968
  %18 = load i32, i32* %dma_dir7, align 8, !dbg !5968
  call void @dma_unmap_sgtable(%struct.device* %15, %struct.sg_table* %16, i32 %18, i64 0) #9, !dbg !5969
  %19 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5970
  %dma_dir8 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %19, i32 0, i32 1, !dbg !5971
  store i32 3, i32* %dma_dir8, align 8, !dbg !5972
  br label %if.end9, !dbg !5973

if.end9:                                          ; preds = %if.then6, %if.end
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %db_attach.addr, align 8, !dbg !5974
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %20, i32 0, i32 1, !dbg !5976
  %21 = load %struct.device*, %struct.device** %dev10, align 8, !dbg !5976
  %22 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5977
  %23 = load i32, i32* %dma_dir.addr, align 4, !dbg !5978
  %call = call i32 @dma_map_sgtable(%struct.device* %21, %struct.sg_table* %22, i32 %23, i64 0) #9, !dbg !5979
  %tobool = icmp ne i32 %call, 0, !dbg !5979
  br i1 %tobool, label %if.then11, label %if.end14, !dbg !5980

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !5981
  %24 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5983
  call void @mutex_unlock(%struct.mutex* %24) #9, !dbg !5984
  %call13 = call i8* @ERR_PTR(i64 -5) #9, !dbg !5985
  %25 = bitcast i8* %call13 to %struct.sg_table*, !dbg !5985
  store %struct.sg_table* %25, %struct.sg_table** %retval, align 8, !dbg !5986
  br label %return, !dbg !5986

if.end14:                                         ; preds = %if.end9
  %26 = load i32, i32* %dma_dir.addr, align 4, !dbg !5987
  %27 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %attach, align 8, !dbg !5988
  %dma_dir15 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %27, i32 0, i32 1, !dbg !5989
  store i32 %26, i32* %dma_dir15, align 8, !dbg !5990
  %28 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !5991
  call void @mutex_unlock(%struct.mutex* %28) #9, !dbg !5992
  %29 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !5993
  store %struct.sg_table* %29, %struct.sg_table** %retval, align 8, !dbg !5994
  br label %return, !dbg !5994

return:                                           ; preds = %if.end14, %if.then11, %if.then
  %30 = load %struct.sg_table*, %struct.sg_table** %retval, align 8, !dbg !5995
  ret %struct.sg_table* %30, !dbg !5995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_dmabuf_ops_unmap(%struct.dma_buf_attachment* %db_attach, %struct.sg_table* %sgt, i32 %dma_dir) #0 !dbg !5996 {
entry:
  %db_attach.addr = alloca %struct.dma_buf_attachment*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dma_dir.addr = alloca i32, align 4
  store %struct.dma_buf_attachment* %db_attach, %struct.dma_buf_attachment** %db_attach.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf_attachment** %db_attach.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i32 %dma_dir, i32* %dma_dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma_dir.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  ret void, !dbg !6003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vb2_dma_sg_dmabuf_ops_release(%struct.dma_buf* %dbuf) #0 !dbg !6004 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6007
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6008
  %1 = load i8*, i8** %priv, align 8, !dbg !6008
  call void @vb2_dma_sg_put(i8* %1) #9, !dbg !6009
  ret void, !dbg !6010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_dmabuf_ops_begin_cpu_access(%struct.dma_buf* %dbuf, i32 %direction) #0 !dbg !6011 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %direction.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !6016, metadata !DIExpression()), !dbg !6017
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6018
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6019
  %1 = load i8*, i8** %priv, align 8, !dbg !6019
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_buf*, !dbg !6018
  store %struct.vb2_dma_sg_buf* %2, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6017
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !6020, metadata !DIExpression()), !dbg !6021
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6022
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %3, i32 0, i32 7, !dbg !6023
  %4 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !6023
  store %struct.sg_table* %4, %struct.sg_table** %sgt, align 8, !dbg !6021
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6024
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %5, i32 0, i32 0, !dbg !6025
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6025
  %7 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6026
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %7, i32 0, i32 0, !dbg !6027
  %8 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6027
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6028
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1, !dbg !6029
  %10 = load i32, i32* %nents, align 8, !dbg !6029
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6030
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 5, !dbg !6031
  %12 = load i32, i32* %dma_dir, align 4, !dbg !6031
  call void @dma_sync_sg_for_cpu(%struct.device* %6, %struct.scatterlist* %8, i32 %10, i32 %12) #9, !dbg !6032
  ret i32 0, !dbg !6033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_dmabuf_ops_end_cpu_access(%struct.dma_buf* %dbuf, i32 %direction) #0 !dbg !6034 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %direction.addr = alloca i32, align 4
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  %sgt = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6041
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6042
  %1 = load i8*, i8** %priv, align 8, !dbg !6042
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_buf*, !dbg !6041
  store %struct.vb2_dma_sg_buf* %2, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6040
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt, metadata !6043, metadata !DIExpression()), !dbg !6044
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6045
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %3, i32 0, i32 7, !dbg !6046
  %4 = load %struct.sg_table*, %struct.sg_table** %dma_sgt, align 8, !dbg !6046
  store %struct.sg_table* %4, %struct.sg_table** %sgt, align 8, !dbg !6044
  %5 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6047
  %dev = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %5, i32 0, i32 0, !dbg !6048
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6048
  %7 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6049
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %7, i32 0, i32 0, !dbg !6050
  %8 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6050
  %9 = load %struct.sg_table*, %struct.sg_table** %sgt, align 8, !dbg !6051
  %nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1, !dbg !6052
  %10 = load i32, i32* %nents, align 8, !dbg !6052
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6053
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 5, !dbg !6054
  %12 = load i32, i32* %dma_dir, align 4, !dbg !6054
  call void @dma_sync_sg_for_device(%struct.device* %6, %struct.scatterlist* %8, i32 %10, i32 %12) #9, !dbg !6055
  ret i32 0, !dbg !6056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vb2_dma_sg_dmabuf_ops_mmap(%struct.dma_buf* %dbuf, %struct.vm_area_struct* %vma) #0 !dbg !6057 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6062
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6063
  %1 = load i8*, i8** %priv, align 8, !dbg !6063
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6064
  %call = call i32 @vb2_dma_sg_mmap(i8* %1, %struct.vm_area_struct* %2) #9, !dbg !6065
  ret i32 %call, !dbg !6066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vb2_dma_sg_dmabuf_ops_vmap(%struct.dma_buf* %dbuf) #0 !dbg !6067 {
entry:
  %dbuf.addr = alloca %struct.dma_buf*, align 8
  %buf = alloca %struct.vb2_dma_sg_buf*, align 8
  store %struct.dma_buf* %dbuf, %struct.dma_buf** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_buf** %dbuf.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  call void @llvm.dbg.declare(metadata %struct.vb2_dma_sg_buf** %buf, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load %struct.dma_buf*, %struct.dma_buf** %dbuf.addr, align 8, !dbg !6072
  %priv = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %0, i32 0, i32 12, !dbg !6073
  %1 = load i8*, i8** %priv, align 8, !dbg !6073
  %2 = bitcast i8* %1 to %struct.vb2_dma_sg_buf*, !dbg !6072
  store %struct.vb2_dma_sg_buf* %2, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6071
  %3 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %buf, align 8, !dbg !6074
  %4 = bitcast %struct.vb2_dma_sg_buf* %3 to i8*, !dbg !6074
  %call = call i8* @vb2_dma_sg_vaddr(i8* %4) #9, !dbg !6075
  ret i8* %call, !dbg !6076
}

; Function Attrs: noredzone
declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_set_page(%struct.scatterlist* %sg, %struct.page* %page, i32 %len, i32 %offset) #0 !dbg !6077 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6088
  %1 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6089
  call void @sg_assign_page(%struct.scatterlist* %0, %struct.page* %1) #9, !dbg !6090
  %2 = load i32, i32* %offset.addr, align 4, !dbg !6091
  %3 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6092
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %3, i32 0, i32 1, !dbg !6093
  store i32 %2, i32* %offset1, align 8, !dbg !6094
  %4 = load i32, i32* %len.addr, align 4, !dbg !6095
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6096
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %5, i32 0, i32 2, !dbg !6097
  store i32 %4, i32* %length, align 4, !dbg !6098
  ret void, !dbg !6099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @sg_page(%struct.scatterlist* %sg) #0 !dbg !6100 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6105
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !6106
  %1 = load i64, i64* %page_link, align 8, !dbg !6106
  %and = and i64 %1, -4, !dbg !6107
  %2 = inttoptr i64 %and to %struct.page*, !dbg !6108
  ret %struct.page* %2, !dbg !6109
}

; Function Attrs: noredzone
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sg_assign_page(%struct.scatterlist* %sg, %struct.page* %page) #0 !dbg !6110 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  %page.addr = alloca %struct.page*, align 8
  %page_link = alloca i64, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !6113, metadata !DIExpression()), !dbg !6114
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6115, metadata !DIExpression()), !dbg !6116
  call void @llvm.dbg.declare(metadata i64* %page_link, metadata !6117, metadata !DIExpression()), !dbg !6118
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6119
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !6120
  %1 = load i64, i64* %page_link1, align 8, !dbg !6120
  %and = and i64 %1, 3, !dbg !6121
  store i64 %and, i64* %page_link, align 8, !dbg !6118
  br label %do.body, !dbg !6122

do.body:                                          ; preds = %entry
  %2 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6123
  %3 = ptrtoint %struct.page* %2 to i64, !dbg !6123
  %and2 = and i64 %3, 3, !dbg !6123
  %tobool = icmp ne i64 %and2, 0, !dbg !6123
  %lnot = xor i1 %tobool, true, !dbg !6123
  %lnot3 = xor i1 %lnot, true, !dbg !6123
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6123
  %conv = sext i32 %lnot.ext to i64, !dbg !6123
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6123
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6126

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6123

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !6127

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !6129

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !6127

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 95, i32 0, i64 12) #8, !dbg !6131, !srcloc !6133
  br label %do.end8, !dbg !6131

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6127

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #8, !dbg !6134, !srcloc !6137
  unreachable, !dbg !6138

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !6127

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !6127

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !6126

do.end12:                                         ; preds = %if.end
  %4 = load i64, i64* %page_link, align 8, !dbg !6139
  %5 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6140
  %6 = ptrtoint %struct.page* %5 to i64, !dbg !6141
  %or = or i64 %4, %6, !dbg !6142
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !6143
  %page_link13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0, !dbg !6144
  store i64 %or, i64* %page_link13, align 8, !dbg !6145
  ret void, !dbg !6146
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @dma_sync_sg_for_cpu(%struct.device*, %struct.scatterlist*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @dma_sync_sg_for_device(%struct.device*, %struct.scatterlist*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6147 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6154
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6155
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !6156
  ret void, !dbg !6157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !6158 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6161, metadata !DIExpression()), !dbg !6163
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6167, metadata !DIExpression()), !dbg !6168
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6169, metadata !DIExpression()), !dbg !6171
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5728, metadata !DIExpression()), !dbg !6172
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5732, metadata !DIExpression()), !dbg !6174
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6175, metadata !DIExpression()), !dbg !6176
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6177, metadata !DIExpression()), !dbg !6178
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6179, metadata !DIExpression()), !dbg !6180
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6185, metadata !DIExpression()), !dbg !6186
  %0 = load i32, i32* %i.addr, align 4, !dbg !6187
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6188
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6189
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6190
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6190
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6191
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6192
  %conv.i.i = trunc i64 %5 to i32, !dbg !6192
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !6193
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6194
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6194
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !6194
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6195
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6196
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6171
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !6171
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6171
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6171
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6171
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !6171, !srcloc !6197
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6171
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6171
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6171
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6171
  store i32 %15, i32* %old, align 4, !dbg !6186
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6198
  %tobool = icmp ne i32* %16, null, !dbg !6198
  br i1 %tobool, label %if.then, label %if.end, !dbg !6200

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6201
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6202
  store i32 %17, i32* %18, align 4, !dbg !6203
  br label %if.end, !dbg !6204

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6205
  %tobool1 = icmp ne i32 %19, 0, !dbg !6205
  %lnot = xor i1 %tobool1, true, !dbg !6205
  %lnot2 = xor i1 %lnot, true, !dbg !6205
  %lnot3 = xor i1 %lnot2, true, !dbg !6205
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6205
  %conv = sext i32 %lnot.ext to i64, !dbg !6205
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6205
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6207

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6208
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !6209
  br label %if.end17, !dbg !6209

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6210
  %cmp = icmp slt i32 %21, 0, !dbg !6210
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6210

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !6210
  %23 = load i32, i32* %i.addr, align 4, !dbg !6210
  %add = add i32 %22, %23, !dbg !6210
  %cmp7 = icmp slt i32 %add, 0, !dbg !6210
  br label %lor.end, !dbg !6210

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !6210
  %lnot11 = xor i1 %lnot9, true, !dbg !6210
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6210
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6210
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !6210
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6212

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6213
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !6214
  br label %if.end16, !dbg !6214

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !6215
}

; Function Attrs: noredzone
declare dso_local %struct.frame_vector* @vb2_create_framevec(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page** @frame_vector_pages(%struct.frame_vector* %vec) #0 !dbg !6216 {
entry:
  %retval = alloca %struct.page**, align 8
  %vec.addr = alloca %struct.frame_vector*, align 8
  %err = alloca i32, align 4
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6221
  %is_pfns = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 3, !dbg !6223
  %1 = load i8, i8* %is_pfns, align 1, !dbg !6223
  %tobool = trunc i8 %1 to i1, !dbg !6223
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6224

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6225, metadata !DIExpression()), !dbg !6227
  %2 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6228
  %call = call i32 @frame_vector_to_pages(%struct.frame_vector* %2) #9, !dbg !6229
  store i32 %call, i32* %err, align 4, !dbg !6227
  %3 = load i32, i32* %err, align 4, !dbg !6230
  %tobool1 = icmp ne i32 %3, 0, !dbg !6230
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6232

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %err, align 4, !dbg !6233
  %conv = sext i32 %4 to i64, !dbg !6233
  %call3 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !6234
  %5 = bitcast i8* %call3 to %struct.page**, !dbg !6234
  store %struct.page** %5, %struct.page*** %retval, align 8, !dbg !6235
  br label %return, !dbg !6235

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6236

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6237
  %ptrs = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %6, i32 0, i32 4, !dbg !6238
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %ptrs, i64 0, i64 0, !dbg !6239
  %7 = bitcast i8** %arraydecay to %struct.page**, !dbg !6240
  store %struct.page** %7, %struct.page*** %retval, align 8, !dbg !6241
  br label %return, !dbg !6241

return:                                           ; preds = %if.end4, %if.then2
  %8 = load %struct.page**, %struct.page*** %retval, align 8, !dbg !6242
  ret %struct.page** %8, !dbg !6242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @frame_vector_count(%struct.frame_vector* %vec) #0 !dbg !6243 {
entry:
  %vec.addr = alloca %struct.frame_vector*, align 8
  store %struct.frame_vector* %vec, %struct.frame_vector** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.frame_vector** %vec.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  %0 = load %struct.frame_vector*, %struct.frame_vector** %vec.addr, align 8, !dbg !6248
  %nr_frames = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %0, i32 0, i32 1, !dbg !6249
  %1 = load i32, i32* %nr_frames, align 4, !dbg !6249
  ret i32 %1, !dbg !6250
}

; Function Attrs: noredzone
declare dso_local void @vb2_destroy_framevec(%struct.frame_vector*) #2

; Function Attrs: noredzone
declare dso_local i32 @frame_vector_to_pages(%struct.frame_vector*) #2

; Function Attrs: noredzone
declare dso_local i32 @set_page_dirty_lock(%struct.page*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_sync_sgtable_for_device(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir) #0 !dbg !6251 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6256, metadata !DIExpression()), !dbg !6257
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6260
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6261
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6262
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6262
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6263
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6264
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6264
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6265
  call void @dma_sync_sg_for_device(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5) #9, !dbg !6266
  ret void, !dbg !6267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_sync_sgtable_for_cpu(%struct.device* %dev, %struct.sg_table* %sgt, i32 %dir) #0 !dbg !6268 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgt.addr = alloca %struct.sg_table*, align 8
  %dir.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  store %struct.sg_table* %sgt, %struct.sg_table** %sgt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sg_table** %sgt.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6275
  %1 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6276
  %sgl = getelementptr inbounds %struct.sg_table, %struct.sg_table* %1, i32 0, i32 0, !dbg !6277
  %2 = load %struct.scatterlist*, %struct.scatterlist** %sgl, align 8, !dbg !6277
  %3 = load %struct.sg_table*, %struct.sg_table** %sgt.addr, align 8, !dbg !6278
  %orig_nents = getelementptr inbounds %struct.sg_table, %struct.sg_table* %3, i32 0, i32 2, !dbg !6279
  %4 = load i32, i32* %orig_nents, align 4, !dbg !6279
  %5 = load i32, i32* %dir.addr, align 4, !dbg !6280
  call void @dma_sync_sg_for_cpu(%struct.device* %0, %struct.scatterlist* %2, i32 %4, i32 %5) #9, !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: noredzone
declare dso_local %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #2

; Function Attrs: noredzone
declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment*, i32) #2

; Function Attrs: noredzone
declare dso_local void @dma_buf_vunmap(%struct.dma_buf*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @dma_buf_unmap_attachment(%struct.dma_buf_attachment*, %struct.sg_table*, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @dma_buf_vmap(%struct.dma_buf*) #2

; Function Attrs: noredzone
declare dso_local i8* @vm_map_ram(%struct.page**, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !6283 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6288, metadata !DIExpression()), !dbg !6294
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6298, metadata !DIExpression()), !dbg !6300
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6302, metadata !DIExpression()), !dbg !6303
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6304, metadata !DIExpression()), !dbg !6305
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6306, metadata !DIExpression()), !dbg !6307
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6308
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6309
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6310
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !6310
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6311
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !6312
  %conv.i.i = trunc i64 %4 to i32, !dbg !6312
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !6313
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6314
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !6314
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !6314
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6315
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6316
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !6316
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !6316
  ret i32 %9, !dbg !6317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6318 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  ret i1 true, !dbg !6323
}

; Function Attrs: noredzone
declare dso_local i32 @vm_map_pages(%struct.vm_area_struct*, %struct.page**, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4042, !4043, !4044, !4045}
!llvm.ident = !{!4046}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 26, type: !4039, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !3314, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/common/videobuf2/videobuf2-dma-sg.c", directory: "/home/lizy2001/genbc/linux")
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
!120 = !{!121, !123, !124, !127, !128, !2298, !3312}
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
!152 = !{!153, !156, !157, !166, !173, !174, !2698, !2699, !2700, !2701, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2742, !2750, !2751, !2752, !3066, !3067, !3068, !3069}
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
!178 = !{!179, !2572, !2585, !2589, !2595, !2599, !2603, !2607, !2611, !2615, !2619, !2620, !2624, !2628, !2648, !2674, !2678, !2684, !2689, !2693, !2694}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !177, file: !44, line: 1865, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !150, !183, !7}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !185, line: 89, size: 1536, elements: !186)
!185 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !188, !198, !206, !207, !230, !231, !235, !262, !336, !2557, !2558, !2559, !2564, !2565, !2566}
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
!266 = !{!267, !271, !272, !279, !288, !292, !296, !300, !301, !305, !310, !322, !330}
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
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !185, line: 18, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !318, line: 8, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !317, file: !318, line: 9, baseType: !314, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !317, file: !318, line: 10, baseType: !183, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !265, file: !185, line: 148, baseType: !323, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!126, !326, !328}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !122, line: 30, baseType: !329)
!329 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !265, file: !185, line: 149, baseType: !331, size: 64, offset: 768)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!183, !183, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !184, file: !185, line: 103, baseType: !337, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !339)
!339 = !{!340, !341, !344, !345, !346, !350, !402, !486, !588, !671, !675, !676, !677, !678, !679, !688, !689, !690, !695, !699, !700, !703, !707, !710, !711, !712, !753, !2486, !2487, !2488, !2489, !2490, !2491, !2494, !2496, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2524, !2525, !2526, !2527, !2528, !2531, !2532, !2533, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !338, file: !44, line: 1417, baseType: !140, size: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !338, file: !44, line: 1418, baseType: !342, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !122, line: 16, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !122, line: 13, baseType: !217)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !338, file: !44, line: 1419, baseType: !229, size: 8, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !338, file: !44, line: 1420, baseType: !127, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !338, file: !44, line: 1421, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !122, line: 46, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !165, line: 88, baseType: !349)
!349 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !338, file: !44, line: 1422, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !353)
!353 = !{!354, !355, !356, !363, !367, !371, !375, !379, !380, !390, !393, !394, !395, !399, !400, !401}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !44, line: 2229, baseType: !283, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !352, file: !44, line: 2230, baseType: !126, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !352, file: !44, line: 2238, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!126, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !362, line: 28, flags: DIFlagFwdDecl)
!362 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !352, file: !44, line: 2239, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !352, file: !44, line: 2240, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!183, !351, !126, !283, !123}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !352, file: !44, line: 2242, baseType: !372, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !337}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !352, file: !44, line: 2243, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !378, line: 76, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !44, line: 2244, baseType: !351, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !352, file: !44, line: 2245, baseType: !381, size: 64, offset: 512)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !122, line: 182, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !381, file: !122, line: 183, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !122, line: 186, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !122, line: 187, baseType: !384, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !385, file: !122, line: 187, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !352, file: !44, line: 2247, baseType: !391, offset: 576)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !392, line: 187, elements: !260)
!392 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !352, file: !44, line: 2248, baseType: !391, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !352, file: !44, line: 2249, baseType: !391, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !352, file: !44, line: 2250, baseType: !396, offset: 576)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 3)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !352, file: !44, line: 2252, baseType: !391, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !352, file: !44, line: 2253, baseType: !391, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !352, file: !44, line: 2254, baseType: !391, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !338, file: !44, line: 1423, baseType: !403, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !406)
!406 = !{!407, !411, !415, !416, !420, !426, !430, !431, !432, !436, !440, !441, !442, !443, !449, !454, !455, !462, !463, !464, !465, !469, !485}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !405, file: !44, line: 1936, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!150, !337}
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
!435 = !{!126, !337, !126}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !405, file: !44, line: 1946, baseType: !437, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!126, !337}
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
!452 = !{!126, !337, !453, !309}
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
!468 = !{!126, !337, !128, !121}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !405, file: !44, line: 1964, baseType: !470, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !337, !474}
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
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !338, file: !44, line: 1424, baseType: !487, size: 64, offset: 448)
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
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !220, line: 30, baseType: !349)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !503, file: !504, line: 55, baseType: !246, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !503, file: !504, line: 59, baseType: !140, size: 128, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !496, file: !38, line: 300, baseType: !246, offset: 704)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !496, file: !38, line: 301, baseType: !519, size: 32, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !122, line: 168, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 166, size: 32, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !520, file: !122, line: 167, baseType: !126, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !496, file: !38, line: 302, baseType: !337, size: 64, offset: 768)
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
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !496, file: !38, line: 304, baseType: !347, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !496, file: !38, line: 305, baseType: !127, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !496, file: !38, line: 306, baseType: !543, size: 576, offset: 1024)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !544)
!544 = !{!545, !547, !548, !549, !550, !551, !552, !553, !556}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !543, file: !38, line: 206, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !349)
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
!560 = !{!495, !337, !126}
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
!586 = !{!126, !337, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !338, file: !44, line: 1425, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !592)
!592 = !{!593, !597, !598, !602, !603, !604, !619, !642, !646, !647, !670}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !591, file: !38, line: 429, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!126, !337, !126, !126, !326}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !591, file: !38, line: 430, baseType: !433, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !591, file: !38, line: 431, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!126, !337, !7}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !591, file: !38, line: 432, baseType: !599, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !591, file: !38, line: 433, baseType: !433, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !591, file: !38, line: 434, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!126, !337, !126, !608}
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
!622 = !{!126, !337, !525, !623}
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
!645 = !{!126, !337, !587, !623}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !591, file: !38, line: 438, baseType: !620, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !591, file: !38, line: 439, baseType: !648, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!126, !337, !651}
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
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !338, file: !44, line: 1426, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !338, file: !44, line: 1427, baseType: !127, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !338, file: !44, line: 1428, baseType: !127, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !338, file: !44, line: 1429, baseType: !127, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !338, file: !44, line: 1430, baseType: !183, size: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !338, file: !44, line: 1431, baseType: !680, size: 256, offset: 896)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !681, line: 35, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !684, !685, !687}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !681, line: 36, baseType: !507, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !680, file: !681, line: 42, baseType: !507, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !680, file: !681, line: 46, baseType: !686, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !247, line: 29, baseType: !254)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !680, file: !681, line: 47, baseType: !140, size: 128, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !338, file: !44, line: 1432, baseType: !126, size: 32, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !338, file: !44, line: 1433, baseType: !519, size: 32, offset: 1184)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !338, file: !44, line: 1437, baseType: !691, size: 64, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !338, file: !44, line: 1449, baseType: !696, size: 64, offset: 1280)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !200, line: 34, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !696, file: !200, line: 35, baseType: !203, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !338, file: !44, line: 1450, baseType: !140, size: 128, offset: 1344)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !338, file: !44, line: 1451, baseType: !701, size: 64, offset: 1472)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !338, file: !44, line: 1452, baseType: !704, size: 64, offset: 1536)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !706, line: 40, flags: DIFlagFwdDecl)
!706 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !338, file: !44, line: 1453, baseType: !708, size: 64, offset: 1600)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !338, file: !44, line: 1454, baseType: !385, size: 128, offset: 1664)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !338, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !338, file: !44, line: 1456, baseType: !713, size: 2432, offset: 1856)
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
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !338, file: !44, line: 1458, baseType: !754, size: 2112, offset: 4288)
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
!768 = !{!769, !785, !787, !2484, !2485}
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
!794 = !{!795, !801, !803, !804, !809, !810, !811, !812, !813, !814, !815, !816, !820, !845, !856, !948, !949, !950, !961, !962, !964, !965, !1771, !1772, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1854, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1869, !1870, !1871, !1873, !1874, !1875, !1876, !1877, !1878, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1902, !1907, !1908, !1909, !1910, !1911, !1915, !1918, !1921, !1924, !1927, !1931, !2032, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2080, !2081, !2082, !2083, !2084, !2089, !2090, !2091, !2094, !2095, !2098, !2101, !2104, !2105, !2145, !2148, !2149, !2228, !2229, !2232, !2233, !2236, !2237, !2238, !2242, !2243, !2244, !2257, !2258, !2259, !2269, !2274, !2275, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
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
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1088, file: !44, line: 921, baseType: !317, size: 128, offset: 128)
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
!1111 = !{!347, !1087, !347, !126}
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
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
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
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1132, file: !44, line: 326, baseType: !347, size: 64, offset: 64)
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
!1159 = !{!126, !1131, !328}
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
!1171 = !{!126, !1164, !283, !126, !347, !223, !7}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1165, file: !44, line: 1778, baseType: !347, size: 64, offset: 64)
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
!1214 = !{!126, !1087, !347, !347, !126}
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
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1224, file: !44, line: 1079, baseType: !347, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1224, file: !44, line: 1080, baseType: !347, size: 64, offset: 1024)
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
!1293 = !{!328, !1223}
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
!1359 = !{!473, !1087, !126, !347, !347}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1105, file: !44, line: 1852, baseType: !1361, size: 64, offset: 1792)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !459, !1087}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1105, file: !44, line: 1856, baseType: !1365, size: 64, offset: 1856)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1116, !1087, !347, !1087, !347, !1119, !7}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1105, file: !44, line: 1858, baseType: !1369, size: 64, offset: 1920)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!347, !1087, !347, !1087, !347, !347, !7}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1105, file: !44, line: 1861, baseType: !1212, size: 64, offset: 1984)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1088, file: !44, line: 929, baseType: !246, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1088, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1088, file: !44, line: 931, baseType: !507, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1088, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1088, file: !44, line: 933, baseType: !1378, size: 32, offset: 544)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !122, line: 150, baseType: !7)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1088, file: !44, line: 934, baseType: !503, size: 192, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1088, file: !44, line: 935, baseType: !347, size: 64, offset: 768)
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
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1502, file: !1444, line: 105, baseType: !328, size: 8, offset: 160)
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
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !159, line: 18, flags: DIFlagFwdDecl)
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
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1600, file: !44, line: 904, baseType: !347, size: 64, offset: 192)
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
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !970, file: !130, line: 548, baseType: !328, size: 8, offset: 6944)
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
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !165, line: 93, baseType: !349)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1824, file: !1825, line: 9, baseType: !349, size: 64, offset: 64)
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
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1930, line: 35, flags: DIFlagFwdDecl)
!1930 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !793, file: !706, line: 969, baseType: !1932, size: 64, offset: 9216)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1934, line: 82, size: 7296, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1971, !1980, !1981, !1983, !1984, !1985, !1988, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2018, !2019, !2026, !2027, !2028, !2029, !2030, !2031}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1933, file: !1934, line: 83, baseType: !805, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1933, file: !1934, line: 84, baseType: !519, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1933, file: !1934, line: 85, baseType: !126, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1933, file: !1934, line: 86, baseType: !140, size: 128, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1933, file: !1934, line: 88, baseType: !758, size: 128, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1933, file: !1934, line: 91, baseType: !792, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1933, file: !1934, line: 94, baseType: !1943, size: 192, offset: 448)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1944, line: 30, size: 192, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1943, file: !1944, line: 31, baseType: !140, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1943, file: !1944, line: 32, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1949, line: 25, baseType: !1950)
!1949 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1949, line: 23, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1950, file: !1949, line: 24, baseType: !958, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1933, file: !1934, line: 97, baseType: !381, size: 64, offset: 640)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1933, file: !1934, line: 100, baseType: !126, size: 32, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1933, file: !1934, line: 106, baseType: !126, size: 32, offset: 736)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1933, file: !1934, line: 107, baseType: !792, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1933, file: !1934, line: 110, baseType: !126, size: 32, offset: 832)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1934, line: 111, baseType: !7, size: 32, offset: 864)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1933, file: !1934, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1933, file: !1934, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1933, file: !1934, line: 128, baseType: !126, size: 32, offset: 928)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1933, file: !1934, line: 129, baseType: !140, size: 128, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1933, file: !1934, line: 132, baseType: !873, size: 512, offset: 1088)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1933, file: !1934, line: 133, baseType: !881, size: 64, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1933, file: !1934, line: 140, baseType: !1966, size: 256, offset: 1664)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1967, size: 256, elements: !1434)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1934, line: 38, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1967, file: !1934, line: 39, baseType: !223, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1967, file: !1934, line: 40, baseType: !223, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1933, file: !1934, line: 146, baseType: !1972, size: 192, offset: 1920)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1934, line: 66, size: 192, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1972, file: !1934, line: 67, baseType: !1975, size: 192)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1934, line: 47, size: 192, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1975, file: !1934, line: 48, baseType: !509, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1975, file: !1934, line: 49, baseType: !509, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1975, file: !1934, line: 50, baseType: !509, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1933, file: !1934, line: 150, baseType: !1891, size: 640, offset: 2112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1933, file: !1934, line: 153, baseType: !1982, size: 256, offset: 2752)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 256, elements: !1394)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1933, file: !1934, line: 159, baseType: !1386, size: 64, offset: 3008)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1933, file: !1934, line: 162, baseType: !126, size: 32, offset: 3072)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1933, file: !1934, line: 164, baseType: !1986, size: 64, offset: 3136)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1934, line: 164, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1933, file: !1934, line: 175, baseType: !1989, size: 32, offset: 3200)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !190, line: 805, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 798, size: 32, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1990, file: !190, line: 803, baseType: !189, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1990, file: !190, line: 804, baseType: !246, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1933, file: !1934, line: 176, baseType: !223, size: 64, offset: 3264)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1933, file: !1934, line: 176, baseType: !223, size: 64, offset: 3328)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1933, file: !1934, line: 176, baseType: !223, size: 64, offset: 3392)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1933, file: !1934, line: 176, baseType: !223, size: 64, offset: 3456)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1933, file: !1934, line: 177, baseType: !223, size: 64, offset: 3520)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1933, file: !1934, line: 178, baseType: !223, size: 64, offset: 3584)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1933, file: !1934, line: 179, baseType: !1879, size: 128, offset: 3648)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1933, file: !1934, line: 180, baseType: !127, size: 64, offset: 3776)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1933, file: !1934, line: 180, baseType: !127, size: 64, offset: 3840)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1933, file: !1934, line: 180, baseType: !127, size: 64, offset: 3904)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1933, file: !1934, line: 180, baseType: !127, size: 64, offset: 3968)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1933, file: !1934, line: 181, baseType: !127, size: 64, offset: 4032)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1933, file: !1934, line: 181, baseType: !127, size: 64, offset: 4096)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1933, file: !1934, line: 181, baseType: !127, size: 64, offset: 4160)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1933, file: !1934, line: 181, baseType: !127, size: 64, offset: 4224)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1933, file: !1934, line: 182, baseType: !127, size: 64, offset: 4288)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1933, file: !1934, line: 182, baseType: !127, size: 64, offset: 4352)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1933, file: !1934, line: 182, baseType: !127, size: 64, offset: 4416)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1933, file: !1934, line: 182, baseType: !127, size: 64, offset: 4480)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1933, file: !1934, line: 183, baseType: !127, size: 64, offset: 4544)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1933, file: !1934, line: 183, baseType: !127, size: 64, offset: 4608)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1933, file: !1934, line: 184, baseType: !2016, offset: 4672)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2017, line: 12, elements: !260)
!2017 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1933, file: !1934, line: 192, baseType: !225, size: 64, offset: 4672)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1933, file: !1934, line: 203, baseType: !2020, size: 2048, offset: 4736)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2021, size: 2048, elements: !1913)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2022, line: 43, size: 128, elements: !2023)
!2022 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2021, file: !2022, line: 44, baseType: !1121, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2021, file: !2022, line: 45, baseType: !1121, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1933, file: !1934, line: 220, baseType: !328, size: 8, offset: 6784)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1933, file: !1934, line: 221, baseType: !1476, size: 16, offset: 6800)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1933, file: !1934, line: 222, baseType: !1476, size: 16, offset: 6816)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1933, file: !1934, line: 224, baseType: !966, size: 64, offset: 6848)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1933, file: !1934, line: 227, baseType: !503, size: 192, offset: 6912)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1933, file: !1934, line: 233, baseType: !503, size: 192, offset: 7104)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !793, file: !706, line: 970, baseType: !2033, size: 64, offset: 9280)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1934, line: 20, size: 16576, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2034, file: !1934, line: 21, baseType: !246)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2034, file: !1934, line: 22, baseType: !805, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2034, file: !1934, line: 23, baseType: !758, size: 128, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2034, file: !1934, line: 24, baseType: !2040, size: 16384, offset: 192)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2041, size: 16384, elements: !2061)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1944, line: 49, size: 256, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2041, file: !1944, line: 50, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1944, line: 35, size: 256, elements: !2045)
!2045 = !{!2046, !2053, !2054, !2060}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2044, file: !1944, line: 37, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2048, line: 19, baseType: !2049)
!2048 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2048, line: 18, baseType: !2051)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !126}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2044, file: !1944, line: 38, baseType: !127, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2044, file: !1944, line: 44, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2048, line: 22, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2048, line: 21, baseType: !2058)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2044, file: !1944, line: 46, baseType: !1948, size: 64, offset: 192)
!2061 = !{!2062}
!2062 = !DISubrange(count: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !793, file: !706, line: 971, baseType: !1948, size: 64, offset: 9344)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !793, file: !706, line: 972, baseType: !1948, size: 64, offset: 9408)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !793, file: !706, line: 974, baseType: !1948, size: 64, offset: 9472)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !793, file: !706, line: 975, baseType: !1943, size: 192, offset: 9536)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !793, file: !706, line: 976, baseType: !127, size: 64, offset: 9728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !793, file: !706, line: 977, baseType: !1119, size: 64, offset: 9792)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !793, file: !706, line: 978, baseType: !7, size: 32, offset: 9856)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !793, file: !706, line: 980, baseType: !780, size: 64, offset: 9920)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !793, file: !706, line: 989, baseType: !2072, size: 128, offset: 9984)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2073, line: 35, size: 128, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2072, file: !2073, line: 36, baseType: !126, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2072, file: !2073, line: 37, baseType: !519, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2072, file: !2073, line: 38, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2073, line: 23, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !793, file: !706, line: 992, baseType: !223, size: 64, offset: 10112)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !793, file: !706, line: 993, baseType: !223, size: 64, offset: 10176)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !793, file: !706, line: 996, baseType: !246, offset: 10240)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !793, file: !706, line: 999, baseType: !686, offset: 10240)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !793, file: !706, line: 1001, baseType: !2085, size: 64, offset: 10240)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !706, line: 636, size: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !706, line: 637, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !793, file: !706, line: 1005, baseType: !927, size: 128, offset: 10304)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !793, file: !706, line: 1007, baseType: !792, size: 64, offset: 10432)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !793, file: !706, line: 1009, baseType: !2092, size: 64, offset: 10496)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !706, line: 1009, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !793, file: !706, line: 1043, baseType: !123, size: 64, offset: 10560)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !793, file: !706, line: 1046, baseType: !2096, size: 64, offset: 10624)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !706, line: 41, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !793, file: !706, line: 1050, baseType: !2099, size: 64, offset: 10688)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !706, line: 42, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !793, file: !706, line: 1054, baseType: !2102, size: 64, offset: 10752)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !706, line: 55, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !793, file: !706, line: 1056, baseType: !704, size: 64, offset: 10816)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !793, file: !706, line: 1058, baseType: !2106, size: 64, offset: 10880)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2108, line: 99, size: 704, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2122, !2143, !2144}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2107, file: !2108, line: 100, baseType: !507, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2107, file: !2108, line: 101, baseType: !519, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2107, file: !2108, line: 102, baseType: !519, size: 32, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !2108, line: 105, baseType: !246, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2107, file: !2108, line: 107, baseType: !155, size: 16, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2107, file: !2108, line: 109, baseType: !2116, size: 128, offset: 192)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2117, line: 292, size: 128, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2116, file: !2117, line: 293, baseType: !246)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2116, file: !2117, line: 295, baseType: !121, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2116, file: !2117, line: 296, baseType: !123, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2107, file: !2108, line: 110, baseType: !2123, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2108, line: 73, size: 448, elements: !2125)
!2125 = !{!2126, !2129, !2130, !2137, !2142}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2124, file: !2108, line: 74, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2108, line: 74, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2124, file: !2108, line: 75, baseType: !2106, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2108, line: 83, baseType: !2131, size: 128, offset: 128)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !2108, line: 83, size: 128, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2131, file: !2108, line: 84, baseType: !140, size: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2131, file: !2108, line: 85, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !130, line: 117, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !2108, line: 87, baseType: !2138, size: 128, offset: 256)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !2108, line: 87, size: 128, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2138, file: !2108, line: 88, baseType: !385, size: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2138, file: !2108, line: 89, baseType: !777, size: 128, align: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !2108, line: 92, baseType: !7, size: 32, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2107, file: !2108, line: 111, baseType: !381, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2107, file: !2108, line: 113, baseType: !1755, size: 256, offset: 448)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !793, file: !706, line: 1061, baseType: !2146, size: 64, offset: 10944)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !706, line: 43, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !793, file: !706, line: 1064, baseType: !127, size: 64, offset: 11008)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !793, file: !706, line: 1065, baseType: !2150, size: 64, offset: 11072)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1944, line: 14, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1944, line: 12, size: 384, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !1944, line: 13, baseType: !2155, size: 384)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2152, file: !1944, line: 13, size: 384, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2155, file: !1944, line: 13, baseType: !126, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2155, file: !1944, line: 13, baseType: !126, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2155, file: !1944, line: 13, baseType: !126, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2155, file: !1944, line: 13, baseType: !2161, size: 256, offset: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2162, line: 32, size: 256, elements: !2163)
!2162 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2169, !2182, !2188, !2197, !2217, !2222}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2161, file: !2162, line: 37, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 34, size: 64, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2165, file: !2162, line: 35, baseType: !1856, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2165, file: !2162, line: 36, baseType: !164, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2161, file: !2162, line: 45, baseType: !2170, size: 192)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 40, size: 192, elements: !2171)
!2171 = !{!2172, !2174, !2175, !2181}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2170, file: !2162, line: 41, baseType: !2173, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !165, line: 95, baseType: !126)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2170, file: !2162, line: 42, baseType: !126, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2170, file: !2162, line: 43, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2162, line: 11, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2162, line: 8, size: 64, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2177, file: !2162, line: 9, baseType: !126, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2177, file: !2162, line: 10, baseType: !123, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2170, file: !2162, line: 44, baseType: !126, size: 32, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2161, file: !2162, line: 52, baseType: !2183, size: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 48, size: 128, elements: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2183, file: !2162, line: 49, baseType: !1856, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2183, file: !2162, line: 50, baseType: !164, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2183, file: !2162, line: 51, baseType: !2176, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2161, file: !2162, line: 61, baseType: !2189, size: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 55, size: 256, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2196}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2189, file: !2162, line: 56, baseType: !1856, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2189, file: !2162, line: 57, baseType: !164, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2189, file: !2162, line: 58, baseType: !126, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2189, file: !2162, line: 59, baseType: !2195, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !165, line: 94, baseType: !1118)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2189, file: !2162, line: 60, baseType: !2195, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2161, file: !2162, line: 95, baseType: !2198, size: 256)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 64, size: 256, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2198, file: !2162, line: 65, baseType: !123, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !2162, line: 77, baseType: !2202, size: 192, offset: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2198, file: !2162, line: 77, size: 192, elements: !2203)
!2203 = !{!2204, !2205, !2212}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2202, file: !2162, line: 82, baseType: !1476, size: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2202, file: !2162, line: 88, baseType: !2206, size: 192)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !2162, line: 84, size: 192, elements: !2207)
!2207 = !{!2208, !2210, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2206, file: !2162, line: 85, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !911)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2206, file: !2162, line: 86, baseType: !123, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2206, file: !2162, line: 87, baseType: !123, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2202, file: !2162, line: 93, baseType: !2213, size: 96)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !2162, line: 90, size: 96, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2213, file: !2162, line: 91, baseType: !2209, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2213, file: !2162, line: 92, baseType: !219, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2161, file: !2162, line: 101, baseType: !2218, size: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 98, size: 128, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2218, file: !2162, line: 99, baseType: !473, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2218, file: !2162, line: 100, baseType: !126, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2161, file: !2162, line: 108, baseType: !2223, size: 128)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2162, line: 104, size: 128, elements: !2224)
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2223, file: !2162, line: 105, baseType: !123, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2223, file: !2162, line: 106, baseType: !126, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2223, file: !2162, line: 107, baseType: !7, size: 32, offset: 96)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !793, file: !706, line: 1067, baseType: !2016, offset: 11136)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !793, file: !706, line: 1099, baseType: !2230, size: 64, offset: 11136)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !706, line: 56, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !793, file: !706, line: 1103, baseType: !140, size: 128, offset: 11200)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !793, file: !706, line: 1104, baseType: !2234, size: 64, offset: 11328)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !706, line: 46, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !793, file: !706, line: 1105, baseType: !503, size: 192, offset: 11392)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !793, file: !706, line: 1106, baseType: !7, size: 32, offset: 11584)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !793, file: !706, line: 1109, baseType: !2239, size: 128, offset: 11648)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, size: 128, elements: !1434)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !706, line: 51, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !793, file: !706, line: 1110, baseType: !503, size: 192, offset: 11776)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !793, file: !706, line: 1111, baseType: !140, size: 128, offset: 11968)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !793, file: !706, line: 1173, baseType: !2245, size: 64, offset: 12096)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2247, line: 62, size: 256, align: 256, elements: !2248)
!2247 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2250, !2251, !2256}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2246, file: !2247, line: 75, baseType: !219, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2246, file: !2247, line: 90, baseType: !219, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2246, file: !2247, line: 124, baseType: !2252, size: 64, offset: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2246, file: !2247, line: 109, size: 64, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2252, file: !2247, line: 110, baseType: !224, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2252, file: !2247, line: 112, baseType: !224, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2246, file: !2247, line: 144, baseType: !219, size: 32, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !793, file: !706, line: 1174, baseType: !217, size: 32, offset: 12160)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !793, file: !706, line: 1179, baseType: !127, size: 64, offset: 12224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !793, file: !706, line: 1182, baseType: !2260, size: 128, offset: 12288)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1671, line: 76, size: 128, elements: !2261)
!2261 = !{!2262, !2267, !2268}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2260, file: !1671, line: 85, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2264, line: 7, size: 64, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !{!2266}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2263, file: !2264, line: 12, baseType: !955, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2260, file: !1671, line: 88, baseType: !328, size: 8, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2260, file: !1671, line: 95, baseType: !328, size: 8, offset: 72)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !706, line: 1184, baseType: !2270, size: 128, offset: 12416)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !706, line: 1184, size: 128, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2270, file: !706, line: 1185, baseType: !805, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2270, file: !706, line: 1186, baseType: !777, size: 128, align: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !793, file: !706, line: 1190, baseType: !1345, size: 64, offset: 12544)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !793, file: !706, line: 1192, baseType: !2276, size: 128, offset: 12608)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1671, line: 64, size: 128, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2276, file: !1671, line: 65, baseType: !128, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2276, file: !1671, line: 67, baseType: !219, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2276, file: !1671, line: 68, baseType: !219, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !793, file: !706, line: 1206, baseType: !126, size: 32, offset: 12736)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !793, file: !706, line: 1207, baseType: !126, size: 32, offset: 12768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !793, file: !706, line: 1209, baseType: !127, size: 64, offset: 12800)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !793, file: !706, line: 1219, baseType: !223, size: 64, offset: 12864)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !793, file: !706, line: 1220, baseType: !223, size: 64, offset: 12928)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !793, file: !706, line: 1317, baseType: !126, size: 32, offset: 12992)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !793, file: !706, line: 1319, baseType: !792, size: 64, offset: 13056)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !793, file: !706, line: 1322, baseType: !2289, size: 64, offset: 13120)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2291, line: 56, size: 512, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2299, !2300, !2302}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2290, file: !2291, line: 57, baseType: !2289, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2290, file: !2291, line: 58, baseType: !123, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2290, file: !2291, line: 59, baseType: !127, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2290, file: !2291, line: 60, baseType: !127, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2290, file: !2291, line: 61, baseType: !2298, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2290, file: !2291, line: 62, baseType: !7, size: 32, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2290, file: !2291, line: 63, baseType: !2301, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !122, line: 153, baseType: !223)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2290, file: !2291, line: 64, baseType: !2303, size: 64, offset: 448)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !793, file: !706, line: 1326, baseType: !805, size: 32, offset: 13184)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !793, file: !706, line: 1342, baseType: !123, size: 64, offset: 13248)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !793, file: !706, line: 1343, baseType: !224, size: 64, offset: 13312)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !793, file: !706, line: 1344, baseType: !223, size: 64, offset: 13376)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !793, file: !706, line: 1345, baseType: !224, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !793, file: !706, line: 1346, baseType: !224, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !793, file: !706, line: 1347, baseType: !224, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !793, file: !706, line: 1348, baseType: !777, size: 128, align: 64, offset: 13504)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !793, file: !706, line: 1358, baseType: !2314, size: 34816, offset: 13824)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2315, line: 485, size: 34816, elements: !2316)
!2315 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2316 = !{!2317, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2346, !2347, !2348, !2349, !2350, !2351, !2354, !2355, !2356}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2314, file: !2315, line: 487, baseType: !2318, size: 192)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2319, size: 192, elements: !397)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2320, line: 16, size: 64, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2319, file: !2320, line: 17, baseType: !1143, size: 16)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2319, file: !2320, line: 18, baseType: !1143, size: 16, offset: 16)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2319, file: !2320, line: 19, baseType: !1143, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2319, file: !2320, line: 19, baseType: !1143, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2319, file: !2320, line: 19, baseType: !1143, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2319, file: !2320, line: 19, baseType: !1143, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2319, file: !2320, line: 19, baseType: !1143, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2319, file: !2320, line: 20, baseType: !1143, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2314, file: !2315, line: 491, baseType: !127, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2314, file: !2315, line: 495, baseType: !155, size: 16, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2314, file: !2315, line: 496, baseType: !155, size: 16, offset: 272)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2314, file: !2315, line: 497, baseType: !155, size: 16, offset: 288)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2314, file: !2315, line: 498, baseType: !155, size: 16, offset: 304)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2314, file: !2315, line: 502, baseType: !127, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2314, file: !2315, line: 503, baseType: !127, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2314, file: !2315, line: 514, baseType: !2343, size: 256, offset: 448)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, size: 256, elements: !1394)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2315, line: 483, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2314, file: !2315, line: 516, baseType: !127, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2314, file: !2315, line: 518, baseType: !127, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2314, file: !2315, line: 520, baseType: !127, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2314, file: !2315, line: 521, baseType: !127, size: 64, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2314, file: !2315, line: 522, baseType: !127, size: 64, offset: 960)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2314, file: !2315, line: 528, baseType: !2352, size: 64, offset: 1024)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2315, line: 10, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2314, file: !2315, line: 535, baseType: !127, size: 64, offset: 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2314, file: !2315, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2314, file: !2315, line: 540, baseType: !2357, size: 33280, offset: 1536)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2358, line: 317, size: 33280, elements: !2359)
!2358 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2359 = !{!2360, !2361, !2362}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2357, file: !2358, line: 330, baseType: !7, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2357, file: !2358, line: 337, baseType: !127, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2357, file: !2358, line: 348, baseType: !2363, size: 32768, offset: 512)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2358, line: 304, size: 32768, elements: !2364)
!2364 = !{!2365, !2380, !2417, !2467, !2480}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2363, file: !2358, line: 305, baseType: !2366, size: 896)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2358, line: 12, size: 896, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2379}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2366, file: !2358, line: 13, baseType: !217, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2366, file: !2358, line: 14, baseType: !217, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2366, file: !2358, line: 15, baseType: !217, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2366, file: !2358, line: 16, baseType: !217, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2366, file: !2358, line: 17, baseType: !217, size: 32, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2366, file: !2358, line: 18, baseType: !217, size: 32, offset: 160)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2366, file: !2358, line: 19, baseType: !217, size: 32, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2366, file: !2358, line: 22, baseType: !2376, size: 640, offset: 224)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 640, elements: !2377)
!2377 = !{!2378}
!2378 = !DISubrange(count: 20)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2366, file: !2358, line: 25, baseType: !217, size: 32, offset: 864)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2363, file: !2358, line: 306, baseType: !2381, size: 4096, align: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2358, line: 34, size: 4096, align: 128, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2402, !2403, !2404, !2406, !2408, !2412}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2381, file: !2358, line: 35, baseType: !1143, size: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2381, file: !2358, line: 36, baseType: !1143, size: 16, offset: 16)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2381, file: !2358, line: 37, baseType: !1143, size: 16, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2381, file: !2358, line: 38, baseType: !1143, size: 16, offset: 48)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2381, file: !2358, line: 39, baseType: !2388, size: 128, offset: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2381, file: !2358, line: 39, size: 128, elements: !2389)
!2389 = !{!2390, !2395}
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2358, line: 40, baseType: !2391, size: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2388, file: !2358, line: 40, size: 128, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2391, file: !2358, line: 41, baseType: !223, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2391, file: !2358, line: 42, baseType: !223, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2358, line: 44, baseType: !2396, size: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2388, file: !2358, line: 44, size: 128, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2396, file: !2358, line: 45, baseType: !217, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2396, file: !2358, line: 46, baseType: !217, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2396, file: !2358, line: 47, baseType: !217, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2396, file: !2358, line: 48, baseType: !217, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2381, file: !2358, line: 51, baseType: !217, size: 32, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2381, file: !2358, line: 52, baseType: !217, size: 32, offset: 224)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2381, file: !2358, line: 55, baseType: !2405, size: 1024, offset: 256)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !233)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2381, file: !2358, line: 58, baseType: !2407, size: 2048, offset: 1280)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2048, elements: !2061)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2381, file: !2358, line: 60, baseType: !2409, size: 384, offset: 3328)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !2410)
!2410 = !{!2411}
!2411 = !DISubrange(count: 12)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2381, file: !2358, line: 62, baseType: !2413, size: 384, offset: 3712)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2381, file: !2358, line: 62, size: 384, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2413, file: !2358, line: 63, baseType: !2409, size: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2413, file: !2358, line: 64, baseType: !2409, size: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2363, file: !2358, line: 307, baseType: !2418, size: 1088)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2358, line: 79, size: 1088, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2466}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2418, file: !2358, line: 80, baseType: !217, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2418, file: !2358, line: 81, baseType: !217, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2418, file: !2358, line: 82, baseType: !217, size: 32, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2418, file: !2358, line: 83, baseType: !217, size: 32, offset: 96)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2418, file: !2358, line: 84, baseType: !217, size: 32, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2418, file: !2358, line: 85, baseType: !217, size: 32, offset: 160)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2418, file: !2358, line: 86, baseType: !217, size: 32, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2418, file: !2358, line: 88, baseType: !2376, size: 640, offset: 224)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2418, file: !2358, line: 89, baseType: !940, size: 8, offset: 864)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2418, file: !2358, line: 90, baseType: !940, size: 8, offset: 872)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2418, file: !2358, line: 91, baseType: !940, size: 8, offset: 880)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2418, file: !2358, line: 92, baseType: !940, size: 8, offset: 888)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2418, file: !2358, line: 93, baseType: !940, size: 8, offset: 896)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2418, file: !2358, line: 94, baseType: !940, size: 8, offset: 904)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2418, file: !2358, line: 95, baseType: !2435, size: 64, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2437, line: 11, size: 128, elements: !2438)
!2437 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2436, file: !2437, line: 12, baseType: !473, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2436, file: !2437, line: 13, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2443, line: 56, size: 1344, elements: !2444)
!2443 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2442, file: !2443, line: 61, baseType: !127, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2442, file: !2443, line: 62, baseType: !127, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2442, file: !2443, line: 63, baseType: !127, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2442, file: !2443, line: 64, baseType: !127, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2442, file: !2443, line: 65, baseType: !127, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2442, file: !2443, line: 66, baseType: !127, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2442, file: !2443, line: 68, baseType: !127, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2442, file: !2443, line: 69, baseType: !127, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2442, file: !2443, line: 70, baseType: !127, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2442, file: !2443, line: 71, baseType: !127, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2442, file: !2443, line: 72, baseType: !127, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2442, file: !2443, line: 73, baseType: !127, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2442, file: !2443, line: 74, baseType: !127, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2442, file: !2443, line: 75, baseType: !127, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2442, file: !2443, line: 76, baseType: !127, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2442, file: !2443, line: 81, baseType: !127, size: 64, offset: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2442, file: !2443, line: 83, baseType: !127, size: 64, offset: 1024)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2442, file: !2443, line: 84, baseType: !127, size: 64, offset: 1088)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !2443, line: 85, baseType: !127, size: 64, offset: 1152)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2442, file: !2443, line: 86, baseType: !127, size: 64, offset: 1216)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2442, file: !2443, line: 87, baseType: !127, size: 64, offset: 1280)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2418, file: !2358, line: 96, baseType: !217, size: 32, offset: 1024)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2363, file: !2358, line: 308, baseType: !2468, size: 4608, align: 512)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2358, line: 289, size: 4608, align: 512, elements: !2469)
!2469 = !{!2470, !2471, !2478}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2468, file: !2358, line: 290, baseType: !2381, size: 4096, align: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2468, file: !2358, line: 291, baseType: !2472, size: 512, offset: 4096)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2358, line: 268, size: 512, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2472, file: !2358, line: 269, baseType: !223, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2472, file: !2358, line: 270, baseType: !223, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2472, file: !2358, line: 271, baseType: !2477, size: 384, offset: 128)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !1494)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2468, file: !2358, line: 292, baseType: !2479, offset: 4608)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, elements: !1592)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2363, file: !2358, line: 309, baseType: !2481, size: 32768)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 32768, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 4096)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !766, file: !767, line: 16, baseType: !758, size: 128, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !766, file: !767, line: 17, baseType: !519, size: 32, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !338, file: !44, line: 1465, baseType: !123, size: 64, offset: 6400)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !338, file: !44, line: 1468, baseType: !217, size: 32, offset: 6464)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !338, file: !44, line: 1470, baseType: !554, size: 64, offset: 6528)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !338, file: !44, line: 1471, baseType: !554, size: 64, offset: 6592)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !338, file: !44, line: 1473, baseType: !219, size: 32, offset: 6656)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !338, file: !44, line: 1474, baseType: !2492, size: 64, offset: 6720)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !338, file: !44, line: 1477, baseType: !2495, size: 256, offset: 6784)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !233)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !338, file: !44, line: 1478, baseType: !2497, size: 128, offset: 7040)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2498, line: 18, baseType: !2499)
!2498 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2498, line: 16, size: 128, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2499, file: !2498, line: 17, baseType: !2502, size: 128)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 128, elements: !1913)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !338, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !338, file: !44, line: 1481, baseType: !1378, size: 32, offset: 7200)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !338, file: !44, line: 1487, baseType: !503, size: 192, offset: 7232)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !338, file: !44, line: 1493, baseType: !283, size: 64, offset: 7424)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !338, file: !44, line: 1495, baseType: !263, size: 64, offset: 7488)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !338, file: !44, line: 1500, baseType: !126, size: 32, offset: 7552)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !338, file: !44, line: 1502, baseType: !2510, size: 448, offset: 7616)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !476, line: 60, size: 448, elements: !2511)
!2511 = !{!2512, !2517, !2518, !2519, !2520, !2521, !2522}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2510, file: !476, line: 61, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!127, !2516, !474}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2510, file: !476, line: 63, baseType: !2513, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2510, file: !476, line: 66, baseType: !473, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2510, file: !476, line: 67, baseType: !126, size: 32, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2510, file: !476, line: 68, baseType: !7, size: 32, offset: 224)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2510, file: !476, line: 71, baseType: !140, size: 128, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2510, file: !476, line: 77, baseType: !2523, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !338, file: !44, line: 1505, baseType: !507, size: 64, offset: 8064)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !338, file: !44, line: 1508, baseType: !507, size: 64, offset: 8128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !338, file: !44, line: 1511, baseType: !126, size: 32, offset: 8192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !338, file: !44, line: 1514, baseType: !1614, size: 32, offset: 8224)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !338, file: !44, line: 1517, baseType: !2529, size: 64, offset: 8256)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1756, line: 18, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !338, file: !44, line: 1518, baseType: !381, size: 64, offset: 8320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !338, file: !44, line: 1525, baseType: !1582, size: 64, offset: 8384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !338, file: !44, line: 1532, baseType: !2534, size: 64, offset: 8448)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2535, line: 52, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2534, file: !2535, line: 53, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2535, line: 40, size: 256, elements: !2540)
!2540 = !{!2541, !2542, !2547}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2539, file: !2535, line: 42, baseType: !246)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2539, file: !2535, line: 44, baseType: !2543, size: 192)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2535, line: 28, size: 192, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2543, file: !2535, line: 29, baseType: !140, size: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2543, file: !2535, line: 31, baseType: !473, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2539, file: !2535, line: 49, baseType: !473, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !338, file: !44, line: 1533, baseType: !2534, size: 64, offset: 8512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !338, file: !44, line: 1534, baseType: !777, size: 128, align: 64, offset: 8576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !338, file: !44, line: 1535, baseType: !1755, size: 256, offset: 8704)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !338, file: !44, line: 1537, baseType: !503, size: 192, offset: 8960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !338, file: !44, line: 1542, baseType: !126, size: 32, offset: 9152)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !338, file: !44, line: 1545, baseType: !246, offset: 9184)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !338, file: !44, line: 1546, baseType: !140, size: 128, offset: 9216)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !338, file: !44, line: 1548, baseType: !246, offset: 9344)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !338, file: !44, line: 1549, baseType: !140, size: 128, offset: 9344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !184, file: !185, line: 104, baseType: !127, size: 64, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !184, file: !185, line: 105, baseType: !123, size: 64, offset: 960)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !185, line: 107, baseType: !2560, size: 128, offset: 1024)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !185, line: 107, size: 128, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2560, file: !185, line: 108, baseType: !140, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2560, file: !185, line: 109, baseType: !1189, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !184, file: !185, line: 111, baseType: !140, size: 128, offset: 1152)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !184, file: !185, line: 112, baseType: !140, size: 128, offset: 1280)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !184, file: !185, line: 120, baseType: !2567, size: 128, offset: 1408)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !185, line: 116, size: 128, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2567, file: !185, line: 117, baseType: !385, size: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2567, file: !185, line: 118, baseType: !199, size: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2567, file: !185, line: 119, baseType: !777, size: 128, align: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !177, file: !44, line: 1866, baseType: !2573, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!283, !183, !150, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2578, line: 10, size: 128, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2579 = !{!2580, !2584}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2577, file: !2578, line: 11, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !123}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2577, file: !2578, line: 12, baseType: !123, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !177, file: !44, line: 1867, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!126, !150, !126}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !177, file: !44, line: 1868, baseType: !2590, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!2593, !150, !126}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !177, file: !44, line: 1870, baseType: !2596, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!126, !183, !309, !126}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !177, file: !44, line: 1872, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!126, !150, !183, !154, !328}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !177, file: !44, line: 1873, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!126, !183, !150, !183}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !177, file: !44, line: 1874, baseType: !2608, size: 64, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!126, !150, !183}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !177, file: !44, line: 1875, baseType: !2612, size: 64, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!126, !150, !183, !283}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !177, file: !44, line: 1876, baseType: !2616, size: 64, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!126, !150, !183, !154}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !177, file: !44, line: 1877, baseType: !2608, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !177, file: !44, line: 1878, baseType: !2621, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!126, !150, !183, !154, !342}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !177, file: !44, line: 1879, baseType: !2625, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!126, !150, !183, !150, !183, !7}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !177, file: !44, line: 1881, baseType: !2629, size: 64, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!126, !183, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2645, !2646, !2647}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2633, file: !44, line: 220, baseType: !7, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2633, file: !44, line: 221, baseType: !154, size: 16, offset: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2633, file: !44, line: 222, baseType: !158, size: 32, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2633, file: !44, line: 223, baseType: !167, size: 32, offset: 96)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2633, file: !44, line: 224, baseType: !347, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2633, file: !44, line: 225, baseType: !2641, size: 128, offset: 192)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !555, line: 13, size: 128, elements: !2642)
!2642 = !{!2643, !2644}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2641, file: !555, line: 14, baseType: !554, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2641, file: !555, line: 15, baseType: !473, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2633, file: !44, line: 226, baseType: !2641, size: 128, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2633, file: !44, line: 227, baseType: !2641, size: 128, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2633, file: !44, line: 234, baseType: !1087, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !177, file: !44, line: 1882, baseType: !2649, size: 64, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!126, !326, !2652, !217, !7}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2654, line: 22, size: 1152, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2653, file: !2654, line: 23, baseType: !217, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2653, file: !2654, line: 24, baseType: !154, size: 16, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2653, file: !2654, line: 25, baseType: !7, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2653, file: !2654, line: 26, baseType: !1472, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2653, file: !2654, line: 27, baseType: !223, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2653, file: !2654, line: 28, baseType: !223, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2653, file: !2654, line: 37, baseType: !223, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2653, file: !2654, line: 38, baseType: !342, size: 32, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2653, file: !2654, line: 39, baseType: !342, size: 32, offset: 352)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2653, file: !2654, line: 40, baseType: !158, size: 32, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2653, file: !2654, line: 41, baseType: !167, size: 32, offset: 416)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2653, file: !2654, line: 42, baseType: !347, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2653, file: !2654, line: 43, baseType: !2641, size: 128, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2653, file: !2654, line: 44, baseType: !2641, size: 128, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2653, file: !2654, line: 45, baseType: !2641, size: 128, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2653, file: !2654, line: 46, baseType: !2641, size: 128, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2653, file: !2654, line: 47, baseType: !223, size: 64, offset: 1024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2653, file: !2654, line: 48, baseType: !223, size: 64, offset: 1088)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !177, file: !44, line: 1883, baseType: !2675, size: 64, offset: 960)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!1116, !183, !309, !1119}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !177, file: !44, line: 1884, baseType: !2679, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!126, !150, !2682, !223, !223}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !177, file: !44, line: 1886, baseType: !2685, size: 64, offset: 1088)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!126, !150, !2688, !126}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !177, file: !44, line: 1887, baseType: !2690, size: 64, offset: 1152)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!126, !150, !183, !1087, !7, !154}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !177, file: !44, line: 1890, baseType: !2616, size: 64, offset: 1216)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !177, file: !44, line: 1891, baseType: !2695, size: 64, offset: 1280)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!126, !150, !2593, !126}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !151, file: !44, line: 623, baseType: !337, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !151, file: !44, line: 624, baseType: !146, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !151, file: !44, line: 631, baseType: !127, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 639, baseType: !2702, size: 32, offset: 384)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 639, size: 32, elements: !2703)
!2703 = !{!2704, !2706}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2702, file: !44, line: 640, baseType: !2705, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2702, file: !44, line: 641, baseType: !7, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !151, file: !44, line: 643, baseType: !342, size: 32, offset: 416)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !151, file: !44, line: 644, baseType: !347, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !151, file: !44, line: 645, baseType: !2641, size: 128, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !151, file: !44, line: 646, baseType: !2641, size: 128, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !151, file: !44, line: 647, baseType: !2641, size: 128, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !151, file: !44, line: 648, baseType: !246, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !151, file: !44, line: 649, baseType: !155, size: 16, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !151, file: !44, line: 650, baseType: !940, size: 8, offset: 912)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !151, file: !44, line: 651, baseType: !940, size: 8, offset: 920)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !151, file: !44, line: 652, baseType: !668, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !151, file: !44, line: 659, baseType: !127, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !151, file: !44, line: 660, baseType: !680, size: 256, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !151, file: !44, line: 662, baseType: !127, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !151, file: !44, line: 663, baseType: !127, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !151, file: !44, line: 665, baseType: !385, size: 128, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !151, file: !44, line: 666, baseType: !140, size: 128, offset: 1600)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !151, file: !44, line: 675, baseType: !140, size: 128, offset: 1728)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !151, file: !44, line: 676, baseType: !140, size: 128, offset: 1856)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !151, file: !44, line: 677, baseType: !140, size: 128, offset: 1984)
!2726 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 678, baseType: !2727, size: 128, offset: 2112)
!2727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 678, size: 128, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2727, file: !44, line: 679, baseType: !381, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2727, file: !44, line: 680, baseType: !777, size: 128, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !151, file: !44, line: 682, baseType: !509, size: 64, offset: 2240)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !151, file: !44, line: 683, baseType: !509, size: 64, offset: 2304)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !151, file: !44, line: 684, baseType: !519, size: 32, offset: 2368)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !151, file: !44, line: 685, baseType: !519, size: 32, offset: 2400)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !151, file: !44, line: 686, baseType: !519, size: 32, offset: 2432)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !151, file: !44, line: 688, baseType: !519, size: 32, offset: 2464)
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 690, baseType: !2738, size: 64, offset: 2496)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 690, size: 64, elements: !2739)
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2738, file: !44, line: 691, baseType: !1103, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2738, file: !44, line: 692, baseType: !412, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !151, file: !44, line: 694, baseType: !2743, size: 64, offset: 2560)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2744, file: !44, line: 1101, baseType: !246)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2744, file: !44, line: 1102, baseType: !140, size: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2744, file: !44, line: 1103, baseType: !140, size: 128, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2744, file: !44, line: 1104, baseType: !140, size: 128, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !151, file: !44, line: 695, baseType: !147, size: 1216, align: 64, offset: 2624)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !151, file: !44, line: 696, baseType: !140, size: 128, offset: 3840)
!2752 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !44, line: 697, baseType: !2753, size: 64, offset: 3968)
!2753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !44, line: 697, size: 64, elements: !2754)
!2754 = !{!2755, !2756, !2757, !3064, !3065}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2753, file: !44, line: 698, baseType: !1345, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2753, file: !44, line: 699, baseType: !701, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2753, file: !44, line: 700, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2760, line: 14, size: 832, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2761 = !{!2762, !3059, !3060, !3061, !3062, !3063}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2759, file: !2760, line: 15, baseType: !2763, size: 512)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2764, line: 64, size: 512, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2767, !2768, !2770, !2810, !2910, !3049, !3054, !3055, !3056, !3057, !3058}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2763, file: !2764, line: 65, baseType: !283, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2763, file: !2764, line: 66, baseType: !140, size: 128, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2763, file: !2764, line: 67, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2763, file: !2764, line: 68, baseType: !2771, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2764, line: 192, size: 704, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2772, file: !2764, line: 193, baseType: !140, size: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2772, file: !2764, line: 194, baseType: !246, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2772, file: !2764, line: 195, baseType: !2763, size: 512, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2772, file: !2764, line: 196, baseType: !2778, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2764, line: 156, size: 192, elements: !2781)
!2781 = !{!2782, !2787, !2792}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2780, file: !2764, line: 157, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!126, !2771, !2769}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2780, file: !2764, line: 158, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!283, !2771, !2769}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2780, file: !2764, line: 159, baseType: !2793, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!126, !2771, !2769, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2764, line: 148, size: 20736, elements: !2799)
!2799 = !{!2800, !2802, !2804, !2805, !2809}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2798, file: !2764, line: 149, baseType: !2801, size: 192)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 192, elements: !397)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2798, file: !2764, line: 150, baseType: !2803, size: 4096, offset: 192)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 4096, elements: !2061)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2798, file: !2764, line: 151, baseType: !126, size: 32, offset: 4288)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2798, file: !2764, line: 152, baseType: !2806, size: 16384, offset: 4320)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 16384, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 2048)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2798, file: !2764, line: 153, baseType: !126, size: 32, offset: 20704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2763, file: !2764, line: 69, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2764, line: 138, size: 448, elements: !2813)
!2813 = !{!2814, !2818, !2837, !2839, !2872, !2900, !2904}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2812, file: !2764, line: 139, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2769}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2812, file: !2764, line: 140, baseType: !2819, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2822, line: 230, size: 128, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2823 = !{!2824, !2833}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2821, file: !2822, line: 231, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!1116, !2769, !2828, !309}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2822, line: 30, size: 128, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2829, file: !2822, line: 31, baseType: !283, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2829, file: !2822, line: 32, baseType: !154, size: 16, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2821, file: !2822, line: 232, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!1116, !2769, !2828, !283, !1119}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2812, file: !2764, line: 141, baseType: !2838, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2812, file: !2764, line: 142, baseType: !2840, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2822, line: 84, size: 320, elements: !2844)
!2844 = !{!2845, !2846, !2850, !2869, !2870}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2843, file: !2822, line: 85, baseType: !283, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2843, file: !2822, line: 86, baseType: !2847, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!154, !2769, !2828, !126}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2843, file: !2822, line: 88, baseType: !2851, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!154, !2769, !2854, !126}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2822, line: 168, size: 448, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2864, !2865}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2855, file: !2822, line: 169, baseType: !2829, size: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2855, file: !2822, line: 170, baseType: !1119, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2855, file: !2822, line: 171, baseType: !123, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2855, file: !2822, line: 172, baseType: !2861, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!1116, !1087, !2769, !2854, !309, !347, !1119}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2855, file: !2822, line: 174, baseType: !2861, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2855, file: !2822, line: 176, baseType: !2866, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!126, !1087, !2769, !2854, !973}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2843, file: !2822, line: 90, baseType: !2838, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2843, file: !2822, line: 91, baseType: !2871, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2812, file: !2764, line: 143, baseType: !2873, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2876, !2769}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !2879)
!2879 = !{!2880, !2881, !2885, !2889, !2895, !2899}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2878, file: !61, line: 40, baseType: !60, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2878, file: !61, line: 41, baseType: !2882, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!328}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2878, file: !61, line: 42, baseType: !2886, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!123}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2878, file: !61, line: 43, baseType: !2890, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!2303, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2878, file: !61, line: 44, baseType: !2896, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!2303}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2878, file: !61, line: 45, baseType: !2581, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2812, file: !2764, line: 144, baseType: !2901, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!2303, !2769}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2812, file: !2764, line: 145, baseType: !2905, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2769, !2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2763, file: !2764, line: 70, baseType: !2911, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !362, line: 123, size: 1024, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !3042, !3043, !3044, !3045, !3046}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2912, file: !362, line: 124, baseType: !519, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2912, file: !362, line: 125, baseType: !519, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2912, file: !362, line: 135, baseType: !2911, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2912, file: !362, line: 136, baseType: !283, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2912, file: !362, line: 138, baseType: !829, size: 192, align: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2912, file: !362, line: 140, baseType: !2303, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2912, file: !362, line: 141, baseType: !7, size: 32, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !362, line: 142, baseType: !2922, size: 256, offset: 512)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !362, line: 142, size: 256, elements: !2923)
!2923 = !{!2924, !2970, !2974}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2922, file: !362, line: 143, baseType: !2925, size: 192)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !362, line: 91, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2925, file: !362, line: 92, baseType: !127, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2925, file: !362, line: 94, baseType: !930, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2925, file: !362, line: 100, baseType: !2930, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !362, line: 180, size: 704, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2942, !2943, !2944, !2968, !2969}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2931, file: !362, line: 182, baseType: !2911, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2931, file: !362, line: 183, baseType: !7, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2931, file: !362, line: 186, baseType: !2936, size: 192, offset: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2937, line: 19, size: 192, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !{!2939, !2940, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2936, file: !2937, line: 20, baseType: !2116, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2936, file: !2937, line: 21, baseType: !7, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2936, file: !2937, line: 22, baseType: !7, size: 32, offset: 160)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2931, file: !362, line: 187, baseType: !217, size: 32, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2931, file: !362, line: 188, baseType: !217, size: 32, offset: 352)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2931, file: !362, line: 189, baseType: !2945, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !362, line: 168, size: 320, elements: !2947)
!2947 = !{!2948, !2952, !2956, !2960, !2964}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2946, file: !362, line: 169, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!126, !459, !2930}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2946, file: !362, line: 171, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!126, !2911, !283, !154}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2946, file: !362, line: 173, baseType: !2957, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!126, !2911}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2946, file: !362, line: 174, baseType: !2961, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!126, !2911, !2911, !283}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2946, file: !362, line: 176, baseType: !2965, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!126, !459, !2911, !2930}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2931, file: !362, line: 192, baseType: !140, size: 128, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2931, file: !362, line: 194, baseType: !758, size: 128, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2922, file: !362, line: 144, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !362, line: 103, size: 64, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2971, file: !362, line: 104, baseType: !2911, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2922, file: !362, line: 145, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !362, line: 107, size: 256, elements: !2976)
!2976 = !{!2977, !3037, !3040, !3041}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2975, file: !362, line: 108, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !362, line: 217, size: 768, elements: !2981)
!2981 = !{!2982, !3002, !3006, !3010, !3014, !3018, !3022, !3026, !3027, !3028, !3029, !3033}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2980, file: !362, line: 222, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!126, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !362, line: 197, size: 1088, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2987, file: !362, line: 199, baseType: !2911, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2987, file: !362, line: 200, baseType: !1087, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2987, file: !362, line: 201, baseType: !459, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2987, file: !362, line: 202, baseType: !123, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2987, file: !362, line: 205, baseType: !503, size: 192, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2987, file: !362, line: 206, baseType: !503, size: 192, offset: 448)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2987, file: !362, line: 207, baseType: !126, size: 32, offset: 640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2987, file: !362, line: 208, baseType: !140, size: 128, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2987, file: !362, line: 209, baseType: !309, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2987, file: !362, line: 211, baseType: !1119, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2987, file: !362, line: 212, baseType: !328, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2987, file: !362, line: 213, baseType: !328, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2987, file: !362, line: 214, baseType: !1001, size: 64, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2980, file: !362, line: 223, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2986}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2980, file: !362, line: 236, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!126, !459, !123}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2980, file: !362, line: 238, baseType: !3011, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!123, !459, !1122}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2980, file: !362, line: 239, baseType: !3015, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!123, !459, !123, !1122}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2980, file: !362, line: 240, baseType: !3019, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !459, !123}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2980, file: !362, line: 242, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!1116, !2986, !309, !1119, !347}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2980, file: !362, line: 252, baseType: !1119, size: 64, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2980, file: !362, line: 259, baseType: !328, size: 8, offset: 512)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2980, file: !362, line: 260, baseType: !3023, size: 64, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2980, file: !362, line: 263, baseType: !3030, size: 64, offset: 640)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!1178, !2986, !1180}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2980, file: !362, line: 266, baseType: !3034, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!126, !2986, !973}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2975, file: !362, line: 109, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !362, line: 31, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2975, file: !362, line: 110, baseType: !347, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2975, file: !362, line: 111, baseType: !2911, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2912, file: !362, line: 148, baseType: !123, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2912, file: !362, line: 154, baseType: !223, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2912, file: !362, line: 156, baseType: !155, size: 16, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2912, file: !362, line: 157, baseType: !154, size: 16, offset: 912)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2912, file: !362, line: 158, baseType: !3047, size: 64, offset: 960)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !362, line: 32, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2763, file: !2764, line: 71, baseType: !3050, size: 32, offset: 448)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3051, line: 19, size: 32, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3050, file: !3051, line: 20, baseType: !805, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2763, file: !2764, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2763, file: !2764, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2763, file: !2764, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2763, file: !2764, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2763, file: !2764, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2759, file: !2760, line: 16, baseType: !376, size: 64, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2759, file: !2760, line: 17, baseType: !1103, size: 64, offset: 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2759, file: !2760, line: 18, baseType: !140, size: 128, offset: 640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2759, file: !2760, line: 19, baseType: !342, size: 32, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2759, file: !2760, line: 20, baseType: !7, size: 32, offset: 800)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2753, file: !44, line: 701, baseType: !309, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2753, file: !44, line: 702, baseType: !7, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !151, file: !44, line: 705, baseType: !219, size: 32, offset: 4032)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !151, file: !44, line: 708, baseType: !219, size: 32, offset: 4064)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !151, file: !44, line: 709, baseType: !2492, size: 64, offset: 4096)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !151, file: !44, line: 720, baseType: !123, size: 64, offset: 4160)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !147, file: !44, line: 453, baseType: !2116, size: 128, offset: 64)
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
!3112 = !{!126, !1087, !146, !347, !7, !7, !2298, !1302}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3081, file: !44, line: 388, baseType: !3114, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!126, !1087, !146, !347, !7, !7, !128, !123}
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
!3142 = !{!328, !128, !3143}
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
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
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
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3184, file: !130, line: 117, baseType: !2135, size: 64, offset: 128)
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
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3260, file: !3255, line: 99, baseType: !328, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3260, file: !3255, line: 100, baseType: !328, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
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
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!3314 = !{!3315, !3367, !3372, !4015, !4020, !4025, !4030, !4035, !0, !4037}
!3315 = !DIGlobalVariableExpression(var: !3316, expr: !DIExpression())
!3316 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 26, type: !3317, isLocal: true, isDefinition: true, align: 64)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3318)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3319, line: 69, size: 320, elements: !3320)
!3319 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3320 = !{!3321, !3322, !3323, !3339, !3341, !3345, !3346}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3318, file: !3319, line: 70, baseType: !283, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3318, file: !3319, line: 71, baseType: !376, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3318, file: !3319, line: 72, baseType: !3324, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3326)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3319, line: 47, size: 256, elements: !3327)
!3327 = !{!3328, !3329, !3334, !3338}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !3319, line: 49, baseType: !7, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3326, file: !3319, line: 51, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!126, !283, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3326, file: !3319, line: 53, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!126, !309, !3333}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3326, file: !3319, line: 55, baseType: !2581, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3318, file: !3319, line: 73, baseType: !3340, size: 16, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3318, file: !3319, line: 74, baseType: !3342, size: 8, offset: 208)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !218, line: 16, baseType: !3343)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !220, line: 20, baseType: !3344)
!3344 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3318, file: !3319, line: 75, baseType: !940, size: 8, offset: 216)
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !3319, line: 76, baseType: !3347, size: 64, offset: 256)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3318, file: !3319, line: 76, size: 64, elements: !3348)
!3348 = !{!3349, !3350, !3357}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3347, file: !3319, line: 77, baseType: !123, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3347, file: !3319, line: 78, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3319, line: 86, size: 128, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3353, file: !3319, line: 87, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3353, file: !3319, line: 88, baseType: !309, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3347, file: !3319, line: 79, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3319, line: 92, size: 256, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3360, file: !3319, line: 94, baseType: !7, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3360, file: !3319, line: 95, baseType: !7, size: 32, offset: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3360, file: !3319, line: 96, baseType: !786, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3360, file: !3319, line: 97, baseType: !3324, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3360, file: !3319, line: 98, baseType: !123, size: 64, offset: 192)
!3367 = !DIGlobalVariableExpression(var: !3368, expr: !DIExpression())
!3368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype246", scope: !2, file: !3, line: 26, type: !3369, isLocal: true, isDefinition: true, align: 8)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 288, elements: !3370)
!3370 = !{!3371}
!3371 = !DISubrange(count: 36)
!3372 = !DIGlobalVariableExpression(var: !3373, expr: !DIExpression())
!3373 = distinct !DIGlobalVariable(name: "vb2_dma_sg_memops", scope: !2, file: !3, line: 640, type: !3374, isLocal: false, isDefinition: true)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_mem_ops", file: !3376, line: 118, size: 960, elements: !3377)
!3376 = !DIFile(filename: "./include/media/videobuf2-core.h", directory: "/home/lizy2001/genbc/linux")
!3377 = !{!3378, !3815, !3816, !3985, !3989, !3990, !3991, !3992, !3996, !3997, !4001, !4002, !4006, !4007, !4011}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3375, file: !3376, line: 119, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!123, !3382, !127, !127, !93, !121}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3390, !3391, !3442, !3515, !3516, !3517, !3518, !3519, !3528, !3633, !3646, !3650, !3651, !3655, !3657, !3658, !3659, !3663, !3669, !3670, !3673, !3677, !3767, !3768, !3769, !3770, !3771, !3803, !3804, !3805, !3808, !3811, !3812, !3813, !3814}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3383, file: !73, line: 462, baseType: !2763, size: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3383, file: !73, line: 463, baseType: !3382, size: 64, offset: 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3383, file: !73, line: 465, baseType: !3388, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3383, file: !73, line: 467, baseType: !283, size: 64, offset: 640)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3383, file: !73, line: 468, baseType: !3392, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3402, !3407, !3411}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3394, file: !73, line: 88, baseType: !283, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3394, file: !73, line: 89, baseType: !2840, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3394, file: !73, line: 90, baseType: !3399, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!126, !3382, !2797}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3394, file: !73, line: 91, baseType: !3403, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!309, !3382, !3406, !2908, !2909}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3394, file: !73, line: 93, baseType: !3408, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3382}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3394, file: !73, line: 95, baseType: !3412, size: 64, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3415)
!3415 = !{!3416, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3414, file: !80, line: 279, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!126, !3382}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3414, file: !80, line: 280, baseType: !3408, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3414, file: !80, line: 281, baseType: !3417, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3414, file: !80, line: 282, baseType: !3417, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3414, file: !80, line: 283, baseType: !3417, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3414, file: !80, line: 284, baseType: !3417, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3414, file: !80, line: 285, baseType: !3417, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3414, file: !80, line: 286, baseType: !3417, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3414, file: !80, line: 287, baseType: !3417, size: 64, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3414, file: !80, line: 288, baseType: !3417, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3414, file: !80, line: 289, baseType: !3417, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3414, file: !80, line: 290, baseType: !3417, size: 64, offset: 704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3414, file: !80, line: 291, baseType: !3417, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3414, file: !80, line: 292, baseType: !3417, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3414, file: !80, line: 293, baseType: !3417, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3414, file: !80, line: 294, baseType: !3417, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3414, file: !80, line: 295, baseType: !3417, size: 64, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3414, file: !80, line: 296, baseType: !3417, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3414, file: !80, line: 297, baseType: !3417, size: 64, offset: 1152)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3414, file: !80, line: 298, baseType: !3417, size: 64, offset: 1216)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3414, file: !80, line: 299, baseType: !3417, size: 64, offset: 1280)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3414, file: !80, line: 300, baseType: !3417, size: 64, offset: 1344)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3414, file: !80, line: 301, baseType: !3417, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3383, file: !73, line: 470, baseType: !3443, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3445, line: 82, size: 1408, elements: !3446)
!3445 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3510, !3513, !3514}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3444, file: !3445, line: 83, baseType: !283, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3444, file: !3445, line: 84, baseType: !283, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3444, file: !3445, line: 85, baseType: !3382, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3444, file: !3445, line: 86, baseType: !2840, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3444, file: !3445, line: 87, baseType: !2840, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3444, file: !3445, line: 88, baseType: !2840, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3444, file: !3445, line: 90, baseType: !3454, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!126, !3382, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3470, !3474, !3475, !3476, !3477, !3478, !3486, !3487, !3488, !3489, !3490, !3491}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3458, file: !67, line: 96, baseType: !283, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3458, file: !67, line: 97, baseType: !3443, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3458, file: !67, line: 99, baseType: !376, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3458, file: !67, line: 100, baseType: !283, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3458, file: !67, line: 102, baseType: !328, size: 8, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3458, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3458, file: !67, line: 105, baseType: !3467, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3469)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3458, file: !67, line: 106, baseType: !3471, size: 64, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3458, file: !67, line: 108, baseType: !3417, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3458, file: !67, line: 109, baseType: !3408, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3458, file: !67, line: 110, baseType: !3417, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3458, file: !67, line: 111, baseType: !3408, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3458, file: !67, line: 112, baseType: !3479, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!126, !3382, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3484)
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3483, file: !80, line: 51, baseType: !126, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3458, file: !67, line: 113, baseType: !3417, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3458, file: !67, line: 114, baseType: !2840, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3458, file: !67, line: 115, baseType: !2840, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3458, file: !67, line: 117, baseType: !3412, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3458, file: !67, line: 118, baseType: !3408, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3458, file: !67, line: 120, baseType: !3492, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3444, file: !3445, line: 91, baseType: !3399, size: 64, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3444, file: !3445, line: 92, baseType: !3417, size: 64, offset: 512)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3444, file: !3445, line: 93, baseType: !3408, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3444, file: !3445, line: 94, baseType: !3417, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3444, file: !3445, line: 95, baseType: !3408, size: 64, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3444, file: !3445, line: 97, baseType: !3417, size: 64, offset: 768)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3444, file: !3445, line: 98, baseType: !3417, size: 64, offset: 832)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3444, file: !3445, line: 100, baseType: !3479, size: 64, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3444, file: !3445, line: 101, baseType: !3417, size: 64, offset: 960)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3444, file: !3445, line: 103, baseType: !3417, size: 64, offset: 1024)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3444, file: !3445, line: 105, baseType: !3417, size: 64, offset: 1088)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3444, file: !3445, line: 107, baseType: !3412, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3444, file: !3445, line: 109, baseType: !3507, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3445, line: 109, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3444, file: !3445, line: 111, baseType: !3511, size: 64, offset: 1280)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3445, line: 111, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3444, file: !3445, line: 112, baseType: !391, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3444, file: !3445, line: 114, baseType: !328, size: 8, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3383, file: !73, line: 471, baseType: !3457, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3383, file: !73, line: 473, baseType: !123, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3383, file: !73, line: 475, baseType: !123, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3383, file: !73, line: 480, baseType: !503, size: 192, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3383, file: !73, line: 484, baseType: !3520, size: 576, offset: 1216)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3520, file: !73, line: 362, baseType: !140, size: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3520, file: !73, line: 363, baseType: !140, size: 128, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3520, file: !73, line: 364, baseType: !140, size: 128, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3520, file: !73, line: 365, baseType: !140, size: 128, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3520, file: !73, line: 366, baseType: !328, size: 8, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3520, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3383, file: !73, line: 485, baseType: !3529, size: 2304, offset: 1792)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3626, !3630}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3529, file: !80, line: 566, baseType: !3482, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3529, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3529, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3529, file: !80, line: 569, baseType: !328, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3529, file: !80, line: 570, baseType: !328, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3529, file: !80, line: 571, baseType: !328, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3529, file: !80, line: 572, baseType: !328, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3529, file: !80, line: 573, baseType: !328, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3529, file: !80, line: 574, baseType: !328, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3529, file: !80, line: 575, baseType: !328, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3529, file: !80, line: 576, baseType: !328, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3529, file: !80, line: 577, baseType: !217, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3529, file: !80, line: 578, baseType: !246, offset: 96)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3529, file: !80, line: 580, baseType: !140, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3529, file: !80, line: 581, baseType: !1730, size: 192, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3529, file: !80, line: 582, baseType: !3547, size: 64, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3549, line: 43, size: 1472, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3558, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3548, file: !3549, line: 44, baseType: !283, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3548, file: !3549, line: 45, baseType: !126, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3548, file: !3549, line: 46, baseType: !140, size: 128, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3548, file: !3549, line: 47, baseType: !246, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3548, file: !3549, line: 48, baseType: !3556, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3548, file: !3549, line: 49, baseType: !3559, size: 320, offset: 320)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3560, line: 11, size: 320, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3569}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 16, baseType: !385, size: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3559, file: !3560, line: 17, baseType: !127, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3559, file: !3560, line: 18, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3559, file: !3560, line: 19, baseType: !217, size: 32, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3548, file: !3549, line: 50, baseType: !127, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3548, file: !3549, line: 51, baseType: !881, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3548, file: !3549, line: 52, baseType: !881, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3548, file: !3549, line: 53, baseType: !881, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3548, file: !3549, line: 54, baseType: !881, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3548, file: !3549, line: 55, baseType: !881, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3548, file: !3549, line: 56, baseType: !127, size: 64, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3548, file: !3549, line: 57, baseType: !127, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3548, file: !3549, line: 58, baseType: !127, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3548, file: !3549, line: 59, baseType: !127, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3548, file: !3549, line: 60, baseType: !127, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3548, file: !3549, line: 61, baseType: !3382, size: 64, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3548, file: !3549, line: 62, baseType: !328, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3548, file: !3549, line: 63, baseType: !328, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3529, file: !80, line: 583, baseType: !328, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3529, file: !80, line: 584, baseType: !328, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3529, file: !80, line: 585, baseType: !328, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3529, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3529, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3529, file: !80, line: 592, baseType: !873, size: 512, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3529, file: !80, line: 593, baseType: !223, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3529, file: !80, line: 594, baseType: !1755, size: 256, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3529, file: !80, line: 595, baseType: !758, size: 128, offset: 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3529, file: !80, line: 596, baseType: !3556, size: 64, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3529, file: !80, line: 597, baseType: !519, size: 32, offset: 1600)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3529, file: !80, line: 598, baseType: !519, size: 32, offset: 1632)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3529, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3529, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3529, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3529, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3529, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3529, file: !80, line: 604, baseType: !328, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3529, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3529, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3529, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3529, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3529, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3529, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3529, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3529, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3529, file: !80, line: 613, baseType: !126, size: 32, offset: 1792)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3529, file: !80, line: 614, baseType: !126, size: 32, offset: 1824)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3529, file: !80, line: 615, baseType: !223, size: 64, offset: 1856)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3529, file: !80, line: 616, baseType: !223, size: 64, offset: 1920)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3529, file: !80, line: 617, baseType: !223, size: 64, offset: 1984)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3529, file: !80, line: 618, baseType: !223, size: 64, offset: 2048)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3529, file: !80, line: 620, baseType: !3617, size: 64, offset: 2112)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3618, file: !80, line: 537, baseType: !246)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3618, file: !80, line: 538, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3618, file: !80, line: 540, baseType: !140, size: 128, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3618, file: !80, line: 543, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3529, file: !80, line: 621, baseType: !3627, size: 64, offset: 2176)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3382, !1450}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3529, file: !80, line: 622, baseType: !3631, size: 64, offset: 2240)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3383, file: !73, line: 486, baseType: !3634, size: 64, offset: 4096)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3643, !3644, !3645}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3635, file: !80, line: 643, baseType: !3414, size: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3635, file: !80, line: 644, baseType: !3417, size: 64, offset: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3635, file: !80, line: 645, baseType: !3640, size: 64, offset: 1536)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !3382, !328}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3635, file: !80, line: 646, baseType: !3417, size: 64, offset: 1600)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3635, file: !80, line: 647, baseType: !3408, size: 64, offset: 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3635, file: !80, line: 648, baseType: !3408, size: 64, offset: 1728)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3383, file: !73, line: 493, baseType: !3647, size: 64, offset: 4160)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3649, line: 13, flags: DIFlagFwdDecl)
!3649 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3383, file: !73, line: 499, baseType: !140, size: 128, offset: 4224)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3383, file: !73, line: 502, baseType: !3652, size: 64, offset: 4352)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3383, file: !73, line: 504, baseType: !3656, size: 64, offset: 4416)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3383, file: !73, line: 505, baseType: !223, size: 64, offset: 4480)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3383, file: !73, line: 510, baseType: !223, size: 64, offset: 4544)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3383, file: !73, line: 511, baseType: !3660, size: 64, offset: 4608)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3383, file: !73, line: 513, baseType: !3664, size: 64, offset: 4672)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3665, file: !73, line: 293, baseType: !7, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3665, file: !73, line: 294, baseType: !127, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3383, file: !73, line: 515, baseType: !140, size: 128, offset: 4736)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3383, file: !73, line: 526, baseType: !3671, offset: 4864)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3672, line: 5, elements: !260)
!3672 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3383, file: !73, line: 528, baseType: !3674, size: 64, offset: 4864)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3676, line: 14, flags: DIFlagFwdDecl)
!3676 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3383, file: !73, line: 529, baseType: !3678, size: 64, offset: 4928)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3680, line: 17, size: 192, elements: !3681)
!3680 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3681 = !{!3682, !3683, !3766}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3679, file: !3680, line: 18, baseType: !3678, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3679, file: !3680, line: 19, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3680, line: 110, size: 1152, elements: !3687)
!3687 = !{!3688, !3692, !3696, !3702, !3708, !3712, !3716, !3721, !3725, !3726, !3730, !3734, !3738, !3749, !3750, !3751, !3752, !3762}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3686, file: !3680, line: 111, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3678, !3678}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3686, file: !3680, line: 112, baseType: !3693, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3678}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3686, file: !3680, line: 113, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!328, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3679)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3686, file: !3680, line: 114, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!2303, !3700, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3686, file: !3680, line: 116, baseType: !3709, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!328, !3700, !283}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3686, file: !3680, line: 118, baseType: !3713, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!126, !3700, !283, !7, !123, !1119}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3686, file: !3680, line: 123, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!126, !3700, !283, !3720, !1119}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3686, file: !3680, line: 126, baseType: !3722, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!283, !3700}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3686, file: !3680, line: 127, baseType: !3722, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3686, file: !3680, line: 128, baseType: !3727, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3678, !3700}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3686, file: !3680, line: 130, baseType: !3731, size: 64, offset: 640)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3678, !3700, !3678}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3686, file: !3680, line: 133, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3678, !3700, !283}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3686, file: !3680, line: 135, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!126, !3700, !283, !283, !7, !7, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3680, line: 43, size: 640, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3743, file: !3680, line: 44, baseType: !3678, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3743, file: !3680, line: 45, baseType: !7, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3743, file: !3680, line: 46, baseType: !3748, size: 512, offset: 128)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !911)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3686, file: !3680, line: 140, baseType: !3731, size: 64, offset: 832)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3686, file: !3680, line: 143, baseType: !3727, size: 64, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3686, file: !3680, line: 145, baseType: !3689, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3686, file: !3680, line: 146, baseType: !3753, size: 64, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!126, !3700, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3680, line: 29, size: 128, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3757, file: !3680, line: 30, baseType: !7, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3757, file: !3680, line: 31, baseType: !7, size: 32, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3757, file: !3680, line: 32, baseType: !3700, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3686, file: !3680, line: 148, baseType: !3763, size: 64, offset: 1088)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!126, !3700, !3382}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3679, file: !3680, line: 20, baseType: !3382, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3383, file: !73, line: 534, baseType: !342, size: 32, offset: 4992)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3383, file: !73, line: 535, baseType: !217, size: 32, offset: 5024)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3383, file: !73, line: 537, baseType: !246, offset: 5056)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3383, file: !73, line: 538, baseType: !140, size: 128, offset: 5056)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3383, file: !73, line: 540, baseType: !3772, size: 64, offset: 5184)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3774, line: 54, size: 960, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3786, !3790, !3791, !3792, !3793, !3797, !3801, !3802}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3773, file: !3774, line: 55, baseType: !283, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3773, file: !3774, line: 56, baseType: !376, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3773, file: !3774, line: 58, baseType: !2840, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3773, file: !3774, line: 59, baseType: !2840, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3773, file: !3774, line: 60, baseType: !2769, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3773, file: !3774, line: 62, baseType: !3399, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3773, file: !3774, line: 63, baseType: !3783, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!309, !3382, !3406}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3773, file: !3774, line: 65, baseType: !3787, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3772}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3773, file: !3774, line: 66, baseType: !3408, size: 64, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3773, file: !3774, line: 68, baseType: !3417, size: 64, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3773, file: !3774, line: 70, baseType: !2876, size: 64, offset: 640)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3773, file: !3774, line: 71, baseType: !3794, size: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!2303, !3382}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3773, file: !3774, line: 73, baseType: !3798, size: 64, offset: 768)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !3382, !2908, !2909}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3773, file: !3774, line: 75, baseType: !3412, size: 64, offset: 832)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3773, file: !3774, line: 77, baseType: !3511, size: 64, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3383, file: !73, line: 541, baseType: !2840, size: 64, offset: 5248)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3383, file: !73, line: 543, baseType: !3408, size: 64, offset: 5312)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3383, file: !73, line: 544, baseType: !3806, size: 64, offset: 5376)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3383, file: !73, line: 545, baseType: !3809, size: 64, offset: 5440)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3383, file: !73, line: 547, baseType: !328, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3383, file: !73, line: 548, baseType: !328, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3383, file: !73, line: 549, baseType: !328, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3383, file: !73, line: 550, baseType: !328, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3375, file: !3376, line: 123, baseType: !2581, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_dmabuf", scope: !3375, file: !3376, line: 124, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3820, !123, !127}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !3822, line: 305, size: 1856, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/dma-buf.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !{!3824, !3825, !3826, !3827, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3923, !3924, !3984}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3821, file: !3822, line: 306, baseType: !1119, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3821, file: !3822, line: 307, baseType: !1087, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "attachments", scope: !3821, file: !3822, line: 308, baseType: !140, size: 128, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3821, file: !3822, line: 309, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_ops", file: !3822, line: 35, size: 832, elements: !3831)
!3831 = !{!3832, !3833, !3873, !3877, !3881, !3882, !3886, !3890, !3894, !3898, !3899, !3903, !3907}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sgt_mapping", scope: !3830, file: !3822, line: 43, baseType: !328, size: 8)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3830, file: !3822, line: 71, baseType: !3834, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!126, !3820, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !3822, line: 389, size: 576, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3859, !3860, !3861, !3871, !3872}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !3838, file: !3822, line: 390, baseType: !3820, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3838, file: !3822, line: 391, baseType: !3382, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3838, file: !3822, line: 392, baseType: !140, size: 128, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !3838, file: !3822, line: 393, baseType: !3844, size: 64, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3846, line: 42, size: 128, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3847 = !{!3848, !3857, !3858}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3845, file: !3846, line: 43, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3846, line: 11, size: 256, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3850, file: !3846, line: 12, baseType: !127, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3850, file: !3846, line: 13, baseType: !7, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3850, file: !3846, line: 14, baseType: !7, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3850, file: !3846, line: 15, baseType: !3182, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3850, file: !3846, line: 17, baseType: !7, size: 32, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3845, file: !3846, line: 44, baseType: !7, size: 32, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3845, file: !3846, line: 45, baseType: !7, size: 32, offset: 96)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3838, file: !3822, line: 394, baseType: !93, size: 32, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "peer2peer", scope: !3838, file: !3822, line: 395, baseType: !328, size: 8, offset: 352)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "importer_ops", scope: !3838, file: !3822, line: 396, baseType: !3862, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3864)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attach_ops", file: !3822, line: 337, size: 128, elements: !3865)
!3865 = !{!3866, !3867}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "allow_peer2peer", scope: !3864, file: !3822, line: 344, baseType: !328, size: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "move_notify", scope: !3864, file: !3822, line: 364, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3837}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "importer_priv", scope: !3838, file: !3822, line: 397, baseType: !123, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3838, file: !3822, line: 398, baseType: !123, size: 64, offset: 512)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3830, file: !3822, line: 82, baseType: !3874, size: 64, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3820, !3837}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3830, file: !3822, line: 100, baseType: !3878, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!126, !3837}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !3830, file: !3822, line: 113, baseType: !3868, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "map_dma_buf", scope: !3830, file: !3822, line: 154, baseType: !3883, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!3844, !3837, !93}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dma_buf", scope: !3830, file: !3822, line: 164, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3837, !3844, !93}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3830, file: !3822, line: 178, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3820}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cpu_access", scope: !3830, file: !3822, line: 210, baseType: !3895, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!126, !3820, !93}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "end_cpu_access", scope: !3830, file: !3822, line: 229, baseType: !3895, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3830, file: !3822, line: 266, baseType: !3900, size: 64, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!126, !3820, !973}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !3830, file: !3822, line: 268, baseType: !3904, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!123, !3820}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !3830, file: !3822, line: 269, baseType: !3908, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3820, !123}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3821, file: !3822, line: 310, baseType: !503, size: 192, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "vmapping_counter", scope: !3821, file: !3822, line: 311, baseType: !7, size: 32, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "vmap_ptr", scope: !3821, file: !3822, line: 312, baseType: !123, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !3821, file: !3822, line: 313, baseType: !283, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3821, file: !3822, line: 314, baseType: !283, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "name_lock", scope: !3821, file: !3822, line: 315, baseType: !246, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3821, file: !3822, line: 316, baseType: !376, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3821, file: !3822, line: 317, baseType: !140, size: 128, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3821, file: !3822, line: 318, baseType: !123, size: 64, offset: 960)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3821, file: !3822, line: 319, baseType: !3921, size: 64, offset: 1024)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !3822, line: 319, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3821, file: !3822, line: 322, baseType: !758, size: 128, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cb_excl", scope: !3821, file: !3822, line: 329, baseType: !3925, size: 320, offset: 1216)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_poll_cb_t", file: !3822, line: 324, size: 320, elements: !3926)
!3926 = !{!3927, !3982, !3983}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3925, file: !3822, line: 325, baseType: !3928, size: 192)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !3929, line: 116, size: 192, elements: !3930)
!3929 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3928, file: !3929, line: 117, baseType: !140, size: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3928, file: !3929, line: 118, baseType: !3933, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !3929, line: 105, baseType: !3934)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3937, !3981}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !3929, line: 65, size: 512, elements: !3939)
!3939 = !{!3940, !3941, !3970, !3976, !3977, !3978, !3979, !3980}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3938, file: !3929, line: 66, baseType: !1056, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3938, file: !3929, line: 67, baseType: !3942, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !3929, line: 125, size: 576, elements: !3945)
!3945 = !{!3946, !3947, !3951, !3952, !3956, !3957, !3961, !3965, !3969}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !3944, file: !3929, line: 132, baseType: !328, size: 8)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !3944, file: !3929, line: 143, baseType: !3948, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!283, !3937}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !3944, file: !3929, line: 155, baseType: !3948, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !3944, file: !3929, line: 192, baseType: !3953, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!328, !3937}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !3944, file: !3929, line: 209, baseType: !3953, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3944, file: !3929, line: 231, baseType: !3958, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!473, !3937, !328, !473}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3944, file: !3929, line: 242, baseType: !3962, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3937}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !3944, file: !3929, line: 252, baseType: !3966, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3937, !309, !126}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !3944, file: !3929, line: 262, baseType: !3966, size: 64, offset: 512)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3938, file: !3929, line: 84, baseType: !3971, size: 128, offset: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3938, file: !3929, line: 84, size: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3971, file: !3929, line: 85, baseType: !140, size: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3971, file: !3929, line: 87, baseType: !881, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3971, file: !3929, line: 89, baseType: !777, size: 128, align: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3938, file: !3929, line: 91, baseType: !223, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !3938, file: !3929, line: 92, baseType: !223, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3938, file: !3929, line: 93, baseType: !127, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3938, file: !3929, line: 94, baseType: !3050, size: 32, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3938, file: !3929, line: 95, baseType: !126, size: 32, offset: 480)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3925, file: !3822, line: 326, baseType: !1189, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3925, file: !3822, line: 328, baseType: !1178, size: 32, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "cb_shared", scope: !3821, file: !3822, line: 329, baseType: !3925, size: 320, offset: 1536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get_userptr", scope: !3375, file: !3376, line: 126, baseType: !3986, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!123, !3382, !127, !127, !93}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "put_userptr", scope: !3375, file: !3376, line: 129, baseType: !2581, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3375, file: !3376, line: 131, baseType: !2581, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !3375, file: !3376, line: 132, baseType: !2581, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "attach_dmabuf", scope: !3375, file: !3376, line: 134, baseType: !3993, size: 64, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!123, !3382, !3820, !127, !93}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "detach_dmabuf", scope: !3375, file: !3376, line: 138, baseType: !2581, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "map_dmabuf", scope: !3375, file: !3376, line: 139, baseType: !3998, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!126, !123}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_dmabuf", scope: !3375, file: !3376, line: 140, baseType: !2581, size: 64, offset: 640)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3375, file: !3376, line: 142, baseType: !4003, size: 64, offset: 704)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!123, !123}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !3375, file: !3376, line: 143, baseType: !4003, size: 64, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "num_users", scope: !3375, file: !3376, line: 145, baseType: !4008, size: 64, offset: 832)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!7, !123}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3375, file: !3376, line: 147, baseType: !4012, size: 64, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!126, !123, !973}
!4015 = !DIGlobalVariableExpression(var: !4016, expr: !DIExpression())
!4016 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description257", scope: !2, file: !3, line: 659, type: !4017, isLocal: true, isDefinition: true, align: 8)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 696, elements: !4018)
!4018 = !{!4019}
!4019 = !DISubrange(count: 87)
!4020 = !DIGlobalVariableExpression(var: !4021, expr: !DIExpression())
!4021 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author258", scope: !2, file: !3, line: 660, type: !4022, isLocal: true, isDefinition: true, align: 8)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 368, elements: !4023)
!4023 = !{!4024}
!4024 = !DISubrange(count: 46)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file259", scope: !2, file: !3, line: 661, type: !4027, isLocal: true, isDefinition: true, align: 8)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 560, elements: !4028)
!4028 = !{!4029}
!4029 = !DISubrange(count: 70)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license260", scope: !2, file: !3, line: 661, type: !4032, isLocal: true, isDefinition: true, align: 8)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 232, elements: !4033)
!4033 = !{!4034}
!4034 = !DISubrange(count: 29)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 25, type: !126, isLocal: true, isDefinition: true)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(name: "vb2_dma_sg_dmabuf_ops", scope: !2, file: !3, line: 496, type: !3829, isLocal: true, isDefinition: true)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 184, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 23)
!4042 = !{i32 7, !"Dwarf Version", i32 4}
!4043 = !{i32 2, !"Debug Info Version", i32 3}
!4044 = !{i32 1, !"wchar_size", i32 2}
!4045 = !{i32 1, !"Code Model", i32 2}
!4046 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4047 = distinct !DISubprogram(name: "vb2_dma_sg_alloc", scope: !3, file: !3, line: 99, type: !3380, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4048 = !DILocalVariable(name: "dev", arg: 1, scope: !4047, file: !3, line: 99, type: !3382)
!4049 = !DILocation(line: 99, column: 46, scope: !4047)
!4050 = !DILocalVariable(name: "dma_attrs", arg: 2, scope: !4047, file: !3, line: 99, type: !127)
!4051 = !DILocation(line: 99, column: 65, scope: !4047)
!4052 = !DILocalVariable(name: "size", arg: 3, scope: !4047, file: !3, line: 100, type: !127)
!4053 = !DILocation(line: 100, column: 24, scope: !4047)
!4054 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4047, file: !3, line: 100, type: !93)
!4055 = !DILocation(line: 100, column: 54, scope: !4047)
!4056 = !DILocalVariable(name: "gfp_flags", arg: 5, scope: !4047, file: !3, line: 101, type: !121)
!4057 = !DILocation(line: 101, column: 16, scope: !4047)
!4058 = !DILocalVariable(name: "buf", scope: !4047, file: !3, line: 103, type: !4059)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_dma_sg_buf", file: !3, line: 34, size: 896, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4090}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4060, file: !3, line: 35, baseType: !3382, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4060, file: !3, line: 36, baseType: !123, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4060, file: !3, line: 37, baseType: !2298, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !4060, file: !3, line: 38, baseType: !4066, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_vector", file: !14, line: 1755, size: 128, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072, !4073}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_allocated", scope: !4067, file: !14, line: 1756, baseType: !7, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frames", scope: !4067, file: !14, line: 1757, baseType: !7, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "got_ref", scope: !4067, file: !14, line: 1758, baseType: !328, size: 8, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "is_pfns", scope: !4067, file: !14, line: 1759, baseType: !328, size: 8, offset: 72)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs", scope: !4067, file: !14, line: 1760, baseType: !4074, offset: 128)
!4074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !1769)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4060, file: !3, line: 39, baseType: !126, size: 32, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !4060, file: !3, line: 40, baseType: !93, size: 32, offset: 288)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "sg_table", scope: !4060, file: !3, line: 41, baseType: !3845, size: 128, offset: 320)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_sgt", scope: !4060, file: !3, line: 47, baseType: !3844, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4060, file: !3, line: 48, baseType: !1119, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !4060, file: !3, line: 49, baseType: !7, size: 32, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4060, file: !3, line: 50, baseType: !805, size: 32, offset: 608)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4060, file: !3, line: 51, baseType: !4083, size: 192, offset: 640)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_vmarea_handler", file: !4084, line: 28, size: 192, elements: !4085)
!4084 = !DIFile(filename: "./include/media/videobuf2-memops.h", directory: "/home/lizy2001/genbc/linux")
!4085 = !{!4086, !4088, !4089}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4083, file: !4084, line: 29, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4083, file: !4084, line: 30, baseType: !2581, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4083, file: !4084, line: 31, baseType: !123, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "db_attach", scope: !4060, file: !3, line: 53, baseType: !3837, size: 64, offset: 832)
!4091 = !DILocation(line: 103, column: 25, scope: !4047)
!4092 = !DILocalVariable(name: "sgt", scope: !4047, file: !3, line: 104, type: !3844)
!4093 = !DILocation(line: 104, column: 19, scope: !4047)
!4094 = !DILocalVariable(name: "ret", scope: !4047, file: !3, line: 105, type: !126)
!4095 = !DILocation(line: 105, column: 6, scope: !4047)
!4096 = !DILocalVariable(name: "num_pages", scope: !4047, file: !3, line: 106, type: !126)
!4097 = !DILocation(line: 106, column: 6, scope: !4047)
!4098 = !DILocalVariable(name: "__ret_warn_on", scope: !4099, file: !3, line: 108, type: !126)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 108, column: 6)
!4100 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 108, column: 6)
!4101 = !DILocation(line: 108, column: 6, scope: !4099)
!4102 = !DILocation(line: 108, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 108, column: 6)
!4104 = !DILocation(line: 108, column: 6, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 108, column: 6)
!4106 = !DILocation(line: 108, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 108, column: 6)
!4108 = !DILocation(line: 108, column: 6, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 108, column: 6)
!4110 = !{i32 -2141733591, i32 -2141733562, i32 -2141733516, i32 -2141733458, i32 -2141733404, i32 -2141733350, i32 -2141733295, i32 -2141733264}
!4111 = !DILocation(line: 108, column: 6, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 108, column: 6)
!4113 = !{i32 -2141732833, i32 -2141732826, i32 -2141732774, i32 -2141732743, i32 -2141732713}
!4114 = !DILocation(line: 108, column: 6, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 108, column: 6)
!4116 = !DILocation(line: 108, column: 6, scope: !4100)
!4117 = !DILocation(line: 108, column: 6, scope: !4047)
!4118 = !DILocation(line: 109, column: 10, scope: !4100)
!4119 = !DILocation(line: 109, column: 3, scope: !4100)
!4120 = !DILocation(line: 111, column: 8, scope: !4047)
!4121 = !DILocation(line: 111, column: 6, scope: !4047)
!4122 = !DILocation(line: 112, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 112, column: 6)
!4124 = !DILocation(line: 112, column: 6, scope: !4047)
!4125 = !DILocation(line: 113, column: 10, scope: !4123)
!4126 = !DILocation(line: 113, column: 3, scope: !4123)
!4127 = !DILocation(line: 115, column: 2, scope: !4047)
!4128 = !DILocation(line: 115, column: 7, scope: !4047)
!4129 = !DILocation(line: 115, column: 13, scope: !4047)
!4130 = !DILocation(line: 116, column: 17, scope: !4047)
!4131 = !DILocation(line: 116, column: 2, scope: !4047)
!4132 = !DILocation(line: 116, column: 7, scope: !4047)
!4133 = !DILocation(line: 116, column: 15, scope: !4047)
!4134 = !DILocation(line: 117, column: 2, scope: !4047)
!4135 = !DILocation(line: 117, column: 7, scope: !4047)
!4136 = !DILocation(line: 117, column: 14, scope: !4047)
!4137 = !DILocation(line: 118, column: 14, scope: !4047)
!4138 = !DILocation(line: 118, column: 2, scope: !4047)
!4139 = !DILocation(line: 118, column: 7, scope: !4047)
!4140 = !DILocation(line: 118, column: 12, scope: !4047)
!4141 = !DILocation(line: 120, column: 19, scope: !4047)
!4142 = !DILocation(line: 120, column: 24, scope: !4047)
!4143 = !DILocation(line: 120, column: 2, scope: !4047)
!4144 = !DILocation(line: 120, column: 7, scope: !4047)
!4145 = !DILocation(line: 120, column: 17, scope: !4047)
!4146 = !DILocation(line: 121, column: 18, scope: !4047)
!4147 = !DILocation(line: 121, column: 23, scope: !4047)
!4148 = !DILocation(line: 121, column: 2, scope: !4047)
!4149 = !DILocation(line: 121, column: 7, scope: !4047)
!4150 = !DILocation(line: 121, column: 15, scope: !4047)
!4151 = !DILocation(line: 128, column: 30, scope: !4047)
!4152 = !DILocation(line: 128, column: 35, scope: !4047)
!4153 = !DILocation(line: 128, column: 15, scope: !4047)
!4154 = !DILocation(line: 128, column: 2, scope: !4047)
!4155 = !DILocation(line: 128, column: 7, scope: !4047)
!4156 = !DILocation(line: 128, column: 13, scope: !4047)
!4157 = !DILocation(line: 130, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 130, column: 6)
!4159 = !DILocation(line: 130, column: 12, scope: !4158)
!4160 = !DILocation(line: 130, column: 6, scope: !4047)
!4161 = !DILocation(line: 131, column: 3, scope: !4158)
!4162 = !DILocation(line: 133, column: 35, scope: !4047)
!4163 = !DILocation(line: 133, column: 40, scope: !4047)
!4164 = !DILocation(line: 133, column: 8, scope: !4047)
!4165 = !DILocation(line: 133, column: 6, scope: !4047)
!4166 = !DILocation(line: 134, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 134, column: 6)
!4168 = !DILocation(line: 134, column: 6, scope: !4047)
!4169 = !DILocation(line: 135, column: 3, scope: !4167)
!4170 = !DILocation(line: 137, column: 34, scope: !4047)
!4171 = !DILocation(line: 137, column: 39, scope: !4047)
!4172 = !DILocation(line: 137, column: 48, scope: !4047)
!4173 = !DILocation(line: 137, column: 53, scope: !4047)
!4174 = !DILocation(line: 138, column: 4, scope: !4047)
!4175 = !DILocation(line: 138, column: 9, scope: !4047)
!4176 = !DILocation(line: 138, column: 23, scope: !4047)
!4177 = !DILocation(line: 137, column: 8, scope: !4047)
!4178 = !DILocation(line: 137, column: 6, scope: !4047)
!4179 = !DILocation(line: 139, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 139, column: 6)
!4181 = !DILocation(line: 139, column: 6, scope: !4047)
!4182 = !DILocation(line: 140, column: 3, scope: !4180)
!4183 = !DILocation(line: 143, column: 24, scope: !4047)
!4184 = !DILocation(line: 143, column: 13, scope: !4047)
!4185 = !DILocation(line: 143, column: 2, scope: !4047)
!4186 = !DILocation(line: 143, column: 7, scope: !4047)
!4187 = !DILocation(line: 143, column: 11, scope: !4047)
!4188 = !DILocation(line: 145, column: 9, scope: !4047)
!4189 = !DILocation(line: 145, column: 14, scope: !4047)
!4190 = !DILocation(line: 145, column: 6, scope: !4047)
!4191 = !DILocation(line: 150, column: 22, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 150, column: 6)
!4193 = !DILocation(line: 150, column: 27, scope: !4192)
!4194 = !DILocation(line: 150, column: 32, scope: !4192)
!4195 = !DILocation(line: 150, column: 37, scope: !4192)
!4196 = !DILocation(line: 150, column: 42, scope: !4192)
!4197 = !DILocation(line: 150, column: 6, scope: !4192)
!4198 = !DILocation(line: 150, column: 6, scope: !4047)
!4199 = !DILocation(line: 152, column: 3, scope: !4192)
!4200 = !DILocation(line: 154, column: 27, scope: !4047)
!4201 = !DILocation(line: 154, column: 32, scope: !4047)
!4202 = !DILocation(line: 154, column: 2, scope: !4047)
!4203 = !DILocation(line: 154, column: 7, scope: !4047)
!4204 = !DILocation(line: 154, column: 15, scope: !4047)
!4205 = !DILocation(line: 154, column: 24, scope: !4047)
!4206 = !DILocation(line: 155, column: 2, scope: !4047)
!4207 = !DILocation(line: 155, column: 7, scope: !4047)
!4208 = !DILocation(line: 155, column: 15, scope: !4047)
!4209 = !DILocation(line: 155, column: 19, scope: !4047)
!4210 = !DILocation(line: 156, column: 21, scope: !4047)
!4211 = !DILocation(line: 156, column: 2, scope: !4047)
!4212 = !DILocation(line: 156, column: 7, scope: !4047)
!4213 = !DILocation(line: 156, column: 15, scope: !4047)
!4214 = !DILocation(line: 156, column: 19, scope: !4047)
!4215 = !DILocation(line: 158, column: 16, scope: !4047)
!4216 = !DILocation(line: 158, column: 21, scope: !4047)
!4217 = !DILocation(line: 158, column: 2, scope: !4047)
!4218 = !DILocation(line: 160, column: 2, scope: !4047)
!4219 = !DILocation(line: 160, column: 2, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 160, column: 2)
!4221 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 160, column: 2)
!4222 = !DILocation(line: 160, column: 2, scope: !4221)
!4223 = !DILocation(line: 162, column: 9, scope: !4047)
!4224 = !DILocation(line: 162, column: 2, scope: !4047)
!4225 = !DILabel(scope: !4047, name: "fail_map", file: !3, line: 164)
!4226 = !DILocation(line: 164, column: 1, scope: !4047)
!4227 = !DILocation(line: 165, column: 13, scope: !4047)
!4228 = !DILocation(line: 165, column: 18, scope: !4047)
!4229 = !DILocation(line: 165, column: 2, scope: !4047)
!4230 = !DILocation(line: 166, column: 16, scope: !4047)
!4231 = !DILocation(line: 166, column: 21, scope: !4047)
!4232 = !DILocation(line: 166, column: 2, scope: !4047)
!4233 = !DILabel(scope: !4047, name: "fail_table_alloc", file: !3, line: 167)
!4234 = !DILocation(line: 167, column: 1, scope: !4047)
!4235 = !DILocation(line: 168, column: 14, scope: !4047)
!4236 = !DILocation(line: 168, column: 19, scope: !4047)
!4237 = !DILocation(line: 168, column: 12, scope: !4047)
!4238 = !DILocation(line: 169, column: 2, scope: !4047)
!4239 = !DILocation(line: 169, column: 18, scope: !4047)
!4240 = !DILocation(line: 170, column: 3, scope: !4047)
!4241 = distinct !{!4241, !4238, !4240}
!4242 = !DILabel(scope: !4047, name: "fail_pages_alloc", file: !3, line: 171)
!4243 = !DILocation(line: 171, column: 1, scope: !4047)
!4244 = !DILocation(line: 172, column: 9, scope: !4047)
!4245 = !DILocation(line: 172, column: 14, scope: !4047)
!4246 = !DILocation(line: 172, column: 2, scope: !4047)
!4247 = !DILabel(scope: !4047, name: "fail_pages_array_alloc", file: !3, line: 173)
!4248 = !DILocation(line: 173, column: 1, scope: !4047)
!4249 = !DILocation(line: 174, column: 8, scope: !4047)
!4250 = !DILocation(line: 174, column: 2, scope: !4047)
!4251 = !DILocation(line: 175, column: 9, scope: !4047)
!4252 = !DILocation(line: 175, column: 2, scope: !4047)
!4253 = !DILocation(line: 176, column: 1, scope: !4047)
!4254 = distinct !DISubprogram(name: "vb2_dma_sg_put", scope: !3, file: !3, line: 178, type: !2582, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4255 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4254, file: !3, line: 178, type: !123)
!4256 = !DILocation(line: 178, column: 34, scope: !4254)
!4257 = !DILocalVariable(name: "buf", scope: !4254, file: !3, line: 180, type: !4059)
!4258 = !DILocation(line: 180, column: 25, scope: !4254)
!4259 = !DILocation(line: 180, column: 31, scope: !4254)
!4260 = !DILocalVariable(name: "sgt", scope: !4254, file: !3, line: 181, type: !3844)
!4261 = !DILocation(line: 181, column: 19, scope: !4254)
!4262 = !DILocation(line: 181, column: 26, scope: !4254)
!4263 = !DILocation(line: 181, column: 31, scope: !4254)
!4264 = !DILocalVariable(name: "i", scope: !4254, file: !3, line: 182, type: !126)
!4265 = !DILocation(line: 182, column: 6, scope: !4254)
!4266 = !DILocation(line: 182, column: 10, scope: !4254)
!4267 = !DILocation(line: 182, column: 15, scope: !4254)
!4268 = !DILocation(line: 184, column: 29, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 184, column: 6)
!4270 = !DILocation(line: 184, column: 34, scope: !4269)
!4271 = !DILocation(line: 184, column: 6, scope: !4269)
!4272 = !DILocation(line: 184, column: 6, scope: !4254)
!4273 = !DILocation(line: 185, column: 3, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 184, column: 45)
!4275 = !DILocation(line: 185, column: 3, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 185, column: 3)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 185, column: 3)
!4278 = !DILocation(line: 185, column: 3, scope: !4277)
!4279 = !DILocation(line: 187, column: 21, scope: !4274)
!4280 = !DILocation(line: 187, column: 26, scope: !4274)
!4281 = !DILocation(line: 187, column: 31, scope: !4274)
!4282 = !DILocation(line: 187, column: 36, scope: !4274)
!4283 = !DILocation(line: 187, column: 41, scope: !4274)
!4284 = !DILocation(line: 187, column: 3, scope: !4274)
!4285 = !DILocation(line: 189, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 189, column: 7)
!4287 = !DILocation(line: 189, column: 12, scope: !4286)
!4288 = !DILocation(line: 189, column: 7, scope: !4274)
!4289 = !DILocation(line: 190, column: 17, scope: !4286)
!4290 = !DILocation(line: 190, column: 22, scope: !4286)
!4291 = !DILocation(line: 190, column: 29, scope: !4286)
!4292 = !DILocation(line: 190, column: 34, scope: !4286)
!4293 = !DILocation(line: 190, column: 4, scope: !4286)
!4294 = !DILocation(line: 191, column: 17, scope: !4274)
!4295 = !DILocation(line: 191, column: 22, scope: !4274)
!4296 = !DILocation(line: 191, column: 3, scope: !4274)
!4297 = !DILocation(line: 192, column: 3, scope: !4274)
!4298 = !DILocation(line: 192, column: 10, scope: !4274)
!4299 = !DILocation(line: 192, column: 14, scope: !4274)
!4300 = !DILocation(line: 193, column: 4, scope: !4274)
!4301 = distinct !{!4301, !4297, !4300}
!4302 = !DILocation(line: 194, column: 10, scope: !4274)
!4303 = !DILocation(line: 194, column: 15, scope: !4274)
!4304 = !DILocation(line: 194, column: 3, scope: !4274)
!4305 = !DILocation(line: 195, column: 14, scope: !4274)
!4306 = !DILocation(line: 195, column: 19, scope: !4274)
!4307 = !DILocation(line: 195, column: 3, scope: !4274)
!4308 = !DILocation(line: 196, column: 9, scope: !4274)
!4309 = !DILocation(line: 196, column: 3, scope: !4274)
!4310 = !DILocation(line: 197, column: 2, scope: !4274)
!4311 = !DILocation(line: 198, column: 1, scope: !4254)
!4312 = distinct !DISubprogram(name: "vb2_dma_sg_get_dmabuf", scope: !3, file: !3, line: 508, type: !3818, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4313 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4312, file: !3, line: 508, type: !123)
!4314 = !DILocation(line: 508, column: 52, scope: !4312)
!4315 = !DILocalVariable(name: "flags", arg: 2, scope: !4312, file: !3, line: 508, type: !127)
!4316 = !DILocation(line: 508, column: 76, scope: !4312)
!4317 = !DILocalVariable(name: "buf", scope: !4312, file: !3, line: 510, type: !4059)
!4318 = !DILocation(line: 510, column: 25, scope: !4312)
!4319 = !DILocation(line: 510, column: 31, scope: !4312)
!4320 = !DILocalVariable(name: "dbuf", scope: !4312, file: !3, line: 511, type: !3820)
!4321 = !DILocation(line: 511, column: 18, scope: !4312)
!4322 = !DILocalVariable(name: "exp_info", scope: !4312, file: !3, line: 512, type: !4323)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_export_info", file: !3822, line: 414, size: 448, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "exp_name", scope: !4323, file: !3822, line: 415, baseType: !283, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4323, file: !3822, line: 416, baseType: !376, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4323, file: !3822, line: 417, baseType: !3828, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4323, file: !3822, line: 418, baseType: !1119, size: 64, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4323, file: !3822, line: 419, baseType: !126, size: 32, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4323, file: !3822, line: 420, baseType: !3921, size: 64, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4323, file: !3822, line: 421, baseType: !123, size: 64, offset: 384)
!4332 = !DILocation(line: 512, column: 2, scope: !4312)
!4333 = !DILocation(line: 514, column: 11, scope: !4312)
!4334 = !DILocation(line: 514, column: 15, scope: !4312)
!4335 = !DILocation(line: 515, column: 18, scope: !4312)
!4336 = !DILocation(line: 515, column: 23, scope: !4312)
!4337 = !DILocation(line: 515, column: 11, scope: !4312)
!4338 = !DILocation(line: 515, column: 16, scope: !4312)
!4339 = !DILocation(line: 516, column: 19, scope: !4312)
!4340 = !DILocation(line: 516, column: 11, scope: !4312)
!4341 = !DILocation(line: 516, column: 17, scope: !4312)
!4342 = !DILocation(line: 517, column: 18, scope: !4312)
!4343 = !DILocation(line: 517, column: 11, scope: !4312)
!4344 = !DILocation(line: 517, column: 16, scope: !4312)
!4345 = !DILocalVariable(name: "__ret_warn_on", scope: !4346, file: !3, line: 519, type: !126)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 519, column: 6)
!4347 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 519, column: 6)
!4348 = !DILocation(line: 519, column: 6, scope: !4346)
!4349 = !DILocation(line: 519, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 519, column: 6)
!4351 = !DILocation(line: 519, column: 6, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 519, column: 6)
!4353 = !DILocation(line: 519, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 519, column: 6)
!4355 = !DILocation(line: 519, column: 6, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 519, column: 6)
!4357 = !{i32 -2141727159, i32 -2141727130, i32 -2141727084, i32 -2141727026, i32 -2141726972, i32 -2141726918, i32 -2141726863, i32 -2141726832}
!4358 = !DILocation(line: 519, column: 6, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 519, column: 6)
!4360 = !{i32 -2141722340, i32 -2141722333, i32 -2141722281, i32 -2141722250, i32 -2141722220}
!4361 = !DILocation(line: 519, column: 6, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 519, column: 6)
!4363 = !DILocation(line: 519, column: 6, scope: !4347)
!4364 = !DILocation(line: 519, column: 6, scope: !4312)
!4365 = !DILocation(line: 520, column: 3, scope: !4347)
!4366 = !DILocation(line: 522, column: 9, scope: !4312)
!4367 = !DILocation(line: 522, column: 7, scope: !4312)
!4368 = !DILocation(line: 523, column: 13, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 523, column: 6)
!4370 = !DILocation(line: 523, column: 6, scope: !4369)
!4371 = !DILocation(line: 523, column: 6, scope: !4312)
!4372 = !DILocation(line: 524, column: 3, scope: !4369)
!4373 = !DILocation(line: 527, column: 16, scope: !4312)
!4374 = !DILocation(line: 527, column: 21, scope: !4312)
!4375 = !DILocation(line: 527, column: 2, scope: !4312)
!4376 = !DILocation(line: 529, column: 9, scope: !4312)
!4377 = !DILocation(line: 529, column: 2, scope: !4312)
!4378 = !DILocation(line: 530, column: 1, scope: !4312)
!4379 = distinct !DISubprogram(name: "vb2_dma_sg_get_userptr", scope: !3, file: !3, line: 216, type: !3987, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4380 = !DILocalVariable(name: "dev", arg: 1, scope: !4379, file: !3, line: 216, type: !3382)
!4381 = !DILocation(line: 216, column: 52, scope: !4379)
!4382 = !DILocalVariable(name: "vaddr", arg: 2, scope: !4379, file: !3, line: 216, type: !127)
!4383 = !DILocation(line: 216, column: 71, scope: !4379)
!4384 = !DILocalVariable(name: "size", arg: 3, scope: !4379, file: !3, line: 217, type: !127)
!4385 = !DILocation(line: 217, column: 23, scope: !4379)
!4386 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4379, file: !3, line: 218, type: !93)
!4387 = !DILocation(line: 218, column: 33, scope: !4379)
!4388 = !DILocalVariable(name: "buf", scope: !4379, file: !3, line: 220, type: !4059)
!4389 = !DILocation(line: 220, column: 25, scope: !4379)
!4390 = !DILocalVariable(name: "sgt", scope: !4379, file: !3, line: 221, type: !3844)
!4391 = !DILocation(line: 221, column: 19, scope: !4379)
!4392 = !DILocalVariable(name: "vec", scope: !4379, file: !3, line: 222, type: !4066)
!4393 = !DILocation(line: 222, column: 23, scope: !4379)
!4394 = !DILocalVariable(name: "__ret_warn_on", scope: !4395, file: !3, line: 224, type: !126)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 224, column: 6)
!4396 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 224, column: 6)
!4397 = !DILocation(line: 224, column: 6, scope: !4395)
!4398 = !DILocation(line: 224, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 224, column: 6)
!4400 = !DILocation(line: 224, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 224, column: 6)
!4402 = !DILocation(line: 224, column: 6, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 224, column: 6)
!4404 = !DILocation(line: 224, column: 6, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 224, column: 6)
!4406 = !{i32 -2141731045, i32 -2141731016, i32 -2141730970, i32 -2141730912, i32 -2141730858, i32 -2141730804, i32 -2141730749, i32 -2141730718}
!4407 = !DILocation(line: 224, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 224, column: 6)
!4409 = !{i32 -2141730287, i32 -2141730280, i32 -2141730228, i32 -2141730197, i32 -2141730167}
!4410 = !DILocation(line: 224, column: 6, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 224, column: 6)
!4412 = !DILocation(line: 224, column: 6, scope: !4396)
!4413 = !DILocation(line: 224, column: 6, scope: !4379)
!4414 = !DILocation(line: 225, column: 10, scope: !4396)
!4415 = !DILocation(line: 225, column: 3, scope: !4396)
!4416 = !DILocation(line: 227, column: 8, scope: !4379)
!4417 = !DILocation(line: 227, column: 6, scope: !4379)
!4418 = !DILocation(line: 228, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 228, column: 6)
!4420 = !DILocation(line: 228, column: 6, scope: !4379)
!4421 = !DILocation(line: 229, column: 10, scope: !4419)
!4422 = !DILocation(line: 229, column: 3, scope: !4419)
!4423 = !DILocation(line: 231, column: 2, scope: !4379)
!4424 = !DILocation(line: 231, column: 7, scope: !4379)
!4425 = !DILocation(line: 231, column: 13, scope: !4379)
!4426 = !DILocation(line: 232, column: 13, scope: !4379)
!4427 = !DILocation(line: 232, column: 2, scope: !4379)
!4428 = !DILocation(line: 232, column: 7, scope: !4379)
!4429 = !DILocation(line: 232, column: 11, scope: !4379)
!4430 = !DILocation(line: 233, column: 17, scope: !4379)
!4431 = !DILocation(line: 233, column: 2, scope: !4379)
!4432 = !DILocation(line: 233, column: 7, scope: !4379)
!4433 = !DILocation(line: 233, column: 15, scope: !4379)
!4434 = !DILocation(line: 234, column: 16, scope: !4379)
!4435 = !DILocation(line: 234, column: 22, scope: !4379)
!4436 = !DILocation(line: 234, column: 2, scope: !4379)
!4437 = !DILocation(line: 234, column: 7, scope: !4379)
!4438 = !DILocation(line: 234, column: 14, scope: !4379)
!4439 = !DILocation(line: 235, column: 14, scope: !4379)
!4440 = !DILocation(line: 235, column: 2, scope: !4379)
!4441 = !DILocation(line: 235, column: 7, scope: !4379)
!4442 = !DILocation(line: 235, column: 12, scope: !4379)
!4443 = !DILocation(line: 236, column: 18, scope: !4379)
!4444 = !DILocation(line: 236, column: 23, scope: !4379)
!4445 = !DILocation(line: 236, column: 2, scope: !4379)
!4446 = !DILocation(line: 236, column: 7, scope: !4379)
!4447 = !DILocation(line: 236, column: 15, scope: !4379)
!4448 = !DILocation(line: 237, column: 28, scope: !4379)
!4449 = !DILocation(line: 237, column: 35, scope: !4379)
!4450 = !DILocation(line: 237, column: 8, scope: !4379)
!4451 = !DILocation(line: 237, column: 6, scope: !4379)
!4452 = !DILocation(line: 238, column: 13, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 238, column: 6)
!4454 = !DILocation(line: 238, column: 6, scope: !4453)
!4455 = !DILocation(line: 238, column: 6, scope: !4379)
!4456 = !DILocation(line: 239, column: 3, scope: !4453)
!4457 = !DILocation(line: 240, column: 13, scope: !4379)
!4458 = !DILocation(line: 240, column: 2, scope: !4379)
!4459 = !DILocation(line: 240, column: 7, scope: !4379)
!4460 = !DILocation(line: 240, column: 11, scope: !4379)
!4461 = !DILocation(line: 242, column: 34, scope: !4379)
!4462 = !DILocation(line: 242, column: 15, scope: !4379)
!4463 = !DILocation(line: 242, column: 2, scope: !4379)
!4464 = !DILocation(line: 242, column: 7, scope: !4379)
!4465 = !DILocation(line: 242, column: 13, scope: !4379)
!4466 = !DILocation(line: 243, column: 13, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 243, column: 6)
!4468 = !DILocation(line: 243, column: 18, scope: !4467)
!4469 = !DILocation(line: 243, column: 6, scope: !4467)
!4470 = !DILocation(line: 243, column: 6, scope: !4379)
!4471 = !DILocation(line: 244, column: 3, scope: !4467)
!4472 = !DILocation(line: 245, column: 38, scope: !4379)
!4473 = !DILocation(line: 245, column: 19, scope: !4379)
!4474 = !DILocation(line: 245, column: 2, scope: !4379)
!4475 = !DILocation(line: 245, column: 7, scope: !4379)
!4476 = !DILocation(line: 245, column: 17, scope: !4379)
!4477 = !DILocation(line: 247, column: 32, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 247, column: 6)
!4479 = !DILocation(line: 247, column: 37, scope: !4478)
!4480 = !DILocation(line: 247, column: 46, scope: !4478)
!4481 = !DILocation(line: 247, column: 51, scope: !4478)
!4482 = !DILocation(line: 248, column: 4, scope: !4478)
!4483 = !DILocation(line: 248, column: 9, scope: !4478)
!4484 = !DILocation(line: 248, column: 20, scope: !4478)
!4485 = !DILocation(line: 248, column: 25, scope: !4478)
!4486 = !DILocation(line: 248, column: 33, scope: !4478)
!4487 = !DILocation(line: 247, column: 6, scope: !4478)
!4488 = !DILocation(line: 247, column: 6, scope: !4379)
!4489 = !DILocation(line: 249, column: 3, scope: !4478)
!4490 = !DILocation(line: 251, column: 9, scope: !4379)
!4491 = !DILocation(line: 251, column: 14, scope: !4379)
!4492 = !DILocation(line: 251, column: 6, scope: !4379)
!4493 = !DILocation(line: 256, column: 22, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 256, column: 6)
!4495 = !DILocation(line: 256, column: 27, scope: !4494)
!4496 = !DILocation(line: 256, column: 32, scope: !4494)
!4497 = !DILocation(line: 256, column: 37, scope: !4494)
!4498 = !DILocation(line: 256, column: 42, scope: !4494)
!4499 = !DILocation(line: 256, column: 6, scope: !4494)
!4500 = !DILocation(line: 256, column: 6, scope: !4379)
!4501 = !DILocation(line: 258, column: 3, scope: !4494)
!4502 = !DILocation(line: 260, column: 9, scope: !4379)
!4503 = !DILocation(line: 260, column: 2, scope: !4379)
!4504 = !DILabel(scope: !4379, name: "userptr_fail_map", file: !3, line: 262)
!4505 = !DILocation(line: 262, column: 1, scope: !4379)
!4506 = !DILocation(line: 263, column: 17, scope: !4379)
!4507 = !DILocation(line: 263, column: 22, scope: !4379)
!4508 = !DILocation(line: 263, column: 2, scope: !4379)
!4509 = !DILabel(scope: !4379, name: "userptr_fail_sgtable", file: !3, line: 264)
!4510 = !DILocation(line: 264, column: 1, scope: !4379)
!4511 = !DILocation(line: 265, column: 23, scope: !4379)
!4512 = !DILocation(line: 265, column: 2, scope: !4379)
!4513 = !DILabel(scope: !4379, name: "userptr_fail_pfnvec", file: !3, line: 266)
!4514 = !DILocation(line: 266, column: 1, scope: !4379)
!4515 = !DILocation(line: 267, column: 8, scope: !4379)
!4516 = !DILocation(line: 267, column: 2, scope: !4379)
!4517 = !DILocation(line: 268, column: 9, scope: !4379)
!4518 = !DILocation(line: 268, column: 2, scope: !4379)
!4519 = !DILocation(line: 269, column: 1, scope: !4379)
!4520 = distinct !DISubprogram(name: "vb2_dma_sg_put_userptr", scope: !3, file: !3, line: 275, type: !2582, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4521 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4520, file: !3, line: 275, type: !123)
!4522 = !DILocation(line: 275, column: 42, scope: !4520)
!4523 = !DILocalVariable(name: "buf", scope: !4520, file: !3, line: 277, type: !4059)
!4524 = !DILocation(line: 277, column: 25, scope: !4520)
!4525 = !DILocation(line: 277, column: 31, scope: !4520)
!4526 = !DILocalVariable(name: "sgt", scope: !4520, file: !3, line: 278, type: !3844)
!4527 = !DILocation(line: 278, column: 19, scope: !4520)
!4528 = !DILocation(line: 278, column: 26, scope: !4520)
!4529 = !DILocation(line: 278, column: 31, scope: !4520)
!4530 = !DILocalVariable(name: "i", scope: !4520, file: !3, line: 279, type: !126)
!4531 = !DILocation(line: 279, column: 6, scope: !4520)
!4532 = !DILocation(line: 279, column: 10, scope: !4520)
!4533 = !DILocation(line: 279, column: 15, scope: !4520)
!4534 = !DILocation(line: 281, column: 2, scope: !4520)
!4535 = !DILocation(line: 281, column: 2, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 281, column: 2)
!4537 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 281, column: 2)
!4538 = !DILocation(line: 281, column: 2, scope: !4537)
!4539 = !DILocation(line: 283, column: 20, scope: !4520)
!4540 = !DILocation(line: 283, column: 25, scope: !4520)
!4541 = !DILocation(line: 283, column: 30, scope: !4520)
!4542 = !DILocation(line: 283, column: 35, scope: !4520)
!4543 = !DILocation(line: 283, column: 40, scope: !4520)
!4544 = !DILocation(line: 283, column: 2, scope: !4520)
!4545 = !DILocation(line: 284, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 284, column: 6)
!4547 = !DILocation(line: 284, column: 11, scope: !4546)
!4548 = !DILocation(line: 284, column: 6, scope: !4520)
!4549 = !DILocation(line: 285, column: 16, scope: !4546)
!4550 = !DILocation(line: 285, column: 21, scope: !4546)
!4551 = !DILocation(line: 285, column: 28, scope: !4546)
!4552 = !DILocation(line: 285, column: 33, scope: !4546)
!4553 = !DILocation(line: 285, column: 3, scope: !4546)
!4554 = !DILocation(line: 286, column: 16, scope: !4520)
!4555 = !DILocation(line: 286, column: 21, scope: !4520)
!4556 = !DILocation(line: 286, column: 2, scope: !4520)
!4557 = !DILocation(line: 287, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 287, column: 6)
!4559 = !DILocation(line: 287, column: 11, scope: !4558)
!4560 = !DILocation(line: 287, column: 19, scope: !4558)
!4561 = !DILocation(line: 287, column: 38, scope: !4558)
!4562 = !DILocation(line: 288, column: 6, scope: !4558)
!4563 = !DILocation(line: 288, column: 11, scope: !4558)
!4564 = !DILocation(line: 288, column: 19, scope: !4558)
!4565 = !DILocation(line: 287, column: 6, scope: !4520)
!4566 = !DILocation(line: 289, column: 3, scope: !4558)
!4567 = !DILocation(line: 289, column: 10, scope: !4558)
!4568 = !DILocation(line: 289, column: 14, scope: !4558)
!4569 = !DILocation(line: 290, column: 24, scope: !4558)
!4570 = !DILocation(line: 290, column: 29, scope: !4558)
!4571 = !DILocation(line: 290, column: 35, scope: !4558)
!4572 = !DILocation(line: 290, column: 4, scope: !4558)
!4573 = distinct !{!4573, !4566, !4574}
!4574 = !DILocation(line: 290, column: 37, scope: !4558)
!4575 = !DILocation(line: 291, column: 23, scope: !4520)
!4576 = !DILocation(line: 291, column: 28, scope: !4520)
!4577 = !DILocation(line: 291, column: 2, scope: !4520)
!4578 = !DILocation(line: 292, column: 8, scope: !4520)
!4579 = !DILocation(line: 292, column: 2, scope: !4520)
!4580 = !DILocation(line: 293, column: 1, scope: !4520)
!4581 = distinct !DISubprogram(name: "vb2_dma_sg_prepare", scope: !3, file: !3, line: 200, type: !2582, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4582 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4581, file: !3, line: 200, type: !123)
!4583 = !DILocation(line: 200, column: 38, scope: !4581)
!4584 = !DILocalVariable(name: "buf", scope: !4581, file: !3, line: 202, type: !4059)
!4585 = !DILocation(line: 202, column: 25, scope: !4581)
!4586 = !DILocation(line: 202, column: 31, scope: !4581)
!4587 = !DILocalVariable(name: "sgt", scope: !4581, file: !3, line: 203, type: !3844)
!4588 = !DILocation(line: 203, column: 19, scope: !4581)
!4589 = !DILocation(line: 203, column: 25, scope: !4581)
!4590 = !DILocation(line: 203, column: 30, scope: !4581)
!4591 = !DILocation(line: 205, column: 30, scope: !4581)
!4592 = !DILocation(line: 205, column: 35, scope: !4581)
!4593 = !DILocation(line: 205, column: 40, scope: !4581)
!4594 = !DILocation(line: 205, column: 45, scope: !4581)
!4595 = !DILocation(line: 205, column: 50, scope: !4581)
!4596 = !DILocation(line: 205, column: 2, scope: !4581)
!4597 = !DILocation(line: 206, column: 1, scope: !4581)
!4598 = distinct !DISubprogram(name: "vb2_dma_sg_finish", scope: !3, file: !3, line: 208, type: !2582, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4599 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4598, file: !3, line: 208, type: !123)
!4600 = !DILocation(line: 208, column: 37, scope: !4598)
!4601 = !DILocalVariable(name: "buf", scope: !4598, file: !3, line: 210, type: !4059)
!4602 = !DILocation(line: 210, column: 25, scope: !4598)
!4603 = !DILocation(line: 210, column: 31, scope: !4598)
!4604 = !DILocalVariable(name: "sgt", scope: !4598, file: !3, line: 211, type: !3844)
!4605 = !DILocation(line: 211, column: 19, scope: !4598)
!4606 = !DILocation(line: 211, column: 25, scope: !4598)
!4607 = !DILocation(line: 211, column: 30, scope: !4598)
!4608 = !DILocation(line: 213, column: 27, scope: !4598)
!4609 = !DILocation(line: 213, column: 32, scope: !4598)
!4610 = !DILocation(line: 213, column: 37, scope: !4598)
!4611 = !DILocation(line: 213, column: 42, scope: !4598)
!4612 = !DILocation(line: 213, column: 47, scope: !4598)
!4613 = !DILocation(line: 213, column: 2, scope: !4598)
!4614 = !DILocation(line: 214, column: 1, scope: !4598)
!4615 = distinct !DISubprogram(name: "vb2_dma_sg_attach_dmabuf", scope: !3, file: !3, line: 601, type: !3994, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4616 = !DILocalVariable(name: "dev", arg: 1, scope: !4615, file: !3, line: 601, type: !3382)
!4617 = !DILocation(line: 601, column: 54, scope: !4615)
!4618 = !DILocalVariable(name: "dbuf", arg: 2, scope: !4615, file: !3, line: 601, type: !3820)
!4619 = !DILocation(line: 601, column: 75, scope: !4615)
!4620 = !DILocalVariable(name: "size", arg: 3, scope: !4615, file: !3, line: 602, type: !127)
!4621 = !DILocation(line: 602, column: 16, scope: !4615)
!4622 = !DILocalVariable(name: "dma_dir", arg: 4, scope: !4615, file: !3, line: 602, type: !93)
!4623 = !DILocation(line: 602, column: 46, scope: !4615)
!4624 = !DILocalVariable(name: "buf", scope: !4615, file: !3, line: 604, type: !4059)
!4625 = !DILocation(line: 604, column: 25, scope: !4615)
!4626 = !DILocalVariable(name: "dba", scope: !4615, file: !3, line: 605, type: !3837)
!4627 = !DILocation(line: 605, column: 29, scope: !4615)
!4628 = !DILocalVariable(name: "__ret_warn_on", scope: !4629, file: !3, line: 607, type: !126)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 607, column: 6)
!4630 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 607, column: 6)
!4631 = !DILocation(line: 607, column: 6, scope: !4629)
!4632 = !DILocation(line: 607, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 607, column: 6)
!4634 = !DILocation(line: 607, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 607, column: 6)
!4636 = !DILocation(line: 607, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 607, column: 6)
!4638 = !DILocation(line: 607, column: 6, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 607, column: 6)
!4640 = !{i32 -2141713544, i32 -2141713515, i32 -2141713469, i32 -2141713411, i32 -2141713357, i32 -2141713303, i32 -2141713248, i32 -2141713217}
!4641 = !DILocation(line: 607, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 607, column: 6)
!4643 = !{i32 -2141712786, i32 -2141712779, i32 -2141712727, i32 -2141712696, i32 -2141712666}
!4644 = !DILocation(line: 607, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 607, column: 6)
!4646 = !DILocation(line: 607, column: 6, scope: !4630)
!4647 = !DILocation(line: 607, column: 6, scope: !4615)
!4648 = !DILocation(line: 608, column: 10, scope: !4630)
!4649 = !DILocation(line: 608, column: 3, scope: !4630)
!4650 = !DILocation(line: 610, column: 6, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 610, column: 6)
!4652 = !DILocation(line: 610, column: 12, scope: !4651)
!4653 = !DILocation(line: 610, column: 19, scope: !4651)
!4654 = !DILocation(line: 610, column: 17, scope: !4651)
!4655 = !DILocation(line: 610, column: 6, scope: !4615)
!4656 = !DILocation(line: 611, column: 10, scope: !4651)
!4657 = !DILocation(line: 611, column: 3, scope: !4651)
!4658 = !DILocation(line: 613, column: 8, scope: !4615)
!4659 = !DILocation(line: 613, column: 6, scope: !4615)
!4660 = !DILocation(line: 614, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 614, column: 6)
!4662 = !DILocation(line: 614, column: 6, scope: !4615)
!4663 = !DILocation(line: 615, column: 10, scope: !4661)
!4664 = !DILocation(line: 615, column: 3, scope: !4661)
!4665 = !DILocation(line: 617, column: 13, scope: !4615)
!4666 = !DILocation(line: 617, column: 2, scope: !4615)
!4667 = !DILocation(line: 617, column: 7, scope: !4615)
!4668 = !DILocation(line: 617, column: 11, scope: !4615)
!4669 = !DILocation(line: 619, column: 23, scope: !4615)
!4670 = !DILocation(line: 619, column: 29, scope: !4615)
!4671 = !DILocation(line: 619, column: 34, scope: !4615)
!4672 = !DILocation(line: 619, column: 8, scope: !4615)
!4673 = !DILocation(line: 619, column: 6, scope: !4615)
!4674 = !DILocation(line: 620, column: 13, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 620, column: 6)
!4676 = !DILocation(line: 620, column: 6, scope: !4675)
!4677 = !DILocation(line: 620, column: 6, scope: !4615)
!4678 = !DILocation(line: 621, column: 3, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 620, column: 19)
!4680 = !DILocation(line: 622, column: 9, scope: !4679)
!4681 = !DILocation(line: 622, column: 3, scope: !4679)
!4682 = !DILocation(line: 623, column: 10, scope: !4679)
!4683 = !DILocation(line: 623, column: 3, scope: !4679)
!4684 = !DILocation(line: 626, column: 17, scope: !4615)
!4685 = !DILocation(line: 626, column: 2, scope: !4615)
!4686 = !DILocation(line: 626, column: 7, scope: !4615)
!4687 = !DILocation(line: 626, column: 15, scope: !4615)
!4688 = !DILocation(line: 627, column: 14, scope: !4615)
!4689 = !DILocation(line: 627, column: 2, scope: !4615)
!4690 = !DILocation(line: 627, column: 7, scope: !4615)
!4691 = !DILocation(line: 627, column: 12, scope: !4615)
!4692 = !DILocation(line: 628, column: 19, scope: !4615)
!4693 = !DILocation(line: 628, column: 2, scope: !4615)
!4694 = !DILocation(line: 628, column: 7, scope: !4615)
!4695 = !DILocation(line: 628, column: 17, scope: !4615)
!4696 = !DILocation(line: 630, column: 9, scope: !4615)
!4697 = !DILocation(line: 630, column: 2, scope: !4615)
!4698 = !DILocation(line: 631, column: 1, scope: !4615)
!4699 = distinct !DISubprogram(name: "vb2_dma_sg_detach_dmabuf", scope: !3, file: !3, line: 588, type: !2582, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4700 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4699, file: !3, line: 588, type: !123)
!4701 = !DILocation(line: 588, column: 44, scope: !4699)
!4702 = !DILocalVariable(name: "buf", scope: !4699, file: !3, line: 590, type: !4059)
!4703 = !DILocation(line: 590, column: 25, scope: !4699)
!4704 = !DILocation(line: 590, column: 31, scope: !4699)
!4705 = !DILocalVariable(name: "__ret_warn_on", scope: !4706, file: !3, line: 593, type: !126)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 593, column: 6)
!4707 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 593, column: 6)
!4708 = !DILocation(line: 593, column: 6, scope: !4706)
!4709 = !DILocation(line: 593, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 593, column: 6)
!4711 = !DILocation(line: 593, column: 6, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 593, column: 6)
!4713 = !DILocation(line: 593, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 593, column: 6)
!4715 = !DILocation(line: 593, column: 6, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 593, column: 6)
!4717 = !{i32 -2141714998, i32 -2141714969, i32 -2141714923, i32 -2141714865, i32 -2141714811, i32 -2141714757, i32 -2141714702, i32 -2141714671}
!4718 = !DILocation(line: 593, column: 6, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 593, column: 6)
!4720 = !{i32 -2141714240, i32 -2141714233, i32 -2141714181, i32 -2141714150, i32 -2141714120}
!4721 = !DILocation(line: 593, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 593, column: 6)
!4723 = !DILocation(line: 593, column: 6, scope: !4707)
!4724 = !DILocation(line: 593, column: 6, scope: !4699)
!4725 = !DILocation(line: 594, column: 27, scope: !4707)
!4726 = !DILocation(line: 594, column: 3, scope: !4707)
!4727 = !DILocation(line: 597, column: 17, scope: !4699)
!4728 = !DILocation(line: 597, column: 22, scope: !4699)
!4729 = !DILocation(line: 597, column: 33, scope: !4699)
!4730 = !DILocation(line: 597, column: 41, scope: !4699)
!4731 = !DILocation(line: 597, column: 46, scope: !4699)
!4732 = !DILocation(line: 597, column: 2, scope: !4699)
!4733 = !DILocation(line: 598, column: 8, scope: !4699)
!4734 = !DILocation(line: 598, column: 2, scope: !4699)
!4735 = !DILocation(line: 599, column: 1, scope: !4699)
!4736 = distinct !DISubprogram(name: "vb2_dma_sg_map_dmabuf", scope: !3, file: !3, line: 536, type: !3999, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4737 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4736, file: !3, line: 536, type: !123)
!4738 = !DILocation(line: 536, column: 40, scope: !4736)
!4739 = !DILocalVariable(name: "buf", scope: !4736, file: !3, line: 538, type: !4059)
!4740 = !DILocation(line: 538, column: 25, scope: !4736)
!4741 = !DILocation(line: 538, column: 31, scope: !4736)
!4742 = !DILocalVariable(name: "sgt", scope: !4736, file: !3, line: 539, type: !3844)
!4743 = !DILocation(line: 539, column: 19, scope: !4736)
!4744 = !DILocalVariable(name: "__ret_warn_on", scope: !4745, file: !3, line: 541, type: !126)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 541, column: 6)
!4746 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 541, column: 6)
!4747 = !DILocation(line: 541, column: 6, scope: !4745)
!4748 = !DILocation(line: 541, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 541, column: 6)
!4750 = !DILocation(line: 541, column: 6, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 541, column: 6)
!4752 = !DILocation(line: 541, column: 6, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 541, column: 6)
!4754 = !DILocation(line: 541, column: 6, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 541, column: 6)
!4756 = !{i32 -2141721609, i32 -2141721580, i32 -2141721534, i32 -2141721476, i32 -2141721422, i32 -2141721368, i32 -2141721313, i32 -2141721282}
!4757 = !DILocation(line: 541, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 541, column: 6)
!4759 = !{i32 -2141720851, i32 -2141720844, i32 -2141720792, i32 -2141720761, i32 -2141720731}
!4760 = !DILocation(line: 541, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 541, column: 6)
!4762 = !DILocation(line: 541, column: 6, scope: !4746)
!4763 = !DILocation(line: 541, column: 6, scope: !4736)
!4764 = !DILocation(line: 542, column: 3, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 541, column: 32)
!4766 = !DILocation(line: 543, column: 3, scope: !4765)
!4767 = !DILocalVariable(name: "__ret_warn_on", scope: !4768, file: !3, line: 546, type: !126)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 546, column: 6)
!4769 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 546, column: 6)
!4770 = !DILocation(line: 546, column: 6, scope: !4768)
!4771 = !DILocation(line: 546, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 546, column: 6)
!4773 = !DILocation(line: 546, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 546, column: 6)
!4775 = !DILocation(line: 546, column: 6, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 546, column: 6)
!4777 = !DILocation(line: 546, column: 6, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 546, column: 6)
!4779 = !{i32 -2141719996, i32 -2141719967, i32 -2141719921, i32 -2141719863, i32 -2141719809, i32 -2141719755, i32 -2141719700, i32 -2141719669}
!4780 = !DILocation(line: 546, column: 6, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 546, column: 6)
!4782 = !{i32 -2141719238, i32 -2141719231, i32 -2141719179, i32 -2141719148, i32 -2141719118}
!4783 = !DILocation(line: 546, column: 6, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 546, column: 6)
!4785 = !DILocation(line: 546, column: 6, scope: !4769)
!4786 = !DILocation(line: 546, column: 6, scope: !4736)
!4787 = !DILocation(line: 547, column: 3, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 546, column: 29)
!4789 = !DILocation(line: 548, column: 3, scope: !4788)
!4790 = !DILocation(line: 552, column: 31, scope: !4736)
!4791 = !DILocation(line: 552, column: 36, scope: !4736)
!4792 = !DILocation(line: 552, column: 47, scope: !4736)
!4793 = !DILocation(line: 552, column: 52, scope: !4736)
!4794 = !DILocation(line: 552, column: 8, scope: !4736)
!4795 = !DILocation(line: 552, column: 6, scope: !4736)
!4796 = !DILocation(line: 553, column: 13, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 553, column: 6)
!4798 = !DILocation(line: 553, column: 6, scope: !4797)
!4799 = !DILocation(line: 553, column: 6, scope: !4736)
!4800 = !DILocation(line: 554, column: 3, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 553, column: 19)
!4802 = !DILocation(line: 555, column: 3, scope: !4801)
!4803 = !DILocation(line: 558, column: 17, scope: !4736)
!4804 = !DILocation(line: 558, column: 2, scope: !4736)
!4805 = !DILocation(line: 558, column: 7, scope: !4736)
!4806 = !DILocation(line: 558, column: 15, scope: !4736)
!4807 = !DILocation(line: 559, column: 2, scope: !4736)
!4808 = !DILocation(line: 559, column: 7, scope: !4736)
!4809 = !DILocation(line: 559, column: 13, scope: !4736)
!4810 = !DILocation(line: 561, column: 2, scope: !4736)
!4811 = !DILocation(line: 562, column: 1, scope: !4736)
!4812 = distinct !DISubprogram(name: "vb2_dma_sg_unmap_dmabuf", scope: !3, file: !3, line: 564, type: !2582, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4813 = !DILocalVariable(name: "mem_priv", arg: 1, scope: !4812, file: !3, line: 564, type: !123)
!4814 = !DILocation(line: 564, column: 43, scope: !4812)
!4815 = !DILocalVariable(name: "buf", scope: !4812, file: !3, line: 566, type: !4059)
!4816 = !DILocation(line: 566, column: 25, scope: !4812)
!4817 = !DILocation(line: 566, column: 31, scope: !4812)
!4818 = !DILocalVariable(name: "sgt", scope: !4812, file: !3, line: 567, type: !3844)
!4819 = !DILocation(line: 567, column: 19, scope: !4812)
!4820 = !DILocation(line: 567, column: 25, scope: !4812)
!4821 = !DILocation(line: 567, column: 30, scope: !4812)
!4822 = !DILocalVariable(name: "__ret_warn_on", scope: !4823, file: !3, line: 569, type: !126)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 569, column: 6)
!4824 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 569, column: 6)
!4825 = !DILocation(line: 569, column: 6, scope: !4823)
!4826 = !DILocation(line: 569, column: 6, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 569, column: 6)
!4828 = !DILocation(line: 569, column: 6, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 569, column: 6)
!4830 = !DILocation(line: 569, column: 6, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 569, column: 6)
!4832 = !DILocation(line: 569, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 569, column: 6)
!4834 = !{i32 -2141718234, i32 -2141718205, i32 -2141718159, i32 -2141718101, i32 -2141718047, i32 -2141717993, i32 -2141717938, i32 -2141717907}
!4835 = !DILocation(line: 569, column: 6, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 569, column: 6)
!4837 = !{i32 -2141717476, i32 -2141717469, i32 -2141717417, i32 -2141717386, i32 -2141717356}
!4838 = !DILocation(line: 569, column: 6, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 569, column: 6)
!4840 = !DILocation(line: 569, column: 6, scope: !4824)
!4841 = !DILocation(line: 569, column: 6, scope: !4812)
!4842 = !DILocation(line: 570, column: 3, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 569, column: 32)
!4844 = !DILocation(line: 571, column: 3, scope: !4843)
!4845 = !DILocalVariable(name: "__ret_warn_on", scope: !4846, file: !3, line: 574, type: !126)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 574, column: 6)
!4847 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 574, column: 6)
!4848 = !DILocation(line: 574, column: 6, scope: !4846)
!4849 = !DILocation(line: 574, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 574, column: 6)
!4851 = !DILocation(line: 574, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 574, column: 6)
!4853 = !DILocation(line: 574, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 574, column: 6)
!4855 = !DILocation(line: 574, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 574, column: 6)
!4857 = !{i32 -2141716628, i32 -2141716599, i32 -2141716553, i32 -2141716495, i32 -2141716441, i32 -2141716387, i32 -2141716332, i32 -2141716301}
!4858 = !DILocation(line: 574, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 574, column: 6)
!4860 = !{i32 -2141715870, i32 -2141715863, i32 -2141715811, i32 -2141715780, i32 -2141715750}
!4861 = !DILocation(line: 574, column: 6, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 574, column: 6)
!4863 = !DILocation(line: 574, column: 6, scope: !4847)
!4864 = !DILocation(line: 574, column: 6, scope: !4812)
!4865 = !DILocation(line: 575, column: 3, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 574, column: 21)
!4867 = !DILocation(line: 576, column: 3, scope: !4866)
!4868 = !DILocation(line: 579, column: 6, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 579, column: 6)
!4870 = !DILocation(line: 579, column: 11, scope: !4869)
!4871 = !DILocation(line: 579, column: 6, scope: !4812)
!4872 = !DILocation(line: 580, column: 18, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 579, column: 18)
!4874 = !DILocation(line: 580, column: 23, scope: !4873)
!4875 = !DILocation(line: 580, column: 34, scope: !4873)
!4876 = !DILocation(line: 580, column: 42, scope: !4873)
!4877 = !DILocation(line: 580, column: 47, scope: !4873)
!4878 = !DILocation(line: 580, column: 3, scope: !4873)
!4879 = !DILocation(line: 581, column: 3, scope: !4873)
!4880 = !DILocation(line: 581, column: 8, scope: !4873)
!4881 = !DILocation(line: 581, column: 14, scope: !4873)
!4882 = !DILocation(line: 582, column: 2, scope: !4873)
!4883 = !DILocation(line: 583, column: 27, scope: !4812)
!4884 = !DILocation(line: 583, column: 32, scope: !4812)
!4885 = !DILocation(line: 583, column: 43, scope: !4812)
!4886 = !DILocation(line: 583, column: 48, scope: !4812)
!4887 = !DILocation(line: 583, column: 53, scope: !4812)
!4888 = !DILocation(line: 583, column: 2, scope: !4812)
!4889 = !DILocation(line: 585, column: 2, scope: !4812)
!4890 = !DILocation(line: 585, column: 7, scope: !4812)
!4891 = !DILocation(line: 585, column: 15, scope: !4812)
!4892 = !DILocation(line: 586, column: 1, scope: !4812)
!4893 = distinct !DISubprogram(name: "vb2_dma_sg_vaddr", scope: !3, file: !3, line: 295, type: !4004, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4894 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4893, file: !3, line: 295, type: !123)
!4895 = !DILocation(line: 295, column: 37, scope: !4893)
!4896 = !DILocalVariable(name: "buf", scope: !4893, file: !3, line: 297, type: !4059)
!4897 = !DILocation(line: 297, column: 25, scope: !4893)
!4898 = !DILocation(line: 297, column: 31, scope: !4893)
!4899 = !DILocation(line: 299, column: 2, scope: !4893)
!4900 = !DILocation(line: 299, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 299, column: 2)
!4902 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 299, column: 2)
!4903 = !DILocation(line: 299, column: 2, scope: !4902)
!4904 = !DILocation(line: 299, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 299, column: 2)
!4906 = !DILocation(line: 299, column: 2, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 299, column: 2)
!4908 = !DILocation(line: 299, column: 2, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 299, column: 2)
!4910 = !{i32 -2141729317, i32 -2141729288, i32 -2141729242, i32 -2141729184, i32 -2141729130, i32 -2141729076, i32 -2141729021, i32 -2141728990}
!4911 = !DILocation(line: 299, column: 2, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 299, column: 2)
!4913 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 299, column: 2)
!4914 = !{i32 -2141728518, i32 -2141728511, i32 -2141728457, i32 -2141728426, i32 -2141728396}
!4915 = !DILocation(line: 299, column: 2, scope: !4913)
!4916 = !DILocation(line: 301, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 301, column: 6)
!4918 = !DILocation(line: 301, column: 12, scope: !4917)
!4919 = !DILocation(line: 301, column: 6, scope: !4893)
!4920 = !DILocation(line: 302, column: 7, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 302, column: 7)
!4922 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 301, column: 19)
!4923 = !DILocation(line: 302, column: 12, scope: !4921)
!4924 = !DILocation(line: 302, column: 7, scope: !4922)
!4925 = !DILocation(line: 303, column: 30, scope: !4921)
!4926 = !DILocation(line: 303, column: 35, scope: !4921)
!4927 = !DILocation(line: 303, column: 46, scope: !4921)
!4928 = !DILocation(line: 303, column: 17, scope: !4921)
!4929 = !DILocation(line: 303, column: 4, scope: !4921)
!4930 = !DILocation(line: 303, column: 9, scope: !4921)
!4931 = !DILocation(line: 303, column: 15, scope: !4921)
!4932 = !DILocation(line: 305, column: 28, scope: !4921)
!4933 = !DILocation(line: 305, column: 33, scope: !4921)
!4934 = !DILocation(line: 305, column: 40, scope: !4921)
!4935 = !DILocation(line: 305, column: 45, scope: !4921)
!4936 = !DILocation(line: 305, column: 17, scope: !4921)
!4937 = !DILocation(line: 305, column: 4, scope: !4921)
!4938 = !DILocation(line: 305, column: 9, scope: !4921)
!4939 = !DILocation(line: 305, column: 15, scope: !4921)
!4940 = !DILocation(line: 306, column: 2, scope: !4922)
!4941 = !DILocation(line: 309, column: 9, scope: !4893)
!4942 = !DILocation(line: 309, column: 14, scope: !4893)
!4943 = !DILocation(line: 309, column: 22, scope: !4893)
!4944 = !DILocation(line: 309, column: 27, scope: !4893)
!4945 = !DILocation(line: 309, column: 35, scope: !4893)
!4946 = !DILocation(line: 309, column: 40, scope: !4893)
!4947 = !DILocation(line: 309, column: 33, scope: !4893)
!4948 = !DILocation(line: 309, column: 2, scope: !4893)
!4949 = distinct !DISubprogram(name: "vb2_dma_sg_cookie", scope: !3, file: !3, line: 633, type: !4004, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4950 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4949, file: !3, line: 633, type: !123)
!4951 = !DILocation(line: 633, column: 38, scope: !4949)
!4952 = !DILocalVariable(name: "buf", scope: !4949, file: !3, line: 635, type: !4059)
!4953 = !DILocation(line: 635, column: 25, scope: !4949)
!4954 = !DILocation(line: 635, column: 31, scope: !4949)
!4955 = !DILocation(line: 637, column: 9, scope: !4949)
!4956 = !DILocation(line: 637, column: 14, scope: !4949)
!4957 = !DILocation(line: 637, column: 2, scope: !4949)
!4958 = distinct !DISubprogram(name: "vb2_dma_sg_num_users", scope: !3, file: !3, line: 312, type: !4009, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4959 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4958, file: !3, line: 312, type: !123)
!4960 = !DILocation(line: 312, column: 48, scope: !4958)
!4961 = !DILocalVariable(name: "buf", scope: !4958, file: !3, line: 314, type: !4059)
!4962 = !DILocation(line: 314, column: 25, scope: !4958)
!4963 = !DILocation(line: 314, column: 31, scope: !4958)
!4964 = !DILocation(line: 316, column: 24, scope: !4958)
!4965 = !DILocation(line: 316, column: 29, scope: !4958)
!4966 = !DILocation(line: 316, column: 9, scope: !4958)
!4967 = !DILocation(line: 316, column: 2, scope: !4958)
!4968 = distinct !DISubprogram(name: "vb2_dma_sg_mmap", scope: !3, file: !3, line: 319, type: !4013, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!4969 = !DILocalVariable(name: "buf_priv", arg: 1, scope: !4968, file: !3, line: 319, type: !123)
!4970 = !DILocation(line: 319, column: 34, scope: !4968)
!4971 = !DILocalVariable(name: "vma", arg: 2, scope: !4968, file: !3, line: 319, type: !973)
!4972 = !DILocation(line: 319, column: 67, scope: !4968)
!4973 = !DILocalVariable(name: "buf", scope: !4968, file: !3, line: 321, type: !4059)
!4974 = !DILocation(line: 321, column: 25, scope: !4968)
!4975 = !DILocation(line: 321, column: 31, scope: !4968)
!4976 = !DILocalVariable(name: "err", scope: !4968, file: !3, line: 322, type: !126)
!4977 = !DILocation(line: 322, column: 6, scope: !4968)
!4978 = !DILocation(line: 324, column: 7, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 324, column: 6)
!4980 = !DILocation(line: 324, column: 6, scope: !4968)
!4981 = !DILocation(line: 325, column: 3, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 324, column: 12)
!4983 = !DILocation(line: 326, column: 3, scope: !4982)
!4984 = !DILocation(line: 329, column: 21, scope: !4968)
!4985 = !DILocation(line: 329, column: 26, scope: !4968)
!4986 = !DILocation(line: 329, column: 31, scope: !4968)
!4987 = !DILocation(line: 329, column: 38, scope: !4968)
!4988 = !DILocation(line: 329, column: 43, scope: !4968)
!4989 = !DILocation(line: 329, column: 8, scope: !4968)
!4990 = !DILocation(line: 329, column: 6, scope: !4968)
!4991 = !DILocation(line: 330, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 330, column: 6)
!4993 = !DILocation(line: 330, column: 6, scope: !4968)
!4994 = !DILocation(line: 331, column: 52, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 330, column: 11)
!4996 = !DILocation(line: 331, column: 3, scope: !4995)
!4997 = !DILocation(line: 332, column: 10, scope: !4995)
!4998 = !DILocation(line: 332, column: 3, scope: !4995)
!4999 = !DILocation(line: 338, column: 26, scope: !4968)
!5000 = !DILocation(line: 338, column: 31, scope: !4968)
!5001 = !DILocation(line: 338, column: 25, scope: !4968)
!5002 = !DILocation(line: 338, column: 2, scope: !4968)
!5003 = !DILocation(line: 338, column: 7, scope: !4968)
!5004 = !DILocation(line: 338, column: 23, scope: !4968)
!5005 = !DILocation(line: 339, column: 2, scope: !4968)
!5006 = !DILocation(line: 339, column: 7, scope: !4968)
!5007 = !DILocation(line: 339, column: 15, scope: !4968)
!5008 = !DILocation(line: 341, column: 2, scope: !4968)
!5009 = !DILocation(line: 341, column: 7, scope: !4968)
!5010 = !DILocation(line: 341, column: 15, scope: !4968)
!5011 = !DILocation(line: 341, column: 20, scope: !4968)
!5012 = !DILocation(line: 343, column: 2, scope: !4968)
!5013 = !DILocation(line: 344, column: 1, scope: !4968)
!5014 = distinct !DISubprogram(name: "ERR_PTR", scope: !5015, file: !5015, line: 24, type: !5016, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5015 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!123, !473}
!5018 = !DILocalVariable(name: "error", arg: 1, scope: !5014, file: !5015, line: 24, type: !473)
!5019 = !DILocation(line: 24, column: 48, scope: !5014)
!5020 = !DILocation(line: 26, column: 18, scope: !5014)
!5021 = !DILocation(line: 26, column: 9, scope: !5014)
!5022 = !DILocation(line: 26, column: 2, scope: !5014)
!5023 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 662, type: !5024, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!123, !1119, !121}
!5026 = !DILocalVariable(name: "s", arg: 1, scope: !5027, file: !101, line: 445, type: !2135)
!5027 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !101, file: !101, line: 445, type: !5028, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!123, !2135, !121, !1119}
!5030 = !DILocation(line: 445, column: 72, scope: !5027, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 552, column: 10, scope: !5032, inlinedAt: !5035)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !101, line: 540, column: 34)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !101, line: 540, column: 6)
!5034 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 538, type: !5024, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5035 = distinct !DILocation(line: 664, column: 9, scope: !5023)
!5036 = !DILocalVariable(name: "flags", arg: 2, scope: !5027, file: !101, line: 446, type: !121)
!5037 = !DILocation(line: 446, column: 9, scope: !5027, inlinedAt: !5031)
!5038 = !DILocalVariable(name: "size", arg: 3, scope: !5027, file: !101, line: 446, type: !1119)
!5039 = !DILocation(line: 446, column: 23, scope: !5027, inlinedAt: !5031)
!5040 = !DILocalVariable(name: "ret", scope: !5027, file: !101, line: 448, type: !123)
!5041 = !DILocation(line: 448, column: 8, scope: !5027, inlinedAt: !5031)
!5042 = !DILocalVariable(name: "flags", arg: 1, scope: !5043, file: !101, line: 318, type: !121)
!5043 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 318, type: !5044, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!100, !121}
!5046 = !DILocation(line: 318, column: 67, scope: !5043, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 553, column: 20, scope: !5032, inlinedAt: !5035)
!5048 = !DILocalVariable(name: "size", arg: 1, scope: !5049, file: !101, line: 346, type: !1119)
!5049 = distinct !DISubprogram(name: "kmalloc_index", scope: !101, file: !101, line: 346, type: !5050, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!7, !1119}
!5052 = !DILocation(line: 346, column: 58, scope: !5049, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 547, column: 11, scope: !5032, inlinedAt: !5035)
!5054 = !DILocalVariable(name: "size", arg: 1, scope: !5055, file: !101, line: 472, type: !1119)
!5055 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !101, file: !101, line: 472, type: !5056, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!123, !1119, !121, !7}
!5058 = !DILocation(line: 472, column: 28, scope: !5055, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 481, column: 9, scope: !5060, inlinedAt: !5061)
!5060 = distinct !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 478, type: !5024, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5061 = distinct !DILocation(line: 545, column: 11, scope: !5062, inlinedAt: !5035)
!5062 = distinct !DILexicalBlock(scope: !5032, file: !101, line: 544, column: 7)
!5063 = !DILocalVariable(name: "flags", arg: 2, scope: !5055, file: !101, line: 472, type: !121)
!5064 = !DILocation(line: 472, column: 40, scope: !5055, inlinedAt: !5059)
!5065 = !DILocalVariable(name: "order", arg: 3, scope: !5055, file: !101, line: 472, type: !7)
!5066 = !DILocation(line: 472, column: 60, scope: !5055, inlinedAt: !5059)
!5067 = !DILocalVariable(name: "size", arg: 1, scope: !5060, file: !101, line: 478, type: !1119)
!5068 = !DILocation(line: 478, column: 51, scope: !5060, inlinedAt: !5061)
!5069 = !DILocalVariable(name: "flags", arg: 2, scope: !5060, file: !101, line: 478, type: !121)
!5070 = !DILocation(line: 478, column: 63, scope: !5060, inlinedAt: !5061)
!5071 = !DILocalVariable(name: "order", scope: !5060, file: !101, line: 480, type: !7)
!5072 = !DILocation(line: 480, column: 15, scope: !5060, inlinedAt: !5061)
!5073 = !DILocalVariable(name: "size", arg: 1, scope: !5034, file: !101, line: 538, type: !1119)
!5074 = !DILocation(line: 538, column: 45, scope: !5034, inlinedAt: !5035)
!5075 = !DILocalVariable(name: "flags", arg: 2, scope: !5034, file: !101, line: 538, type: !121)
!5076 = !DILocation(line: 538, column: 57, scope: !5034, inlinedAt: !5035)
!5077 = !DILocalVariable(name: "index", scope: !5032, file: !101, line: 542, type: !7)
!5078 = !DILocation(line: 542, column: 16, scope: !5032, inlinedAt: !5035)
!5079 = !DILocalVariable(name: "size", arg: 1, scope: !5023, file: !101, line: 662, type: !1119)
!5080 = !DILocation(line: 662, column: 36, scope: !5023)
!5081 = !DILocalVariable(name: "flags", arg: 2, scope: !5023, file: !101, line: 662, type: !121)
!5082 = !DILocation(line: 662, column: 48, scope: !5023)
!5083 = !DILocation(line: 664, column: 17, scope: !5023)
!5084 = !DILocation(line: 664, column: 23, scope: !5023)
!5085 = !DILocation(line: 664, column: 29, scope: !5023)
!5086 = !DILocation(line: 540, column: 27, scope: !5033, inlinedAt: !5035)
!5087 = !DILocation(line: 540, column: 6, scope: !5033, inlinedAt: !5035)
!5088 = !DILocation(line: 540, column: 6, scope: !5034, inlinedAt: !5035)
!5089 = !DILocation(line: 544, column: 7, scope: !5062, inlinedAt: !5035)
!5090 = !DILocation(line: 544, column: 12, scope: !5062, inlinedAt: !5035)
!5091 = !DILocation(line: 544, column: 7, scope: !5032, inlinedAt: !5035)
!5092 = !DILocation(line: 545, column: 25, scope: !5062, inlinedAt: !5035)
!5093 = !DILocation(line: 545, column: 31, scope: !5062, inlinedAt: !5035)
!5094 = !DILocation(line: 480, column: 33, scope: !5060, inlinedAt: !5061)
!5095 = !DILocation(line: 480, column: 23, scope: !5060, inlinedAt: !5061)
!5096 = !DILocation(line: 481, column: 29, scope: !5060, inlinedAt: !5061)
!5097 = !DILocation(line: 481, column: 35, scope: !5060, inlinedAt: !5061)
!5098 = !DILocation(line: 481, column: 42, scope: !5060, inlinedAt: !5061)
!5099 = !DILocation(line: 474, column: 23, scope: !5055, inlinedAt: !5059)
!5100 = !DILocation(line: 474, column: 29, scope: !5055, inlinedAt: !5059)
!5101 = !DILocation(line: 474, column: 36, scope: !5055, inlinedAt: !5059)
!5102 = !DILocation(line: 474, column: 9, scope: !5055, inlinedAt: !5059)
!5103 = !DILocation(line: 545, column: 4, scope: !5062, inlinedAt: !5035)
!5104 = !DILocation(line: 547, column: 25, scope: !5032, inlinedAt: !5035)
!5105 = !DILocation(line: 348, column: 7, scope: !5106, inlinedAt: !5053)
!5106 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 348, column: 6)
!5107 = !DILocation(line: 348, column: 6, scope: !5049, inlinedAt: !5053)
!5108 = !DILocation(line: 349, column: 3, scope: !5106, inlinedAt: !5053)
!5109 = !DILocation(line: 351, column: 6, scope: !5110, inlinedAt: !5053)
!5110 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 351, column: 6)
!5111 = !DILocation(line: 351, column: 11, scope: !5110, inlinedAt: !5053)
!5112 = !DILocation(line: 351, column: 6, scope: !5049, inlinedAt: !5053)
!5113 = !DILocation(line: 352, column: 3, scope: !5110, inlinedAt: !5053)
!5114 = !DILocation(line: 354, column: 32, scope: !5115, inlinedAt: !5053)
!5115 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 354, column: 6)
!5116 = !DILocation(line: 354, column: 37, scope: !5115, inlinedAt: !5053)
!5117 = !DILocation(line: 354, column: 42, scope: !5115, inlinedAt: !5053)
!5118 = !DILocation(line: 354, column: 45, scope: !5115, inlinedAt: !5053)
!5119 = !DILocation(line: 354, column: 50, scope: !5115, inlinedAt: !5053)
!5120 = !DILocation(line: 354, column: 6, scope: !5049, inlinedAt: !5053)
!5121 = !DILocation(line: 355, column: 3, scope: !5115, inlinedAt: !5053)
!5122 = !DILocation(line: 356, column: 32, scope: !5123, inlinedAt: !5053)
!5123 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 356, column: 6)
!5124 = !DILocation(line: 356, column: 37, scope: !5123, inlinedAt: !5053)
!5125 = !DILocation(line: 356, column: 43, scope: !5123, inlinedAt: !5053)
!5126 = !DILocation(line: 356, column: 46, scope: !5123, inlinedAt: !5053)
!5127 = !DILocation(line: 356, column: 51, scope: !5123, inlinedAt: !5053)
!5128 = !DILocation(line: 356, column: 6, scope: !5049, inlinedAt: !5053)
!5129 = !DILocation(line: 357, column: 3, scope: !5123, inlinedAt: !5053)
!5130 = !DILocation(line: 358, column: 6, scope: !5131, inlinedAt: !5053)
!5131 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 358, column: 6)
!5132 = !DILocation(line: 358, column: 11, scope: !5131, inlinedAt: !5053)
!5133 = !DILocation(line: 358, column: 6, scope: !5049, inlinedAt: !5053)
!5134 = !DILocation(line: 358, column: 26, scope: !5131, inlinedAt: !5053)
!5135 = !DILocation(line: 359, column: 6, scope: !5136, inlinedAt: !5053)
!5136 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 359, column: 6)
!5137 = !DILocation(line: 359, column: 11, scope: !5136, inlinedAt: !5053)
!5138 = !DILocation(line: 359, column: 6, scope: !5049, inlinedAt: !5053)
!5139 = !DILocation(line: 359, column: 26, scope: !5136, inlinedAt: !5053)
!5140 = !DILocation(line: 360, column: 6, scope: !5141, inlinedAt: !5053)
!5141 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 360, column: 6)
!5142 = !DILocation(line: 360, column: 11, scope: !5141, inlinedAt: !5053)
!5143 = !DILocation(line: 360, column: 6, scope: !5049, inlinedAt: !5053)
!5144 = !DILocation(line: 360, column: 26, scope: !5141, inlinedAt: !5053)
!5145 = !DILocation(line: 361, column: 6, scope: !5146, inlinedAt: !5053)
!5146 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 361, column: 6)
!5147 = !DILocation(line: 361, column: 11, scope: !5146, inlinedAt: !5053)
!5148 = !DILocation(line: 361, column: 6, scope: !5049, inlinedAt: !5053)
!5149 = !DILocation(line: 361, column: 26, scope: !5146, inlinedAt: !5053)
!5150 = !DILocation(line: 362, column: 6, scope: !5151, inlinedAt: !5053)
!5151 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 362, column: 6)
!5152 = !DILocation(line: 362, column: 11, scope: !5151, inlinedAt: !5053)
!5153 = !DILocation(line: 362, column: 6, scope: !5049, inlinedAt: !5053)
!5154 = !DILocation(line: 362, column: 26, scope: !5151, inlinedAt: !5053)
!5155 = !DILocation(line: 363, column: 6, scope: !5156, inlinedAt: !5053)
!5156 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 363, column: 6)
!5157 = !DILocation(line: 363, column: 11, scope: !5156, inlinedAt: !5053)
!5158 = !DILocation(line: 363, column: 6, scope: !5049, inlinedAt: !5053)
!5159 = !DILocation(line: 363, column: 26, scope: !5156, inlinedAt: !5053)
!5160 = !DILocation(line: 364, column: 6, scope: !5161, inlinedAt: !5053)
!5161 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 364, column: 6)
!5162 = !DILocation(line: 364, column: 11, scope: !5161, inlinedAt: !5053)
!5163 = !DILocation(line: 364, column: 6, scope: !5049, inlinedAt: !5053)
!5164 = !DILocation(line: 364, column: 26, scope: !5161, inlinedAt: !5053)
!5165 = !DILocation(line: 365, column: 6, scope: !5166, inlinedAt: !5053)
!5166 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 365, column: 6)
!5167 = !DILocation(line: 365, column: 11, scope: !5166, inlinedAt: !5053)
!5168 = !DILocation(line: 365, column: 6, scope: !5049, inlinedAt: !5053)
!5169 = !DILocation(line: 365, column: 26, scope: !5166, inlinedAt: !5053)
!5170 = !DILocation(line: 366, column: 6, scope: !5171, inlinedAt: !5053)
!5171 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 366, column: 6)
!5172 = !DILocation(line: 366, column: 11, scope: !5171, inlinedAt: !5053)
!5173 = !DILocation(line: 366, column: 6, scope: !5049, inlinedAt: !5053)
!5174 = !DILocation(line: 366, column: 26, scope: !5171, inlinedAt: !5053)
!5175 = !DILocation(line: 367, column: 6, scope: !5176, inlinedAt: !5053)
!5176 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 367, column: 6)
!5177 = !DILocation(line: 367, column: 11, scope: !5176, inlinedAt: !5053)
!5178 = !DILocation(line: 367, column: 6, scope: !5049, inlinedAt: !5053)
!5179 = !DILocation(line: 367, column: 26, scope: !5176, inlinedAt: !5053)
!5180 = !DILocation(line: 368, column: 6, scope: !5181, inlinedAt: !5053)
!5181 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 368, column: 6)
!5182 = !DILocation(line: 368, column: 11, scope: !5181, inlinedAt: !5053)
!5183 = !DILocation(line: 368, column: 6, scope: !5049, inlinedAt: !5053)
!5184 = !DILocation(line: 368, column: 26, scope: !5181, inlinedAt: !5053)
!5185 = !DILocation(line: 369, column: 6, scope: !5186, inlinedAt: !5053)
!5186 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 369, column: 6)
!5187 = !DILocation(line: 369, column: 11, scope: !5186, inlinedAt: !5053)
!5188 = !DILocation(line: 369, column: 6, scope: !5049, inlinedAt: !5053)
!5189 = !DILocation(line: 369, column: 26, scope: !5186, inlinedAt: !5053)
!5190 = !DILocation(line: 370, column: 6, scope: !5191, inlinedAt: !5053)
!5191 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 370, column: 6)
!5192 = !DILocation(line: 370, column: 11, scope: !5191, inlinedAt: !5053)
!5193 = !DILocation(line: 370, column: 6, scope: !5049, inlinedAt: !5053)
!5194 = !DILocation(line: 370, column: 26, scope: !5191, inlinedAt: !5053)
!5195 = !DILocation(line: 371, column: 6, scope: !5196, inlinedAt: !5053)
!5196 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 371, column: 6)
!5197 = !DILocation(line: 371, column: 11, scope: !5196, inlinedAt: !5053)
!5198 = !DILocation(line: 371, column: 6, scope: !5049, inlinedAt: !5053)
!5199 = !DILocation(line: 371, column: 26, scope: !5196, inlinedAt: !5053)
!5200 = !DILocation(line: 372, column: 6, scope: !5201, inlinedAt: !5053)
!5201 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 372, column: 6)
!5202 = !DILocation(line: 372, column: 11, scope: !5201, inlinedAt: !5053)
!5203 = !DILocation(line: 372, column: 6, scope: !5049, inlinedAt: !5053)
!5204 = !DILocation(line: 372, column: 26, scope: !5201, inlinedAt: !5053)
!5205 = !DILocation(line: 373, column: 6, scope: !5206, inlinedAt: !5053)
!5206 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 373, column: 6)
!5207 = !DILocation(line: 373, column: 11, scope: !5206, inlinedAt: !5053)
!5208 = !DILocation(line: 373, column: 6, scope: !5049, inlinedAt: !5053)
!5209 = !DILocation(line: 373, column: 26, scope: !5206, inlinedAt: !5053)
!5210 = !DILocation(line: 374, column: 6, scope: !5211, inlinedAt: !5053)
!5211 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 374, column: 6)
!5212 = !DILocation(line: 374, column: 11, scope: !5211, inlinedAt: !5053)
!5213 = !DILocation(line: 374, column: 6, scope: !5049, inlinedAt: !5053)
!5214 = !DILocation(line: 374, column: 26, scope: !5211, inlinedAt: !5053)
!5215 = !DILocation(line: 375, column: 6, scope: !5216, inlinedAt: !5053)
!5216 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 375, column: 6)
!5217 = !DILocation(line: 375, column: 11, scope: !5216, inlinedAt: !5053)
!5218 = !DILocation(line: 375, column: 6, scope: !5049, inlinedAt: !5053)
!5219 = !DILocation(line: 375, column: 27, scope: !5216, inlinedAt: !5053)
!5220 = !DILocation(line: 376, column: 6, scope: !5221, inlinedAt: !5053)
!5221 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 376, column: 6)
!5222 = !DILocation(line: 376, column: 11, scope: !5221, inlinedAt: !5053)
!5223 = !DILocation(line: 376, column: 6, scope: !5049, inlinedAt: !5053)
!5224 = !DILocation(line: 376, column: 32, scope: !5221, inlinedAt: !5053)
!5225 = !DILocation(line: 377, column: 6, scope: !5226, inlinedAt: !5053)
!5226 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 377, column: 6)
!5227 = !DILocation(line: 377, column: 11, scope: !5226, inlinedAt: !5053)
!5228 = !DILocation(line: 377, column: 6, scope: !5049, inlinedAt: !5053)
!5229 = !DILocation(line: 377, column: 32, scope: !5226, inlinedAt: !5053)
!5230 = !DILocation(line: 378, column: 6, scope: !5231, inlinedAt: !5053)
!5231 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 378, column: 6)
!5232 = !DILocation(line: 378, column: 11, scope: !5231, inlinedAt: !5053)
!5233 = !DILocation(line: 378, column: 6, scope: !5049, inlinedAt: !5053)
!5234 = !DILocation(line: 378, column: 32, scope: !5231, inlinedAt: !5053)
!5235 = !DILocation(line: 379, column: 6, scope: !5236, inlinedAt: !5053)
!5236 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 379, column: 6)
!5237 = !DILocation(line: 379, column: 11, scope: !5236, inlinedAt: !5053)
!5238 = !DILocation(line: 379, column: 6, scope: !5049, inlinedAt: !5053)
!5239 = !DILocation(line: 379, column: 33, scope: !5236, inlinedAt: !5053)
!5240 = !DILocation(line: 380, column: 6, scope: !5241, inlinedAt: !5053)
!5241 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 380, column: 6)
!5242 = !DILocation(line: 380, column: 11, scope: !5241, inlinedAt: !5053)
!5243 = !DILocation(line: 380, column: 6, scope: !5049, inlinedAt: !5053)
!5244 = !DILocation(line: 380, column: 33, scope: !5241, inlinedAt: !5053)
!5245 = !DILocation(line: 381, column: 6, scope: !5246, inlinedAt: !5053)
!5246 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 381, column: 6)
!5247 = !DILocation(line: 381, column: 11, scope: !5246, inlinedAt: !5053)
!5248 = !DILocation(line: 381, column: 6, scope: !5049, inlinedAt: !5053)
!5249 = !DILocation(line: 381, column: 33, scope: !5246, inlinedAt: !5053)
!5250 = !DILocation(line: 382, column: 2, scope: !5251, inlinedAt: !5053)
!5251 = distinct !DILexicalBlock(scope: !5252, file: !101, line: 382, column: 2)
!5252 = distinct !DILexicalBlock(scope: !5049, file: !101, line: 382, column: 2)
!5253 = !{i32 -2142357202, i32 -2142357173, i32 -2142357127, i32 -2142357069, i32 -2142357015, i32 -2142356961, i32 -2142356906, i32 -2142356875}
!5254 = !DILocation(line: 382, column: 2, scope: !5255, inlinedAt: !5053)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !101, line: 382, column: 2)
!5256 = distinct !DILexicalBlock(scope: !5252, file: !101, line: 382, column: 2)
!5257 = !{i32 -2142356432, i32 -2142356425, i32 -2142356371, i32 -2142356340, i32 -2142356310}
!5258 = !DILocation(line: 382, column: 2, scope: !5256, inlinedAt: !5053)
!5259 = !DILocation(line: 386, column: 1, scope: !5049, inlinedAt: !5053)
!5260 = !DILocation(line: 547, column: 9, scope: !5032, inlinedAt: !5035)
!5261 = !DILocation(line: 549, column: 8, scope: !5262, inlinedAt: !5035)
!5262 = distinct !DILexicalBlock(scope: !5032, file: !101, line: 549, column: 7)
!5263 = !DILocation(line: 549, column: 7, scope: !5032, inlinedAt: !5035)
!5264 = !DILocation(line: 550, column: 4, scope: !5262, inlinedAt: !5035)
!5265 = !DILocation(line: 553, column: 33, scope: !5032, inlinedAt: !5035)
!5266 = !DILocation(line: 325, column: 6, scope: !5267, inlinedAt: !5047)
!5267 = distinct !DILexicalBlock(scope: !5043, file: !101, line: 325, column: 6)
!5268 = !DILocation(line: 325, column: 6, scope: !5043, inlinedAt: !5047)
!5269 = !DILocation(line: 326, column: 3, scope: !5267, inlinedAt: !5047)
!5270 = !DILocation(line: 332, column: 9, scope: !5043, inlinedAt: !5047)
!5271 = !DILocation(line: 332, column: 15, scope: !5043, inlinedAt: !5047)
!5272 = !DILocation(line: 332, column: 2, scope: !5043, inlinedAt: !5047)
!5273 = !DILocation(line: 336, column: 1, scope: !5043, inlinedAt: !5047)
!5274 = !DILocation(line: 553, column: 5, scope: !5032, inlinedAt: !5035)
!5275 = !DILocation(line: 553, column: 41, scope: !5032, inlinedAt: !5035)
!5276 = !DILocation(line: 554, column: 5, scope: !5032, inlinedAt: !5035)
!5277 = !DILocation(line: 554, column: 12, scope: !5032, inlinedAt: !5035)
!5278 = !DILocation(line: 448, column: 31, scope: !5027, inlinedAt: !5031)
!5279 = !DILocation(line: 448, column: 34, scope: !5027, inlinedAt: !5031)
!5280 = !DILocation(line: 448, column: 14, scope: !5027, inlinedAt: !5031)
!5281 = !DILocation(line: 450, column: 22, scope: !5027, inlinedAt: !5031)
!5282 = !DILocation(line: 450, column: 25, scope: !5027, inlinedAt: !5031)
!5283 = !DILocation(line: 450, column: 30, scope: !5027, inlinedAt: !5031)
!5284 = !DILocation(line: 450, column: 36, scope: !5027, inlinedAt: !5031)
!5285 = !DILocation(line: 450, column: 8, scope: !5027, inlinedAt: !5031)
!5286 = !DILocation(line: 450, column: 6, scope: !5027, inlinedAt: !5031)
!5287 = !DILocation(line: 451, column: 9, scope: !5027, inlinedAt: !5031)
!5288 = !DILocation(line: 552, column: 3, scope: !5032, inlinedAt: !5035)
!5289 = !DILocation(line: 557, column: 19, scope: !5034, inlinedAt: !5035)
!5290 = !DILocation(line: 557, column: 25, scope: !5034, inlinedAt: !5035)
!5291 = !DILocation(line: 557, column: 9, scope: !5034, inlinedAt: !5035)
!5292 = !DILocation(line: 557, column: 2, scope: !5034, inlinedAt: !5035)
!5293 = !DILocation(line: 558, column: 1, scope: !5034, inlinedAt: !5035)
!5294 = !DILocation(line: 664, column: 2, scope: !5023)
!5295 = distinct !DISubprogram(name: "kvmalloc_array", scope: !14, file: !14, line: 776, type: !5296, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!123, !1119, !1119, !121}
!5298 = !DILocalVariable(name: "n", arg: 1, scope: !5295, file: !14, line: 776, type: !1119)
!5299 = !DILocation(line: 776, column: 43, scope: !5295)
!5300 = !DILocalVariable(name: "size", arg: 2, scope: !5295, file: !14, line: 776, type: !1119)
!5301 = !DILocation(line: 776, column: 53, scope: !5295)
!5302 = !DILocalVariable(name: "flags", arg: 3, scope: !5295, file: !14, line: 776, type: !121)
!5303 = !DILocation(line: 776, column: 65, scope: !5295)
!5304 = !DILocalVariable(name: "bytes", scope: !5295, file: !14, line: 778, type: !1119)
!5305 = !DILocation(line: 778, column: 9, scope: !5295)
!5306 = !DILocalVariable(name: "__a", scope: !5307, file: !14, line: 780, type: !1119)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !14, line: 780, column: 6)
!5308 = distinct !DILexicalBlock(scope: !5295, file: !14, line: 780, column: 6)
!5309 = !DILocation(line: 780, column: 6, scope: !5307)
!5310 = !DILocalVariable(name: "__b", scope: !5307, file: !14, line: 780, type: !1119)
!5311 = !DILocalVariable(name: "__d", scope: !5307, file: !14, line: 780, type: !5312)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!5313 = !DILocation(line: 780, column: 6, scope: !5308)
!5314 = !DILocation(line: 780, column: 6, scope: !5295)
!5315 = !DILocation(line: 781, column: 3, scope: !5308)
!5316 = !DILocation(line: 783, column: 18, scope: !5295)
!5317 = !DILocation(line: 783, column: 25, scope: !5295)
!5318 = !DILocation(line: 783, column: 9, scope: !5295)
!5319 = !DILocation(line: 783, column: 2, scope: !5295)
!5320 = !DILocation(line: 784, column: 1, scope: !5295)
!5321 = distinct !DISubprogram(name: "vb2_dma_sg_alloc_compacted", scope: !3, file: !3, line: 58, type: !5322, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!126, !4059, !121}
!5324 = !DILocalVariable(name: "buf", arg: 1, scope: !5321, file: !3, line: 58, type: !4059)
!5325 = !DILocation(line: 58, column: 62, scope: !5321)
!5326 = !DILocalVariable(name: "gfp_flags", arg: 2, scope: !5321, file: !3, line: 59, type: !121)
!5327 = !DILocation(line: 59, column: 9, scope: !5321)
!5328 = !DILocalVariable(name: "last_page", scope: !5321, file: !3, line: 61, type: !7)
!5329 = !DILocation(line: 61, column: 15, scope: !5321)
!5330 = !DILocalVariable(name: "size", scope: !5321, file: !3, line: 62, type: !127)
!5331 = !DILocation(line: 62, column: 16, scope: !5321)
!5332 = !DILocation(line: 62, column: 23, scope: !5321)
!5333 = !DILocation(line: 62, column: 28, scope: !5321)
!5334 = !DILocation(line: 64, column: 2, scope: !5321)
!5335 = !DILocation(line: 64, column: 9, scope: !5321)
!5336 = !DILocation(line: 64, column: 14, scope: !5321)
!5337 = !DILocalVariable(name: "pages", scope: !5338, file: !3, line: 65, type: !128)
!5338 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 64, column: 19)
!5339 = !DILocation(line: 65, column: 16, scope: !5338)
!5340 = !DILocalVariable(name: "order", scope: !5338, file: !3, line: 66, type: !126)
!5341 = !DILocation(line: 66, column: 7, scope: !5338)
!5342 = !DILocalVariable(name: "i", scope: !5338, file: !3, line: 67, type: !126)
!5343 = !DILocation(line: 67, column: 7, scope: !5338)
!5344 = !DILocation(line: 69, column: 21, scope: !5338)
!5345 = !DILocation(line: 69, column: 11, scope: !5338)
!5346 = !DILocation(line: 69, column: 9, scope: !5338)
!5347 = !DILocation(line: 71, column: 21, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 71, column: 7)
!5349 = !DILocation(line: 71, column: 18, scope: !5348)
!5350 = !DILocation(line: 71, column: 30, scope: !5348)
!5351 = !DILocation(line: 71, column: 28, scope: !5348)
!5352 = !DILocation(line: 71, column: 7, scope: !5338)
!5353 = !DILocation(line: 72, column: 9, scope: !5348)
!5354 = !DILocation(line: 72, column: 4, scope: !5348)
!5355 = !DILocation(line: 74, column: 9, scope: !5338)
!5356 = !DILocation(line: 75, column: 3, scope: !5338)
!5357 = !DILocation(line: 75, column: 11, scope: !5338)
!5358 = !DILocation(line: 75, column: 10, scope: !5338)
!5359 = !DILocation(line: 77, column: 21, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 75, column: 18)
!5361 = !DILocation(line: 77, column: 19, scope: !5360)
!5362 = !DILocation(line: 77, column: 32, scope: !5360)
!5363 = !DILocation(line: 76, column: 12, scope: !5360)
!5364 = !DILocation(line: 76, column: 10, scope: !5360)
!5365 = !DILocation(line: 78, column: 8, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 78, column: 8)
!5367 = !DILocation(line: 78, column: 8, scope: !5360)
!5368 = !DILocation(line: 79, column: 5, scope: !5366)
!5369 = !DILocation(line: 81, column: 8, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 81, column: 8)
!5371 = !DILocation(line: 81, column: 14, scope: !5370)
!5372 = !DILocation(line: 81, column: 8, scope: !5360)
!5373 = !DILocation(line: 82, column: 5, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 81, column: 20)
!5375 = !DILocation(line: 82, column: 21, scope: !5374)
!5376 = !DILocation(line: 83, column: 6, scope: !5374)
!5377 = distinct !{!5377, !5373, !5376}
!5378 = !DILocation(line: 84, column: 5, scope: !5374)
!5379 = !DILocation(line: 86, column: 9, scope: !5360)
!5380 = distinct !{!5380, !5356, !5381}
!5381 = !DILocation(line: 87, column: 3, scope: !5338)
!5382 = !DILocation(line: 89, column: 14, scope: !5338)
!5383 = !DILocation(line: 89, column: 21, scope: !5338)
!5384 = !DILocation(line: 89, column: 3, scope: !5338)
!5385 = !DILocation(line: 90, column: 10, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 90, column: 3)
!5387 = !DILocation(line: 90, column: 8, scope: !5386)
!5388 = !DILocation(line: 90, column: 15, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 90, column: 3)
!5390 = !DILocation(line: 90, column: 25, scope: !5389)
!5391 = !DILocation(line: 90, column: 22, scope: !5389)
!5392 = !DILocation(line: 90, column: 17, scope: !5389)
!5393 = !DILocation(line: 90, column: 3, scope: !5386)
!5394 = !DILocation(line: 91, column: 31, scope: !5389)
!5395 = !DILocation(line: 91, column: 37, scope: !5389)
!5396 = !DILocation(line: 91, column: 4, scope: !5389)
!5397 = !DILocation(line: 91, column: 9, scope: !5389)
!5398 = !DILocation(line: 91, column: 24, scope: !5389)
!5399 = !DILocation(line: 91, column: 28, scope: !5389)
!5400 = !DILocation(line: 90, column: 34, scope: !5389)
!5401 = !DILocation(line: 90, column: 3, scope: !5389)
!5402 = distinct !{!5402, !5393, !5403}
!5403 = !DILocation(line: 91, column: 38, scope: !5386)
!5404 = !DILocation(line: 93, column: 24, scope: !5338)
!5405 = !DILocation(line: 93, column: 21, scope: !5338)
!5406 = !DILocation(line: 93, column: 8, scope: !5338)
!5407 = distinct !{!5407, !5334, !5408}
!5408 = !DILocation(line: 94, column: 2, scope: !5321)
!5409 = !DILocation(line: 96, column: 2, scope: !5321)
!5410 = !DILocation(line: 97, column: 1, scope: !5321)
!5411 = distinct !DISubprogram(name: "dma_map_sgtable", scope: !5412, file: !5412, line: 319, type: !5413, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5412 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!126, !3382, !3844, !93, !127}
!5415 = !DILocalVariable(name: "dev", arg: 1, scope: !5411, file: !5412, line: 319, type: !3382)
!5416 = !DILocation(line: 319, column: 50, scope: !5411)
!5417 = !DILocalVariable(name: "sgt", arg: 2, scope: !5411, file: !5412, line: 319, type: !3844)
!5418 = !DILocation(line: 319, column: 72, scope: !5411)
!5419 = !DILocalVariable(name: "dir", arg: 3, scope: !5411, file: !5412, line: 320, type: !93)
!5420 = !DILocation(line: 320, column: 27, scope: !5411)
!5421 = !DILocalVariable(name: "attrs", arg: 4, scope: !5411, file: !5412, line: 320, type: !127)
!5422 = !DILocation(line: 320, column: 46, scope: !5411)
!5423 = !DILocalVariable(name: "nents", scope: !5411, file: !5412, line: 322, type: !126)
!5424 = !DILocation(line: 322, column: 6, scope: !5411)
!5425 = !DILocation(line: 324, column: 27, scope: !5411)
!5426 = !DILocation(line: 324, column: 32, scope: !5411)
!5427 = !DILocation(line: 324, column: 37, scope: !5411)
!5428 = !DILocation(line: 324, column: 42, scope: !5411)
!5429 = !DILocation(line: 324, column: 47, scope: !5411)
!5430 = !DILocation(line: 324, column: 59, scope: !5411)
!5431 = !DILocation(line: 324, column: 64, scope: !5411)
!5432 = !DILocation(line: 324, column: 10, scope: !5411)
!5433 = !DILocation(line: 324, column: 8, scope: !5411)
!5434 = !DILocation(line: 325, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5411, file: !5412, line: 325, column: 6)
!5436 = !DILocation(line: 325, column: 12, scope: !5435)
!5437 = !DILocation(line: 325, column: 6, scope: !5411)
!5438 = !DILocation(line: 326, column: 3, scope: !5435)
!5439 = !DILocation(line: 327, column: 15, scope: !5411)
!5440 = !DILocation(line: 327, column: 2, scope: !5411)
!5441 = !DILocation(line: 327, column: 7, scope: !5411)
!5442 = !DILocation(line: 327, column: 13, scope: !5411)
!5443 = !DILocation(line: 328, column: 2, scope: !5411)
!5444 = !DILocation(line: 329, column: 1, scope: !5411)
!5445 = distinct !DISubprogram(name: "refcount_set", scope: !113, file: !113, line: 134, type: !5446, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !4087, !126}
!5448 = !DILocalVariable(name: "v", arg: 1, scope: !5449, file: !5450, line: 39, type: !5453)
!5449 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5450, file: !5450, line: 39, type: !5451, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5450 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5451 = !DISubroutineType(types: !5452)
!5452 = !{null, !5453, !126}
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!5454 = !DILocation(line: 39, column: 55, scope: !5449, inlinedAt: !5455)
!5455 = distinct !DILocation(line: 46, column: 2, scope: !5456, inlinedAt: !5458)
!5456 = distinct !DISubprogram(name: "atomic_set", scope: !5457, file: !5457, line: 43, type: !5451, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5457 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5458 = distinct !DILocation(line: 136, column: 2, scope: !5445)
!5459 = !DILocalVariable(name: "i", arg: 2, scope: !5449, file: !5450, line: 39, type: !126)
!5460 = !DILocation(line: 39, column: 62, scope: !5449, inlinedAt: !5455)
!5461 = !DILocalVariable(name: "v", arg: 1, scope: !5462, file: !5463, line: 84, type: !5466)
!5462 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5463, file: !5463, line: 84, type: !5464, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5463 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !5466, !1119}
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5468)
!5468 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5469 = !DILocation(line: 84, column: 74, scope: !5462, inlinedAt: !5470)
!5470 = distinct !DILocation(line: 45, column: 2, scope: !5456, inlinedAt: !5458)
!5471 = !DILocalVariable(name: "size", arg: 2, scope: !5462, file: !5463, line: 84, type: !1119)
!5472 = !DILocation(line: 84, column: 84, scope: !5462, inlinedAt: !5470)
!5473 = !DILocalVariable(name: "v", arg: 1, scope: !5456, file: !5457, line: 43, type: !5453)
!5474 = !DILocation(line: 43, column: 22, scope: !5456, inlinedAt: !5458)
!5475 = !DILocalVariable(name: "i", arg: 2, scope: !5456, file: !5457, line: 43, type: !126)
!5476 = !DILocation(line: 43, column: 29, scope: !5456, inlinedAt: !5458)
!5477 = !DILocalVariable(name: "r", arg: 1, scope: !5445, file: !113, line: 134, type: !4087)
!5478 = !DILocation(line: 134, column: 45, scope: !5445)
!5479 = !DILocalVariable(name: "n", arg: 2, scope: !5445, file: !113, line: 134, type: !126)
!5480 = !DILocation(line: 134, column: 52, scope: !5445)
!5481 = !DILocation(line: 136, column: 14, scope: !5445)
!5482 = !DILocation(line: 136, column: 17, scope: !5445)
!5483 = !DILocation(line: 136, column: 23, scope: !5445)
!5484 = !DILocation(line: 45, column: 26, scope: !5456, inlinedAt: !5458)
!5485 = !DILocation(line: 86, column: 20, scope: !5462, inlinedAt: !5470)
!5486 = !DILocation(line: 86, column: 23, scope: !5462, inlinedAt: !5470)
!5487 = !DILocation(line: 86, column: 2, scope: !5462, inlinedAt: !5470)
!5488 = !DILocation(line: 87, column: 2, scope: !5462, inlinedAt: !5470)
!5489 = !DILocation(line: 46, column: 18, scope: !5456, inlinedAt: !5458)
!5490 = !DILocation(line: 46, column: 21, scope: !5456, inlinedAt: !5458)
!5491 = !DILocation(line: 41, column: 2, scope: !5492, inlinedAt: !5455)
!5492 = distinct !DILexicalBlock(scope: !5449, file: !5450, line: 41, column: 2)
!5493 = !DILocation(line: 137, column: 1, scope: !5445)
!5494 = distinct !DISubprogram(name: "get_order", scope: !5495, file: !5495, line: 29, type: !5496, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5495 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!126, !127}
!5498 = !DILocalVariable(name: "x", arg: 1, scope: !5499, file: !5500, line: 366, type: !224)
!5499 = distinct !DISubprogram(name: "fls64", scope: !5500, file: !5500, line: 366, type: !5501, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5500 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!126, !224}
!5503 = !DILocation(line: 366, column: 40, scope: !5499, inlinedAt: !5504)
!5504 = distinct !DILocation(line: 46, column: 9, scope: !5494)
!5505 = !DILocalVariable(name: "bitpos", scope: !5499, file: !5500, line: 368, type: !126)
!5506 = !DILocation(line: 368, column: 6, scope: !5499, inlinedAt: !5504)
!5507 = !DILocalVariable(name: "size", arg: 1, scope: !5494, file: !5495, line: 29, type: !127)
!5508 = !DILocation(line: 29, column: 63, scope: !5494)
!5509 = !DILocation(line: 31, column: 27, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5494, file: !5495, line: 31, column: 6)
!5511 = !DILocation(line: 31, column: 6, scope: !5510)
!5512 = !DILocation(line: 31, column: 6, scope: !5494)
!5513 = !DILocation(line: 32, column: 8, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !5495, line: 32, column: 7)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !5495, line: 31, column: 34)
!5516 = !DILocation(line: 32, column: 7, scope: !5515)
!5517 = !DILocation(line: 33, column: 4, scope: !5514)
!5518 = !DILocation(line: 35, column: 7, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !5495, line: 35, column: 7)
!5520 = !DILocation(line: 35, column: 12, scope: !5519)
!5521 = !DILocation(line: 35, column: 7, scope: !5515)
!5522 = !DILocation(line: 36, column: 4, scope: !5519)
!5523 = !DILocation(line: 38, column: 10, scope: !5515)
!5524 = !DILocation(line: 38, column: 28, scope: !5515)
!5525 = !DILocation(line: 38, column: 41, scope: !5515)
!5526 = !DILocation(line: 38, column: 3, scope: !5515)
!5527 = !DILocation(line: 41, column: 6, scope: !5494)
!5528 = !DILocation(line: 42, column: 7, scope: !5494)
!5529 = !DILocation(line: 46, column: 15, scope: !5494)
!5530 = !DILocation(line: 374, column: 2, scope: !5499, inlinedAt: !5504)
!5531 = !DILocation(line: 376, column: 14, scope: !5499, inlinedAt: !5504)
!5532 = !{i32 312456}
!5533 = !DILocation(line: 377, column: 9, scope: !5499, inlinedAt: !5504)
!5534 = !DILocation(line: 377, column: 16, scope: !5499, inlinedAt: !5504)
!5535 = !DILocation(line: 46, column: 2, scope: !5494)
!5536 = !DILocation(line: 48, column: 1, scope: !5494)
!5537 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5538, file: !5538, line: 30, type: !5539, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5538 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!126, !223}
!5541 = !DILocation(line: 366, column: 40, scope: !5499, inlinedAt: !5542)
!5542 = distinct !DILocation(line: 32, column: 9, scope: !5537)
!5543 = !DILocation(line: 368, column: 6, scope: !5499, inlinedAt: !5542)
!5544 = !DILocalVariable(name: "n", arg: 1, scope: !5537, file: !5538, line: 30, type: !223)
!5545 = !DILocation(line: 30, column: 21, scope: !5537)
!5546 = !DILocation(line: 32, column: 15, scope: !5537)
!5547 = !DILocation(line: 374, column: 2, scope: !5499, inlinedAt: !5542)
!5548 = !DILocation(line: 376, column: 14, scope: !5499, inlinedAt: !5542)
!5549 = !DILocation(line: 377, column: 9, scope: !5499, inlinedAt: !5542)
!5550 = !DILocation(line: 377, column: 16, scope: !5499, inlinedAt: !5542)
!5551 = !DILocation(line: 32, column: 18, scope: !5537)
!5552 = !DILocation(line: 32, column: 2, scope: !5537)
!5553 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5554, file: !5554, line: 137, type: !5555, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5554 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!123, !2135, !2303, !1119, !121}
!5557 = !DILocalVariable(name: "s", arg: 1, scope: !5553, file: !5554, line: 137, type: !2135)
!5558 = !DILocation(line: 137, column: 54, scope: !5553)
!5559 = !DILocalVariable(name: "object", arg: 2, scope: !5553, file: !5554, line: 137, type: !2303)
!5560 = !DILocation(line: 137, column: 69, scope: !5553)
!5561 = !DILocalVariable(name: "size", arg: 3, scope: !5553, file: !5554, line: 138, type: !1119)
!5562 = !DILocation(line: 138, column: 12, scope: !5553)
!5563 = !DILocalVariable(name: "flags", arg: 4, scope: !5553, file: !5554, line: 138, type: !121)
!5564 = !DILocation(line: 138, column: 24, scope: !5553)
!5565 = !DILocation(line: 140, column: 17, scope: !5553)
!5566 = !DILocation(line: 140, column: 2, scope: !5553)
!5567 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5568, file: !5568, line: 52, type: !5569, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5568 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!328, !328}
!5571 = !DILocalVariable(name: "overflow", arg: 1, scope: !5567, file: !5568, line: 52, type: !328)
!5572 = !DILocation(line: 52, column: 60, scope: !5567)
!5573 = !DILocation(line: 54, column: 9, scope: !5567)
!5574 = !DILocation(line: 54, column: 2, scope: !5567)
!5575 = distinct !DISubprogram(name: "kvmalloc", scope: !14, file: !14, line: 763, type: !5024, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5576 = !DILocalVariable(name: "size", arg: 1, scope: !5575, file: !14, line: 763, type: !1119)
!5577 = !DILocation(line: 763, column: 37, scope: !5575)
!5578 = !DILocalVariable(name: "flags", arg: 2, scope: !5575, file: !14, line: 763, type: !121)
!5579 = !DILocation(line: 763, column: 49, scope: !5575)
!5580 = !DILocation(line: 765, column: 23, scope: !5575)
!5581 = !DILocation(line: 765, column: 29, scope: !5575)
!5582 = !DILocation(line: 765, column: 9, scope: !5575)
!5583 = !DILocation(line: 765, column: 2, scope: !5575)
!5584 = distinct !DISubprogram(name: "alloc_pages", scope: !5585, file: !5585, line: 555, type: !5586, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5585 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/lizy2001/genbc/linux")
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!128, !121, !7}
!5588 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5584, file: !5585, line: 555, type: !121)
!5589 = !DILocation(line: 555, column: 46, scope: !5584)
!5590 = !DILocalVariable(name: "order", arg: 2, scope: !5584, file: !5585, line: 555, type: !7)
!5591 = !DILocation(line: 555, column: 69, scope: !5584)
!5592 = !DILocation(line: 557, column: 26, scope: !5584)
!5593 = !DILocation(line: 557, column: 42, scope: !5584)
!5594 = !DILocation(line: 557, column: 52, scope: !5584)
!5595 = !DILocation(line: 557, column: 9, scope: !5584)
!5596 = !DILocation(line: 557, column: 2, scope: !5584)
!5597 = distinct !DISubprogram(name: "alloc_pages_node", scope: !5585, file: !5585, line: 532, type: !5598, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!128, !126, !121, !7}
!5600 = !DILocalVariable(name: "nid", arg: 1, scope: !5597, file: !5585, line: 532, type: !126)
!5601 = !DILocation(line: 532, column: 49, scope: !5597)
!5602 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5597, file: !5585, line: 532, type: !121)
!5603 = !DILocation(line: 532, column: 60, scope: !5597)
!5604 = !DILocalVariable(name: "order", arg: 3, scope: !5597, file: !5585, line: 533, type: !7)
!5605 = !DILocation(line: 533, column: 20, scope: !5597)
!5606 = !DILocation(line: 535, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5597, file: !5585, line: 535, column: 6)
!5608 = !DILocation(line: 535, column: 10, scope: !5607)
!5609 = !DILocation(line: 535, column: 6, scope: !5597)
!5610 = !DILocation(line: 536, column: 9, scope: !5607)
!5611 = !DILocation(line: 536, column: 7, scope: !5607)
!5612 = !DILocation(line: 536, column: 3, scope: !5607)
!5613 = !DILocation(line: 538, column: 28, scope: !5597)
!5614 = !DILocation(line: 538, column: 33, scope: !5597)
!5615 = !DILocation(line: 538, column: 43, scope: !5597)
!5616 = !DILocation(line: 538, column: 9, scope: !5597)
!5617 = !DILocation(line: 538, column: 2, scope: !5597)
!5618 = distinct !DISubprogram(name: "numa_node_id", scope: !5619, file: !5619, line: 85, type: !5620, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5619 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!126}
!5622 = !DILocation(line: 87, column: 2, scope: !5618)
!5623 = distinct !DISubprogram(name: "numa_mem_id", scope: !5624, file: !5624, line: 167, type: !5620, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5624 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/lizy2001/genbc/linux")
!5625 = !DILocation(line: 169, column: 9, scope: !5623)
!5626 = !DILocation(line: 169, column: 2, scope: !5623)
!5627 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !5585, file: !5585, line: 519, type: !5598, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5628 = !DILocalVariable(name: "nid", arg: 1, scope: !5627, file: !5585, line: 519, type: !126)
!5629 = !DILocation(line: 519, column: 24, scope: !5627)
!5630 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5627, file: !5585, line: 519, type: !121)
!5631 = !DILocation(line: 519, column: 35, scope: !5627)
!5632 = !DILocalVariable(name: "order", arg: 3, scope: !5627, file: !5585, line: 519, type: !7)
!5633 = !DILocation(line: 519, column: 58, scope: !5627)
!5634 = !DILocation(line: 524, column: 23, scope: !5627)
!5635 = !DILocation(line: 524, column: 33, scope: !5627)
!5636 = !DILocation(line: 524, column: 40, scope: !5627)
!5637 = !DILocation(line: 524, column: 9, scope: !5627)
!5638 = !DILocation(line: 524, column: 2, scope: !5627)
!5639 = distinct !DISubprogram(name: "__alloc_pages", scope: !5585, file: !5585, line: 509, type: !5640, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!128, !121, !7, !126}
!5642 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5639, file: !5585, line: 509, type: !121)
!5643 = !DILocation(line: 509, column: 21, scope: !5639)
!5644 = !DILocalVariable(name: "order", arg: 2, scope: !5639, file: !5585, line: 509, type: !7)
!5645 = !DILocation(line: 509, column: 44, scope: !5639)
!5646 = !DILocalVariable(name: "preferred_nid", arg: 3, scope: !5639, file: !5585, line: 509, type: !126)
!5647 = !DILocation(line: 509, column: 55, scope: !5639)
!5648 = !DILocation(line: 511, column: 32, scope: !5639)
!5649 = !DILocation(line: 511, column: 42, scope: !5639)
!5650 = !DILocation(line: 511, column: 49, scope: !5639)
!5651 = !DILocation(line: 511, column: 9, scope: !5639)
!5652 = !DILocation(line: 511, column: 2, scope: !5639)
!5653 = distinct !DISubprogram(name: "kasan_check_write", scope: !5654, file: !5654, line: 38, type: !5655, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5654 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!328, !5466, !7}
!5657 = !DILocalVariable(name: "p", arg: 1, scope: !5653, file: !5654, line: 38, type: !5466)
!5658 = !DILocation(line: 38, column: 59, scope: !5653)
!5659 = !DILocalVariable(name: "size", arg: 2, scope: !5653, file: !5654, line: 38, type: !7)
!5660 = !DILocation(line: 38, column: 75, scope: !5653)
!5661 = !DILocation(line: 40, column: 2, scope: !5653)
!5662 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5663, file: !5663, line: 178, type: !5664, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5663 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5664 = !DISubroutineType(types: !5665)
!5665 = !{null, !5466, !1119, !126}
!5666 = !DILocalVariable(name: "ptr", arg: 1, scope: !5662, file: !5663, line: 178, type: !5466)
!5667 = !DILocation(line: 178, column: 60, scope: !5662)
!5668 = !DILocalVariable(name: "size", arg: 2, scope: !5662, file: !5663, line: 178, type: !1119)
!5669 = !DILocation(line: 178, column: 72, scope: !5662)
!5670 = !DILocalVariable(name: "type", arg: 3, scope: !5662, file: !5663, line: 179, type: !126)
!5671 = !DILocation(line: 179, column: 15, scope: !5662)
!5672 = !DILocation(line: 179, column: 23, scope: !5662)
!5673 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !113, file: !113, line: 331, type: !5674, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!328, !4087}
!5676 = !DILocalVariable(name: "r", arg: 1, scope: !5673, file: !113, line: 331, type: !4087)
!5677 = !DILocation(line: 331, column: 67, scope: !5673)
!5678 = !DILocation(line: 333, column: 33, scope: !5673)
!5679 = !DILocation(line: 333, column: 9, scope: !5673)
!5680 = !DILocation(line: 333, column: 2, scope: !5673)
!5681 = distinct !DISubprogram(name: "dma_unmap_sgtable", scope: !5412, file: !5412, line: 342, type: !5682, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{null, !3382, !3844, !93, !127}
!5684 = !DILocalVariable(name: "dev", arg: 1, scope: !5681, file: !5412, line: 342, type: !3382)
!5685 = !DILocation(line: 342, column: 53, scope: !5681)
!5686 = !DILocalVariable(name: "sgt", arg: 2, scope: !5681, file: !5412, line: 342, type: !3844)
!5687 = !DILocation(line: 342, column: 75, scope: !5681)
!5688 = !DILocalVariable(name: "dir", arg: 3, scope: !5681, file: !5412, line: 343, type: !93)
!5689 = !DILocation(line: 343, column: 27, scope: !5681)
!5690 = !DILocalVariable(name: "attrs", arg: 4, scope: !5681, file: !5412, line: 343, type: !127)
!5691 = !DILocation(line: 343, column: 46, scope: !5681)
!5692 = !DILocation(line: 345, column: 21, scope: !5681)
!5693 = !DILocation(line: 345, column: 26, scope: !5681)
!5694 = !DILocation(line: 345, column: 31, scope: !5681)
!5695 = !DILocation(line: 345, column: 36, scope: !5681)
!5696 = !DILocation(line: 345, column: 41, scope: !5681)
!5697 = !DILocation(line: 345, column: 53, scope: !5681)
!5698 = !DILocation(line: 345, column: 58, scope: !5681)
!5699 = !DILocation(line: 345, column: 2, scope: !5681)
!5700 = !DILocation(line: 346, column: 1, scope: !5681)
!5701 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !113, file: !113, line: 313, type: !5702, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!328, !4087, !453}
!5704 = !DILocalVariable(name: "r", arg: 1, scope: !5701, file: !113, line: 313, type: !4087)
!5705 = !DILocation(line: 313, column: 69, scope: !5701)
!5706 = !DILocalVariable(name: "oldp", arg: 2, scope: !5701, file: !113, line: 313, type: !453)
!5707 = !DILocation(line: 313, column: 77, scope: !5701)
!5708 = !DILocation(line: 315, column: 36, scope: !5701)
!5709 = !DILocation(line: 315, column: 39, scope: !5701)
!5710 = !DILocation(line: 315, column: 9, scope: !5701)
!5711 = !DILocation(line: 315, column: 2, scope: !5701)
!5712 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !113, file: !113, line: 270, type: !5713, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!328, !126, !4087, !453}
!5715 = !DILocalVariable(name: "i", arg: 1, scope: !5716, file: !5450, line: 188, type: !126)
!5716 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5450, file: !5450, line: 188, type: !5717, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!126, !126, !5453}
!5719 = !DILocation(line: 188, column: 54, scope: !5716, inlinedAt: !5720)
!5720 = distinct !DILocation(line: 221, column: 9, scope: !5721, inlinedAt: !5722)
!5721 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5457, file: !5457, line: 218, type: !5717, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5722 = distinct !DILocation(line: 272, column: 12, scope: !5712)
!5723 = !DILocalVariable(name: "v", arg: 2, scope: !5716, file: !5450, line: 188, type: !5453)
!5724 = !DILocation(line: 188, column: 67, scope: !5716, inlinedAt: !5720)
!5725 = !DILocalVariable(name: "__ret", scope: !5726, file: !5450, line: 190, type: !126)
!5726 = distinct !DILexicalBlock(scope: !5716, file: !5450, line: 190, column: 9)
!5727 = !DILocation(line: 190, column: 9, scope: !5726, inlinedAt: !5720)
!5728 = !DILocalVariable(name: "v", arg: 1, scope: !5729, file: !5463, line: 99, type: !5466)
!5729 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5463, file: !5463, line: 99, type: !5464, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5730 = !DILocation(line: 99, column: 79, scope: !5729, inlinedAt: !5731)
!5731 = distinct !DILocation(line: 220, column: 2, scope: !5721, inlinedAt: !5722)
!5732 = !DILocalVariable(name: "size", arg: 2, scope: !5729, file: !5463, line: 99, type: !1119)
!5733 = !DILocation(line: 99, column: 89, scope: !5729, inlinedAt: !5731)
!5734 = !DILocalVariable(name: "i", arg: 1, scope: !5721, file: !5457, line: 218, type: !126)
!5735 = !DILocation(line: 218, column: 30, scope: !5721, inlinedAt: !5722)
!5736 = !DILocalVariable(name: "v", arg: 2, scope: !5721, file: !5457, line: 218, type: !5453)
!5737 = !DILocation(line: 218, column: 43, scope: !5721, inlinedAt: !5722)
!5738 = !DILocalVariable(name: "i", arg: 1, scope: !5712, file: !113, line: 270, type: !126)
!5739 = !DILocation(line: 270, column: 61, scope: !5712)
!5740 = !DILocalVariable(name: "r", arg: 2, scope: !5712, file: !113, line: 270, type: !4087)
!5741 = !DILocation(line: 270, column: 76, scope: !5712)
!5742 = !DILocalVariable(name: "oldp", arg: 3, scope: !5712, file: !113, line: 270, type: !453)
!5743 = !DILocation(line: 270, column: 84, scope: !5712)
!5744 = !DILocalVariable(name: "old", scope: !5712, file: !113, line: 272, type: !126)
!5745 = !DILocation(line: 272, column: 6, scope: !5712)
!5746 = !DILocation(line: 272, column: 37, scope: !5712)
!5747 = !DILocation(line: 272, column: 41, scope: !5712)
!5748 = !DILocation(line: 272, column: 44, scope: !5712)
!5749 = !DILocation(line: 220, column: 31, scope: !5721, inlinedAt: !5722)
!5750 = !DILocation(line: 101, column: 20, scope: !5729, inlinedAt: !5731)
!5751 = !DILocation(line: 101, column: 23, scope: !5729, inlinedAt: !5731)
!5752 = !DILocation(line: 101, column: 2, scope: !5729, inlinedAt: !5731)
!5753 = !DILocation(line: 102, column: 2, scope: !5729, inlinedAt: !5731)
!5754 = !DILocation(line: 221, column: 39, scope: !5721, inlinedAt: !5722)
!5755 = !DILocation(line: 221, column: 42, scope: !5721, inlinedAt: !5722)
!5756 = !{i32 -2146608357}
!5757 = !DILocation(line: 274, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5712, file: !113, line: 274, column: 6)
!5759 = !DILocation(line: 274, column: 6, scope: !5712)
!5760 = !DILocation(line: 275, column: 11, scope: !5758)
!5761 = !DILocation(line: 275, column: 4, scope: !5758)
!5762 = !DILocation(line: 275, column: 9, scope: !5758)
!5763 = !DILocation(line: 275, column: 3, scope: !5758)
!5764 = !DILocation(line: 277, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5712, file: !113, line: 277, column: 6)
!5766 = !DILocation(line: 277, column: 13, scope: !5765)
!5767 = !DILocation(line: 277, column: 10, scope: !5765)
!5768 = !DILocation(line: 277, column: 6, scope: !5712)
!5769 = !DILocation(line: 278, column: 3, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5765, file: !113, line: 277, column: 16)
!5771 = !{i32 -2144387890}
!5772 = !DILocation(line: 279, column: 3, scope: !5770)
!5773 = !DILocation(line: 282, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5712, file: !113, line: 282, column: 6)
!5775 = !DILocation(line: 282, column: 6, scope: !5712)
!5776 = !DILocation(line: 283, column: 26, scope: !5774)
!5777 = !DILocation(line: 283, column: 3, scope: !5774)
!5778 = !DILocation(line: 285, column: 2, scope: !5712)
!5779 = !DILocation(line: 286, column: 1, scope: !5712)
!5780 = distinct !DISubprogram(name: "IS_ERR", scope: !5015, file: !5015, line: 34, type: !5781, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!328, !2303}
!5783 = !DILocalVariable(name: "ptr", arg: 1, scope: !5780, file: !5015, line: 34, type: !2303)
!5784 = !DILocation(line: 34, column: 60, scope: !5780)
!5785 = !DILocation(line: 36, column: 9, scope: !5780)
!5786 = !DILocation(line: 36, column: 2, scope: !5780)
!5787 = distinct !DISubprogram(name: "refcount_inc", scope: !113, file: !113, line: 265, type: !5788, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{null, !4087}
!5790 = !DILocalVariable(name: "r", arg: 1, scope: !5787, file: !113, line: 265, type: !4087)
!5791 = !DILocation(line: 265, column: 45, scope: !5787)
!5792 = !DILocation(line: 267, column: 17, scope: !5787)
!5793 = !DILocation(line: 267, column: 2, scope: !5787)
!5794 = !DILocation(line: 268, column: 1, scope: !5787)
!5795 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_attach", scope: !3, file: !3, line: 355, type: !3835, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5796 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5795, file: !3, line: 355, type: !3820)
!5797 = !DILocation(line: 355, column: 57, scope: !5795)
!5798 = !DILocalVariable(name: "dbuf_attach", arg: 2, scope: !5795, file: !3, line: 356, type: !3837)
!5799 = !DILocation(line: 356, column: 29, scope: !5795)
!5800 = !DILocalVariable(name: "attach", scope: !5795, file: !3, line: 358, type: !5801)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_dma_sg_attachment", file: !3, line: 350, size: 192, elements: !5803)
!5803 = !{!5804, !5805}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !5802, file: !3, line: 351, baseType: !3845, size: 128)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !5802, file: !3, line: 352, baseType: !93, size: 32, offset: 128)
!5806 = !DILocation(line: 358, column: 32, scope: !5795)
!5807 = !DILocalVariable(name: "i", scope: !5795, file: !3, line: 359, type: !7)
!5808 = !DILocation(line: 359, column: 15, scope: !5795)
!5809 = !DILocalVariable(name: "rd", scope: !5795, file: !3, line: 360, type: !3849)
!5810 = !DILocation(line: 360, column: 22, scope: !5795)
!5811 = !DILocalVariable(name: "wr", scope: !5795, file: !3, line: 360, type: !3849)
!5812 = !DILocation(line: 360, column: 27, scope: !5795)
!5813 = !DILocalVariable(name: "sgt", scope: !5795, file: !3, line: 361, type: !3844)
!5814 = !DILocation(line: 361, column: 19, scope: !5795)
!5815 = !DILocalVariable(name: "buf", scope: !5795, file: !3, line: 362, type: !4059)
!5816 = !DILocation(line: 362, column: 25, scope: !5795)
!5817 = !DILocation(line: 362, column: 31, scope: !5795)
!5818 = !DILocation(line: 362, column: 37, scope: !5795)
!5819 = !DILocalVariable(name: "ret", scope: !5795, file: !3, line: 363, type: !126)
!5820 = !DILocation(line: 363, column: 6, scope: !5795)
!5821 = !DILocation(line: 365, column: 11, scope: !5795)
!5822 = !DILocation(line: 365, column: 9, scope: !5795)
!5823 = !DILocation(line: 366, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 366, column: 6)
!5825 = !DILocation(line: 366, column: 6, scope: !5795)
!5826 = !DILocation(line: 367, column: 3, scope: !5824)
!5827 = !DILocation(line: 369, column: 9, scope: !5795)
!5828 = !DILocation(line: 369, column: 17, scope: !5795)
!5829 = !DILocation(line: 369, column: 6, scope: !5795)
!5830 = !DILocation(line: 373, column: 23, scope: !5795)
!5831 = !DILocation(line: 373, column: 28, scope: !5795)
!5832 = !DILocation(line: 373, column: 33, scope: !5795)
!5833 = !DILocation(line: 373, column: 42, scope: !5795)
!5834 = !DILocation(line: 373, column: 8, scope: !5795)
!5835 = !DILocation(line: 373, column: 6, scope: !5795)
!5836 = !DILocation(line: 374, column: 6, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 374, column: 6)
!5838 = !DILocation(line: 374, column: 6, scope: !5795)
!5839 = !DILocation(line: 375, column: 9, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 374, column: 11)
!5841 = !DILocation(line: 375, column: 3, scope: !5840)
!5842 = !DILocation(line: 376, column: 3, scope: !5840)
!5843 = !DILocation(line: 379, column: 7, scope: !5795)
!5844 = !DILocation(line: 379, column: 12, scope: !5795)
!5845 = !DILocation(line: 379, column: 21, scope: !5795)
!5846 = !DILocation(line: 379, column: 5, scope: !5795)
!5847 = !DILocation(line: 380, column: 7, scope: !5795)
!5848 = !DILocation(line: 380, column: 12, scope: !5795)
!5849 = !DILocation(line: 380, column: 5, scope: !5795)
!5850 = !DILocation(line: 381, column: 9, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 381, column: 2)
!5852 = !DILocation(line: 381, column: 7, scope: !5851)
!5853 = !DILocation(line: 381, column: 14, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 381, column: 2)
!5855 = !DILocation(line: 381, column: 18, scope: !5854)
!5856 = !DILocation(line: 381, column: 23, scope: !5854)
!5857 = !DILocation(line: 381, column: 16, scope: !5854)
!5858 = !DILocation(line: 381, column: 2, scope: !5851)
!5859 = !DILocation(line: 382, column: 15, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 381, column: 40)
!5861 = !DILocation(line: 382, column: 27, scope: !5860)
!5862 = !DILocation(line: 382, column: 19, scope: !5860)
!5863 = !DILocation(line: 382, column: 32, scope: !5860)
!5864 = !DILocation(line: 382, column: 36, scope: !5860)
!5865 = !DILocation(line: 382, column: 44, scope: !5860)
!5866 = !DILocation(line: 382, column: 48, scope: !5860)
!5867 = !DILocation(line: 382, column: 3, scope: !5860)
!5868 = !DILocation(line: 383, column: 16, scope: !5860)
!5869 = !DILocation(line: 383, column: 8, scope: !5860)
!5870 = !DILocation(line: 383, column: 6, scope: !5860)
!5871 = !DILocation(line: 384, column: 16, scope: !5860)
!5872 = !DILocation(line: 384, column: 8, scope: !5860)
!5873 = !DILocation(line: 384, column: 6, scope: !5860)
!5874 = !DILocation(line: 385, column: 2, scope: !5860)
!5875 = !DILocation(line: 381, column: 35, scope: !5854)
!5876 = !DILocation(line: 381, column: 2, scope: !5854)
!5877 = distinct !{!5877, !5858, !5878}
!5878 = !DILocation(line: 385, column: 2, scope: !5851)
!5879 = !DILocation(line: 387, column: 2, scope: !5795)
!5880 = !DILocation(line: 387, column: 10, scope: !5795)
!5881 = !DILocation(line: 387, column: 18, scope: !5795)
!5882 = !DILocation(line: 388, column: 22, scope: !5795)
!5883 = !DILocation(line: 388, column: 2, scope: !5795)
!5884 = !DILocation(line: 388, column: 15, scope: !5795)
!5885 = !DILocation(line: 388, column: 20, scope: !5795)
!5886 = !DILocation(line: 390, column: 2, scope: !5795)
!5887 = !DILocation(line: 391, column: 1, scope: !5795)
!5888 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_detach", scope: !3, file: !3, line: 393, type: !3875, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5889 = !DILocalVariable(name: "dbuf", arg: 1, scope: !5888, file: !3, line: 393, type: !3820)
!5890 = !DILocation(line: 393, column: 58, scope: !5888)
!5891 = !DILocalVariable(name: "db_attach", arg: 2, scope: !5888, file: !3, line: 394, type: !3837)
!5892 = !DILocation(line: 394, column: 29, scope: !5888)
!5893 = !DILocalVariable(name: "attach", scope: !5888, file: !3, line: 396, type: !5801)
!5894 = !DILocation(line: 396, column: 32, scope: !5888)
!5895 = !DILocation(line: 396, column: 41, scope: !5888)
!5896 = !DILocation(line: 396, column: 52, scope: !5888)
!5897 = !DILocalVariable(name: "sgt", scope: !5888, file: !3, line: 397, type: !3844)
!5898 = !DILocation(line: 397, column: 19, scope: !5888)
!5899 = !DILocation(line: 399, column: 7, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 399, column: 6)
!5901 = !DILocation(line: 399, column: 6, scope: !5888)
!5902 = !DILocation(line: 400, column: 3, scope: !5900)
!5903 = !DILocation(line: 402, column: 9, scope: !5888)
!5904 = !DILocation(line: 402, column: 17, scope: !5888)
!5905 = !DILocation(line: 402, column: 6, scope: !5888)
!5906 = !DILocation(line: 405, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 405, column: 6)
!5908 = !DILocation(line: 405, column: 14, scope: !5907)
!5909 = !DILocation(line: 405, column: 22, scope: !5907)
!5910 = !DILocation(line: 405, column: 6, scope: !5888)
!5911 = !DILocation(line: 406, column: 21, scope: !5907)
!5912 = !DILocation(line: 406, column: 32, scope: !5907)
!5913 = !DILocation(line: 406, column: 37, scope: !5907)
!5914 = !DILocation(line: 406, column: 42, scope: !5907)
!5915 = !DILocation(line: 406, column: 50, scope: !5907)
!5916 = !DILocation(line: 406, column: 3, scope: !5907)
!5917 = !DILocation(line: 407, column: 16, scope: !5888)
!5918 = !DILocation(line: 407, column: 2, scope: !5888)
!5919 = !DILocation(line: 408, column: 8, scope: !5888)
!5920 = !DILocation(line: 408, column: 2, scope: !5888)
!5921 = !DILocation(line: 409, column: 2, scope: !5888)
!5922 = !DILocation(line: 409, column: 13, scope: !5888)
!5923 = !DILocation(line: 409, column: 18, scope: !5888)
!5924 = !DILocation(line: 410, column: 1, scope: !5888)
!5925 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_map", scope: !3, file: !3, line: 412, type: !3884, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5926 = !DILocalVariable(name: "db_attach", arg: 1, scope: !5925, file: !3, line: 413, type: !3837)
!5927 = !DILocation(line: 413, column: 29, scope: !5925)
!5928 = !DILocalVariable(name: "dma_dir", arg: 2, scope: !5925, file: !3, line: 413, type: !93)
!5929 = !DILocation(line: 413, column: 64, scope: !5925)
!5930 = !DILocalVariable(name: "attach", scope: !5925, file: !3, line: 415, type: !5801)
!5931 = !DILocation(line: 415, column: 32, scope: !5925)
!5932 = !DILocation(line: 415, column: 41, scope: !5925)
!5933 = !DILocation(line: 415, column: 52, scope: !5925)
!5934 = !DILocalVariable(name: "lock", scope: !5925, file: !3, line: 417, type: !5935)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!5936 = !DILocation(line: 417, column: 16, scope: !5925)
!5937 = !DILocation(line: 417, column: 24, scope: !5925)
!5938 = !DILocation(line: 417, column: 35, scope: !5925)
!5939 = !DILocation(line: 417, column: 43, scope: !5925)
!5940 = !DILocalVariable(name: "sgt", scope: !5925, file: !3, line: 418, type: !3844)
!5941 = !DILocation(line: 418, column: 19, scope: !5925)
!5942 = !DILocation(line: 420, column: 13, scope: !5925)
!5943 = !DILocation(line: 420, column: 2, scope: !5925)
!5944 = !DILocation(line: 422, column: 9, scope: !5925)
!5945 = !DILocation(line: 422, column: 17, scope: !5925)
!5946 = !DILocation(line: 422, column: 6, scope: !5925)
!5947 = !DILocation(line: 424, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 424, column: 6)
!5949 = !DILocation(line: 424, column: 14, scope: !5948)
!5950 = !DILocation(line: 424, column: 25, scope: !5948)
!5951 = !DILocation(line: 424, column: 22, scope: !5948)
!5952 = !DILocation(line: 424, column: 6, scope: !5925)
!5953 = !DILocation(line: 425, column: 16, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 424, column: 34)
!5955 = !DILocation(line: 425, column: 3, scope: !5954)
!5956 = !DILocation(line: 426, column: 10, scope: !5954)
!5957 = !DILocation(line: 426, column: 3, scope: !5954)
!5958 = !DILocation(line: 430, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 430, column: 6)
!5960 = !DILocation(line: 430, column: 14, scope: !5959)
!5961 = !DILocation(line: 430, column: 22, scope: !5959)
!5962 = !DILocation(line: 430, column: 6, scope: !5925)
!5963 = !DILocation(line: 431, column: 21, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 430, column: 35)
!5965 = !DILocation(line: 431, column: 32, scope: !5964)
!5966 = !DILocation(line: 431, column: 37, scope: !5964)
!5967 = !DILocation(line: 431, column: 42, scope: !5964)
!5968 = !DILocation(line: 431, column: 50, scope: !5964)
!5969 = !DILocation(line: 431, column: 3, scope: !5964)
!5970 = !DILocation(line: 432, column: 3, scope: !5964)
!5971 = !DILocation(line: 432, column: 11, scope: !5964)
!5972 = !DILocation(line: 432, column: 19, scope: !5964)
!5973 = !DILocation(line: 433, column: 2, scope: !5964)
!5974 = !DILocation(line: 436, column: 22, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 436, column: 6)
!5976 = !DILocation(line: 436, column: 33, scope: !5975)
!5977 = !DILocation(line: 436, column: 38, scope: !5975)
!5978 = !DILocation(line: 436, column: 43, scope: !5975)
!5979 = !DILocation(line: 436, column: 6, scope: !5975)
!5980 = !DILocation(line: 436, column: 6, scope: !5925)
!5981 = !DILocation(line: 437, column: 3, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 436, column: 56)
!5983 = !DILocation(line: 438, column: 16, scope: !5982)
!5984 = !DILocation(line: 438, column: 3, scope: !5982)
!5985 = !DILocation(line: 439, column: 10, scope: !5982)
!5986 = !DILocation(line: 439, column: 3, scope: !5982)
!5987 = !DILocation(line: 442, column: 20, scope: !5925)
!5988 = !DILocation(line: 442, column: 2, scope: !5925)
!5989 = !DILocation(line: 442, column: 10, scope: !5925)
!5990 = !DILocation(line: 442, column: 18, scope: !5925)
!5991 = !DILocation(line: 444, column: 15, scope: !5925)
!5992 = !DILocation(line: 444, column: 2, scope: !5925)
!5993 = !DILocation(line: 446, column: 9, scope: !5925)
!5994 = !DILocation(line: 446, column: 2, scope: !5925)
!5995 = !DILocation(line: 447, column: 1, scope: !5925)
!5996 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_unmap", scope: !3, file: !3, line: 449, type: !3888, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!5997 = !DILocalVariable(name: "db_attach", arg: 1, scope: !5996, file: !3, line: 449, type: !3837)
!5998 = !DILocation(line: 449, column: 68, scope: !5996)
!5999 = !DILocalVariable(name: "sgt", arg: 2, scope: !5996, file: !3, line: 450, type: !3844)
!6000 = !DILocation(line: 450, column: 19, scope: !5996)
!6001 = !DILocalVariable(name: "dma_dir", arg: 3, scope: !5996, file: !3, line: 450, type: !93)
!6002 = !DILocation(line: 450, column: 48, scope: !5996)
!6003 = !DILocation(line: 453, column: 1, scope: !5996)
!6004 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_release", scope: !3, file: !3, line: 455, type: !3892, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6005 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6004, file: !3, line: 455, type: !3820)
!6006 = !DILocation(line: 455, column: 59, scope: !6004)
!6007 = !DILocation(line: 458, column: 17, scope: !6004)
!6008 = !DILocation(line: 458, column: 23, scope: !6004)
!6009 = !DILocation(line: 458, column: 2, scope: !6004)
!6010 = !DILocation(line: 459, column: 1, scope: !6004)
!6011 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_begin_cpu_access", scope: !3, file: !3, line: 462, type: !3896, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6012 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6011, file: !3, line: 462, type: !3820)
!6013 = !DILocation(line: 462, column: 56, scope: !6011)
!6014 = !DILocalVariable(name: "direction", arg: 2, scope: !6011, file: !3, line: 463, type: !93)
!6015 = !DILocation(line: 463, column: 36, scope: !6011)
!6016 = !DILocalVariable(name: "buf", scope: !6011, file: !3, line: 465, type: !4059)
!6017 = !DILocation(line: 465, column: 25, scope: !6011)
!6018 = !DILocation(line: 465, column: 31, scope: !6011)
!6019 = !DILocation(line: 465, column: 37, scope: !6011)
!6020 = !DILocalVariable(name: "sgt", scope: !6011, file: !3, line: 466, type: !3844)
!6021 = !DILocation(line: 466, column: 19, scope: !6011)
!6022 = !DILocation(line: 466, column: 25, scope: !6011)
!6023 = !DILocation(line: 466, column: 30, scope: !6011)
!6024 = !DILocation(line: 468, column: 22, scope: !6011)
!6025 = !DILocation(line: 468, column: 27, scope: !6011)
!6026 = !DILocation(line: 468, column: 32, scope: !6011)
!6027 = !DILocation(line: 468, column: 37, scope: !6011)
!6028 = !DILocation(line: 468, column: 42, scope: !6011)
!6029 = !DILocation(line: 468, column: 47, scope: !6011)
!6030 = !DILocation(line: 468, column: 54, scope: !6011)
!6031 = !DILocation(line: 468, column: 59, scope: !6011)
!6032 = !DILocation(line: 468, column: 2, scope: !6011)
!6033 = !DILocation(line: 469, column: 2, scope: !6011)
!6034 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_end_cpu_access", scope: !3, file: !3, line: 473, type: !3896, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6035 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6034, file: !3, line: 473, type: !3820)
!6036 = !DILocation(line: 473, column: 54, scope: !6034)
!6037 = !DILocalVariable(name: "direction", arg: 2, scope: !6034, file: !3, line: 474, type: !93)
!6038 = !DILocation(line: 474, column: 34, scope: !6034)
!6039 = !DILocalVariable(name: "buf", scope: !6034, file: !3, line: 476, type: !4059)
!6040 = !DILocation(line: 476, column: 25, scope: !6034)
!6041 = !DILocation(line: 476, column: 31, scope: !6034)
!6042 = !DILocation(line: 476, column: 37, scope: !6034)
!6043 = !DILocalVariable(name: "sgt", scope: !6034, file: !3, line: 477, type: !3844)
!6044 = !DILocation(line: 477, column: 19, scope: !6034)
!6045 = !DILocation(line: 477, column: 25, scope: !6034)
!6046 = !DILocation(line: 477, column: 30, scope: !6034)
!6047 = !DILocation(line: 479, column: 25, scope: !6034)
!6048 = !DILocation(line: 479, column: 30, scope: !6034)
!6049 = !DILocation(line: 479, column: 35, scope: !6034)
!6050 = !DILocation(line: 479, column: 40, scope: !6034)
!6051 = !DILocation(line: 479, column: 45, scope: !6034)
!6052 = !DILocation(line: 479, column: 50, scope: !6034)
!6053 = !DILocation(line: 479, column: 57, scope: !6034)
!6054 = !DILocation(line: 479, column: 62, scope: !6034)
!6055 = !DILocation(line: 479, column: 2, scope: !6034)
!6056 = !DILocation(line: 480, column: 2, scope: !6034)
!6057 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_mmap", scope: !3, file: !3, line: 490, type: !3901, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6058 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6057, file: !3, line: 490, type: !3820)
!6059 = !DILocation(line: 490, column: 55, scope: !6057)
!6060 = !DILocalVariable(name: "vma", arg: 2, scope: !6057, file: !3, line: 491, type: !973)
!6061 = !DILocation(line: 491, column: 25, scope: !6057)
!6062 = !DILocation(line: 493, column: 25, scope: !6057)
!6063 = !DILocation(line: 493, column: 31, scope: !6057)
!6064 = !DILocation(line: 493, column: 37, scope: !6057)
!6065 = !DILocation(line: 493, column: 9, scope: !6057)
!6066 = !DILocation(line: 493, column: 2, scope: !6057)
!6067 = distinct !DISubprogram(name: "vb2_dma_sg_dmabuf_ops_vmap", scope: !3, file: !3, line: 483, type: !3905, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6068 = !DILocalVariable(name: "dbuf", arg: 1, scope: !6067, file: !3, line: 483, type: !3820)
!6069 = !DILocation(line: 483, column: 57, scope: !6067)
!6070 = !DILocalVariable(name: "buf", scope: !6067, file: !3, line: 485, type: !4059)
!6071 = !DILocation(line: 485, column: 25, scope: !6067)
!6072 = !DILocation(line: 485, column: 31, scope: !6067)
!6073 = !DILocation(line: 485, column: 37, scope: !6067)
!6074 = !DILocation(line: 487, column: 26, scope: !6067)
!6075 = !DILocation(line: 487, column: 9, scope: !6067)
!6076 = !DILocation(line: 487, column: 2, scope: !6067)
!6077 = distinct !DISubprogram(name: "sg_set_page", scope: !3846, file: !3846, line: 116, type: !6078, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{null, !3849, !128, !7, !7}
!6080 = !DILocalVariable(name: "sg", arg: 1, scope: !6077, file: !3846, line: 116, type: !3849)
!6081 = !DILocation(line: 116, column: 52, scope: !6077)
!6082 = !DILocalVariable(name: "page", arg: 2, scope: !6077, file: !3846, line: 116, type: !128)
!6083 = !DILocation(line: 116, column: 69, scope: !6077)
!6084 = !DILocalVariable(name: "len", arg: 3, scope: !6077, file: !3846, line: 117, type: !7)
!6085 = !DILocation(line: 117, column: 24, scope: !6077)
!6086 = !DILocalVariable(name: "offset", arg: 4, scope: !6077, file: !3846, line: 117, type: !7)
!6087 = !DILocation(line: 117, column: 42, scope: !6077)
!6088 = !DILocation(line: 119, column: 17, scope: !6077)
!6089 = !DILocation(line: 119, column: 21, scope: !6077)
!6090 = !DILocation(line: 119, column: 2, scope: !6077)
!6091 = !DILocation(line: 120, column: 15, scope: !6077)
!6092 = !DILocation(line: 120, column: 2, scope: !6077)
!6093 = !DILocation(line: 120, column: 6, scope: !6077)
!6094 = !DILocation(line: 120, column: 13, scope: !6077)
!6095 = !DILocation(line: 121, column: 15, scope: !6077)
!6096 = !DILocation(line: 121, column: 2, scope: !6077)
!6097 = !DILocation(line: 121, column: 6, scope: !6077)
!6098 = !DILocation(line: 121, column: 13, scope: !6077)
!6099 = !DILocation(line: 122, column: 1, scope: !6077)
!6100 = distinct !DISubprogram(name: "sg_page", scope: !3846, file: !3846, line: 124, type: !6101, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!128, !3849}
!6103 = !DILocalVariable(name: "sg", arg: 1, scope: !6100, file: !3846, line: 124, type: !3849)
!6104 = !DILocation(line: 124, column: 56, scope: !6100)
!6105 = !DILocation(line: 129, column: 26, scope: !6100)
!6106 = !DILocation(line: 129, column: 31, scope: !6100)
!6107 = !DILocation(line: 129, column: 41, scope: !6100)
!6108 = !DILocation(line: 129, column: 9, scope: !6100)
!6109 = !DILocation(line: 129, column: 2, scope: !6100)
!6110 = distinct !DISubprogram(name: "sg_assign_page", scope: !3846, file: !3846, line: 87, type: !6111, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{null, !3849, !128}
!6113 = !DILocalVariable(name: "sg", arg: 1, scope: !6110, file: !3846, line: 87, type: !3849)
!6114 = !DILocation(line: 87, column: 55, scope: !6110)
!6115 = !DILocalVariable(name: "page", arg: 2, scope: !6110, file: !3846, line: 87, type: !128)
!6116 = !DILocation(line: 87, column: 72, scope: !6110)
!6117 = !DILocalVariable(name: "page_link", scope: !6110, file: !3846, line: 89, type: !127)
!6118 = !DILocation(line: 89, column: 16, scope: !6110)
!6119 = !DILocation(line: 89, column: 28, scope: !6110)
!6120 = !DILocation(line: 89, column: 32, scope: !6110)
!6121 = !DILocation(line: 89, column: 42, scope: !6110)
!6122 = !DILocation(line: 95, column: 2, scope: !6110)
!6123 = !DILocation(line: 95, column: 2, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !3846, line: 95, column: 2)
!6125 = distinct !DILexicalBlock(scope: !6110, file: !3846, line: 95, column: 2)
!6126 = !DILocation(line: 95, column: 2, scope: !6125)
!6127 = !DILocation(line: 95, column: 2, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6124, file: !3846, line: 95, column: 2)
!6129 = !DILocation(line: 95, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6128, file: !3846, line: 95, column: 2)
!6131 = !DILocation(line: 95, column: 2, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !3846, line: 95, column: 2)
!6133 = !{i32 -2142396162, i32 -2142396133, i32 -2142396087, i32 -2142396029, i32 -2142395975, i32 -2142395921, i32 -2142395866, i32 -2142395835}
!6134 = !DILocation(line: 95, column: 2, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6136, file: !3846, line: 95, column: 2)
!6136 = distinct !DILexicalBlock(scope: !6128, file: !3846, line: 95, column: 2)
!6137 = !{i32 -2142395386, i32 -2142395379, i32 -2142395325, i32 -2142395294, i32 -2142395264}
!6138 = !DILocation(line: 95, column: 2, scope: !6136)
!6139 = !DILocation(line: 99, column: 18, scope: !6110)
!6140 = !DILocation(line: 99, column: 46, scope: !6110)
!6141 = !DILocation(line: 99, column: 30, scope: !6110)
!6142 = !DILocation(line: 99, column: 28, scope: !6110)
!6143 = !DILocation(line: 99, column: 2, scope: !6110)
!6144 = !DILocation(line: 99, column: 6, scope: !6110)
!6145 = !DILocation(line: 99, column: 16, scope: !6110)
!6146 = !DILocation(line: 100, column: 1, scope: !6110)
!6147 = distinct !DISubprogram(name: "__refcount_inc", scope: !113, file: !113, line: 248, type: !6148, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !4087, !453}
!6150 = !DILocalVariable(name: "r", arg: 1, scope: !6147, file: !113, line: 248, type: !4087)
!6151 = !DILocation(line: 248, column: 47, scope: !6147)
!6152 = !DILocalVariable(name: "oldp", arg: 2, scope: !6147, file: !113, line: 248, type: !453)
!6153 = !DILocation(line: 248, column: 55, scope: !6147)
!6154 = !DILocation(line: 250, column: 20, scope: !6147)
!6155 = !DILocation(line: 250, column: 23, scope: !6147)
!6156 = !DILocation(line: 250, column: 2, scope: !6147)
!6157 = !DILocation(line: 251, column: 1, scope: !6147)
!6158 = distinct !DISubprogram(name: "__refcount_add", scope: !113, file: !113, line: 191, type: !6159, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{null, !126, !4087, !453}
!6161 = !DILocalVariable(name: "i", arg: 1, scope: !6162, file: !5450, line: 182, type: !126)
!6162 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5450, file: !5450, line: 182, type: !5717, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6163 = !DILocation(line: 182, column: 54, scope: !6162, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 143, column: 9, scope: !6165, inlinedAt: !6166)
!6165 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5457, file: !5457, line: 140, type: !5717, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6166 = distinct !DILocation(line: 193, column: 12, scope: !6158)
!6167 = !DILocalVariable(name: "v", arg: 2, scope: !6162, file: !5450, line: 182, type: !5453)
!6168 = !DILocation(line: 182, column: 67, scope: !6162, inlinedAt: !6164)
!6169 = !DILocalVariable(name: "__ret", scope: !6170, file: !5450, line: 184, type: !126)
!6170 = distinct !DILexicalBlock(scope: !6162, file: !5450, line: 184, column: 9)
!6171 = !DILocation(line: 184, column: 9, scope: !6170, inlinedAt: !6164)
!6172 = !DILocation(line: 99, column: 79, scope: !5729, inlinedAt: !6173)
!6173 = distinct !DILocation(line: 142, column: 2, scope: !6165, inlinedAt: !6166)
!6174 = !DILocation(line: 99, column: 89, scope: !5729, inlinedAt: !6173)
!6175 = !DILocalVariable(name: "i", arg: 1, scope: !6165, file: !5457, line: 140, type: !126)
!6176 = !DILocation(line: 140, column: 30, scope: !6165, inlinedAt: !6166)
!6177 = !DILocalVariable(name: "v", arg: 2, scope: !6165, file: !5457, line: 140, type: !5453)
!6178 = !DILocation(line: 140, column: 43, scope: !6165, inlinedAt: !6166)
!6179 = !DILocalVariable(name: "i", arg: 1, scope: !6158, file: !113, line: 191, type: !126)
!6180 = !DILocation(line: 191, column: 39, scope: !6158)
!6181 = !DILocalVariable(name: "r", arg: 2, scope: !6158, file: !113, line: 191, type: !4087)
!6182 = !DILocation(line: 191, column: 54, scope: !6158)
!6183 = !DILocalVariable(name: "oldp", arg: 3, scope: !6158, file: !113, line: 191, type: !453)
!6184 = !DILocation(line: 191, column: 62, scope: !6158)
!6185 = !DILocalVariable(name: "old", scope: !6158, file: !113, line: 193, type: !126)
!6186 = !DILocation(line: 193, column: 6, scope: !6158)
!6187 = !DILocation(line: 193, column: 37, scope: !6158)
!6188 = !DILocation(line: 193, column: 41, scope: !6158)
!6189 = !DILocation(line: 193, column: 44, scope: !6158)
!6190 = !DILocation(line: 142, column: 31, scope: !6165, inlinedAt: !6166)
!6191 = !DILocation(line: 101, column: 20, scope: !5729, inlinedAt: !6173)
!6192 = !DILocation(line: 101, column: 23, scope: !5729, inlinedAt: !6173)
!6193 = !DILocation(line: 101, column: 2, scope: !5729, inlinedAt: !6173)
!6194 = !DILocation(line: 102, column: 2, scope: !5729, inlinedAt: !6173)
!6195 = !DILocation(line: 143, column: 39, scope: !6165, inlinedAt: !6166)
!6196 = !DILocation(line: 143, column: 42, scope: !6165, inlinedAt: !6166)
!6197 = !{i32 -2146609709}
!6198 = !DILocation(line: 195, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6158, file: !113, line: 195, column: 6)
!6200 = !DILocation(line: 195, column: 6, scope: !6158)
!6201 = !DILocation(line: 196, column: 11, scope: !6199)
!6202 = !DILocation(line: 196, column: 4, scope: !6199)
!6203 = !DILocation(line: 196, column: 9, scope: !6199)
!6204 = !DILocation(line: 196, column: 3, scope: !6199)
!6205 = !DILocation(line: 198, column: 6, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6158, file: !113, line: 198, column: 6)
!6207 = !DILocation(line: 198, column: 6, scope: !6158)
!6208 = !DILocation(line: 199, column: 26, scope: !6206)
!6209 = !DILocation(line: 199, column: 3, scope: !6206)
!6210 = !DILocation(line: 200, column: 11, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6206, file: !113, line: 200, column: 11)
!6212 = !DILocation(line: 200, column: 11, scope: !6206)
!6213 = !DILocation(line: 201, column: 26, scope: !6211)
!6214 = !DILocation(line: 201, column: 3, scope: !6211)
!6215 = !DILocation(line: 202, column: 1, scope: !6158)
!6216 = distinct !DISubprogram(name: "frame_vector_pages", scope: !14, file: !14, line: 1778, type: !6217, scopeLine: 1779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!2298, !4066}
!6219 = !DILocalVariable(name: "vec", arg: 1, scope: !6216, file: !14, line: 1778, type: !4066)
!6220 = !DILocation(line: 1778, column: 69, scope: !6216)
!6221 = !DILocation(line: 1780, column: 6, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6216, file: !14, line: 1780, column: 6)
!6223 = !DILocation(line: 1780, column: 11, scope: !6222)
!6224 = !DILocation(line: 1780, column: 6, scope: !6216)
!6225 = !DILocalVariable(name: "err", scope: !6226, file: !14, line: 1781, type: !126)
!6226 = distinct !DILexicalBlock(scope: !6222, file: !14, line: 1780, column: 20)
!6227 = !DILocation(line: 1781, column: 7, scope: !6226)
!6228 = !DILocation(line: 1781, column: 35, scope: !6226)
!6229 = !DILocation(line: 1781, column: 13, scope: !6226)
!6230 = !DILocation(line: 1783, column: 7, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6226, file: !14, line: 1783, column: 7)
!6232 = !DILocation(line: 1783, column: 7, scope: !6226)
!6233 = !DILocation(line: 1784, column: 19, scope: !6231)
!6234 = !DILocation(line: 1784, column: 11, scope: !6231)
!6235 = !DILocation(line: 1784, column: 4, scope: !6231)
!6236 = !DILocation(line: 1785, column: 2, scope: !6226)
!6237 = !DILocation(line: 1786, column: 26, scope: !6216)
!6238 = !DILocation(line: 1786, column: 31, scope: !6216)
!6239 = !DILocation(line: 1786, column: 25, scope: !6216)
!6240 = !DILocation(line: 1786, column: 9, scope: !6216)
!6241 = !DILocation(line: 1786, column: 2, scope: !6216)
!6242 = !DILocation(line: 1787, column: 1, scope: !6216)
!6243 = distinct !DISubprogram(name: "frame_vector_count", scope: !14, file: !14, line: 1773, type: !6244, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{!7, !4066}
!6246 = !DILocalVariable(name: "vec", arg: 1, scope: !6243, file: !14, line: 1773, type: !4066)
!6247 = !DILocation(line: 1773, column: 68, scope: !6243)
!6248 = !DILocation(line: 1775, column: 9, scope: !6243)
!6249 = !DILocation(line: 1775, column: 14, scope: !6243)
!6250 = !DILocation(line: 1775, column: 2, scope: !6243)
!6251 = distinct !DISubprogram(name: "dma_sync_sgtable_for_device", scope: !5412, file: !5412, line: 377, type: !6252, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{null, !3382, !3844, !93}
!6254 = !DILocalVariable(name: "dev", arg: 1, scope: !6251, file: !5412, line: 377, type: !3382)
!6255 = !DILocation(line: 377, column: 63, scope: !6251)
!6256 = !DILocalVariable(name: "sgt", arg: 2, scope: !6251, file: !5412, line: 378, type: !3844)
!6257 = !DILocation(line: 378, column: 20, scope: !6251)
!6258 = !DILocalVariable(name: "dir", arg: 3, scope: !6251, file: !5412, line: 378, type: !93)
!6259 = !DILocation(line: 378, column: 49, scope: !6251)
!6260 = !DILocation(line: 380, column: 25, scope: !6251)
!6261 = !DILocation(line: 380, column: 30, scope: !6251)
!6262 = !DILocation(line: 380, column: 35, scope: !6251)
!6263 = !DILocation(line: 380, column: 40, scope: !6251)
!6264 = !DILocation(line: 380, column: 45, scope: !6251)
!6265 = !DILocation(line: 380, column: 57, scope: !6251)
!6266 = !DILocation(line: 380, column: 2, scope: !6251)
!6267 = !DILocation(line: 381, column: 1, scope: !6251)
!6268 = distinct !DISubprogram(name: "dma_sync_sgtable_for_cpu", scope: !5412, file: !5412, line: 360, type: !6252, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6269 = !DILocalVariable(name: "dev", arg: 1, scope: !6268, file: !5412, line: 360, type: !3382)
!6270 = !DILocation(line: 360, column: 60, scope: !6268)
!6271 = !DILocalVariable(name: "sgt", arg: 2, scope: !6268, file: !5412, line: 361, type: !3844)
!6272 = !DILocation(line: 361, column: 20, scope: !6268)
!6273 = !DILocalVariable(name: "dir", arg: 3, scope: !6268, file: !5412, line: 361, type: !93)
!6274 = !DILocation(line: 361, column: 49, scope: !6268)
!6275 = !DILocation(line: 363, column: 22, scope: !6268)
!6276 = !DILocation(line: 363, column: 27, scope: !6268)
!6277 = !DILocation(line: 363, column: 32, scope: !6268)
!6278 = !DILocation(line: 363, column: 37, scope: !6268)
!6279 = !DILocation(line: 363, column: 42, scope: !6268)
!6280 = !DILocation(line: 363, column: 54, scope: !6268)
!6281 = !DILocation(line: 363, column: 2, scope: !6268)
!6282 = !DILocation(line: 364, column: 1, scope: !6268)
!6283 = distinct !DISubprogram(name: "refcount_read", scope: !113, file: !113, line: 145, type: !6284, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!7, !6286}
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!6288 = !DILocalVariable(name: "v", arg: 1, scope: !6289, file: !5450, line: 23, type: !6292)
!6289 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5450, file: !5450, line: 23, type: !6290, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!126, !6292}
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6293, size: 64)
!6293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!6294 = !DILocation(line: 23, column: 61, scope: !6289, inlinedAt: !6295)
!6295 = distinct !DILocation(line: 28, column: 9, scope: !6296, inlinedAt: !6297)
!6296 = distinct !DISubprogram(name: "atomic_read", scope: !5457, file: !5457, line: 25, type: !6290, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6297 = distinct !DILocation(line: 147, column: 9, scope: !6283)
!6298 = !DILocalVariable(name: "v", arg: 1, scope: !6299, file: !5463, line: 69, type: !5466)
!6299 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5463, file: !5463, line: 69, type: !5464, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6300 = !DILocation(line: 69, column: 73, scope: !6299, inlinedAt: !6301)
!6301 = distinct !DILocation(line: 27, column: 2, scope: !6296, inlinedAt: !6297)
!6302 = !DILocalVariable(name: "size", arg: 2, scope: !6299, file: !5463, line: 69, type: !1119)
!6303 = !DILocation(line: 69, column: 83, scope: !6299, inlinedAt: !6301)
!6304 = !DILocalVariable(name: "v", arg: 1, scope: !6296, file: !5457, line: 25, type: !6292)
!6305 = !DILocation(line: 25, column: 29, scope: !6296, inlinedAt: !6297)
!6306 = !DILocalVariable(name: "r", arg: 1, scope: !6283, file: !113, line: 145, type: !6286)
!6307 = !DILocation(line: 145, column: 60, scope: !6283)
!6308 = !DILocation(line: 147, column: 22, scope: !6283)
!6309 = !DILocation(line: 147, column: 25, scope: !6283)
!6310 = !DILocation(line: 27, column: 25, scope: !6296, inlinedAt: !6297)
!6311 = !DILocation(line: 71, column: 19, scope: !6299, inlinedAt: !6301)
!6312 = !DILocation(line: 71, column: 22, scope: !6299, inlinedAt: !6301)
!6313 = !DILocation(line: 71, column: 2, scope: !6299, inlinedAt: !6301)
!6314 = !DILocation(line: 72, column: 2, scope: !6299, inlinedAt: !6301)
!6315 = !DILocation(line: 28, column: 26, scope: !6296, inlinedAt: !6297)
!6316 = !DILocation(line: 29, column: 9, scope: !6289, inlinedAt: !6295)
!6317 = !DILocation(line: 147, column: 2, scope: !6283)
!6318 = distinct !DISubprogram(name: "kasan_check_read", scope: !5654, file: !5654, line: 34, type: !5655, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !260)
!6319 = !DILocalVariable(name: "p", arg: 1, scope: !6318, file: !5654, line: 34, type: !5466)
!6320 = !DILocation(line: 34, column: 58, scope: !6318)
!6321 = !DILocalVariable(name: "size", arg: 2, scope: !6318, file: !5654, line: 34, type: !7)
!6322 = !DILocation(line: 34, column: 74, scope: !6318)
!6323 = !DILocation(line: 36, column: 2, scope: !6318)
