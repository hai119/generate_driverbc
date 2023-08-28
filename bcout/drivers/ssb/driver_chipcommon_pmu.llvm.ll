; ModuleID = '../bcout/drivers/ssb/driver_chipcommon_pmu.llvm.bc'
source_filename = "drivers/ssb/driver_chipcommon_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.pmu1_plltab_entry = type { i16, i8, i8, i32, i8, i8 }
%struct.pmu0_plltab_entry = type { i16, i8, i8, i32 }
%struct.pmu_res_updown_tab_entry = type { i8, i16 }
%struct.pmu_res_depend_tab_entry = type { i8, i8, i32 }
%struct.ssb_chipcommon = type { %struct.ssb_device*, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_device = type { %struct.ssb_bus_ops*, %struct.device*, %struct.device*, %struct.ssb_bus*, %struct.ssb_device_id, i8, i32, i8*, i8* }
%struct.ssb_bus_ops = type { i8 (%struct.ssb_device*, i16)*, i16 (%struct.ssb_device*, i16)*, i32 (%struct.ssb_device*, i16)*, void (%struct.ssb_device*, i16, i8)*, void (%struct.ssb_device*, i16, i16)*, void (%struct.ssb_device*, i16, i32)* }
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ssb_bus = type { i8*, %struct.ssb_bus_ops*, %struct.ssb_device*, %union.anon.65, %struct.spinlock, i32, %union.anon.66, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.list_head, i8, i32 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { %struct.pci_dev* }
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
%struct.ssb_pcicore = type { %struct.ssb_device*, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.68, %struct.anon.69, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.68 = type { i8, i8, i8, i8 }
%struct.anon.69 = type { %struct.anon.70, %struct.anon.71 }
%struct.anon.70 = type { i8, i8, i8, i8, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ssb_chipcommon_pmu = type { i8, i32 }

@.str = private unnamed_addr constant [36 x i8] c"drivers/ssb/driver_chipcommon_pmu.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ERROR: PMU alp clock unknown for device %04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"ERROR: PMU cpu clock unknown for device %04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: PMU controlclock unknown for device %04X\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR: PLL init unknown for device %04X\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Programming PLL to %u.%03u MHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to turn the PLL off!\0A\00", align 1
@pmu1_plltab = internal constant [15 x %struct.pmu1_plltab_entry] [%struct.pmu1_plltab_entry { i16 12000, i8 1, i8 9, i32 16777199, i8 3, i8 22 }, %struct.pmu1_plltab_entry { i16 13000, i8 2, i8 11, i32 4732035, i8 1, i8 6 }, %struct.pmu1_plltab_entry { i16 14400, i8 3, i8 10, i32 1864135, i8 1, i8 10 }, %struct.pmu1_plltab_entry { i16 15360, i8 4, i8 11, i32 7689557, i8 1, i8 5 }, %struct.pmu1_plltab_entry { i16 16200, i8 5, i8 5, i32 7249414, i8 1, i8 10 }, %struct.pmu1_plltab_entry { i16 16800, i8 6, i8 5, i32 3994575, i8 1, i8 10 }, %struct.pmu1_plltab_entry { i16 19200, i8 7, i8 5, i32 1553445, i8 1, i8 9 }, %struct.pmu1_plltab_entry { i16 19800, i8 8, i8 4, i32 677867, i8 1, i8 11 }, %struct.pmu1_plltab_entry { i16 20000, i8 9, i8 4, i32 0, i8 1, i8 11 }, %struct.pmu1_plltab_entry { i16 24000, i8 10, i8 10, i32 0, i8 3, i8 11 }, %struct.pmu1_plltab_entry { i16 25000, i8 11, i8 11, i32 0, i8 5, i8 16 }, %struct.pmu1_plltab_entry { i16 26000, i8 12, i8 16, i32 15486660, i8 1, i8 2 }, %struct.pmu1_plltab_entry { i16 30000, i8 13, i8 11, i32 0, i8 3, i8 8 }, %struct.pmu1_plltab_entry { i16 -27136, i8 14, i8 4, i32 9786709, i8 1, i8 5 }, %struct.pmu1_plltab_entry { i16 -25536, i8 15, i8 11, i32 0, i8 1, i8 2 }], align 16, !dbg !0
@pmu0_plltab = internal constant [14 x %struct.pmu0_plltab_entry] [%struct.pmu0_plltab_entry { i16 12000, i8 1, i8 73, i32 349525 }, %struct.pmu0_plltab_entry { i16 13000, i8 2, i8 67, i32 725937 }, %struct.pmu0_plltab_entry { i16 14400, i8 3, i8 61, i32 116508 }, %struct.pmu0_plltab_entry { i16 15360, i8 4, i8 57, i32 305834 }, %struct.pmu0_plltab_entry { i16 16200, i8 5, i8 54, i32 336579 }, %struct.pmu0_plltab_entry { i16 16800, i8 6, i8 52, i32 399457 }, %struct.pmu0_plltab_entry { i16 19200, i8 7, i8 45, i32 873813 }, %struct.pmu0_plltab_entry { i16 19800, i8 8, i8 44, i32 466033 }, %struct.pmu0_plltab_entry { i16 20000, i8 9, i8 44, i32 0 }, %struct.pmu0_plltab_entry { i16 25000, i8 10, i8 70, i32 419430 }, %struct.pmu0_plltab_entry { i16 26000, i8 11, i8 67, i32 725937 }, %struct.pmu0_plltab_entry { i16 30000, i8 12, i8 58, i32 699050 }, %struct.pmu0_plltab_entry { i16 -27136, i8 13, i8 45, i32 873813 }, %struct.pmu0_plltab_entry { i16 -25536, i8 14, i8 45, i32 0 }], align 16, !dbg !149
@pmu_res_updown_tab_4325a0 = internal constant [1 x %struct.pmu_res_updown_tab_entry] [%struct.pmu_res_updown_tab_entry { i8 13, i16 5377 }], align 2, !dbg !167
@pmu_res_depend_tab_4325a0 = internal constant [1 x %struct.pmu_res_depend_tab_entry] [%struct.pmu_res_depend_tab_entry { i8 21, i8 2, i32 884736 }], align 4, !dbg !177
@pmu_res_updown_tab_4328a0 = internal constant [20 x %struct.pmu_res_updown_tab_entry] [%struct.pmu_res_updown_tab_entry { i8 0, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 1, i16 7937 }, %struct.pmu_res_updown_tab_entry { i8 2, i16 271 }, %struct.pmu_res_updown_tab_entry { i8 3, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 4, i16 514 }, %struct.pmu_res_updown_tab_entry { i8 5, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 6, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 7, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 8, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 9, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 10, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 11, i16 3841 }, %struct.pmu_res_updown_tab_entry { i8 12, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 13, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 14, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 15, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 16, i16 -24575 }, %struct.pmu_res_updown_tab_entry { i8 17, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 18, i16 257 }, %struct.pmu_res_updown_tab_entry { i8 19, i16 1793 }], align 16, !dbg !186
@pmu_res_depend_tab_4328a0 = internal constant [1 x %struct.pmu_res_depend_tab_entry] [%struct.pmu_res_depend_tab_entry { i8 4, i8 1, i32 3 }], align 4, !dbg !191
@.str.8 = private unnamed_addr constant [52 x i8] c"ERROR: PMU resource config unknown for device %04X\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_pmu_init(%struct.ssb_chipcommon* %cc) #0 !dbg !210 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %pmucap = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.declare(metadata i32* %pmucap, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4742
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 1, !dbg !4744
  %1 = load i32, i32* %capabilities, align 8, !dbg !4744
  %and = and i32 %1, 268435456, !dbg !4745
  %tobool = icmp ne i32 %and, 0, !dbg !4745
  br i1 %tobool, label %if.end, label %if.then, !dbg !4746

if.then:                                          ; preds = %entry
  br label %return, !dbg !4747

if.end:                                           ; preds = %entry
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4748
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !4748
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4748
  %call = call i32 @ssb_read32(%struct.ssb_device* %3, i16 zeroext 1540) #4, !dbg !4748
  store i32 %call, i32* %pmucap, align 4, !dbg !4749
  %4 = load i32, i32* %pmucap, align 4, !dbg !4750
  %and1 = and i32 %4, 255, !dbg !4751
  %conv = trunc i32 %and1 to i8, !dbg !4752
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4753
  %pmu = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 5, !dbg !4754
  %rev = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu, i32 0, i32 0, !dbg !4755
  store i8 %conv, i8* %rev, align 4, !dbg !4756
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4757
  %pmu2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %6, i32 0, i32 5, !dbg !4759
  %rev3 = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu2, i32 0, i32 0, !dbg !4760
  %7 = load i8, i8* %rev3, align 4, !dbg !4760
  %conv4 = zext i8 %7 to i32, !dbg !4757
  %cmp = icmp eq i32 %conv4, 1, !dbg !4761
  br i1 %cmp, label %if.then6, label %if.else, !dbg !4762

if.then6:                                         ; preds = %if.end
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4763
  %dev7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !4763
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev7, align 8, !dbg !4763
  %10 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4763
  %dev8 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %10, i32 0, i32 0, !dbg !4763
  %11 = load %struct.ssb_device*, %struct.ssb_device** %dev8, align 8, !dbg !4763
  %call9 = call i32 @ssb_read32(%struct.ssb_device* %11, i16 zeroext 1536) #4, !dbg !4763
  %and10 = and i32 %call9, -513, !dbg !4763
  call void @ssb_write32(%struct.ssb_device* %9, i16 zeroext 1536, i32 %and10) #4, !dbg !4763
  br label %if.end14, !dbg !4763

if.else:                                          ; preds = %if.end
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4764
  %dev11 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0, !dbg !4764
  %13 = load %struct.ssb_device*, %struct.ssb_device** %dev11, align 8, !dbg !4764
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4764
  %dev12 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 0, !dbg !4764
  %15 = load %struct.ssb_device*, %struct.ssb_device** %dev12, align 8, !dbg !4764
  %call13 = call i32 @ssb_read32(%struct.ssb_device* %15, i16 zeroext 1536) #4, !dbg !4764
  %or = or i32 %call13, 512, !dbg !4764
  call void @ssb_write32(%struct.ssb_device* %13, i16 zeroext 1536, i32 %or) #4, !dbg !4764
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4765
  call void @ssb_pmu_pll_init(%struct.ssb_chipcommon* %16) #4, !dbg !4766
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4767
  call void @ssb_pmu_resources_init(%struct.ssb_chipcommon* %17) #4, !dbg !4768
  br label %return, !dbg !4769

return:                                           ; preds = %if.end14, %if.then
  ret void, !dbg !4769
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_read32(%struct.ssb_device* %dev, i16 zeroext %offset) #0 !dbg !4770 {
entry:
  %dev.addr = alloca %struct.ssb_device*, align 8
  %offset.addr = alloca i16, align 2
  store %struct.ssb_device* %dev, %struct.ssb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %dev.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  %0 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4775
  %ops = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %0, i32 0, i32 0, !dbg !4776
  %1 = load %struct.ssb_bus_ops*, %struct.ssb_bus_ops** %ops, align 8, !dbg !4776
  %read32 = getelementptr inbounds %struct.ssb_bus_ops, %struct.ssb_bus_ops* %1, i32 0, i32 2, !dbg !4777
  %2 = load i32 (%struct.ssb_device*, i16)*, i32 (%struct.ssb_device*, i16)** %read32, align 8, !dbg !4777
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4778
  %4 = load i16, i16* %offset.addr, align 2, !dbg !4779
  %call = call i32 %2(%struct.ssb_device* %3, i16 zeroext %4) #4, !dbg !4775
  ret i32 %call, !dbg !4780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_write32(%struct.ssb_device* %dev, i16 zeroext %offset, i32 %value) #0 !dbg !4781 {
entry:
  %dev.addr = alloca %struct.ssb_device*, align 8
  %offset.addr = alloca i16, align 2
  %value.addr = alloca i32, align 4
  store %struct.ssb_device* %dev, %struct.ssb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %dev.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4786, metadata !DIExpression()), !dbg !4787
  %0 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4788
  %ops = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %0, i32 0, i32 0, !dbg !4789
  %1 = load %struct.ssb_bus_ops*, %struct.ssb_bus_ops** %ops, align 8, !dbg !4789
  %write32 = getelementptr inbounds %struct.ssb_bus_ops, %struct.ssb_bus_ops* %1, i32 0, i32 5, !dbg !4790
  %2 = load void (%struct.ssb_device*, i16, i32)*, void (%struct.ssb_device*, i16, i32)** %write32, align 8, !dbg !4790
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4791
  %4 = load i16, i16* %offset.addr, align 2, !dbg !4792
  %5 = load i32, i32* %value.addr, align 4, !dbg !4793
  call void %2(%struct.ssb_device* %3, i16 zeroext %4, i32 %5) #4, !dbg !4788
  ret void, !dbg !4794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_pmu_pll_init(%struct.ssb_chipcommon* %cc) #0 !dbg !4795 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %crystalfreq = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !4798, metadata !DIExpression()), !dbg !4799
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4800
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !4801
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4801
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !4802
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !4802
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !4799
  call void @llvm.dbg.declare(metadata i32* %crystalfreq, metadata !4803, metadata !DIExpression()), !dbg !4804
  store i32 0, i32* %crystalfreq, align 4, !dbg !4804
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4805
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 5, !dbg !4807
  %4 = load i32, i32* %bustype, align 4, !dbg !4807
  %cmp = icmp eq i32 %4, 0, !dbg !4808
  br i1 %cmp, label %if.then, label %if.end, !dbg !4809

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !4810

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4812
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 9, !dbg !4813
  %6 = load i16, i16* %chip_id, align 8, !dbg !4813
  %conv = zext i16 %6 to i32, !dbg !4812
  switch i32 %conv, label %sw.default [
    i32 17170, label %sw.bb
    i32 17189, label %sw.bb
    i32 17192, label %sw.bb2
    i32 21332, label %sw.bb3
    i32 17186, label %sw.bb8
    i32 43222, label %sw.bb16
  ], !dbg !4814

sw.bb:                                            ; preds = %if.end, %if.end
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4815
  %8 = load i32, i32* %crystalfreq, align 4, !dbg !4817
  call void @ssb_pmu1_pllinit_r0(%struct.ssb_chipcommon* %7, i32 %8) #4, !dbg !4818
  br label %sw.epilog, !dbg !4819

sw.bb2:                                           ; preds = %if.end
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4820
  %10 = load i32, i32* %crystalfreq, align 4, !dbg !4821
  call void @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %9, i32 %10) #4, !dbg !4822
  br label %sw.epilog, !dbg !4823

sw.bb3:                                           ; preds = %if.end
  %11 = load i32, i32* %crystalfreq, align 4, !dbg !4824
  %cmp4 = icmp eq i32 %11, 0, !dbg !4826
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4827

if.then6:                                         ; preds = %sw.bb3
  store i32 25000, i32* %crystalfreq, align 4, !dbg !4828
  br label %if.end7, !dbg !4829

if.end7:                                          ; preds = %if.then6, %sw.bb3
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4830
  %13 = load i32, i32* %crystalfreq, align 4, !dbg !4831
  call void @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %12, i32 %13) #4, !dbg !4832
  br label %sw.epilog, !dbg !4833

sw.bb8:                                           ; preds = %if.end
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4834
  %pmu = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 5, !dbg !4836
  %rev = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu, i32 0, i32 0, !dbg !4837
  %15 = load i8, i8* %rev, align 4, !dbg !4837
  %conv9 = zext i8 %15 to i32, !dbg !4834
  %cmp10 = icmp eq i32 %conv9, 2, !dbg !4838
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !4839

if.then12:                                        ; preds = %sw.bb8
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4840
  %dev13 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !4840
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev13, align 8, !dbg !4840
  call void @ssb_write32(%struct.ssb_device* %17, i16 zeroext 1632, i32 10) #4, !dbg !4840
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4842
  %dev14 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 0, !dbg !4842
  %19 = load %struct.ssb_device*, %struct.ssb_device** %dev14, align 8, !dbg !4842
  call void @ssb_write32(%struct.ssb_device* %19, i16 zeroext 1636, i32 939525568) #4, !dbg !4842
  br label %if.end15, !dbg !4843

if.end15:                                         ; preds = %if.then12, %sw.bb8
  br label %sw.epilog, !dbg !4844

sw.bb16:                                          ; preds = %if.end
  br label %sw.epilog, !dbg !4845

sw.default:                                       ; preds = %if.end
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4846
  %dev17 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %20, i32 0, i32 0, !dbg !4846
  %21 = load %struct.ssb_device*, %struct.ssb_device** %dev17, align 8, !dbg !4846
  %dev18 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %21, i32 0, i32 1, !dbg !4846
  %22 = load %struct.device*, %struct.device** %dev18, align 8, !dbg !4846
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4846
  %chip_id19 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 9, !dbg !4846
  %24 = load i16, i16* %chip_id19, align 8, !dbg !4846
  %conv20 = zext i16 %24 to i32, !dbg !4846
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %conv20) #5, !dbg !4846
  br label %sw.epilog, !dbg !4847

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %if.end15, %if.end7, %sw.bb2, %sw.bb
  ret void, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_pmu_resources_init(%struct.ssb_chipcommon* %cc) #0 !dbg !4849 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %min_msk = alloca i32, align 4
  %max_msk = alloca i32, align 4
  %i = alloca i32, align 4
  %updown_tab = alloca %struct.pmu_res_updown_tab_entry*, align 8
  %updown_tab_size = alloca i32, align 4
  %depend_tab = alloca %struct.pmu_res_depend_tab_entry*, align 8
  %depend_tab_size = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4854
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !4855
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4855
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !4856
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !4856
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !4853
  call void @llvm.dbg.declare(metadata i32* %min_msk, metadata !4857, metadata !DIExpression()), !dbg !4858
  store i32 0, i32* %min_msk, align 4, !dbg !4858
  call void @llvm.dbg.declare(metadata i32* %max_msk, metadata !4859, metadata !DIExpression()), !dbg !4860
  store i32 0, i32* %max_msk, align 4, !dbg !4860
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4861, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.declare(metadata %struct.pmu_res_updown_tab_entry** %updown_tab, metadata !4863, metadata !DIExpression()), !dbg !4865
  store %struct.pmu_res_updown_tab_entry* null, %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4865
  call void @llvm.dbg.declare(metadata i32* %updown_tab_size, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i32 0, i32* %updown_tab_size, align 4, !dbg !4867
  call void @llvm.dbg.declare(metadata %struct.pmu_res_depend_tab_entry** %depend_tab, metadata !4868, metadata !DIExpression()), !dbg !4870
  store %struct.pmu_res_depend_tab_entry* null, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4870
  call void @llvm.dbg.declare(metadata i32* %depend_tab_size, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i32 0, i32* %depend_tab_size, align 4, !dbg !4872
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4873
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !4874
  %4 = load i16, i16* %chip_id, align 8, !dbg !4874
  %conv = zext i16 %4 to i32, !dbg !4873
  switch i32 %conv, label %sw.default [
    i32 17170, label %sw.bb
    i32 17186, label %sw.bb2
    i32 43222, label %sw.bb2
    i32 17189, label %sw.bb3
    i32 17192, label %sw.bb5
    i32 21332, label %sw.bb6
  ], !dbg !4875

sw.bb:                                            ; preds = %entry
  store i32 3259, i32* %min_msk, align 4, !dbg !4876
  br label %sw.epilog, !dbg !4878

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.epilog, !dbg !4879

sw.bb3:                                           ; preds = %entry
  store i32 1026, i32* %min_msk, align 4, !dbg !4880
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4881
  %dev4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !4881
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev4, align 8, !dbg !4881
  %call = call i32 @ssb_read32(%struct.ssb_device* %6, i16 zeroext 44) #4, !dbg !4881
  %and = and i32 %call, 512, !dbg !4883
  %tobool = icmp ne i32 %and, 0, !dbg !4883
  br i1 %tobool, label %if.then, label %if.end, !dbg !4884

if.then:                                          ; preds = %sw.bb3
  %7 = load i32, i32* %min_msk, align 4, !dbg !4885
  %or = or i32 %7, 8, !dbg !4885
  store i32 %or, i32* %min_msk, align 4, !dbg !4885
  br label %if.end, !dbg !4886

if.end:                                           ; preds = %if.then, %sw.bb3
  store i32 1048575, i32* %max_msk, align 4, !dbg !4887
  store %struct.pmu_res_updown_tab_entry* getelementptr inbounds ([1 x %struct.pmu_res_updown_tab_entry], [1 x %struct.pmu_res_updown_tab_entry]* @pmu_res_updown_tab_4325a0, i64 0, i64 0), %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4888
  store i32 1, i32* %updown_tab_size, align 4, !dbg !4889
  store %struct.pmu_res_depend_tab_entry* getelementptr inbounds ([1 x %struct.pmu_res_depend_tab_entry], [1 x %struct.pmu_res_depend_tab_entry]* @pmu_res_depend_tab_4325a0, i64 0, i64 0), %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4890
  store i32 1, i32* %depend_tab_size, align 4, !dbg !4891
  br label %sw.epilog, !dbg !4892

sw.bb5:                                           ; preds = %entry
  store i32 65539, i32* %min_msk, align 4, !dbg !4893
  store i32 1048575, i32* %max_msk, align 4, !dbg !4894
  store %struct.pmu_res_updown_tab_entry* getelementptr inbounds ([20 x %struct.pmu_res_updown_tab_entry], [20 x %struct.pmu_res_updown_tab_entry]* @pmu_res_updown_tab_4328a0, i64 0, i64 0), %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4895
  store i32 20, i32* %updown_tab_size, align 4, !dbg !4896
  store %struct.pmu_res_depend_tab_entry* getelementptr inbounds ([1 x %struct.pmu_res_depend_tab_entry], [1 x %struct.pmu_res_depend_tab_entry]* @pmu_res_depend_tab_4328a0, i64 0, i64 0), %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4897
  store i32 1, i32* %depend_tab_size, align 4, !dbg !4898
  br label %sw.epilog, !dbg !4899

sw.bb6:                                           ; preds = %entry
  store i32 1048575, i32* %max_msk, align 4, !dbg !4900
  br label %sw.epilog, !dbg !4901

sw.default:                                       ; preds = %entry
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4902
  %dev7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !4902
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev7, align 8, !dbg !4902
  %dev8 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 1, !dbg !4902
  %10 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !4902
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4902
  %chip_id9 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 9, !dbg !4902
  %12 = load i16, i16* %chip_id9, align 8, !dbg !4902
  %conv10 = zext i16 %12 to i32, !dbg !4902
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %conv10) #5, !dbg !4902
  br label %sw.epilog, !dbg !4903

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %if.end, %sw.bb2, %sw.bb
  %13 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4904
  %tobool11 = icmp ne %struct.pmu_res_updown_tab_entry* %13, null, !dbg !4904
  br i1 %tobool11, label %if.then12, label %if.end20, !dbg !4906

if.then12:                                        ; preds = %sw.epilog
  store i32 0, i32* %i, align 4, !dbg !4907
  br label %for.cond, !dbg !4910

for.cond:                                         ; preds = %for.inc, %if.then12
  %14 = load i32, i32* %i, align 4, !dbg !4911
  %15 = load i32, i32* %updown_tab_size, align 4, !dbg !4913
  %cmp = icmp ult i32 %14, %15, !dbg !4914
  br i1 %cmp, label %for.body, label %for.end, !dbg !4915

for.body:                                         ; preds = %for.cond
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4916
  %dev14 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !4916
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev14, align 8, !dbg !4916
  %18 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4916
  %19 = load i32, i32* %i, align 4, !dbg !4916
  %idxprom = zext i32 %19 to i64, !dbg !4916
  %arrayidx = getelementptr %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %18, i64 %idxprom, !dbg !4916
  %resource = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %arrayidx, i32 0, i32 0, !dbg !4916
  %20 = load i8, i8* %resource, align 2, !dbg !4916
  %conv15 = zext i8 %20 to i32, !dbg !4916
  call void @ssb_write32(%struct.ssb_device* %17, i16 zeroext 1568, i32 %conv15) #4, !dbg !4916
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4918
  %dev16 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %21, i32 0, i32 0, !dbg !4918
  %22 = load %struct.ssb_device*, %struct.ssb_device** %dev16, align 8, !dbg !4918
  %23 = load %struct.pmu_res_updown_tab_entry*, %struct.pmu_res_updown_tab_entry** %updown_tab, align 8, !dbg !4918
  %24 = load i32, i32* %i, align 4, !dbg !4918
  %idxprom17 = zext i32 %24 to i64, !dbg !4918
  %arrayidx18 = getelementptr %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %23, i64 %idxprom17, !dbg !4918
  %updown = getelementptr inbounds %struct.pmu_res_updown_tab_entry, %struct.pmu_res_updown_tab_entry* %arrayidx18, i32 0, i32 1, !dbg !4918
  %25 = load i16, i16* %updown, align 2, !dbg !4918
  %conv19 = zext i16 %25 to i32, !dbg !4918
  call void @ssb_write32(%struct.ssb_device* %22, i16 zeroext 1576, i32 %conv19) #4, !dbg !4918
  br label %for.inc, !dbg !4919

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !4920
  %inc = add i32 %26, 1, !dbg !4920
  store i32 %inc, i32* %i, align 4, !dbg !4920
  br label %for.cond, !dbg !4921, !llvm.loop !4922

for.end:                                          ; preds = %for.cond
  br label %if.end20, !dbg !4924

if.end20:                                         ; preds = %for.end, %sw.epilog
  %27 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4925
  %tobool21 = icmp ne %struct.pmu_res_depend_tab_entry* %27, null, !dbg !4925
  br i1 %tobool21, label %if.then22, label %if.end78, !dbg !4927

if.then22:                                        ; preds = %if.end20
  store i32 0, i32* %i, align 4, !dbg !4928
  br label %for.cond23, !dbg !4931

for.cond23:                                       ; preds = %for.inc75, %if.then22
  %28 = load i32, i32* %i, align 4, !dbg !4932
  %29 = load i32, i32* %depend_tab_size, align 4, !dbg !4934
  %cmp24 = icmp ult i32 %28, %29, !dbg !4935
  br i1 %cmp24, label %for.body26, label %for.end77, !dbg !4936

for.body26:                                       ; preds = %for.cond23
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4937
  %dev27 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %30, i32 0, i32 0, !dbg !4937
  %31 = load %struct.ssb_device*, %struct.ssb_device** %dev27, align 8, !dbg !4937
  %32 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4937
  %33 = load i32, i32* %i, align 4, !dbg !4937
  %idxprom28 = zext i32 %33 to i64, !dbg !4937
  %arrayidx29 = getelementptr %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %32, i64 %idxprom28, !dbg !4937
  %resource30 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %arrayidx29, i32 0, i32 0, !dbg !4937
  %34 = load i8, i8* %resource30, align 4, !dbg !4937
  %conv31 = zext i8 %34 to i32, !dbg !4937
  call void @ssb_write32(%struct.ssb_device* %31, i16 zeroext 1568, i32 %conv31) #4, !dbg !4937
  %35 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4939
  %36 = load i32, i32* %i, align 4, !dbg !4940
  %idxprom32 = zext i32 %36 to i64, !dbg !4939
  %arrayidx33 = getelementptr %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %35, i64 %idxprom32, !dbg !4939
  %task = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %arrayidx33, i32 0, i32 1, !dbg !4941
  %37 = load i8, i8* %task, align 1, !dbg !4941
  %conv34 = zext i8 %37 to i32, !dbg !4939
  switch i32 %conv34, label %sw.default55 [
    i32 1, label %sw.bb35
    i32 2, label %sw.bb39
    i32 3, label %sw.bb47
  ], !dbg !4942

sw.bb35:                                          ; preds = %for.body26
  %38 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4943
  %dev36 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %38, i32 0, i32 0, !dbg !4943
  %39 = load %struct.ssb_device*, %struct.ssb_device** %dev36, align 8, !dbg !4943
  %40 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4943
  %41 = load i32, i32* %i, align 4, !dbg !4943
  %idxprom37 = zext i32 %41 to i64, !dbg !4943
  %arrayidx38 = getelementptr %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %40, i64 %idxprom37, !dbg !4943
  %depend = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %arrayidx38, i32 0, i32 2, !dbg !4943
  %42 = load i32, i32* %depend, align 4, !dbg !4943
  call void @ssb_write32(%struct.ssb_device* %39, i16 zeroext 1572, i32 %42) #4, !dbg !4943
  br label %sw.epilog74, !dbg !4945

sw.bb39:                                          ; preds = %for.body26
  %43 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4946
  %dev40 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %43, i32 0, i32 0, !dbg !4946
  %44 = load %struct.ssb_device*, %struct.ssb_device** %dev40, align 8, !dbg !4946
  %45 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4946
  %dev41 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %45, i32 0, i32 0, !dbg !4946
  %46 = load %struct.ssb_device*, %struct.ssb_device** %dev41, align 8, !dbg !4946
  %call42 = call i32 @ssb_read32(%struct.ssb_device* %46, i16 zeroext 1572) #4, !dbg !4946
  %47 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4946
  %48 = load i32, i32* %i, align 4, !dbg !4946
  %idxprom43 = zext i32 %48 to i64, !dbg !4946
  %arrayidx44 = getelementptr %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %47, i64 %idxprom43, !dbg !4946
  %depend45 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %arrayidx44, i32 0, i32 2, !dbg !4946
  %49 = load i32, i32* %depend45, align 4, !dbg !4946
  %or46 = or i32 %call42, %49, !dbg !4946
  call void @ssb_write32(%struct.ssb_device* %44, i16 zeroext 1572, i32 %or46) #4, !dbg !4946
  br label %sw.epilog74, !dbg !4947

sw.bb47:                                          ; preds = %for.body26
  %50 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4948
  %dev48 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %50, i32 0, i32 0, !dbg !4948
  %51 = load %struct.ssb_device*, %struct.ssb_device** %dev48, align 8, !dbg !4948
  %52 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4948
  %dev49 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %52, i32 0, i32 0, !dbg !4948
  %53 = load %struct.ssb_device*, %struct.ssb_device** %dev49, align 8, !dbg !4948
  %call50 = call i32 @ssb_read32(%struct.ssb_device* %53, i16 zeroext 1572) #4, !dbg !4948
  %54 = load %struct.pmu_res_depend_tab_entry*, %struct.pmu_res_depend_tab_entry** %depend_tab, align 8, !dbg !4948
  %55 = load i32, i32* %i, align 4, !dbg !4948
  %idxprom51 = zext i32 %55 to i64, !dbg !4948
  %arrayidx52 = getelementptr %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %54, i64 %idxprom51, !dbg !4948
  %depend53 = getelementptr inbounds %struct.pmu_res_depend_tab_entry, %struct.pmu_res_depend_tab_entry* %arrayidx52, i32 0, i32 2, !dbg !4948
  %56 = load i32, i32* %depend53, align 4, !dbg !4948
  %neg = xor i32 %56, -1, !dbg !4948
  %and54 = and i32 %call50, %neg, !dbg !4948
  call void @ssb_write32(%struct.ssb_device* %51, i16 zeroext 1572, i32 %and54) #4, !dbg !4948
  br label %sw.epilog74, !dbg !4949

sw.default55:                                     ; preds = %for.body26
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4950, metadata !DIExpression()), !dbg !4952
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4952
  %57 = load i32, i32* %__ret_warn_on, align 4, !dbg !4953
  %tobool56 = icmp ne i32 %57, 0, !dbg !4953
  %lnot = xor i1 %tobool56, true, !dbg !4953
  %lnot57 = xor i1 %lnot, true, !dbg !4953
  %lnot.ext = zext i1 %lnot57 to i32, !dbg !4953
  %conv58 = sext i32 %lnot.ext to i64, !dbg !4953
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !4953
  br i1 %tobool59, label %if.then60, label %if.end67, !dbg !4952

if.then60:                                        ; preds = %sw.default55
  br label %do.body, !dbg !4953

do.body:                                          ; preds = %if.then60
  br label %do.body61, !dbg !4955

do.body61:                                        ; preds = %do.body
  br label %do.end, !dbg !4957

do.end:                                           ; preds = %do.body61
  br label %do.body62, !dbg !4955

do.body62:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 504, i32 2305, i64 12) #6, !dbg !4959, !srcloc !4961
  br label %do.end63, !dbg !4959

do.end63:                                         ; preds = %do.body62
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #6, !dbg !4962, !srcloc !4964
  br label %do.body64, !dbg !4955

do.body64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !4965

do.end65:                                         ; preds = %do.body64
  br label %do.end66, !dbg !4955

do.end66:                                         ; preds = %do.end65
  br label %if.end67, !dbg !4955

if.end67:                                         ; preds = %do.end66, %sw.default55
  %58 = load i32, i32* %__ret_warn_on, align 4, !dbg !4952
  %tobool68 = icmp ne i32 %58, 0, !dbg !4952
  %lnot69 = xor i1 %tobool68, true, !dbg !4952
  %lnot71 = xor i1 %lnot69, true, !dbg !4952
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !4952
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !4952
  store i64 %conv73, i64* %tmp, align 8, !dbg !4953
  %59 = load i64, i64* %tmp, align 8, !dbg !4952
  br label %sw.epilog74, !dbg !4967

sw.epilog74:                                      ; preds = %if.end67, %sw.bb47, %sw.bb39, %sw.bb35
  br label %for.inc75, !dbg !4968

for.inc75:                                        ; preds = %sw.epilog74
  %60 = load i32, i32* %i, align 4, !dbg !4969
  %inc76 = add i32 %60, 1, !dbg !4969
  store i32 %inc76, i32* %i, align 4, !dbg !4969
  br label %for.cond23, !dbg !4970, !llvm.loop !4971

for.end77:                                        ; preds = %for.cond23
  br label %if.end78, !dbg !4973

if.end78:                                         ; preds = %for.end77, %if.end20
  %61 = load i32, i32* %min_msk, align 4, !dbg !4974
  %tobool79 = icmp ne i32 %61, 0, !dbg !4974
  br i1 %tobool79, label %if.then80, label %if.end82, !dbg !4976

if.then80:                                        ; preds = %if.end78
  %62 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4977
  %dev81 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %62, i32 0, i32 0, !dbg !4977
  %63 = load %struct.ssb_device*, %struct.ssb_device** %dev81, align 8, !dbg !4977
  %64 = load i32, i32* %min_msk, align 4, !dbg !4977
  call void @ssb_write32(%struct.ssb_device* %63, i16 zeroext 1560, i32 %64) #4, !dbg !4977
  br label %if.end82, !dbg !4977

if.end82:                                         ; preds = %if.then80, %if.end78
  %65 = load i32, i32* %max_msk, align 4, !dbg !4978
  %tobool83 = icmp ne i32 %65, 0, !dbg !4978
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !4980

if.then84:                                        ; preds = %if.end82
  %66 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4981
  %dev85 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %66, i32 0, i32 0, !dbg !4981
  %67 = load %struct.ssb_device*, %struct.ssb_device** %dev85, align 8, !dbg !4981
  %68 = load i32, i32* %max_msk, align 4, !dbg !4981
  call void @ssb_write32(%struct.ssb_device* %67, i16 zeroext 1564, i32 %68) #4, !dbg !4981
  br label %if.end86, !dbg !4981

if.end86:                                         ; preds = %if.then84, %if.end82
  ret void, !dbg !4982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_pmu_set_ldo_voltage(%struct.ssb_chipcommon* %cc, i32 %id, i32 %voltage) #0 !dbg !4983 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %id.addr = alloca i32, align 4
  %voltage.addr = alloca i32, align 4
  %bus = alloca %struct.ssb_bus*, align 8
  %addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on22 = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !4992, metadata !DIExpression()), !dbg !4993
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4994
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !4995
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4995
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !4996
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !4996
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !4993
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5001, metadata !DIExpression()), !dbg !5002
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5003
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5004
  %4 = load i16, i16* %chip_id, align 8, !dbg !5004
  %conv = zext i16 %4 to i32, !dbg !5003
  switch i32 %conv, label %sw.default55 [
    i32 17192, label %sw.bb
    i32 21332, label %sw.bb
    i32 17170, label %sw.bb21
  ], !dbg !5005

sw.bb:                                            ; preds = %entry, %entry
  %5 = load i32, i32* %id.addr, align 4, !dbg !5006
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 0, label %sw.bb5
  ], !dbg !5008

sw.bb2:                                           ; preds = %sw.bb
  store i32 2, i32* %addr, align 4, !dbg !5009
  store i32 25, i32* %shift, align 4, !dbg !5011
  store i32 15, i32* %mask, align 4, !dbg !5012
  br label %sw.epilog, !dbg !5013

sw.bb3:                                           ; preds = %sw.bb
  store i32 3, i32* %addr, align 4, !dbg !5014
  store i32 1, i32* %shift, align 4, !dbg !5015
  store i32 15, i32* %mask, align 4, !dbg !5016
  br label %sw.epilog, !dbg !5017

sw.bb4:                                           ; preds = %sw.bb
  store i32 3, i32* %addr, align 4, !dbg !5018
  store i32 9, i32* %shift, align 4, !dbg !5019
  store i32 15, i32* %mask, align 4, !dbg !5020
  br label %sw.epilog, !dbg !5021

sw.bb5:                                           ; preds = %sw.bb
  store i32 3, i32* %addr, align 4, !dbg !5022
  store i32 17, i32* %shift, align 4, !dbg !5023
  store i32 63, i32* %mask, align 4, !dbg !5024
  br label %sw.epilog, !dbg !5025

sw.default:                                       ; preds = %sw.bb
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5026, metadata !DIExpression()), !dbg !5028
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5028
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !5029
  %tobool = icmp ne i32 %6, 0, !dbg !5029
  %lnot = xor i1 %tobool, true, !dbg !5029
  %lnot6 = xor i1 %lnot, true, !dbg !5029
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5029
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5029
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !5029
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5028

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !5029

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5031

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5033

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5031

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 571, i32 2305, i64 12) #6, !dbg !5035, !srcloc !5037
  br label %do.end11, !dbg !5035

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 241) #6, !dbg !5038, !srcloc !5040
  br label %do.body12, !dbg !5031

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5041

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5031

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5031

if.end:                                           ; preds = %do.end14, %sw.default
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5028
  %tobool15 = icmp ne i32 %7, 0, !dbg !5028
  %lnot16 = xor i1 %tobool15, true, !dbg !5028
  %lnot18 = xor i1 %lnot16, true, !dbg !5028
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5028
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5028
  store i64 %conv20, i64* %tmp, align 8, !dbg !5029
  %8 = load i64, i64* %tmp, align 8, !dbg !5028
  br label %return, !dbg !5043

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2
  br label %sw.epilog56, !dbg !5044

sw.bb21:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on22, metadata !5045, metadata !DIExpression()), !dbg !5048
  %9 = load i32, i32* %id.addr, align 4, !dbg !5048
  %cmp = icmp ne i32 %9, 0, !dbg !5048
  %lnot24 = xor i1 %cmp, true, !dbg !5048
  %lnot26 = xor i1 %lnot24, true, !dbg !5048
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5048
  store i32 %lnot.ext27, i32* %__ret_warn_on22, align 4, !dbg !5048
  %10 = load i32, i32* %__ret_warn_on22, align 4, !dbg !5049
  %tobool28 = icmp ne i32 %10, 0, !dbg !5049
  %lnot29 = xor i1 %tobool28, true, !dbg !5049
  %lnot31 = xor i1 %lnot29, true, !dbg !5049
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5049
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5049
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !5049
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !5048

if.then35:                                        ; preds = %sw.bb21
  br label %do.body36, !dbg !5049

do.body36:                                        ; preds = %if.then35
  br label %do.body37, !dbg !5051

do.body37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5053

do.end38:                                         ; preds = %do.body37
  br label %do.body39, !dbg !5051

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 576, i32 2305, i64 12) #6, !dbg !5055, !srcloc !5057
  br label %do.end40, !dbg !5055

do.end40:                                         ; preds = %do.body39
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 242) #6, !dbg !5058, !srcloc !5060
  br label %do.body41, !dbg !5051

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5061

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !5051

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !5051

if.end44:                                         ; preds = %do.end43, %sw.bb21
  %11 = load i32, i32* %__ret_warn_on22, align 4, !dbg !5048
  %tobool46 = icmp ne i32 %11, 0, !dbg !5048
  %lnot47 = xor i1 %tobool46, true, !dbg !5048
  %lnot49 = xor i1 %lnot47, true, !dbg !5048
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !5048
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !5048
  store i64 %conv51, i64* %tmp45, align 8, !dbg !5049
  %12 = load i64, i64* %tmp45, align 8, !dbg !5048
  %tobool52 = icmp ne i64 %12, 0, !dbg !5063
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5064

if.then53:                                        ; preds = %if.end44
  br label %return, !dbg !5065

if.end54:                                         ; preds = %if.end44
  store i32 0, i32* %addr, align 4, !dbg !5066
  store i32 21, i32* %shift, align 4, !dbg !5067
  store i32 63, i32* %mask, align 4, !dbg !5068
  br label %sw.epilog56, !dbg !5069

sw.default55:                                     ; preds = %entry
  br label %return, !dbg !5070

sw.epilog56:                                      ; preds = %if.end54, %sw.epilog
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5071
  %14 = load i32, i32* %addr, align 4, !dbg !5072
  %15 = load i32, i32* %mask, align 4, !dbg !5073
  %16 = load i32, i32* %shift, align 4, !dbg !5074
  %shl = shl i32 %15, %16, !dbg !5075
  %neg = xor i32 %shl, -1, !dbg !5076
  %17 = load i32, i32* %voltage.addr, align 4, !dbg !5077
  %18 = load i32, i32* %mask, align 4, !dbg !5078
  %and = and i32 %17, %18, !dbg !5079
  %19 = load i32, i32* %shift, align 4, !dbg !5080
  %shl57 = shl i32 %and, %19, !dbg !5081
  call void @ssb_chipco_regctl_maskset(%struct.ssb_chipcommon* %13, i32 %14, i32 %neg, i32 %shl57) #4, !dbg !5082
  br label %return, !dbg !5083

return:                                           ; preds = %sw.epilog56, %sw.default55, %if.then53, %if.end
  ret void, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_chipco_regctl_maskset(%struct.ssb_chipcommon* %cc, i32 %offset, i32 %mask, i32 %set) #0 !dbg !5084 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %offset.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5095, metadata !DIExpression()), !dbg !5096
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5097
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5097
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5097
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 1624) #4, !dbg !5097
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5098
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !5098
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5098
  %4 = load i32, i32* %offset.addr, align 4, !dbg !5098
  call void @ssb_write32(%struct.ssb_device* %3, i16 zeroext 1624, i32 %4) #4, !dbg !5098
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5099
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !5099
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5099
  %call3 = call i32 @ssb_read32(%struct.ssb_device* %6, i16 zeroext 1624) #4, !dbg !5099
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5100
  %dev4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 0, !dbg !5100
  %8 = load %struct.ssb_device*, %struct.ssb_device** %dev4, align 8, !dbg !5100
  %call5 = call i32 @ssb_read32(%struct.ssb_device* %8, i16 zeroext 1628) #4, !dbg !5100
  store i32 %call5, i32* %value, align 4, !dbg !5101
  %9 = load i32, i32* %mask.addr, align 4, !dbg !5102
  %10 = load i32, i32* %value, align 4, !dbg !5103
  %and = and i32 %10, %9, !dbg !5103
  store i32 %and, i32* %value, align 4, !dbg !5103
  %11 = load i32, i32* %set.addr, align 4, !dbg !5104
  %12 = load i32, i32* %value, align 4, !dbg !5105
  %or = or i32 %12, %11, !dbg !5105
  store i32 %or, i32* %value, align 4, !dbg !5105
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5106
  %dev6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %13, i32 0, i32 0, !dbg !5106
  %14 = load %struct.ssb_device*, %struct.ssb_device** %dev6, align 8, !dbg !5106
  %15 = load i32, i32* %value, align 4, !dbg !5106
  call void @ssb_write32(%struct.ssb_device* %14, i16 zeroext 1628, i32 %15) #4, !dbg !5106
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5107
  %dev7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !5107
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev7, align 8, !dbg !5107
  %call8 = call i32 @ssb_read32(%struct.ssb_device* %17, i16 zeroext 1628) #4, !dbg !5107
  ret void, !dbg !5108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_pmu_set_ldo_paref(%struct.ssb_chipcommon* %cc, i1 zeroext %on) #0 !dbg !5109 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %on.addr = alloca i8, align 1
  %bus = alloca %struct.ssb_bus*, align 8
  %ldo = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5116, metadata !DIExpression()), !dbg !5117
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5118
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5119
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5119
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5120
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5120
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5117
  call void @llvm.dbg.declare(metadata i32* %ldo, metadata !5121, metadata !DIExpression()), !dbg !5122
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5123
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5124
  %4 = load i16, i16* %chip_id, align 8, !dbg !5124
  %conv = zext i16 %4 to i32, !dbg !5123
  switch i32 %conv, label %sw.default [
    i32 17170, label %sw.bb
    i32 17192, label %sw.bb2
    i32 21332, label %sw.bb3
  ], !dbg !5125

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %ldo, align 4, !dbg !5126
  br label %sw.epilog, !dbg !5128

sw.bb2:                                           ; preds = %entry
  store i32 8, i32* %ldo, align 4, !dbg !5129
  br label %sw.epilog, !dbg !5130

sw.bb3:                                           ; preds = %entry
  store i32 8, i32* %ldo, align 4, !dbg !5131
  br label %sw.epilog, !dbg !5132

sw.default:                                       ; preds = %entry
  br label %return, !dbg !5133

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %5 = load i8, i8* %on.addr, align 1, !dbg !5134
  %tobool = trunc i8 %5 to i1, !dbg !5134
  br i1 %tobool, label %if.then, label %if.else, !dbg !5136

if.then:                                          ; preds = %sw.epilog
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5137
  %dev4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %6, i32 0, i32 0, !dbg !5137
  %7 = load %struct.ssb_device*, %struct.ssb_device** %dev4, align 8, !dbg !5137
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5137
  %dev5 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !5137
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev5, align 8, !dbg !5137
  %call = call i32 @ssb_read32(%struct.ssb_device* %9, i16 zeroext 1560) #4, !dbg !5137
  %10 = load i32, i32* %ldo, align 4, !dbg !5137
  %shl = shl i32 1, %10, !dbg !5137
  %or = or i32 %call, %shl, !dbg !5137
  call void @ssb_write32(%struct.ssb_device* %7, i16 zeroext 1560, i32 %or) #4, !dbg !5137
  br label %if.end, !dbg !5137

if.else:                                          ; preds = %sw.epilog
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5138
  %dev6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0, !dbg !5138
  %12 = load %struct.ssb_device*, %struct.ssb_device** %dev6, align 8, !dbg !5138
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5138
  %dev7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %13, i32 0, i32 0, !dbg !5138
  %14 = load %struct.ssb_device*, %struct.ssb_device** %dev7, align 8, !dbg !5138
  %call8 = call i32 @ssb_read32(%struct.ssb_device* %14, i16 zeroext 1560) #4, !dbg !5138
  %15 = load i32, i32* %ldo, align 4, !dbg !5138
  %shl9 = shl i32 1, %15, !dbg !5138
  %neg = xor i32 %shl9, -1, !dbg !5138
  %and = and i32 %call8, %neg, !dbg !5138
  call void @ssb_write32(%struct.ssb_device* %12, i16 zeroext 1560, i32 %and) #4, !dbg !5138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5139
  %dev10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !5139
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev10, align 8, !dbg !5139
  %call11 = call i32 @ssb_read32(%struct.ssb_device* %17, i16 zeroext 1560) #4, !dbg !5139
  br label %return, !dbg !5140

return:                                           ; preds = %if.end, %sw.default
  ret void, !dbg !5140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_pmu_get_alp_clock(%struct.ssb_chipcommon* %cc) #0 !dbg !5141 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5146, metadata !DIExpression()), !dbg !5147
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5148
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5149
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5149
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5150
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5150
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5147
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5151
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5152
  %4 = load i16, i16* %chip_id, align 8, !dbg !5152
  %conv = zext i16 %4 to i32, !dbg !5151
  switch i32 %conv, label %sw.default [
    i32 21332, label %sw.bb
  ], !dbg !5153

sw.bb:                                            ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5154
  %call = call i32 @ssb_pmu_get_alp_clock_clk0(%struct.ssb_chipcommon* %5) #4, !dbg !5156
  store i32 %call, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

sw.default:                                       ; preds = %entry
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5158
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %6, i32 0, i32 0, !dbg !5158
  %7 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5158
  %dev3 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %7, i32 0, i32 1, !dbg !5158
  %8 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !5158
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5158
  %chip_id4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %9, i32 0, i32 9, !dbg !5158
  %10 = load i16, i16* %chip_id4, align 8, !dbg !5158
  %conv5 = zext i16 %10 to i32, !dbg !5158
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %conv5) #5, !dbg !5158
  store i32 0, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

return:                                           ; preds = %sw.default, %sw.bb
  %11 = load i32, i32* %retval, align 4, !dbg !5160
  ret i32 %11, !dbg !5160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_pmu_get_alp_clock_clk0(%struct.ssb_chipcommon* %cc) #0 !dbg !5161 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %crystalfreq = alloca i32, align 4
  %e = alloca %struct.pmu0_plltab_entry*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata i32* %crystalfreq, metadata !5164, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.declare(metadata %struct.pmu0_plltab_entry** %e, metadata !5166, metadata !DIExpression()), !dbg !5168
  store %struct.pmu0_plltab_entry* null, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5168
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5169
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5169
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5169
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 1536) #4, !dbg !5169
  %and = and i32 %call, 124, !dbg !5170
  %shr = lshr i32 %and, 2, !dbg !5171
  store i32 %shr, i32* %crystalfreq, align 4, !dbg !5172
  %2 = load i32, i32* %crystalfreq, align 4, !dbg !5173
  %call1 = call %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 %2) #4, !dbg !5174
  store %struct.pmu0_plltab_entry* %call1, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5175
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %entry
  %3 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5177
  %tobool = icmp ne %struct.pmu0_plltab_entry* %3, null, !dbg !5177
  %lnot = xor i1 %tobool, true, !dbg !5177
  %lnot2 = xor i1 %lnot, true, !dbg !5177
  %lnot3 = xor i1 %lnot2, true, !dbg !5177
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5177
  %conv = sext i32 %lnot.ext to i64, !dbg !5177
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5177
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5180

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5177

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5181

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !5183

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !5181

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 627, i32 0, i64 12) #6, !dbg !5185, !srcloc !5187
  br label %do.end8, !dbg !5185

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !5181

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 243) #6, !dbg !5188, !srcloc !5191
  unreachable, !dbg !5192

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !5181

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !5181

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.end12, !dbg !5180

do.end12:                                         ; preds = %if.end
  %4 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5193
  %freq = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %4, i32 0, i32 0, !dbg !5194
  %5 = load i16, i16* %freq, align 4, !dbg !5194
  %conv13 = zext i16 %5 to i32, !dbg !5193
  %mul = mul i32 %conv13, 1000, !dbg !5195
  ret i32 %mul, !dbg !5196
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_pmu_get_cpu_clock(%struct.ssb_chipcommon* %cc) #0 !dbg !5197 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5200, metadata !DIExpression()), !dbg !5201
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5202
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5203
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5203
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5204
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5204
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5201
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5205
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5206
  %4 = load i16, i16* %chip_id, align 8, !dbg !5206
  %conv = zext i16 %4 to i32, !dbg !5205
  switch i32 %conv, label %sw.default [
    i32 21332, label %sw.bb
  ], !dbg !5207

sw.bb:                                            ; preds = %entry
  store i32 240000000, i32* %retval, align 4, !dbg !5208
  br label %return, !dbg !5208

sw.default:                                       ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5210
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !5210
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5210
  %dev3 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %6, i32 0, i32 1, !dbg !5210
  %7 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !5210
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5210
  %chip_id4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %8, i32 0, i32 9, !dbg !5210
  %9 = load i16, i16* %chip_id4, align 8, !dbg !5210
  %conv5 = zext i16 %9 to i32, !dbg !5210
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %conv5) #5, !dbg !5210
  store i32 0, i32* %retval, align 4, !dbg !5211
  br label %return, !dbg !5211

return:                                           ; preds = %sw.default, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !5212
  ret i32 %10, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_pmu_get_controlclock(%struct.ssb_chipcommon* %cc) #0 !dbg !5213 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5218
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5219
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5219
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5220
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5220
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5217
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5221
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5222
  %4 = load i16, i16* %chip_id, align 8, !dbg !5222
  %conv = zext i16 %4 to i32, !dbg !5221
  switch i32 %conv, label %sw.default [
    i32 21332, label %sw.bb
  ], !dbg !5223

sw.bb:                                            ; preds = %entry
  store i32 120000000, i32* %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

sw.default:                                       ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5226
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !5226
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5226
  %dev3 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %6, i32 0, i32 1, !dbg !5226
  %7 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !5226
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5226
  %chip_id4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %8, i32 0, i32 9, !dbg !5226
  %9 = load i16, i16* %chip_id4, align 8, !dbg !5226
  %conv5 = zext i16 %9 to i32, !dbg !5226
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %conv5) #5, !dbg !5226
  store i32 0, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

return:                                           ; preds = %sw.default, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !5228
  ret i32 %10, !dbg !5228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_pmu_spuravoid_pllupdate(%struct.ssb_chipcommon* %cc, i32 %spuravoid) #0 !dbg !5229 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %spuravoid.addr = alloca i32, align 4
  %pmu_ctl = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store i32 %spuravoid, i32* %spuravoid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %spuravoid.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.declare(metadata i32* %pmu_ctl, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i32 0, i32* %pmu_ctl, align 4, !dbg !5237
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5238
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5239
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5239
  %bus = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5240
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5240
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %2, i32 0, i32 9, !dbg !5241
  %3 = load i16, i16* %chip_id, align 8, !dbg !5241
  %conv = zext i16 %3 to i32, !dbg !5238
  switch i32 %conv, label %sw.default [
    i32 17186, label %sw.bb
    i32 43222, label %sw.bb2
  ], !dbg !5242

sw.bb:                                            ; preds = %entry
  %4 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5243
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %4, i32 0, i32 286261360) #4, !dbg !5245
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5246
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %5, i32 1, i32 269751306) #4, !dbg !5247
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5248
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %6, i32 5, i32 -2004318124) #4, !dbg !5249
  %7 = load i32, i32* %spuravoid.addr, align 4, !dbg !5250
  %cmp = icmp eq i32 %7, 1, !dbg !5252
  br i1 %cmp, label %if.then, label %if.else, !dbg !5253

if.then:                                          ; preds = %sw.bb
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5254
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %8, i32 2, i32 85989416) #4, !dbg !5255
  br label %if.end, !dbg !5255

if.else:                                          ; preds = %sw.bb
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5256
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %9, i32 2, i32 83892264) #4, !dbg !5257
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1024, i32* %pmu_ctl, align 4, !dbg !5258
  br label %sw.epilog, !dbg !5259

sw.bb2:                                           ; preds = %entry
  %10 = load i32, i32* %spuravoid.addr, align 4, !dbg !5260
  %cmp3 = icmp eq i32 %10, 1, !dbg !5262
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !5263

if.then5:                                         ; preds = %sw.bb2
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5264
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %11, i32 0, i32 290455560) #4, !dbg !5266
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5267
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %12, i32 1, i32 201329670) #4, !dbg !5268
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5269
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %13, i32 2, i32 257952264) #4, !dbg !5270
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5271
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %14, i32 3, i32 0) #4, !dbg !5272
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5273
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %15, i32 4, i32 536996128) #4, !dbg !5274
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5275
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %16, i32 5, i32 -2004318187) #4, !dbg !5276
  br label %if.end7, !dbg !5277

if.else6:                                         ; preds = %sw.bb2
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5278
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %17, i32 0, i32 286261256) #4, !dbg !5280
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5281
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %18, i32 1, i32 201329670) #4, !dbg !5282
  %19 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5283
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %19, i32 2, i32 50334216) #4, !dbg !5284
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5285
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %20, i32 3, i32 0) #4, !dbg !5286
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5287
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %21, i32 4, i32 536872384) #4, !dbg !5288
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5289
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %22, i32 5, i32 -2004318123) #4, !dbg !5290
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  store i32 1024, i32* %pmu_ctl, align 4, !dbg !5291
  br label %sw.epilog, !dbg !5292

sw.default:                                       ; preds = %entry
  %23 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5293
  %dev8 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %23, i32 0, i32 0, !dbg !5293
  %24 = load %struct.ssb_device*, %struct.ssb_device** %dev8, align 8, !dbg !5293
  %dev9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %24, i32 0, i32 1, !dbg !5293
  %25 = load %struct.device*, %struct.device** %dev9, align 8, !dbg !5293
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5293
  %dev10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 0, !dbg !5293
  %27 = load %struct.ssb_device*, %struct.ssb_device** %dev10, align 8, !dbg !5293
  %bus11 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %27, i32 0, i32 3, !dbg !5293
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %bus11, align 8, !dbg !5293
  %chip_id12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %28, i32 0, i32 9, !dbg !5293
  %29 = load i16, i16* %chip_id12, align 8, !dbg !5293
  %conv13 = zext i16 %29 to i32, !dbg !5293
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %conv13) #5, !dbg !5293
  br label %return, !dbg !5294

sw.epilog:                                        ; preds = %if.end7, %if.end
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5295
  %dev14 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %30, i32 0, i32 0, !dbg !5295
  %31 = load %struct.ssb_device*, %struct.ssb_device** %dev14, align 8, !dbg !5295
  %32 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5295
  %dev15 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %32, i32 0, i32 0, !dbg !5295
  %33 = load %struct.ssb_device*, %struct.ssb_device** %dev15, align 8, !dbg !5295
  %call = call i32 @ssb_read32(%struct.ssb_device* %33, i16 zeroext 1536) #4, !dbg !5295
  %34 = load i32, i32* %pmu_ctl, align 4, !dbg !5295
  %or = or i32 %call, %34, !dbg !5295
  call void @ssb_write32(%struct.ssb_device* %31, i16 zeroext 1536, i32 %or) #4, !dbg !5295
  br label %return, !dbg !5296

return:                                           ; preds = %sw.epilog, %sw.default
  ret void, !dbg !5296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %cc, i32 %offset, i32 %value) #0 !dbg !5297 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5306
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5306
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5306
  %2 = load i32, i32* %offset.addr, align 4, !dbg !5306
  call void @ssb_write32(%struct.ssb_device* %1, i16 zeroext 1632, i32 %2) #4, !dbg !5306
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5307
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 0, !dbg !5307
  %4 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5307
  %5 = load i32, i32* %value.addr, align 4, !dbg !5307
  call void @ssb_write32(%struct.ssb_device* %4, i16 zeroext 1636, i32 %5) #4, !dbg !5307
  ret void, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_pmu1_pllinit_r0(%struct.ssb_chipcommon* %cc, i32 %crystalfreq) #0 !dbg !5309 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %crystalfreq.addr = alloca i32, align 4
  %bus = alloca %struct.ssb_bus*, align 8
  %e = alloca %struct.pmu1_plltab_entry*, align 8
  %buffer_strength = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pllctl = alloca i32, align 4
  %pmuctl = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp66 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  store i32 %crystalfreq, i32* %crystalfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %crystalfreq.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5316, metadata !DIExpression()), !dbg !5317
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5318
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5319
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5319
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5320
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5320
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5317
  call void @llvm.dbg.declare(metadata %struct.pmu1_plltab_entry** %e, metadata !5321, metadata !DIExpression()), !dbg !5323
  store %struct.pmu1_plltab_entry* null, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5323
  call void @llvm.dbg.declare(metadata i32* %buffer_strength, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 0, i32* %buffer_strength, align 4, !dbg !5325
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5326, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.declare(metadata i32* %pllctl, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata i32* %pmuctl, metadata !5330, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5332, metadata !DIExpression()), !dbg !5333
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5334
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5336
  %4 = load i16, i16* %chip_id, align 8, !dbg !5336
  %conv = zext i16 %4 to i32, !dbg !5334
  %cmp = icmp eq i32 %conv, 17170, !dbg !5337
  br i1 %cmp, label %if.then, label %if.end, !dbg !5338

if.then:                                          ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5339
  %pmu = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 5, !dbg !5341
  %crystalfreq3 = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu, i32 0, i32 1, !dbg !5342
  store i32 20000, i32* %crystalfreq3, align 4, !dbg !5343
  br label %return, !dbg !5344

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5345
  %tobool = icmp ne i32 %6, 0, !dbg !5345
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5347

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5348
  %call = call %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32 %7) #4, !dbg !5349
  store %struct.pmu1_plltab_entry* %call, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5350
  br label %if.end5, !dbg !5351

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5352
  %tobool6 = icmp ne %struct.pmu1_plltab_entry* %8, null, !dbg !5352
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !5354

if.then7:                                         ; preds = %if.end5
  %call8 = call %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32 15360) #4, !dbg !5355
  store %struct.pmu1_plltab_entry* %call8, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5356
  br label %if.end9, !dbg !5357

if.end9:                                          ; preds = %if.then7, %if.end5
  br label %do.body, !dbg !5358

do.body:                                          ; preds = %if.end9
  %9 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5359
  %tobool10 = icmp ne %struct.pmu1_plltab_entry* %9, null, !dbg !5359
  %lnot = xor i1 %tobool10, true, !dbg !5359
  %lnot11 = xor i1 %lnot, true, !dbg !5359
  %lnot12 = xor i1 %lnot11, true, !dbg !5359
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5359
  %conv13 = sext i32 %lnot.ext to i64, !dbg !5359
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5359
  br i1 %tobool14, label %if.then15, label %if.end23, !dbg !5362

if.then15:                                        ; preds = %do.body
  br label %do.body16, !dbg !5359

do.body16:                                        ; preds = %if.then15
  br label %do.body17, !dbg !5363

do.body17:                                        ; preds = %do.body16
  br label %do.end, !dbg !5365

do.end:                                           ; preds = %do.body17
  br label %do.body18, !dbg !5363

do.body18:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 241, i32 0, i64 12) #6, !dbg !5367, !srcloc !5369
  br label %do.end19, !dbg !5367

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !5363

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #6, !dbg !5370, !srcloc !5373
  unreachable, !dbg !5374

do.end21:                                         ; No predecessors!
  br label %do.end22, !dbg !5363

do.end22:                                         ; preds = %do.end21
  br label %if.end23, !dbg !5363

if.end23:                                         ; preds = %do.end22, %do.body
  br label %do.end24, !dbg !5362

do.end24:                                         ; preds = %if.end23
  %10 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5375
  %freq = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %10, i32 0, i32 0, !dbg !5376
  %11 = load i16, i16* %freq, align 4, !dbg !5376
  %conv25 = zext i16 %11 to i32, !dbg !5375
  store i32 %conv25, i32* %crystalfreq.addr, align 4, !dbg !5377
  %12 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5378
  %freq26 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %12, i32 0, i32 0, !dbg !5379
  %13 = load i16, i16* %freq26, align 4, !dbg !5379
  %conv27 = zext i16 %13 to i32, !dbg !5378
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5380
  %pmu28 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 5, !dbg !5381
  %crystalfreq29 = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu28, i32 0, i32 1, !dbg !5382
  store i32 %conv27, i32* %crystalfreq29, align 4, !dbg !5383
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5384
  %dev30 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0, !dbg !5384
  %16 = load %struct.ssb_device*, %struct.ssb_device** %dev30, align 8, !dbg !5384
  %call31 = call i32 @ssb_read32(%struct.ssb_device* %16, i16 zeroext 1536) #4, !dbg !5384
  store i32 %call31, i32* %pmuctl, align 4, !dbg !5385
  %17 = load i32, i32* %pmuctl, align 4, !dbg !5386
  %and = and i32 %17, 124, !dbg !5388
  %shr = lshr i32 %and, 2, !dbg !5389
  %18 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5390
  %xf = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %18, i32 0, i32 1, !dbg !5391
  %19 = load i8, i8* %xf, align 2, !dbg !5391
  %conv32 = zext i8 %19 to i32, !dbg !5390
  %cmp33 = icmp eq i32 %shr, %conv32, !dbg !5392
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5393

if.then35:                                        ; preds = %do.end24
  br label %return, !dbg !5394

if.end36:                                         ; preds = %do.end24
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5396
  %dev37 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %20, i32 0, i32 0, !dbg !5396
  %21 = load %struct.ssb_device*, %struct.ssb_device** %dev37, align 8, !dbg !5396
  %dev38 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %21, i32 0, i32 1, !dbg !5396
  %22 = load %struct.device*, %struct.device** %dev38, align 8, !dbg !5396
  %23 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5396
  %div = udiv i32 %23, 1000, !dbg !5396
  %24 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5396
  %rem = urem i32 %24, 1000, !dbg !5396
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %div, i32 %rem) #5, !dbg !5396
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5397
  %chip_id39 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 9, !dbg !5398
  %26 = load i16, i16* %chip_id39, align 8, !dbg !5398
  %conv40 = zext i16 %26 to i32, !dbg !5397
  switch i32 %conv40, label %sw.default [
    i32 17189, label %sw.bb
  ], !dbg !5399

sw.bb:                                            ; preds = %if.end36
  %27 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5400
  %dev41 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %27, i32 0, i32 0, !dbg !5400
  %28 = load %struct.ssb_device*, %struct.ssb_device** %dev41, align 8, !dbg !5400
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5400
  %dev42 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %29, i32 0, i32 0, !dbg !5400
  %30 = load %struct.ssb_device*, %struct.ssb_device** %dev42, align 8, !dbg !5400
  %call43 = call i32 @ssb_read32(%struct.ssb_device* %30, i16 zeroext 1560) #4, !dbg !5400
  %and44 = and i32 %call43, -3145729, !dbg !5400
  call void @ssb_write32(%struct.ssb_device* %28, i16 zeroext 1560, i32 %and44) #4, !dbg !5400
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5402
  %dev45 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %31, i32 0, i32 0, !dbg !5402
  %32 = load %struct.ssb_device*, %struct.ssb_device** %dev45, align 8, !dbg !5402
  %33 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5402
  %dev46 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %33, i32 0, i32 0, !dbg !5402
  %34 = load %struct.ssb_device*, %struct.ssb_device** %dev46, align 8, !dbg !5402
  %call47 = call i32 @ssb_read32(%struct.ssb_device* %34, i16 zeroext 1564) #4, !dbg !5402
  %and48 = and i32 %call47, -3145729, !dbg !5402
  call void @ssb_write32(%struct.ssb_device* %32, i16 zeroext 1564, i32 %and48) #4, !dbg !5402
  store i32 2236962, i32* %buffer_strength, align 4, !dbg !5403
  br label %sw.epilog, !dbg !5404

sw.default:                                       ; preds = %if.end36
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5405, metadata !DIExpression()), !dbg !5407
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5407
  %35 = load i32, i32* %__ret_warn_on, align 4, !dbg !5408
  %tobool49 = icmp ne i32 %35, 0, !dbg !5408
  %lnot50 = xor i1 %tobool49, true, !dbg !5408
  %lnot52 = xor i1 %lnot50, true, !dbg !5408
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !5408
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !5408
  %tobool55 = icmp ne i64 %conv54, 0, !dbg !5408
  br i1 %tobool55, label %if.then56, label %if.end65, !dbg !5407

if.then56:                                        ; preds = %sw.default
  br label %do.body57, !dbg !5408

do.body57:                                        ; preds = %if.then56
  br label %do.body58, !dbg !5410

do.body58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5412

do.end59:                                         ; preds = %do.body58
  br label %do.body60, !dbg !5410

do.body60:                                        ; preds = %do.end59
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 268, i32 2305, i64 12) #6, !dbg !5414, !srcloc !5416
  br label %do.end61, !dbg !5414

do.end61:                                         ; preds = %do.body60
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #6, !dbg !5417, !srcloc !5419
  br label %do.body62, !dbg !5410

do.body62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !5420

do.end63:                                         ; preds = %do.body62
  br label %do.end64, !dbg !5410

do.end64:                                         ; preds = %do.end63
  br label %if.end65, !dbg !5410

if.end65:                                         ; preds = %do.end64, %sw.default
  %36 = load i32, i32* %__ret_warn_on, align 4, !dbg !5407
  %tobool67 = icmp ne i32 %36, 0, !dbg !5407
  %lnot68 = xor i1 %tobool67, true, !dbg !5407
  %lnot70 = xor i1 %lnot68, true, !dbg !5407
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !5407
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !5407
  store i64 %conv72, i64* %tmp66, align 8, !dbg !5408
  %37 = load i64, i64* %tmp66, align 8, !dbg !5407
  br label %sw.epilog, !dbg !5422

sw.epilog:                                        ; preds = %if.end65, %sw.bb
  store i32 1500, i32* %i, align 4, !dbg !5423
  br label %for.cond, !dbg !5425

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %38 = load i32, i32* %i, align 4, !dbg !5426
  %tobool73 = icmp ne i32 %38, 0, !dbg !5428
  br i1 %tobool73, label %for.body, label %for.end, !dbg !5428

for.body:                                         ; preds = %for.cond
  %39 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5429
  %dev74 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %39, i32 0, i32 0, !dbg !5429
  %40 = load %struct.ssb_device*, %struct.ssb_device** %dev74, align 8, !dbg !5429
  %call75 = call i32 @ssb_read32(%struct.ssb_device* %40, i16 zeroext 480) #4, !dbg !5429
  store i32 %call75, i32* %tmp, align 4, !dbg !5431
  %41 = load i32, i32* %tmp, align 4, !dbg !5432
  %and76 = and i32 %41, 131072, !dbg !5434
  %tobool77 = icmp ne i32 %and76, 0, !dbg !5434
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !5435

if.then78:                                        ; preds = %for.body
  br label %for.end, !dbg !5436

if.end79:                                         ; preds = %for.body
  call void @__const_udelay(i64 42950) #4, !dbg !5437
  br label %for.inc, !dbg !5442

for.inc:                                          ; preds = %if.end79
  %42 = load i32, i32* %i, align 4, !dbg !5443
  %dec = add i32 %42, -1, !dbg !5443
  store i32 %dec, i32* %i, align 4, !dbg !5443
  br label %for.cond, !dbg !5444, !llvm.loop !5445

for.end:                                          ; preds = %if.then78, %for.cond
  %43 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5447
  %dev80 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %43, i32 0, i32 0, !dbg !5447
  %44 = load %struct.ssb_device*, %struct.ssb_device** %dev80, align 8, !dbg !5447
  %call81 = call i32 @ssb_read32(%struct.ssb_device* %44, i16 zeroext 480) #4, !dbg !5447
  store i32 %call81, i32* %tmp, align 4, !dbg !5448
  %45 = load i32, i32* %tmp, align 4, !dbg !5449
  %and82 = and i32 %45, 131072, !dbg !5451
  %tobool83 = icmp ne i32 %and82, 0, !dbg !5451
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !5452

if.then84:                                        ; preds = %for.end
  %46 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5453
  %dev85 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %46, i32 0, i32 0, !dbg !5453
  %47 = load %struct.ssb_device*, %struct.ssb_device** %dev85, align 8, !dbg !5453
  %dev86 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %47, i32 0, i32 1, !dbg !5453
  %48 = load %struct.device*, %struct.device** %dev86, align 8, !dbg !5453
  call void (%struct.device*, i8*, ...) @_dev_emerg(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !5453
  br label %if.end87, !dbg !5453

if.end87:                                         ; preds = %if.then84, %for.end
  %49 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5454
  %call88 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %49, i32 0) #4, !dbg !5455
  store i32 %call88, i32* %pllctl, align 4, !dbg !5456
  %50 = load i32, i32* %pllctl, align 4, !dbg !5457
  %and89 = and i32 %50, -267386881, !dbg !5457
  store i32 %and89, i32* %pllctl, align 4, !dbg !5457
  %51 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5458
  %p1div = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %51, i32 0, i32 4, !dbg !5459
  %52 = load i8, i8* %p1div, align 4, !dbg !5459
  %conv90 = zext i8 %52 to i32, !dbg !5460
  %shl = shl i32 %conv90, 20, !dbg !5461
  %and91 = and i32 %shl, 15728640, !dbg !5462
  %53 = load i32, i32* %pllctl, align 4, !dbg !5463
  %or = or i32 %53, %and91, !dbg !5463
  store i32 %or, i32* %pllctl, align 4, !dbg !5463
  %54 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5464
  %p2div = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %54, i32 0, i32 5, !dbg !5465
  %55 = load i8, i8* %p2div, align 1, !dbg !5465
  %conv92 = zext i8 %55 to i32, !dbg !5466
  %shl93 = shl i32 %conv92, 24, !dbg !5467
  %and94 = and i32 %shl93, 251658240, !dbg !5468
  %56 = load i32, i32* %pllctl, align 4, !dbg !5469
  %or95 = or i32 %56, %and94, !dbg !5469
  store i32 %or95, i32* %pllctl, align 4, !dbg !5469
  %57 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5470
  %58 = load i32, i32* %pllctl, align 4, !dbg !5471
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %57, i32 0, i32 %58) #4, !dbg !5472
  %59 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5473
  %call96 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %59, i32 2) #4, !dbg !5474
  store i32 %call96, i32* %pllctl, align 4, !dbg !5475
  %60 = load i32, i32* %pllctl, align 4, !dbg !5476
  %and97 = and i32 %60, -536739841, !dbg !5476
  store i32 %and97, i32* %pllctl, align 4, !dbg !5476
  %61 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5477
  %ndiv_int = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %61, i32 0, i32 2, !dbg !5478
  %62 = load i8, i8* %ndiv_int, align 1, !dbg !5478
  %conv98 = zext i8 %62 to i32, !dbg !5479
  %shl99 = shl i32 %conv98, 20, !dbg !5480
  %and100 = and i32 %shl99, 535822336, !dbg !5481
  %63 = load i32, i32* %pllctl, align 4, !dbg !5482
  %or101 = or i32 %63, %and100, !dbg !5482
  store i32 %or101, i32* %pllctl, align 4, !dbg !5482
  %64 = load i32, i32* %pllctl, align 4, !dbg !5483
  %or102 = or i32 %64, 131072, !dbg !5483
  store i32 %or102, i32* %pllctl, align 4, !dbg !5483
  %65 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5484
  %66 = load i32, i32* %pllctl, align 4, !dbg !5485
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %65, i32 2, i32 %66) #4, !dbg !5486
  %67 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5487
  %call103 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %67, i32 3) #4, !dbg !5488
  store i32 %call103, i32* %pllctl, align 4, !dbg !5489
  %68 = load i32, i32* %pllctl, align 4, !dbg !5490
  %and104 = and i32 %68, -16777216, !dbg !5490
  store i32 %and104, i32* %pllctl, align 4, !dbg !5490
  %69 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5491
  %ndiv_frac = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %69, i32 0, i32 3, !dbg !5492
  %70 = load i32, i32* %ndiv_frac, align 4, !dbg !5492
  %shl105 = shl i32 %70, 0, !dbg !5493
  %and106 = and i32 %shl105, 16777215, !dbg !5494
  %71 = load i32, i32* %pllctl, align 4, !dbg !5495
  %or107 = or i32 %71, %and106, !dbg !5495
  store i32 %or107, i32* %pllctl, align 4, !dbg !5495
  %72 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5496
  %73 = load i32, i32* %pllctl, align 4, !dbg !5497
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %72, i32 3, i32 %73) #4, !dbg !5498
  %74 = load i32, i32* %buffer_strength, align 4, !dbg !5499
  %tobool108 = icmp ne i32 %74, 0, !dbg !5499
  br i1 %tobool108, label %if.then109, label %if.end115, !dbg !5501

if.then109:                                       ; preds = %if.end87
  %75 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5502
  %call110 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %75, i32 5) #4, !dbg !5504
  store i32 %call110, i32* %pllctl, align 4, !dbg !5505
  %76 = load i32, i32* %pllctl, align 4, !dbg !5506
  %and111 = and i32 %76, 255, !dbg !5506
  store i32 %and111, i32* %pllctl, align 4, !dbg !5506
  %77 = load i32, i32* %buffer_strength, align 4, !dbg !5507
  %shl112 = shl i32 %77, 8, !dbg !5508
  %and113 = and i32 %shl112, -256, !dbg !5509
  %78 = load i32, i32* %pllctl, align 4, !dbg !5510
  %or114 = or i32 %78, %and113, !dbg !5510
  store i32 %or114, i32* %pllctl, align 4, !dbg !5510
  %79 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5511
  %80 = load i32, i32* %pllctl, align 4, !dbg !5512
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %79, i32 5, i32 %80) #4, !dbg !5513
  br label %if.end115, !dbg !5514

if.end115:                                        ; preds = %if.then109, %if.end87
  %81 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5515
  %dev116 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %81, i32 0, i32 0, !dbg !5515
  %82 = load %struct.ssb_device*, %struct.ssb_device** %dev116, align 8, !dbg !5515
  %call117 = call i32 @ssb_read32(%struct.ssb_device* %82, i16 zeroext 1536) #4, !dbg !5515
  store i32 %call117, i32* %pmuctl, align 4, !dbg !5516
  %83 = load i32, i32* %pmuctl, align 4, !dbg !5517
  %and118 = and i32 %83, 65411, !dbg !5517
  store i32 %and118, i32* %pmuctl, align 4, !dbg !5517
  %84 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5518
  %freq119 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %84, i32 0, i32 0, !dbg !5519
  %85 = load i16, i16* %freq119, align 4, !dbg !5519
  %conv120 = zext i16 %85 to i32, !dbg !5520
  %add = add i32 %conv120, 127, !dbg !5521
  %div121 = udiv i32 %add, 128, !dbg !5522
  %sub = sub i32 %div121, 1, !dbg !5523
  %shl122 = shl i32 %sub, 16, !dbg !5524
  %and123 = and i32 %shl122, -65536, !dbg !5525
  %86 = load i32, i32* %pmuctl, align 4, !dbg !5526
  %or124 = or i32 %86, %and123, !dbg !5526
  store i32 %or124, i32* %pmuctl, align 4, !dbg !5526
  %87 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5527
  %xf125 = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %87, i32 0, i32 1, !dbg !5528
  %88 = load i8, i8* %xf125, align 2, !dbg !5528
  %conv126 = zext i8 %88 to i32, !dbg !5529
  %shl127 = shl i32 %conv126, 2, !dbg !5530
  %and128 = and i32 %shl127, 124, !dbg !5531
  %89 = load i32, i32* %pmuctl, align 4, !dbg !5532
  %or129 = or i32 %89, %and128, !dbg !5532
  store i32 %or129, i32* %pmuctl, align 4, !dbg !5532
  %90 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5533
  %dev130 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %90, i32 0, i32 0, !dbg !5533
  %91 = load %struct.ssb_device*, %struct.ssb_device** %dev130, align 8, !dbg !5533
  %92 = load i32, i32* %pmuctl, align 4, !dbg !5533
  call void @ssb_write32(%struct.ssb_device* %91, i16 zeroext 1536, i32 %92) #4, !dbg !5533
  br label %return, !dbg !5534

return:                                           ; preds = %if.end115, %if.then35, %if.then
  ret void, !dbg !5534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %cc, i32 %crystalfreq) #0 !dbg !5535 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %crystalfreq.addr = alloca i32, align 4
  %bus = alloca %struct.ssb_bus*, align 8
  %e = alloca %struct.pmu0_plltab_entry*, align 8
  %pmuctl = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pllctl = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp67 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i32 %crystalfreq, i32* %crystalfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %crystalfreq.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5540, metadata !DIExpression()), !dbg !5541
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5542
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5543
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5543
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5544
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5544
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5541
  call void @llvm.dbg.declare(metadata %struct.pmu0_plltab_entry** %e, metadata !5545, metadata !DIExpression()), !dbg !5546
  store %struct.pmu0_plltab_entry* null, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5546
  call void @llvm.dbg.declare(metadata i32* %pmuctl, metadata !5547, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5549, metadata !DIExpression()), !dbg !5550
  call void @llvm.dbg.declare(metadata i32* %pllctl, metadata !5551, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5553, metadata !DIExpression()), !dbg !5554
  %3 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5555
  %tobool = icmp ne i32 %3, 0, !dbg !5555
  br i1 %tobool, label %if.then, label %if.end, !dbg !5557

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5558
  %call = call %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 %4) #4, !dbg !5559
  store %struct.pmu0_plltab_entry* %call, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5560
  br label %if.end, !dbg !5561

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5562
  %tobool2 = icmp ne %struct.pmu0_plltab_entry* %5, null, !dbg !5562
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5564

if.then3:                                         ; preds = %if.end
  %call4 = call %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 20000) #4, !dbg !5565
  store %struct.pmu0_plltab_entry* %call4, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5566
  br label %if.end5, !dbg !5567

if.end5:                                          ; preds = %if.then3, %if.end
  br label %do.body, !dbg !5568

do.body:                                          ; preds = %if.end5
  %6 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5569
  %tobool6 = icmp ne %struct.pmu0_plltab_entry* %6, null, !dbg !5569
  %lnot = xor i1 %tobool6, true, !dbg !5569
  %lnot7 = xor i1 %lnot, true, !dbg !5569
  %lnot8 = xor i1 %lnot7, true, !dbg !5569
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5569
  %conv = sext i32 %lnot.ext to i64, !dbg !5569
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5569
  br i1 %tobool9, label %if.then10, label %if.end18, !dbg !5572

if.then10:                                        ; preds = %do.body
  br label %do.body11, !dbg !5569

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !5573

do.body12:                                        ; preds = %do.body11
  br label %do.end, !dbg !5575

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !5573

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 102, i32 0, i64 12) #6, !dbg !5577, !srcloc !5579
  br label %do.end14, !dbg !5577

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !5573

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #6, !dbg !5580, !srcloc !5583
  unreachable, !dbg !5584

do.end16:                                         ; No predecessors!
  br label %do.end17, !dbg !5573

do.end17:                                         ; preds = %do.end16
  br label %if.end18, !dbg !5573

if.end18:                                         ; preds = %do.end17, %do.body
  br label %do.end19, !dbg !5572

do.end19:                                         ; preds = %if.end18
  %7 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5585
  %freq = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %7, i32 0, i32 0, !dbg !5586
  %8 = load i16, i16* %freq, align 4, !dbg !5586
  %conv20 = zext i16 %8 to i32, !dbg !5585
  store i32 %conv20, i32* %crystalfreq.addr, align 4, !dbg !5587
  %9 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5588
  %freq21 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %9, i32 0, i32 0, !dbg !5589
  %10 = load i16, i16* %freq21, align 4, !dbg !5589
  %conv22 = zext i16 %10 to i32, !dbg !5588
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5590
  %pmu = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 5, !dbg !5591
  %crystalfreq23 = getelementptr inbounds %struct.ssb_chipcommon_pmu, %struct.ssb_chipcommon_pmu* %pmu, i32 0, i32 1, !dbg !5592
  store i32 %conv22, i32* %crystalfreq23, align 4, !dbg !5593
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5594
  %dev24 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0, !dbg !5594
  %13 = load %struct.ssb_device*, %struct.ssb_device** %dev24, align 8, !dbg !5594
  %call25 = call i32 @ssb_read32(%struct.ssb_device* %13, i16 zeroext 1536) #4, !dbg !5594
  store i32 %call25, i32* %pmuctl, align 4, !dbg !5595
  %14 = load i32, i32* %pmuctl, align 4, !dbg !5596
  %and = and i32 %14, 124, !dbg !5598
  %shr = lshr i32 %and, 2, !dbg !5599
  %15 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5600
  %xf = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %15, i32 0, i32 1, !dbg !5601
  %16 = load i8, i8* %xf, align 2, !dbg !5601
  %conv26 = zext i8 %16 to i32, !dbg !5600
  %cmp = icmp eq i32 %shr, %conv26, !dbg !5602
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !5603

if.then28:                                        ; preds = %do.end19
  br label %return, !dbg !5604

if.end29:                                         ; preds = %do.end19
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5606
  %dev30 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %17, i32 0, i32 0, !dbg !5606
  %18 = load %struct.ssb_device*, %struct.ssb_device** %dev30, align 8, !dbg !5606
  %dev31 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %18, i32 0, i32 1, !dbg !5606
  %19 = load %struct.device*, %struct.device** %dev31, align 8, !dbg !5606
  %20 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5606
  %div = udiv i32 %20, 1000, !dbg !5606
  %21 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5606
  %rem = urem i32 %21, 1000, !dbg !5606
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %div, i32 %rem) #5, !dbg !5606
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5607
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 9, !dbg !5608
  %23 = load i16, i16* %chip_id, align 8, !dbg !5608
  %conv32 = zext i16 %23 to i32, !dbg !5607
  switch i32 %conv32, label %sw.default [
    i32 17192, label %sw.bb
    i32 21332, label %sw.bb41
  ], !dbg !5609

sw.bb:                                            ; preds = %if.end29
  %24 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5610
  %dev33 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %24, i32 0, i32 0, !dbg !5610
  %25 = load %struct.ssb_device*, %struct.ssb_device** %dev33, align 8, !dbg !5610
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5610
  %dev34 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 0, !dbg !5610
  %27 = load %struct.ssb_device*, %struct.ssb_device** %dev34, align 8, !dbg !5610
  %call35 = call i32 @ssb_read32(%struct.ssb_device* %27, i16 zeroext 1560) #4, !dbg !5610
  %and36 = and i32 %call35, -524289, !dbg !5610
  call void @ssb_write32(%struct.ssb_device* %25, i16 zeroext 1560, i32 %and36) #4, !dbg !5610
  %28 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5612
  %dev37 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %28, i32 0, i32 0, !dbg !5612
  %29 = load %struct.ssb_device*, %struct.ssb_device** %dev37, align 8, !dbg !5612
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5612
  %dev38 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %30, i32 0, i32 0, !dbg !5612
  %31 = load %struct.ssb_device*, %struct.ssb_device** %dev38, align 8, !dbg !5612
  %call39 = call i32 @ssb_read32(%struct.ssb_device* %31, i16 zeroext 1564) #4, !dbg !5612
  %and40 = and i32 %call39, -524289, !dbg !5612
  call void @ssb_write32(%struct.ssb_device* %29, i16 zeroext 1564, i32 %and40) #4, !dbg !5612
  br label %sw.epilog, !dbg !5613

sw.bb41:                                          ; preds = %if.end29
  %32 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5614
  %dev42 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %32, i32 0, i32 0, !dbg !5614
  %33 = load %struct.ssb_device*, %struct.ssb_device** %dev42, align 8, !dbg !5614
  %34 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5614
  %dev43 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %34, i32 0, i32 0, !dbg !5614
  %35 = load %struct.ssb_device*, %struct.ssb_device** %dev43, align 8, !dbg !5614
  %call44 = call i32 @ssb_read32(%struct.ssb_device* %35, i16 zeroext 1560) #4, !dbg !5614
  %and45 = and i32 %call44, -524289, !dbg !5614
  call void @ssb_write32(%struct.ssb_device* %33, i16 zeroext 1560, i32 %and45) #4, !dbg !5614
  %36 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5615
  %dev46 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %36, i32 0, i32 0, !dbg !5615
  %37 = load %struct.ssb_device*, %struct.ssb_device** %dev46, align 8, !dbg !5615
  %38 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5615
  %dev47 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %38, i32 0, i32 0, !dbg !5615
  %39 = load %struct.ssb_device*, %struct.ssb_device** %dev47, align 8, !dbg !5615
  %call48 = call i32 @ssb_read32(%struct.ssb_device* %39, i16 zeroext 1564) #4, !dbg !5615
  %and49 = and i32 %call48, -524289, !dbg !5615
  call void @ssb_write32(%struct.ssb_device* %37, i16 zeroext 1564, i32 %and49) #4, !dbg !5615
  br label %sw.epilog, !dbg !5616

sw.default:                                       ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5617, metadata !DIExpression()), !dbg !5619
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5619
  %40 = load i32, i32* %__ret_warn_on, align 4, !dbg !5620
  %tobool50 = icmp ne i32 %40, 0, !dbg !5620
  %lnot51 = xor i1 %tobool50, true, !dbg !5620
  %lnot53 = xor i1 %lnot51, true, !dbg !5620
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5620
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5620
  %tobool56 = icmp ne i64 %conv55, 0, !dbg !5620
  br i1 %tobool56, label %if.then57, label %if.end66, !dbg !5619

if.then57:                                        ; preds = %sw.default
  br label %do.body58, !dbg !5620

do.body58:                                        ; preds = %if.then57
  br label %do.body59, !dbg !5622

do.body59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !5624

do.end60:                                         ; preds = %do.body59
  br label %do.body61, !dbg !5622

do.body61:                                        ; preds = %do.end60
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 131, i32 2305, i64 12) #6, !dbg !5626, !srcloc !5628
  br label %do.end62, !dbg !5626

do.end62:                                         ; preds = %do.body61
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #6, !dbg !5629, !srcloc !5631
  br label %do.body63, !dbg !5622

do.body63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !5632

do.end64:                                         ; preds = %do.body63
  br label %do.end65, !dbg !5622

do.end65:                                         ; preds = %do.end64
  br label %if.end66, !dbg !5622

if.end66:                                         ; preds = %do.end65, %sw.default
  %41 = load i32, i32* %__ret_warn_on, align 4, !dbg !5619
  %tobool68 = icmp ne i32 %41, 0, !dbg !5619
  %lnot69 = xor i1 %tobool68, true, !dbg !5619
  %lnot71 = xor i1 %lnot69, true, !dbg !5619
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !5619
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !5619
  store i64 %conv73, i64* %tmp67, align 8, !dbg !5620
  %42 = load i64, i64* %tmp67, align 8, !dbg !5619
  br label %sw.epilog, !dbg !5634

sw.epilog:                                        ; preds = %if.end66, %sw.bb41, %sw.bb
  store i32 1500, i32* %i, align 4, !dbg !5635
  br label %for.cond, !dbg !5637

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %43 = load i32, i32* %i, align 4, !dbg !5638
  %tobool74 = icmp ne i32 %43, 0, !dbg !5640
  br i1 %tobool74, label %for.body, label %for.end, !dbg !5640

for.body:                                         ; preds = %for.cond
  %44 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5641
  %dev75 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %44, i32 0, i32 0, !dbg !5641
  %45 = load %struct.ssb_device*, %struct.ssb_device** %dev75, align 8, !dbg !5641
  %call76 = call i32 @ssb_read32(%struct.ssb_device* %45, i16 zeroext 480) #4, !dbg !5641
  store i32 %call76, i32* %tmp, align 4, !dbg !5643
  %46 = load i32, i32* %tmp, align 4, !dbg !5644
  %and77 = and i32 %46, 131072, !dbg !5646
  %tobool78 = icmp ne i32 %and77, 0, !dbg !5646
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !5647

if.then79:                                        ; preds = %for.body
  br label %for.end, !dbg !5648

if.end80:                                         ; preds = %for.body
  call void @__const_udelay(i64 42950) #4, !dbg !5649
  br label %for.inc, !dbg !5654

for.inc:                                          ; preds = %if.end80
  %47 = load i32, i32* %i, align 4, !dbg !5655
  %dec = add i32 %47, -1, !dbg !5655
  store i32 %dec, i32* %i, align 4, !dbg !5655
  br label %for.cond, !dbg !5656, !llvm.loop !5657

for.end:                                          ; preds = %if.then79, %for.cond
  %48 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5659
  %dev81 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %48, i32 0, i32 0, !dbg !5659
  %49 = load %struct.ssb_device*, %struct.ssb_device** %dev81, align 8, !dbg !5659
  %call82 = call i32 @ssb_read32(%struct.ssb_device* %49, i16 zeroext 480) #4, !dbg !5659
  store i32 %call82, i32* %tmp, align 4, !dbg !5660
  %50 = load i32, i32* %tmp, align 4, !dbg !5661
  %and83 = and i32 %50, 131072, !dbg !5663
  %tobool84 = icmp ne i32 %and83, 0, !dbg !5663
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !5664

if.then85:                                        ; preds = %for.end
  %51 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5665
  %dev86 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %51, i32 0, i32 0, !dbg !5665
  %52 = load %struct.ssb_device*, %struct.ssb_device** %dev86, align 8, !dbg !5665
  %dev87 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %52, i32 0, i32 1, !dbg !5665
  %53 = load %struct.device*, %struct.device** %dev87, align 8, !dbg !5665
  call void (%struct.device*, i8*, ...) @_dev_emerg(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !5665
  br label %if.end88, !dbg !5665

if.end88:                                         ; preds = %if.then85, %for.end
  %54 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5666
  %call89 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %54, i32 0) #4, !dbg !5667
  store i32 %call89, i32* %pllctl, align 4, !dbg !5668
  %55 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5669
  %cmp90 = icmp uge i32 %55, 25000, !dbg !5671
  br i1 %cmp90, label %if.then92, label %if.else, !dbg !5672

if.then92:                                        ; preds = %if.end88
  %56 = load i32, i32* %pllctl, align 4, !dbg !5673
  %or = or i32 %56, 1, !dbg !5673
  store i32 %or, i32* %pllctl, align 4, !dbg !5673
  br label %if.end94, !dbg !5674

if.else:                                          ; preds = %if.end88
  %57 = load i32, i32* %pllctl, align 4, !dbg !5675
  %and93 = and i32 %57, -2, !dbg !5675
  store i32 %and93, i32* %pllctl, align 4, !dbg !5675
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then92
  %58 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5676
  %59 = load i32, i32* %pllctl, align 4, !dbg !5677
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %58, i32 0, i32 %59) #4, !dbg !5678
  %60 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5679
  %call95 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %60, i32 1) #4, !dbg !5680
  store i32 %call95, i32* %pllctl, align 4, !dbg !5681
  %61 = load i32, i32* %pllctl, align 4, !dbg !5682
  %and96 = and i32 %61, -65, !dbg !5682
  store i32 %and96, i32* %pllctl, align 4, !dbg !5682
  %62 = load i32, i32* %pllctl, align 4, !dbg !5683
  %and97 = and i32 %62, 255, !dbg !5683
  store i32 %and97, i32* %pllctl, align 4, !dbg !5683
  %63 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5684
  %wb_int = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %63, i32 0, i32 2, !dbg !5685
  %64 = load i8, i8* %wb_int, align 1, !dbg !5685
  %conv98 = zext i8 %64 to i32, !dbg !5686
  %shl = shl i32 %conv98, 28, !dbg !5687
  %and99 = and i32 %shl, -268435456, !dbg !5688
  %65 = load i32, i32* %pllctl, align 4, !dbg !5689
  %or100 = or i32 %65, %and99, !dbg !5689
  store i32 %or100, i32* %pllctl, align 4, !dbg !5689
  %66 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5690
  %wb_frac = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %66, i32 0, i32 3, !dbg !5691
  %67 = load i32, i32* %wb_frac, align 4, !dbg !5691
  %shl101 = shl i32 %67, 8, !dbg !5692
  %and102 = and i32 %shl101, 268435200, !dbg !5693
  %68 = load i32, i32* %pllctl, align 4, !dbg !5694
  %or103 = or i32 %68, %and102, !dbg !5694
  store i32 %or103, i32* %pllctl, align 4, !dbg !5694
  %69 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5695
  %wb_frac104 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %69, i32 0, i32 3, !dbg !5697
  %70 = load i32, i32* %wb_frac104, align 4, !dbg !5697
  %cmp105 = icmp eq i32 %70, 0, !dbg !5698
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !5699

if.then107:                                       ; preds = %if.end94
  %71 = load i32, i32* %pllctl, align 4, !dbg !5700
  %or108 = or i32 %71, 64, !dbg !5700
  store i32 %or108, i32* %pllctl, align 4, !dbg !5700
  br label %if.end109, !dbg !5701

if.end109:                                        ; preds = %if.then107, %if.end94
  %72 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5702
  %73 = load i32, i32* %pllctl, align 4, !dbg !5703
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %72, i32 1, i32 %73) #4, !dbg !5704
  %74 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5705
  %call110 = call i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %74, i32 2) #4, !dbg !5706
  store i32 %call110, i32* %pllctl, align 4, !dbg !5707
  %75 = load i32, i32* %pllctl, align 4, !dbg !5708
  %and111 = and i32 %75, -16, !dbg !5708
  store i32 %and111, i32* %pllctl, align 4, !dbg !5708
  %76 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5709
  %wb_int112 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %76, i32 0, i32 2, !dbg !5710
  %77 = load i8, i8* %wb_int112, align 1, !dbg !5710
  %conv113 = zext i8 %77 to i32, !dbg !5711
  %shr114 = lshr i32 %conv113, 4, !dbg !5712
  %shl115 = shl i32 %shr114, 0, !dbg !5713
  %and116 = and i32 %shl115, 15, !dbg !5714
  %78 = load i32, i32* %pllctl, align 4, !dbg !5715
  %or117 = or i32 %78, %and116, !dbg !5715
  store i32 %or117, i32* %pllctl, align 4, !dbg !5715
  %79 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5716
  %80 = load i32, i32* %pllctl, align 4, !dbg !5717
  call void @ssb_chipco_pll_write(%struct.ssb_chipcommon* %79, i32 2, i32 %80) #4, !dbg !5718
  %81 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5719
  %dev118 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %81, i32 0, i32 0, !dbg !5719
  %82 = load %struct.ssb_device*, %struct.ssb_device** %dev118, align 8, !dbg !5719
  %call119 = call i32 @ssb_read32(%struct.ssb_device* %82, i16 zeroext 1536) #4, !dbg !5719
  store i32 %call119, i32* %pmuctl, align 4, !dbg !5720
  %83 = load i32, i32* %pmuctl, align 4, !dbg !5721
  %and120 = and i32 %83, 65535, !dbg !5721
  store i32 %and120, i32* %pmuctl, align 4, !dbg !5721
  %84 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5722
  %add = add i32 %84, 127, !dbg !5723
  %div121 = udiv i32 %add, 128, !dbg !5724
  %sub = sub i32 %div121, 1, !dbg !5725
  %shl122 = shl i32 %sub, 16, !dbg !5726
  %and123 = and i32 %shl122, -65536, !dbg !5727
  %85 = load i32, i32* %pmuctl, align 4, !dbg !5728
  %or124 = or i32 %85, %and123, !dbg !5728
  store i32 %or124, i32* %pmuctl, align 4, !dbg !5728
  %86 = load i32, i32* %pmuctl, align 4, !dbg !5729
  %and125 = and i32 %86, -125, !dbg !5729
  store i32 %and125, i32* %pmuctl, align 4, !dbg !5729
  %87 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5730
  %xf126 = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %87, i32 0, i32 1, !dbg !5731
  %88 = load i8, i8* %xf126, align 2, !dbg !5731
  %conv127 = zext i8 %88 to i32, !dbg !5732
  %shl128 = shl i32 %conv127, 2, !dbg !5733
  %and129 = and i32 %shl128, 124, !dbg !5734
  %89 = load i32, i32* %pmuctl, align 4, !dbg !5735
  %or130 = or i32 %89, %and129, !dbg !5735
  store i32 %or130, i32* %pmuctl, align 4, !dbg !5735
  %90 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5736
  %dev131 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %90, i32 0, i32 0, !dbg !5736
  %91 = load %struct.ssb_device*, %struct.ssb_device** %dev131, align 8, !dbg !5736
  %92 = load i32, i32* %pmuctl, align 4, !dbg !5736
  call void @ssb_write32(%struct.ssb_device* %91, i16 zeroext 1536, i32 %92) #4, !dbg !5736
  br label %return, !dbg !5737

return:                                           ; preds = %if.end109, %if.then28
  ret void, !dbg !5737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pmu1_plltab_entry* @pmu1_plltab_find_entry(i32 %crystalfreq) #0 !dbg !5738 {
entry:
  %retval = alloca %struct.pmu1_plltab_entry*, align 8
  %crystalfreq.addr = alloca i32, align 4
  %e = alloca %struct.pmu1_plltab_entry*, align 8
  %i = alloca i32, align 4
  store i32 %crystalfreq, i32* %crystalfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %crystalfreq.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  call void @llvm.dbg.declare(metadata %struct.pmu1_plltab_entry** %e, metadata !5743, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5745, metadata !DIExpression()), !dbg !5746
  store i32 0, i32* %i, align 4, !dbg !5747
  br label %for.cond, !dbg !5749

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5750
  %conv = zext i32 %0 to i64, !dbg !5750
  %cmp = icmp ult i64 %conv, 15, !dbg !5752
  br i1 %cmp, label %for.body, label %for.end, !dbg !5753

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5754
  %idxprom = zext i32 %1 to i64, !dbg !5756
  %arrayidx = getelementptr [15 x %struct.pmu1_plltab_entry], [15 x %struct.pmu1_plltab_entry]* @pmu1_plltab, i64 0, i64 %idxprom, !dbg !5756
  store %struct.pmu1_plltab_entry* %arrayidx, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5757
  %2 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5758
  %freq = getelementptr inbounds %struct.pmu1_plltab_entry, %struct.pmu1_plltab_entry* %2, i32 0, i32 0, !dbg !5760
  %3 = load i16, i16* %freq, align 4, !dbg !5760
  %conv2 = zext i16 %3 to i32, !dbg !5758
  %4 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5761
  %cmp3 = icmp eq i32 %conv2, %4, !dbg !5762
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5763

if.then:                                          ; preds = %for.body
  %5 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %e, align 8, !dbg !5764
  store %struct.pmu1_plltab_entry* %5, %struct.pmu1_plltab_entry** %retval, align 8, !dbg !5765
  br label %return, !dbg !5765

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5766

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5767
  %inc = add i32 %6, 1, !dbg !5767
  store i32 %inc, i32* %i, align 4, !dbg !5767
  br label %for.cond, !dbg !5768, !llvm.loop !5769

for.end:                                          ; preds = %for.cond
  store %struct.pmu1_plltab_entry* null, %struct.pmu1_plltab_entry** %retval, align 8, !dbg !5771
  br label %return, !dbg !5771

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.pmu1_plltab_entry*, %struct.pmu1_plltab_entry** %retval, align 8, !dbg !5772
  ret %struct.pmu1_plltab_entry* %7, !dbg !5772
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_emerg(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_chipco_pll_read(%struct.ssb_chipcommon* %cc, i32 %offset) #0 !dbg !5773 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5780
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5780
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5780
  %2 = load i32, i32* %offset.addr, align 4, !dbg !5780
  call void @ssb_write32(%struct.ssb_device* %1, i16 zeroext 1632, i32 %2) #4, !dbg !5780
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5781
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 0, !dbg !5781
  %4 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5781
  %call = call i32 @ssb_read32(%struct.ssb_device* %4, i16 zeroext 1636) #4, !dbg !5781
  ret i32 %call, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pmu0_plltab_entry* @pmu0_plltab_find_entry(i32 %crystalfreq) #0 !dbg !5783 {
entry:
  %retval = alloca %struct.pmu0_plltab_entry*, align 8
  %crystalfreq.addr = alloca i32, align 4
  %e = alloca %struct.pmu0_plltab_entry*, align 8
  %i = alloca i32, align 4
  store i32 %crystalfreq, i32* %crystalfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %crystalfreq.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  call void @llvm.dbg.declare(metadata %struct.pmu0_plltab_entry** %e, metadata !5788, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5790, metadata !DIExpression()), !dbg !5791
  store i32 0, i32* %i, align 4, !dbg !5792
  br label %for.cond, !dbg !5794

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5795
  %conv = zext i32 %0 to i64, !dbg !5795
  %cmp = icmp ult i64 %conv, 14, !dbg !5797
  br i1 %cmp, label %for.body, label %for.end, !dbg !5798

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5799
  %idxprom = zext i32 %1 to i64, !dbg !5801
  %arrayidx = getelementptr [14 x %struct.pmu0_plltab_entry], [14 x %struct.pmu0_plltab_entry]* @pmu0_plltab, i64 0, i64 %idxprom, !dbg !5801
  store %struct.pmu0_plltab_entry* %arrayidx, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5802
  %2 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5803
  %freq = getelementptr inbounds %struct.pmu0_plltab_entry, %struct.pmu0_plltab_entry* %2, i32 0, i32 0, !dbg !5805
  %3 = load i16, i16* %freq, align 4, !dbg !5805
  %conv2 = zext i16 %3 to i32, !dbg !5803
  %4 = load i32, i32* %crystalfreq.addr, align 4, !dbg !5806
  %cmp3 = icmp eq i32 %conv2, %4, !dbg !5807
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %for.body
  %5 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %e, align 8, !dbg !5809
  store %struct.pmu0_plltab_entry* %5, %struct.pmu0_plltab_entry** %retval, align 8, !dbg !5810
  br label %return, !dbg !5810

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5811

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5812
  %inc = add i32 %6, 1, !dbg !5812
  store i32 %inc, i32* %i, align 4, !dbg !5812
  br label %for.cond, !dbg !5813, !llvm.loop !5814

for.end:                                          ; preds = %for.cond
  store %struct.pmu0_plltab_entry* null, %struct.pmu0_plltab_entry** %retval, align 8, !dbg !5816
  br label %return, !dbg !5816

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.pmu0_plltab_entry*, %struct.pmu0_plltab_entry** %retval, align 8, !dbg !5817
  ret %struct.pmu0_plltab_entry* %7, !dbg !5817
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pmu1_plltab", scope: !2, file: !3, line: 186, type: !193, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !148, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ssb/driver_chipcommon_pmu.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !135}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !108, line: 478, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !115, line: 1084, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !123, line: 11, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssb_bustype", file: !129, line: 339, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/ssb/ssb.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "SSB_BUSTYPE_SSB", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "SSB_BUSTYPE_PCI", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "SSB_BUSTYPE_PCMCIA", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "SSB_BUSTYPE_SDIO", value: 3, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssb_pmu_ldo_volt_id", file: !136, line: 660, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/ssb/ssb_driver_chipcommon.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "LDO_PAREF", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "LDO_VOLT1", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "LDO_VOLT2", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "LDO_VOLT3", value: 3, isUnsigned: true)
!142 = !{!143, !147}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !144, line: 21, baseType: !145)
!144 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !146, line: 27, baseType: !7)
!146 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !{!0, !149, !167, !177, !186, !191}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "pmu0_plltab", scope: !2, file: !3, line: 57, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 896, elements: !165)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu0_plltab_entry", file: !3, line: 50, size: 64, elements: !154)
!154 = !{!155, !159, !163, !164}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !153, file: !3, line: 51, baseType: !156, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !144, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !146, line: 24, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "xf", scope: !153, file: !3, line: 52, baseType: !160, size: 8, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !144, line: 17, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !146, line: 21, baseType: !162)
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "wb_int", scope: !153, file: !3, line: 53, baseType: !160, size: 8, offset: 24)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "wb_frac", scope: !153, file: !3, line: 54, baseType: !143, size: 32, offset: 32)
!165 = !{!166}
!166 = !DISubrange(count: 14)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "pmu_res_updown_tab_4325a0", scope: !2, file: !3, line: 407, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 32, elements: !175)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu_res_updown_tab_entry", file: !3, line: 357, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !171, file: !3, line: 358, baseType: !160, size: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "updown", scope: !171, file: !3, line: 359, baseType: !156, size: 16, offset: 16)
!175 = !{!176}
!176 = !DISubrange(count: 1)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "pmu_res_depend_tab_4325a0", scope: !2, file: !3, line: 411, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !175)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu_res_depend_tab_entry", file: !3, line: 368, size: 64, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !181, file: !3, line: 369, baseType: !160, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !181, file: !3, line: 370, baseType: !160, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "depend", scope: !181, file: !3, line: 371, baseType: !143, size: 32, offset: 32)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "pmu_res_updown_tab_4328a0", scope: !2, file: !3, line: 374, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 640, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 20)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "pmu_res_depend_tab_4328a0", scope: !2, file: !3, line: 397, type: !179, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1440, elements: !203)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu1_plltab_entry", file: !3, line: 177, size: 96, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !195, file: !3, line: 178, baseType: !156, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xf", scope: !195, file: !3, line: 179, baseType: !160, size: 8, offset: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ndiv_int", scope: !195, file: !3, line: 180, baseType: !160, size: 8, offset: 24)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ndiv_frac", scope: !195, file: !3, line: 181, baseType: !143, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "p1div", scope: !195, file: !3, line: 182, baseType: !160, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "p2div", scope: !195, file: !3, line: 183, baseType: !160, size: 8, offset: 72)
!203 = !{!204}
!204 = !DISubrange(count: 15)
!205 = !{i32 7, !"Dwarf Version", i32 4}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"Code Model", i32 2}
!209 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!210 = distinct !DISubprogram(name: "ssb_pmu_init", scope: !3, file: !3, line: 517, type: !211, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_chipcommon", file: !136, line: 587, size: 320, elements: !215)
!215 = !{!216, !4727, !4728, !4729, !4730, !4731, !4736, !4737}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !214, file: !136, line: 588, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_device", file: !129, line: 268, size: 512, elements: !219)
!219 = !{!220, !249, !4190, !4191, !4716, !4723, !4724, !4725, !4726}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !218, file: !129, line: 271, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_bus_ops", file: !129, line: 207, size: 384, elements: !224)
!224 = !{!225, !229, !233, !237, !241, !245}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "read8", scope: !223, file: !129, line: 208, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!160, !217, !156}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "read16", scope: !223, file: !129, line: 209, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!156, !217, !156}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "read32", scope: !223, file: !129, line: 210, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!143, !217, !156}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "write8", scope: !223, file: !129, line: 211, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !217, !156, !160}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "write16", scope: !223, file: !129, line: 212, baseType: !242, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !217, !156, !156}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write32", scope: !223, file: !129, line: 213, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !217, !156, !143}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !218, file: !129, line: 273, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !252)
!252 = !{!253, !3423, !3424, !3427, !3428, !3479, !3570, !3571, !3572, !3573, !3574, !3583, !3688, !3701, !4117, !4118, !4122, !4124, !4125, !4126, !4130, !4136, !4137, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4178, !4179, !4180, !4183, !4186, !4187, !4188, !4189}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !251, file: !73, line: 462, baseType: !254, size: 512)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !255, line: 64, size: 512, elements: !256)
!255 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !261, !268, !270, !330, !3286, !3413, !3418, !3419, !3420, !3421, !3422}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !255, line: 65, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !254, file: !255, line: 66, baseType: !262, size: 128, offset: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !263, line: 178, size: 128, elements: !264)
!263 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !263, line: 179, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !262, file: !263, line: 179, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !254, file: !255, line: 67, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !254, file: !255, line: 68, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !255, line: 192, size: 704, elements: !273)
!273 = !{!274, !275, !291, !292}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !272, file: !255, line: 193, baseType: !262, size: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !272, file: !255, line: 194, baseType: !276, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !277, line: 83, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !277, line: 71, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 72, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 72, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !281, file: !277, line: 73, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 20, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !277, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 25, baseType: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 25, elements: !290)
!290 = !{}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !255, line: 195, baseType: !254, size: 512, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !272, file: !255, line: 196, baseType: !293, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !255, line: 156, size: 192, elements: !296)
!296 = !{!297, !302, !307}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !295, file: !255, line: 157, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!147, !271, !269}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !255, line: 158, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!258, !271, !269}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !295, file: !255, line: 159, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!147, !271, !269, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !255, line: 148, size: 20736, elements: !314)
!314 = !{!315, !320, !324, !325, !329}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !313, file: !255, line: 149, baseType: !316, size: 192)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 192, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!318 = !{!319}
!319 = !DISubrange(count: 3)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !313, file: !255, line: 150, baseType: !321, size: 4096, offset: 192)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 4096, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !313, file: !255, line: 151, baseType: !147, size: 32, offset: 4288)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !313, file: !255, line: 152, baseType: !326, size: 16384, offset: 4320)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 16384, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !313, file: !255, line: 153, baseType: !147, size: 32, offset: 20704)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !254, file: !255, line: 69, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !255, line: 138, size: 448, elements: !333)
!333 = !{!334, !338, !367, !369, !3248, !3276, !3280}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !332, file: !255, line: 139, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !269}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !332, file: !255, line: 140, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !342, line: 230, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !359}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !341, file: !342, line: 231, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !269, !353, !317}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !263, line: 60, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !350, line: 15, baseType: !352)
!352 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !342, line: 30, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !342, line: 31, baseType: !258, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !354, file: !342, line: 32, baseType: !358, size: 16, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !263, line: 19, baseType: !158)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !341, file: !342, line: 232, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!348, !269, !353, !258, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 55, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !366)
!366 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !332, file: !255, line: 141, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !332, file: !255, line: 142, baseType: !370, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !342, line: 84, size: 320, elements: !374)
!374 = !{!375, !376, !380, !3245, !3246}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !342, line: 85, baseType: !258, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !373, file: !342, line: 86, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!358, !269, !353, !147}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !373, file: !342, line: 88, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!358, !269, !384, !147}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !342, line: 168, size: 448, elements: !386)
!386 = !{!387, !388, !389, !391, !3240, !3241}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !385, file: !342, line: 169, baseType: !354, size: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !385, file: !342, line: 170, baseType: !363, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !385, file: !342, line: 171, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !385, file: !342, line: 172, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!348, !395, !269, !384, !317, !569, !363}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !397)
!397 = !{!398, !416, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3223, !3224, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !396, file: !44, line: 920, baseType: !399, size: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 917, size: 128, elements: !400)
!400 = !{!401, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !399, file: !44, line: 918, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !403, line: 58, size: 64, elements: !404)
!403 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !403, line: 59, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !399, file: !44, line: 919, baseType: !408, size: 128, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !263, line: 216, size: 128, align: 64, elements: !409)
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !263, line: 217, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !408, file: !263, line: 218, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !411}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !396, file: !44, line: 921, baseType: !417, size: 128, offset: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !418, line: 8, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !417, file: !418, line: 9, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !423, line: 18, flags: DIFlagFwdDecl)
!423 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !417, file: !418, line: 10, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !423, line: 89, size: 1536, elements: !427)
!427 = !{!428, !429, !439, !447, !448, !466, !3173, !3175, !3187, !3188, !3189, !3190, !3191, !3197, !3198, !3199}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !426, file: !423, line: 91, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !426, file: !423, line: 92, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !431, line: 277, baseType: !432)
!431 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !431, line: 277, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !432, file: !431, line: 277, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !431, line: 70, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !431, line: 65, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !436, file: !431, line: 66, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !423, line: 93, baseType: !440, size: 128, offset: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !441, line: 38, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !441, line: 39, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !440, file: !441, line: 39, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !426, file: !423, line: 94, baseType: !425, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !426, file: !423, line: 95, baseType: !449, size: 128, offset: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !423, line: 47, size: 128, elements: !450)
!450 = !{!451, !463}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !423, line: 48, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !423, line: 48, size: 64, elements: !453)
!453 = !{!454, !459}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !423, line: 49, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !423, line: 49, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !455, file: !423, line: 50, baseType: !143, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !423, line: 50, baseType: !143, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !452, file: !423, line: 52, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !144, line: 23, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !146, line: 31, baseType: !462)
!462 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !423, line: 54, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !426, file: !423, line: 96, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !469)
!469 = !{!470, !471, !472, !480, !487, !488, !636, !2877, !2878, !2879, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !3141, !3149, !3150, !3151, !3169, !3170, !3171, !3172}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !468, file: !44, line: 611, baseType: !358, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !468, file: !44, line: 612, baseType: !158, size: 16, offset: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !468, file: !44, line: 613, baseType: !473, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !474, line: 23, baseType: !475)
!474 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 21, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !474, line: 22, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !263, line: 32, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !350, line: 49, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !468, file: !44, line: 614, baseType: !481, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !474, line: 28, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 26, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !474, line: 27, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !263, line: 33, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !350, line: 50, baseType: !7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !468, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !468, file: !44, line: 622, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !492)
!492 = !{!493, !497, !510, !514, !520, !524, !530, !534, !538, !542, !546, !547, !553, !557, !583, !612, !616, !622, !627, !631, !632}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !491, file: !44, line: 1865, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!425, !467, !425, !7}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !491, file: !44, line: 1866, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!258, !425, !467, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !503, line: 10, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !509}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !502, file: !503, line: 11, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !390}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !502, file: !503, line: 12, baseType: !390, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !491, file: !44, line: 1867, baseType: !511, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!147, !467, !147}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !491, file: !44, line: 1868, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !467, !147}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !491, file: !44, line: 1870, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!147, !425, !317, !147}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !491, file: !44, line: 1872, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!147, !467, !425, !358, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !263, line: 30, baseType: !529)
!529 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !491, file: !44, line: 1873, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!147, !425, !467, !425}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !491, file: !44, line: 1874, baseType: !535, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!147, !467, !425}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !491, file: !44, line: 1875, baseType: !539, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!147, !467, !425, !258}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !491, file: !44, line: 1876, baseType: !543, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!147, !467, !425, !358}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !491, file: !44, line: 1877, baseType: !535, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !491, file: !44, line: 1878, baseType: !548, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!147, !467, !425, !358, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !263, line: 16, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !263, line: 13, baseType: !143)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !491, file: !44, line: 1879, baseType: !554, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!147, !467, !425, !467, !425, !7}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !491, file: !44, line: 1881, baseType: !558, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!147, !425, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !572, !580, !581, !582}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !562, file: !44, line: 220, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !562, file: !44, line: 221, baseType: !358, size: 16, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !562, file: !44, line: 222, baseType: !473, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !562, file: !44, line: 223, baseType: !481, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !562, file: !44, line: 224, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !263, line: 46, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !350, line: 88, baseType: !571)
!571 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !562, file: !44, line: 225, baseType: !573, size: 128, offset: 192)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !574, line: 13, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !573, file: !574, line: 14, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !574, line: 8, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !146, line: 30, baseType: !571)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !573, file: !574, line: 15, baseType: !352, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !562, file: !44, line: 226, baseType: !573, size: 128, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !562, file: !44, line: 227, baseType: !573, size: 128, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !562, file: !44, line: 234, baseType: !395, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !491, file: !44, line: 1882, baseType: !584, size: 64, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!147, !587, !589, !143, !7}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !591, line: 22, size: 1152, elements: !592)
!591 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !594, !595, !596, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !590, file: !591, line: 23, baseType: !143, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !590, file: !591, line: 24, baseType: !358, size: 16, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !590, file: !591, line: 25, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !590, file: !591, line: 26, baseType: !597, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !263, line: 104, baseType: !143)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !590, file: !591, line: 27, baseType: !460, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !590, file: !591, line: 28, baseType: !460, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !590, file: !591, line: 37, baseType: !460, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !590, file: !591, line: 38, baseType: !551, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !590, file: !591, line: 39, baseType: !551, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !590, file: !591, line: 40, baseType: !473, size: 32, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !590, file: !591, line: 41, baseType: !481, size: 32, offset: 416)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !591, line: 42, baseType: !569, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !590, file: !591, line: 43, baseType: !573, size: 128, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !590, file: !591, line: 44, baseType: !573, size: 128, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !590, file: !591, line: 45, baseType: !573, size: 128, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !590, file: !591, line: 46, baseType: !573, size: 128, offset: 896)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !590, file: !591, line: 47, baseType: !460, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !590, file: !591, line: 48, baseType: !460, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !491, file: !44, line: 1883, baseType: !613, size: 64, offset: 960)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!348, !425, !317, !363}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !491, file: !44, line: 1884, baseType: !617, size: 64, offset: 1024)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!147, !467, !620, !460, !460}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !491, file: !44, line: 1886, baseType: !623, size: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!147, !467, !626, !147}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !491, file: !44, line: 1887, baseType: !628, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!147, !467, !425, !395, !7, !358}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !491, file: !44, line: 1890, baseType: !543, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !491, file: !44, line: 1891, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!147, !467, !518, !147}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !468, file: !44, line: 623, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !695, !2484, !2566, !2649, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2665, !2669, !2670, !2673, !2674, !2677, !2678, !2679, !2720, !2747, !2748, !2749, !2750, !2751, !2752, !2755, !2757, !2764, !2765, !2767, !2768, !2769, !2828, !2829, !2844, !2845, !2846, !2847, !2848, !2851, !2852, !2853, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !638, file: !44, line: 1417, baseType: !262, size: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !638, file: !44, line: 1418, baseType: !551, size: 32, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !638, file: !44, line: 1419, baseType: !162, size: 8, offset: 160)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !638, file: !44, line: 1420, baseType: !366, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !638, file: !44, line: 1421, baseType: !569, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !638, file: !44, line: 1422, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !648)
!648 = !{!649, !650, !651, !658, !662, !666, !670, !674, !675, !685, !688, !689, !690, !692, !693, !694}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !44, line: 2229, baseType: !258, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !647, file: !44, line: 2230, baseType: !147, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !647, file: !44, line: 2238, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!147, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !657, line: 28, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !647, file: !44, line: 2239, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !647, file: !44, line: 2240, baseType: !663, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!425, !646, !147, !258, !390}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !647, file: !44, line: 2242, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !637}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !44, line: 2243, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !673, line: 76, flags: DIFlagFwdDecl)
!673 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !647, file: !44, line: 2244, baseType: !646, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !647, file: !44, line: 2245, baseType: !676, size: 64, offset: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !263, line: 182, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !676, file: !263, line: 183, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !263, line: 186, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !263, line: 187, baseType: !679, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !680, file: !263, line: 187, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !647, file: !44, line: 2247, baseType: !686, offset: 576)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !687, line: 187, elements: !290)
!687 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !647, file: !44, line: 2248, baseType: !686, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !647, file: !44, line: 2249, baseType: !686, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !647, file: !44, line: 2250, baseType: !691, offset: 576)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, elements: !318)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !647, file: !44, line: 2252, baseType: !686, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !647, file: !44, line: 2253, baseType: !686, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !647, file: !44, line: 2254, baseType: !686, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !638, file: !44, line: 1423, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !699)
!699 = !{!700, !704, !708, !709, !713, !719, !723, !724, !725, !729, !733, !734, !735, !736, !742, !747, !748, !804, !805, !806, !807, !2468, !2483}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !698, file: !44, line: 1936, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!467, !637}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !698, file: !44, line: 1937, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !467}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !698, file: !44, line: 1938, baseType: !705, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !698, file: !44, line: 1940, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !467, !147}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !698, file: !44, line: 1941, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!147, !467, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !698, file: !44, line: 1942, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!147, !467}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !698, file: !44, line: 1943, baseType: !705, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !698, file: !44, line: 1944, baseType: !667, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !698, file: !44, line: 1945, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!147, !637, !147}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !698, file: !44, line: 1946, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!147, !637}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !698, file: !44, line: 1947, baseType: !730, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !698, file: !44, line: 1948, baseType: !730, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !698, file: !44, line: 1949, baseType: !730, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !698, file: !44, line: 1950, baseType: !737, size: 64, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!147, !425, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !698, file: !44, line: 1951, baseType: !743, size: 64, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!147, !637, !746, !317}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !698, file: !44, line: 1952, baseType: !667, size: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !698, file: !44, line: 1954, baseType: !749, size: 64, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!147, !752, !425}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !754, line: 16, size: 896, elements: !755)
!754 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !777, !799, !800, !803}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !753, file: !754, line: 17, baseType: !317, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !753, file: !754, line: 18, baseType: !363, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !753, file: !754, line: 19, baseType: !363, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !753, file: !754, line: 20, baseType: !363, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !753, file: !754, line: 21, baseType: !363, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !753, file: !754, line: 22, baseType: !569, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !753, file: !754, line: 23, baseType: !569, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !754, line: 24, baseType: !764, size: 192, offset: 448)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !765, line: 53, size: 192, elements: !766)
!765 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 54, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !263, line: 175, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 173, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !263, line: 174, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !144, line: 22, baseType: !578)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 55, baseType: !276, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 59, baseType: !262, size: 128, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !753, file: !754, line: 25, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !754, line: 31, size: 256, elements: !781)
!781 = !{!782, !787, !791, !795}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !780, file: !754, line: 32, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!390, !752, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !780, file: !754, line: 33, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !752, !390}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !754, line: 34, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!390, !752, !390, !786}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !780, file: !754, line: 35, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!147, !752, !390}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !753, file: !754, line: 26, baseType: !147, size: 32, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !753, file: !754, line: 27, baseType: !801, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !753, file: !754, line: 28, baseType: !390, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !698, file: !44, line: 1955, baseType: !749, size: 64, offset: 1088)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !698, file: !44, line: 1956, baseType: !749, size: 64, offset: 1152)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !698, file: !44, line: 1957, baseType: !749, size: 64, offset: 1216)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !698, file: !44, line: 1963, baseType: !808, size: 64, offset: 1280)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!147, !637, !811, !834}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !813, line: 68, size: 512, align: 128, elements: !814)
!813 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816, !2460, !2467}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !813, line: 69, baseType: !366, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !813, line: 77, baseType: !817, size: 320, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !812, file: !813, line: 77, size: 320, elements: !818)
!818 = !{!819, !998, !1003, !1031, !1039, !1045, !2391, !2459}
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 78, baseType: !820, size: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 78, size: 320, elements: !821)
!821 = !{!822, !823, !996, !997}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !820, file: !813, line: 84, baseType: !262, size: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !820, file: !813, line: 86, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !826)
!826 = !{!827, !828, !836, !837, !842, !857, !866, !867, !868, !869, !989, !990, !993, !994, !995}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !825, file: !44, line: 452, baseType: !467, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !825, file: !44, line: 453, baseType: !829, size: 128, offset: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !830, line: 292, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !829, file: !830, line: 293, baseType: !276)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !829, file: !830, line: 295, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !263, line: 148, baseType: !7)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !829, file: !830, line: 296, baseType: !390, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !825, file: !44, line: 454, baseType: !834, size: 32, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !825, file: !44, line: 455, baseType: !838, size: 32, offset: 224)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !263, line: 168, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 166, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !839, file: !263, line: 167, baseType: !147, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !825, file: !44, line: 460, baseType: !843, size: 128, offset: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !844, line: 125, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !856}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !843, file: !844, line: 126, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !844, line: 31, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !847, file: !844, line: 32, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !844, line: 24, size: 192, align: 64, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !851, file: !844, line: 25, baseType: !366, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !851, file: !844, line: 26, baseType: !850, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !851, file: !844, line: 27, baseType: !850, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !843, file: !844, line: 127, baseType: !850, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !825, file: !44, line: 461, baseType: !858, size: 256, offset: 384)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !859, line: 35, size: 256, elements: !860)
!859 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !858, file: !859, line: 36, baseType: !768, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !858, file: !859, line: 42, baseType: !768, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !858, file: !859, line: 46, baseType: !864, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 29, baseType: !284)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !858, file: !859, line: 47, baseType: !262, size: 128, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !825, file: !44, line: 462, baseType: !366, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !825, file: !44, line: 463, baseType: !366, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !825, file: !44, line: 464, baseType: !366, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !825, file: !44, line: 465, baseType: !870, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !873)
!873 = !{!874, !878, !882, !886, !890, !894, !900, !906, !910, !915, !919, !923, !927, !953, !957, !963, !964, !965, !969, !974, !978, !985}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !872, file: !44, line: 368, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!147, !811, !717}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !872, file: !44, line: 369, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!147, !395, !811}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !872, file: !44, line: 372, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!147, !824, !717}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !872, file: !44, line: 375, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!147, !811}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !872, file: !44, line: 381, baseType: !891, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!147, !395, !824, !266, !7}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !872, file: !44, line: 383, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !872, file: !44, line: 385, baseType: !901, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!147, !395, !824, !569, !7, !7, !904, !905}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !872, file: !44, line: 388, baseType: !907, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!147, !395, !824, !569, !7, !7, !811, !390}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !872, file: !44, line: 393, baseType: !911, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !824, !914}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !263, line: 125, baseType: !460)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !872, file: !44, line: 394, baseType: !916, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !811, !7, !7}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !872, file: !44, line: 395, baseType: !920, size: 64, offset: 640)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!147, !811, !834}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !872, file: !44, line: 396, baseType: !924, size: 64, offset: 704)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !811}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !872, file: !44, line: 397, baseType: !928, size: 64, offset: 768)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!348, !931, !951}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !933)
!933 = !{!934, !935, !936, !940, !941, !942, !943, !944}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !932, file: !44, line: 321, baseType: !395, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !932, file: !44, line: 326, baseType: !569, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !932, file: !44, line: 327, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !931, !352, !352}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !932, file: !44, line: 328, baseType: !390, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !932, file: !44, line: 329, baseType: !147, size: 32, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !932, file: !44, line: 330, baseType: !156, size: 16, offset: 288)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !932, file: !44, line: 331, baseType: !156, size: 16, offset: 304)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !44, line: 332, baseType: !945, size: 64, offset: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !44, line: 332, size: 64, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !945, file: !44, line: 333, baseType: !7, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !945, file: !44, line: 334, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !872, file: !44, line: 402, baseType: !954, size: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!147, !824, !811, !811, !5}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !872, file: !44, line: 404, baseType: !958, size: 64, offset: 896)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!528, !811, !961}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !962, line: 305, baseType: !7)
!962 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!963 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !872, file: !44, line: 405, baseType: !924, size: 64, offset: 960)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !872, file: !44, line: 406, baseType: !887, size: 64, offset: 1024)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !872, file: !44, line: 407, baseType: !966, size: 64, offset: 1088)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!147, !811, !366, !366}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !872, file: !44, line: 409, baseType: !970, size: 64, offset: 1152)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !811, !973, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !872, file: !44, line: 410, baseType: !975, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!147, !824, !811}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !872, file: !44, line: 413, baseType: !979, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!147, !982, !395, !984}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !872, file: !44, line: 415, baseType: !986, size: 64, offset: 1344)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !395}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !44, line: 466, baseType: !366, size: 64, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !825, file: !44, line: 467, baseType: !991, size: 32, offset: 960)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !992, line: 8, baseType: !143)
!992 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !825, file: !44, line: 468, baseType: !276, offset: 992)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !825, file: !44, line: 469, baseType: !262, size: 128, offset: 1024)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !825, file: !44, line: 470, baseType: !390, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !820, file: !813, line: 87, baseType: !366, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !820, file: !813, line: 94, baseType: !366, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 96, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 96, size: 64, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !999, file: !813, line: 101, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !263, line: 143, baseType: !460)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 103, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 103, size: 320, elements: !1005)
!1005 = !{!1006, !1016, !1019, !1020}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !813, line: 104, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !813, line: 104, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1007, file: !813, line: 105, baseType: !262, size: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !813, line: 106, baseType: !1011, size: 128)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !813, line: 106, size: 128, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1011, file: !813, line: 107, baseType: !811, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1011, file: !813, line: 109, baseType: !147, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1011, file: !813, line: 110, baseType: !147, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1004, file: !813, line: 117, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !813, line: 117, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1004, file: !813, line: 119, baseType: !390, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !813, line: 120, baseType: !1021, size: 64, offset: 256)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !813, line: 120, size: 64, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1021, file: !813, line: 121, baseType: !390, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1021, file: !813, line: 122, baseType: !366, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !813, line: 123, baseType: !1026, size: 32)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !813, line: 123, size: 32, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1026, file: !813, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1026, file: !813, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1026, file: !813, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 130, baseType: !1032, size: 192)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 130, size: 192, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1032, file: !813, line: 131, baseType: !366, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1032, file: !813, line: 134, baseType: !162, size: 8, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1032, file: !813, line: 135, baseType: !162, size: 8, offset: 72)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1032, file: !813, line: 136, baseType: !838, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1032, file: !813, line: 137, baseType: !7, size: 32, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 139, baseType: !1040, size: 256)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 139, size: 256, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1040, file: !813, line: 140, baseType: !366, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1040, file: !813, line: 141, baseType: !838, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1040, file: !813, line: 143, baseType: !262, size: 128, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 145, baseType: !1046, size: 256)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 145, size: 256, elements: !1047)
!1047 = !{!1048, !1049, !1052, !1053, !2390}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1046, file: !813, line: 146, baseType: !366, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1046, file: !813, line: 147, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1051, line: 509, baseType: !811)
!1051 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1046, file: !813, line: 148, baseType: !366, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !813, line: 149, baseType: !1054, size: 64, offset: 192)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !813, line: 149, size: 64, elements: !1055)
!1055 = !{!1056, !2389}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1054, file: !813, line: 150, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !813, line: 388, size: 7296, elements: !1059)
!1059 = !{!1060, !2385}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !813, line: 389, baseType: !1061, size: 7296)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !813, line: 389, size: 7296, elements: !1062)
!1062 = !{!1063, !1181, !1182, !1183, !1187, !1188, !1189, !1190, !1191, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1232, !1240, !1243, !1267, !1268, !2369, !2370, !2373, !2374, !2375, !2378, !2379, !2380, !2383, !2384}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1061, file: !813, line: 390, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !813, line: 305, size: 1472, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1081, !1082, !1087, !1088, !1091, !1175, !1176, !1177, !1178, !1179}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1065, file: !813, line: 308, baseType: !366, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1065, file: !813, line: 309, baseType: !366, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1065, file: !813, line: 313, baseType: !1064, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1065, file: !813, line: 313, baseType: !1064, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1065, file: !813, line: 315, baseType: !851, size: 192, align: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1065, file: !813, line: 323, baseType: !366, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1065, file: !813, line: 327, baseType: !1057, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1065, file: !813, line: 333, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1051, line: 284, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1051, line: 284, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1076, file: !1051, line: 284, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1080, line: 19, baseType: !366)
!1080 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1065, file: !813, line: 334, baseType: !366, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1065, file: !813, line: 343, baseType: !1083, size: 256, offset: 704)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1065, file: !813, line: 340, size: 256, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1083, file: !813, line: 341, baseType: !851, size: 192, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1083, file: !813, line: 342, baseType: !366, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1065, file: !813, line: 351, baseType: !262, size: 128, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1065, file: !813, line: 353, baseType: !1089, size: 64, offset: 1088)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !813, line: 353, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1065, file: !813, line: 356, baseType: !1092, size: 64, offset: 1152)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1095)
!1095 = !{!1096, !1100, !1101, !1105, !1109, !1149, !1153, !1157, !1161, !1162, !1163, !1167, !1171}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1094, file: !14, line: 558, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1064}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1094, file: !14, line: 559, baseType: !1097, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1094, file: !14, line: 560, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!147, !1064, !366}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1094, file: !14, line: 561, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!147, !1064}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1094, file: !14, line: 562, baseType: !1110, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !813, line: 682, baseType: !7)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1129, !1136, !1142, !1143, !1144, !1146, !1148}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1115, file: !14, line: 509, baseType: !1064, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1115, file: !14, line: 511, baseType: !834, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1115, file: !14, line: 512, baseType: !366, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1115, file: !14, line: 513, baseType: !366, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1115, file: !14, line: 514, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1051, line: 385, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 385, size: 64, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1125, file: !1051, line: 385, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1080, line: 15, baseType: !366)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1115, file: !14, line: 516, baseType: !1130, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1051, line: 359, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 359, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1132, file: !1051, line: 359, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1080, line: 16, baseType: !366)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1115, file: !14, line: 519, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1080, line: 21, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 21, size: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1138, file: !1080, line: 21, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1080, line: 14, baseType: !366)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1115, file: !14, line: 521, baseType: !811, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1115, file: !14, line: 522, baseType: !811, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1115, file: !14, line: 528, baseType: !1145, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1115, file: !14, line: 532, baseType: !1147, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1115, file: !14, line: 536, baseType: !1050, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1094, file: !14, line: 563, baseType: !1150, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1113, !1114, !13}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1094, file: !14, line: 565, baseType: !1154, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1114, !366, !366}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1094, file: !14, line: 567, baseType: !1158, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!366, !1064}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1094, file: !14, line: 571, baseType: !1110, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1094, file: !14, line: 574, baseType: !1110, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1094, file: !14, line: 579, baseType: !1164, size: 64, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!147, !1064, !366, !390, !147, !147}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1094, file: !14, line: 585, baseType: !1168, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!258, !1064}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1094, file: !14, line: 615, baseType: !1172, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!811, !1064, !366}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1065, file: !813, line: 359, baseType: !366, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1065, file: !813, line: 361, baseType: !395, size: 64, offset: 1280)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1065, file: !813, line: 362, baseType: !390, size: 64, offset: 1344)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1065, file: !813, line: 365, baseType: !768, size: 64, offset: 1408)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1065, file: !813, line: 373, baseType: !1180, offset: 1472)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !813, line: 296, elements: !290)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1061, file: !813, line: 391, baseType: !847, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1061, file: !813, line: 392, baseType: !460, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1061, file: !813, line: 394, baseType: !1184, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!366, !395, !366, !366, !366, !366}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1061, file: !813, line: 398, baseType: !366, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1061, file: !813, line: 399, baseType: !366, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1061, file: !813, line: 405, baseType: !366, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1061, file: !813, line: 406, baseType: !366, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1061, file: !813, line: 407, baseType: !1192, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1051, line: 286, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 286, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1194, file: !1051, line: 286, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1080, line: 18, baseType: !366)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1061, file: !813, line: 416, baseType: !838, size: 32, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1061, file: !813, line: 428, baseType: !838, size: 32, offset: 608)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1061, file: !813, line: 437, baseType: !838, size: 32, offset: 640)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1061, file: !813, line: 447, baseType: !838, size: 32, offset: 672)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1061, file: !813, line: 450, baseType: !768, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1061, file: !813, line: 452, baseType: !147, size: 32, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1061, file: !813, line: 454, baseType: !276, offset: 800)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1061, file: !813, line: 457, baseType: !858, size: 256, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1061, file: !813, line: 459, baseType: !262, size: 128, offset: 1088)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1061, file: !813, line: 466, baseType: !366, size: 64, offset: 1216)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1061, file: !813, line: 467, baseType: !366, size: 64, offset: 1280)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1061, file: !813, line: 469, baseType: !366, size: 64, offset: 1344)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1061, file: !813, line: 470, baseType: !366, size: 64, offset: 1408)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1061, file: !813, line: 471, baseType: !770, size: 64, offset: 1472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1061, file: !813, line: 472, baseType: !366, size: 64, offset: 1536)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1061, file: !813, line: 473, baseType: !366, size: 64, offset: 1600)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1061, file: !813, line: 474, baseType: !366, size: 64, offset: 1664)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1061, file: !813, line: 475, baseType: !366, size: 64, offset: 1728)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1061, file: !813, line: 477, baseType: !276, offset: 1792)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1061, file: !813, line: 478, baseType: !366, size: 64, offset: 1792)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1061, file: !813, line: 478, baseType: !366, size: 64, offset: 1856)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1061, file: !813, line: 478, baseType: !366, size: 64, offset: 1920)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1061, file: !813, line: 478, baseType: !366, size: 64, offset: 1984)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1061, file: !813, line: 479, baseType: !366, size: 64, offset: 2048)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1061, file: !813, line: 479, baseType: !366, size: 64, offset: 2112)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1061, file: !813, line: 479, baseType: !366, size: 64, offset: 2176)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1061, file: !813, line: 480, baseType: !366, size: 64, offset: 2240)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1061, file: !813, line: 480, baseType: !366, size: 64, offset: 2304)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1061, file: !813, line: 480, baseType: !366, size: 64, offset: 2368)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1061, file: !813, line: 480, baseType: !366, size: 64, offset: 2432)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1061, file: !813, line: 482, baseType: !1229, size: 2816, offset: 2496)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 2816, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 44)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1061, file: !813, line: 488, baseType: !1233, size: 256, offset: 5312)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1234, line: 60, size: 256, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1233, file: !1234, line: 61, baseType: !1237, size: 256)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 256, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 4)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1061, file: !813, line: 490, baseType: !1241, size: 64, offset: 5568)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !813, line: 490, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1061, file: !813, line: 493, baseType: !1244, size: 896, offset: 5632)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1245, line: 53, baseType: !1246)
!1245 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 13, size: 896, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1254, !1255, !1256, !1257, !1261, !1262, !1263}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1246, file: !1245, line: 18, baseType: !460, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1246, file: !1245, line: 28, baseType: !770, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1246, file: !1245, line: 31, baseType: !858, size: 256, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1246, file: !1245, line: 32, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1245, line: 32, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1246, file: !1245, line: 37, baseType: !158, size: 16, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1246, file: !1245, line: 40, baseType: !764, size: 192, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1246, file: !1245, line: 41, baseType: !390, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1246, file: !1245, line: 42, baseType: !1258, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1245, line: 42, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1246, file: !1245, line: 44, baseType: !838, size: 32, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1246, file: !1245, line: 50, baseType: !156, size: 16, offset: 864)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1246, file: !1245, line: 51, baseType: !1264, size: 16, offset: 880)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !144, line: 18, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !146, line: 23, baseType: !1266)
!1266 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1061, file: !813, line: 495, baseType: !366, size: 64, offset: 6528)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1061, file: !813, line: 497, baseType: !1269, size: 64, offset: 6592)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !813, line: 381, size: 384, elements: !1271)
!1271 = !{!1272, !1273, !2368}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1270, file: !813, line: 382, baseType: !838, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1270, file: !813, line: 383, baseType: !1274, size: 128, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !813, line: 376, size: 128, elements: !1275)
!1275 = !{!1276, !2366}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1274, file: !813, line: 377, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1279, line: 640, size: 48640, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1287, !1289, !1290, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1307, !1325, !1336, !1419, !1420, !1421, !1430, !1431, !1433, !1434, !1435, !1436, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1515, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1553, !1555, !1556, !1557, !1569, !1570, !1571, !1572, !1573, !1574, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1598, !1603, !1787, !1788, !1789, !1790, !1794, !1797, !1800, !1803, !1806, !1809, !1910, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1956, !1957, !1958, !1959, !1960, !1965, !1966, !1967, !1970, !1971, !1974, !1977, !1980, !1983, !2026, !2029, !2030, !2109, !2110, !2113, !2114, !2117, !2118, !2119, !2123, !2124, !2125, !2138, !2139, !2140, !2150, !2155, !2158, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1278, file: !1279, line: 646, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1283, line: 56, size: 128, elements: !1284)
!1283 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !1283, line: 57, baseType: !366, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1282, file: !1283, line: 58, baseType: !143, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1278, file: !1279, line: 649, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !352)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1278, file: !1279, line: 657, baseType: !390, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1278, file: !1279, line: 658, baseType: !1291, size: 32, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1292, line: 113, baseType: !1293)
!1292 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1292, line: 111, size: 32, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1293, file: !1292, line: 112, baseType: !838, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1279, line: 660, baseType: !7, size: 32, offset: 288)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1278, file: !1279, line: 661, baseType: !7, size: 32, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1278, file: !1279, line: 684, baseType: !147, size: 32, offset: 352)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1278, file: !1279, line: 686, baseType: !147, size: 32, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1278, file: !1279, line: 687, baseType: !147, size: 32, offset: 416)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1278, file: !1279, line: 688, baseType: !147, size: 32, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1278, file: !1279, line: 689, baseType: !7, size: 32, offset: 480)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1278, file: !1279, line: 691, baseType: !1304, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1279, line: 691, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1278, file: !1279, line: 692, baseType: !1308, size: 832, offset: 576)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1279, line: 451, size: 832, elements: !1309)
!1309 = !{!1310, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1308, file: !1279, line: 453, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1279, line: 325, size: 128, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1311, file: !1279, line: 326, baseType: !366, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1311, file: !1279, line: 327, baseType: !143, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1308, file: !1279, line: 454, baseType: !851, size: 192, align: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1308, file: !1279, line: 455, baseType: !262, size: 128, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1308, file: !1279, line: 456, baseType: !7, size: 32, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1308, file: !1279, line: 458, baseType: !460, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1308, file: !1279, line: 459, baseType: !460, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1308, file: !1279, line: 460, baseType: !460, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1308, file: !1279, line: 461, baseType: !460, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1308, file: !1279, line: 463, baseType: !460, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1308, file: !1279, line: 465, baseType: !1324, offset: 832)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1279, line: 415, elements: !290)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1278, file: !1279, line: 693, baseType: !1326, size: 384, offset: 1408)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1279, line: 489, size: 384, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1326, file: !1279, line: 490, baseType: !262, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1326, file: !1279, line: 491, baseType: !366, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1326, file: !1279, line: 492, baseType: !366, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1326, file: !1279, line: 493, baseType: !7, size: 32, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1326, file: !1279, line: 494, baseType: !158, size: 16, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1326, file: !1279, line: 495, baseType: !158, size: 16, offset: 304)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1326, file: !1279, line: 497, baseType: !1335, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1278, file: !1279, line: 697, baseType: !1337, size: 1792, offset: 1792)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1279, line: 507, size: 1792, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1416, !1417}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1337, file: !1279, line: 508, baseType: !851, size: 192, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1337, file: !1279, line: 515, baseType: !460, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1337, file: !1279, line: 516, baseType: !460, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1337, file: !1279, line: 517, baseType: !460, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1337, file: !1279, line: 518, baseType: !460, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1337, file: !1279, line: 519, baseType: !460, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1337, file: !1279, line: 526, baseType: !774, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1337, file: !1279, line: 527, baseType: !460, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1279, line: 528, baseType: !7, size: 32, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1337, file: !1279, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1337, file: !1279, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1337, file: !1279, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1337, file: !1279, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1337, file: !1279, line: 563, baseType: !1353, size: 512, offset: 704)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1354)
!1354 = !{!1355, !1363, !1364, !1369, !1412, !1413, !1414, !1415}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1353, file: !20, line: 119, baseType: !1356, size: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1357, line: 9, size: 256, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1356, file: !1357, line: 10, baseType: !851, size: 192, align: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1356, file: !1357, line: 11, baseType: !1361, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1362, line: 29, baseType: !774)
!1362 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1353, file: !20, line: 120, baseType: !1361, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1353, file: !20, line: 121, baseType: !1365, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!19, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1353, file: !20, line: 122, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1372)
!1372 = !{!1373, !1393, !1394, !1397, !1402, !1403, !1407, !1411}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1371, file: !20, line: 160, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1375, file: !20, line: 215, baseType: !864)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1375, file: !20, line: 216, baseType: !7, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1375, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1375, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1375, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1375, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1375, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1375, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1375, file: !20, line: 233, baseType: !1361, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1375, file: !20, line: 234, baseType: !1368, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1375, file: !20, line: 235, baseType: !1361, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1375, file: !20, line: 236, baseType: !1368, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1375, file: !20, line: 237, baseType: !1390, size: 4096, offset: 512)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 4096, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 8)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1371, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1371, file: !20, line: 162, baseType: !1395, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !263, line: 27, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !350, line: 96, baseType: !147)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1371, file: !20, line: 163, baseType: !1398, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 276, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 276, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1399, file: !431, line: 276, baseType: !435, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1371, file: !20, line: 164, baseType: !1368, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1371, file: !20, line: 165, baseType: !1404, size: 128, offset: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1357, line: 14, size: 128, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1404, file: !1357, line: 15, baseType: !843, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1371, file: !20, line: 166, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1361}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1371, file: !20, line: 167, baseType: !1361, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1353, file: !20, line: 123, baseType: !160, size: 8, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1353, file: !20, line: 124, baseType: !160, size: 8, offset: 456)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1353, file: !20, line: 125, baseType: !160, size: 8, offset: 464)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1353, file: !20, line: 126, baseType: !160, size: 8, offset: 472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1337, file: !1279, line: 572, baseType: !1353, size: 512, offset: 1216)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1337, file: !1279, line: 580, baseType: !1418, size: 64, offset: 1728)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1278, file: !1279, line: 721, baseType: !7, size: 32, offset: 3584)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1278, file: !1279, line: 722, baseType: !147, size: 32, offset: 3616)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1278, file: !1279, line: 723, baseType: !1422, size: 64, offset: 3648)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1425, line: 17, baseType: !1426)
!1425 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1425, line: 17, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1426, file: !1425, line: 17, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !175)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1278, file: !1279, line: 724, baseType: !1424, size: 64, offset: 3712)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1278, file: !1279, line: 749, baseType: !1432, offset: 3776)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1279, line: 290, elements: !290)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1278, file: !1279, line: 751, baseType: !262, size: 128, offset: 3776)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1278, file: !1279, line: 757, baseType: !1057, size: 64, offset: 3904)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1278, file: !1279, line: 758, baseType: !1057, size: 64, offset: 3968)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1278, file: !1279, line: 761, baseType: !1437, size: 320, offset: 4032)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1234, line: 34, size: 320, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1437, file: !1234, line: 35, baseType: !460, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1437, file: !1234, line: 36, baseType: !1441, size: 256, offset: 64)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !1238)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1278, file: !1279, line: 766, baseType: !147, size: 32, offset: 4352)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1278, file: !1279, line: 767, baseType: !147, size: 32, offset: 4384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1278, file: !1279, line: 768, baseType: !147, size: 32, offset: 4416)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1278, file: !1279, line: 770, baseType: !147, size: 32, offset: 4448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1278, file: !1279, line: 772, baseType: !366, size: 64, offset: 4480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1278, file: !1279, line: 775, baseType: !7, size: 32, offset: 4544)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1278, file: !1279, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1278, file: !1279, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1278, file: !1279, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1278, file: !1279, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1278, file: !1279, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1278, file: !1279, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1278, file: !1279, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1278, file: !1279, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1278, file: !1279, line: 831, baseType: !366, size: 64, offset: 4672)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1278, file: !1279, line: 833, baseType: !1458, size: 384, offset: 4736)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1459)
!1459 = !{!1460, !1465}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1458, file: !25, line: 26, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!352, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !25, line: 27, baseType: !1466, size: 320, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1458, file: !25, line: 27, size: 320, elements: !1467)
!1467 = !{!1468, !1478, !1505}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1466, file: !25, line: 36, baseType: !1469, size: 320)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 29, size: 320, elements: !1470)
!1470 = !{!1471, !1473, !1474, !1475, !1476, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1469, file: !25, line: 30, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1469, file: !25, line: 31, baseType: !143, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !25, line: 32, baseType: !143, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1469, file: !25, line: 33, baseType: !143, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1469, file: !25, line: 34, baseType: !460, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1469, file: !25, line: 35, baseType: !1472, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1466, file: !25, line: 46, baseType: !1479, size: 192)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 38, size: 192, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1504}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1479, file: !25, line: 39, baseType: !1395, size: 32)
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
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !350, line: 93, baseType: !571)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !1489, line: 9, baseType: !571, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1484, file: !25, line: 43, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1497, line: 7, size: 64, elements: !1498)
!1497 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1503}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !1497, line: 8, baseType: !1500, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1497, line: 5, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !144, line: 20, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !146, line: 26, baseType: !147)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !1497, line: 9, baseType: !1501, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1479, file: !25, line: 45, baseType: !460, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1466, file: !25, line: 54, baseType: !1506, size: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !25, line: 48, size: 256, elements: !1507)
!1507 = !{!1508, !1511, !1512, !1513, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1506, file: !25, line: 49, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1506, file: !25, line: 50, baseType: !147, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1506, file: !25, line: 51, baseType: !147, size: 32, offset: 96)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1506, file: !25, line: 52, baseType: !366, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1506, file: !25, line: 53, baseType: !366, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1278, file: !1279, line: 835, baseType: !1516, size: 32, offset: 5120)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !263, line: 22, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !350, line: 28, baseType: !147)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1278, file: !1279, line: 836, baseType: !1516, size: 32, offset: 5152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1278, file: !1279, line: 840, baseType: !366, size: 64, offset: 5184)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1278, file: !1279, line: 849, baseType: !1277, size: 64, offset: 5248)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1278, file: !1279, line: 852, baseType: !1277, size: 64, offset: 5312)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1278, file: !1279, line: 857, baseType: !262, size: 128, offset: 5376)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1278, file: !1279, line: 858, baseType: !262, size: 128, offset: 5504)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1278, file: !1279, line: 859, baseType: !1277, size: 64, offset: 5632)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1278, file: !1279, line: 867, baseType: !262, size: 128, offset: 5696)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1278, file: !1279, line: 868, baseType: !262, size: 128, offset: 5824)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1278, file: !1279, line: 871, baseType: !1528, size: 64, offset: 5952)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1536, !1537, !1544, !1545}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1529, file: !53, line: 61, baseType: !1291, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1529, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !53, line: 63, baseType: !276, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1529, file: !53, line: 65, baseType: !1535, size: 256, offset: 64)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 256, elements: !1238)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1529, file: !53, line: 66, baseType: !676, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1529, file: !53, line: 68, baseType: !1538, size: 128, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1539, line: 40, baseType: !1540)
!1539 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1539, line: 36, size: 128, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !1539, line: 37, baseType: !276)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1540, file: !1539, line: 38, baseType: !262, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1529, file: !53, line: 69, baseType: !408, size: 128, align: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1529, file: !53, line: 70, baseType: !1546, size: 128, offset: 640)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 128, elements: !175)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1547, file: !53, line: 55, baseType: !147, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1547, file: !53, line: 56, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1278, file: !1279, line: 872, baseType: !1554, size: 512, offset: 6016)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 512, elements: !1238)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1278, file: !1279, line: 873, baseType: !262, size: 128, offset: 6528)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1278, file: !1279, line: 874, baseType: !262, size: 128, offset: 6656)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1278, file: !1279, line: 876, baseType: !1558, size: 64, offset: 6784)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1560, line: 26, size: 192, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1559, file: !1560, line: 27, baseType: !7, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1559, file: !1560, line: 28, baseType: !1564, size: 128, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1565, line: 43, size: 128, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !1565, line: 44, baseType: !864)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1564, file: !1565, line: 45, baseType: !262, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1278, file: !1279, line: 879, baseType: !746, size: 64, offset: 6848)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1278, file: !1279, line: 882, baseType: !746, size: 64, offset: 6912)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1278, file: !1279, line: 884, baseType: !460, size: 64, offset: 6976)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1278, file: !1279, line: 885, baseType: !460, size: 64, offset: 7040)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1278, file: !1279, line: 890, baseType: !460, size: 64, offset: 7104)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1278, file: !1279, line: 891, baseType: !1575, size: 128, offset: 7168)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1279, line: 242, size: 128, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1575, file: !1279, line: 244, baseType: !460, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1575, file: !1279, line: 245, baseType: !460, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !1279, line: 246, baseType: !864, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1278, file: !1279, line: 900, baseType: !366, size: 64, offset: 7296)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1278, file: !1279, line: 901, baseType: !366, size: 64, offset: 7360)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1278, file: !1279, line: 904, baseType: !460, size: 64, offset: 7424)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1278, file: !1279, line: 907, baseType: !460, size: 64, offset: 7488)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1278, file: !1279, line: 910, baseType: !366, size: 64, offset: 7552)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1278, file: !1279, line: 911, baseType: !366, size: 64, offset: 7616)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1278, file: !1279, line: 914, baseType: !1587, size: 640, offset: 7680)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1588, line: 123, size: 640, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1596, !1597}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1587, file: !1588, line: 124, baseType: !1591, size: 576)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 576, elements: !318)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1588, line: 108, size: 192, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1592, file: !1588, line: 109, baseType: !460, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1592, file: !1588, line: 110, baseType: !1404, size: 128, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1587, file: !1588, line: 125, baseType: !7, size: 32, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1587, file: !1588, line: 126, baseType: !7, size: 32, offset: 608)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1278, file: !1279, line: 917, baseType: !1599, size: 192, offset: 8320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1588, line: 134, size: 192, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1599, file: !1588, line: 135, baseType: !408, size: 128, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1599, file: !1588, line: 136, baseType: !7, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1278, file: !1279, line: 923, baseType: !1604, size: 64, offset: 8512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1607, line: 111, size: 1280, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1628, !1629, !1630, !1631, !1632, !1633, !1740, !1741, !1742, !1743, !1769, !1772, !1782}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1606, file: !1607, line: 112, baseType: !838, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 120, baseType: !473, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1606, file: !1607, line: 121, baseType: !481, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1606, file: !1607, line: 122, baseType: !473, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1606, file: !1607, line: 123, baseType: !481, size: 32, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1606, file: !1607, line: 124, baseType: !473, size: 32, offset: 160)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1606, file: !1607, line: 125, baseType: !481, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1606, file: !1607, line: 126, baseType: !473, size: 32, offset: 224)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1606, file: !1607, line: 127, baseType: !481, size: 32, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1606, file: !1607, line: 128, baseType: !7, size: 32, offset: 288)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1606, file: !1607, line: 129, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1621, line: 26, baseType: !1622)
!1621 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1621, line: 24, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1622, file: !1621, line: 25, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 2)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1606, file: !1607, line: 130, baseType: !1620, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1606, file: !1607, line: 131, baseType: !1620, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1606, file: !1607, line: 132, baseType: !1620, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1606, file: !1607, line: 133, baseType: !1620, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1606, file: !1607, line: 135, baseType: !162, size: 8, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1606, file: !1607, line: 137, baseType: !1634, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1636, line: 189, size: 1664, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1642, !1647, !1648, !1651, !1652, !1657, !1658, !1659, !1660, !1662, !1663, !1664, !1665, !1666, !1704, !1725}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1635, file: !1636, line: 190, baseType: !1291, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1635, file: !1636, line: 191, baseType: !1640, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1636, line: 28, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !263, line: 98, baseType: !1501)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 192, baseType: !1643, size: 192, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 192, size: 192, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1643, file: !1636, line: 193, baseType: !262, size: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1643, file: !1636, line: 194, baseType: !851, size: 192, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1635, file: !1636, line: 199, baseType: !858, size: 256, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1635, file: !1636, line: 200, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1636, line: 200, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1635, file: !1636, line: 201, baseType: !390, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 202, baseType: !1653, size: 64, offset: 640)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 202, size: 64, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1653, file: !1636, line: 203, baseType: !577, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1653, file: !1636, line: 204, baseType: !577, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1635, file: !1636, line: 206, baseType: !577, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1635, file: !1636, line: 207, baseType: !473, size: 32, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1635, file: !1636, line: 208, baseType: !481, size: 32, offset: 800)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1635, file: !1636, line: 209, baseType: !1661, size: 32, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1636, line: 31, baseType: !597)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1635, file: !1636, line: 210, baseType: !158, size: 16, offset: 864)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1635, file: !1636, line: 211, baseType: !158, size: 16, offset: 880)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1635, file: !1636, line: 215, baseType: !1266, size: 16, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1636, line: 222, baseType: !366, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 239, baseType: !1667, size: 320, offset: 1024)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 239, size: 320, elements: !1668)
!1668 = !{!1669, !1696}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1667, file: !1636, line: 240, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1636, line: 108, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1685, !1688, !1695}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1670, file: !1636, line: 110, baseType: !366, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1636, line: 111, baseType: !1674, size: 64, offset: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1636, line: 111, size: 64, elements: !1675)
!1675 = !{!1676, !1684}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1636, line: 112, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1636, line: 112, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1677, file: !1636, line: 114, baseType: !156, size: 16)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1677, file: !1636, line: 115, baseType: !1681, size: 48, offset: 16)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 48, elements: !1682)
!1682 = !{!1683}
!1683 = !DISubrange(count: 6)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1674, file: !1636, line: 121, baseType: !366, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !1636, line: 123, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1636, line: 96, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1670, file: !1636, line: 124, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1636, line: 102, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1690, file: !1636, line: 103, baseType: !408, size: 128, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1690, file: !1636, line: 104, baseType: !1291, size: 32, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1690, file: !1636, line: 105, baseType: !528, size: 8, offset: 160)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1670, file: !1636, line: 125, baseType: !258, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !1636, line: 241, baseType: !1697, size: 320)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !1636, line: 241, size: 320, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1697, file: !1636, line: 242, baseType: !366, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1697, file: !1636, line: 243, baseType: !366, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !1636, line: 244, baseType: !1686, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1697, file: !1636, line: 245, baseType: !1689, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1697, file: !1636, line: 246, baseType: !317, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1636, line: 254, baseType: !1705, size: 256, offset: 1344)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1636, line: 254, size: 256, elements: !1706)
!1706 = !{!1707, !1713}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1705, file: !1636, line: 255, baseType: !1708, size: 256)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1636, line: 128, size: 256, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1708, file: !1636, line: 129, baseType: !390, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1708, file: !1636, line: 130, baseType: !1712, size: 256)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 256, elements: !1238)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1636, line: 256, baseType: !1714, size: 256)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !1636, line: 256, size: 256, elements: !1715)
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1714, file: !1636, line: 258, baseType: !262, size: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1714, file: !1636, line: 259, baseType: !1718, size: 128, offset: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1719, line: 22, size: 128, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1724}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1718, file: !1719, line: 23, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1719, line: 23, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1718, file: !1719, line: 24, baseType: !366, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1635, file: !1636, line: 274, baseType: !1726, size: 64, offset: 1600)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1636, line: 170, size: 192, elements: !1728)
!1728 = !{!1729, !1738, !1739}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1727, file: !1636, line: 171, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1636, line: 165, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!147, !1634, !1734, !1736, !1634}
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
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1745, file: !1746, line: 14, baseType: !1291, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1745, file: !1746, line: 15, baseType: !838, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1745, file: !1746, line: 16, baseType: !838, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1745, file: !1746, line: 21, baseType: !768, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1745, file: !1746, line: 27, baseType: !366, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1745, file: !1746, line: 28, baseType: !366, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1745, file: !1746, line: 29, baseType: !768, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1745, file: !1746, line: 32, baseType: !680, size: 128, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1745, file: !1746, line: 33, baseType: !473, size: 32, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1745, file: !1746, line: 37, baseType: !768, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1745, file: !1746, line: 44, baseType: !1759, size: 256, offset: 640)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1760, line: 15, size: 256, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1760, line: 16, baseType: !864)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1759, file: !1760, line: 18, baseType: !147, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1759, file: !1760, line: 19, baseType: !147, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1759, file: !1760, line: 20, baseType: !147, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1759, file: !1760, line: 21, baseType: !147, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1759, file: !1760, line: 22, baseType: !366, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 23, baseType: !366, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1606, file: !1607, line: 146, baseType: !1770, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !474, line: 18, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1606, file: !1607, line: 147, baseType: !1773, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1607, line: 25, size: 64, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1774, file: !1607, line: 26, baseType: !838, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1774, file: !1607, line: 27, baseType: !147, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1774, file: !1607, line: 28, baseType: !1779, offset: 64)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 149, baseType: !1783, size: 128, offset: 1152)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 149, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1783, file: !1607, line: 150, baseType: !147, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1783, file: !1607, line: 151, baseType: !408, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1278, file: !1279, line: 926, baseType: !1604, size: 64, offset: 8576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1278, file: !1279, line: 929, baseType: !1604, size: 64, offset: 8640)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1278, file: !1279, line: 933, baseType: !1634, size: 64, offset: 8704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1278, file: !1279, line: 943, baseType: !1791, size: 128, offset: 8768)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 16)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1278, file: !1279, line: 945, baseType: !1795, size: 64, offset: 8896)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1279, line: 49, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1278, file: !1279, line: 956, baseType: !1798, size: 64, offset: 8960)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1279, line: 45, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1278, file: !1279, line: 959, baseType: !1801, size: 64, offset: 9024)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1279, line: 959, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1278, file: !1279, line: 962, baseType: !1804, size: 64, offset: 9088)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1279, line: 66, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1278, file: !1279, line: 966, baseType: !1807, size: 64, offset: 9152)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1279, line: 50, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1278, file: !1279, line: 969, baseType: !1810, size: 64, offset: 9216)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1812, line: 82, size: 7296, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1849, !1858, !1859, !1861, !1862, !1863, !1866, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1896, !1897, !1904, !1905, !1906, !1907, !1908, !1909}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1811, file: !1812, line: 83, baseType: !1291, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1811, file: !1812, line: 84, baseType: !838, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1811, file: !1812, line: 85, baseType: !147, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1811, file: !1812, line: 86, baseType: !262, size: 128, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1811, file: !1812, line: 88, baseType: !1538, size: 128, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1811, file: !1812, line: 91, baseType: !1277, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1811, file: !1812, line: 94, baseType: !1821, size: 192, offset: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1822, line: 30, size: 192, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1821, file: !1822, line: 31, baseType: !262, size: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1821, file: !1822, line: 32, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1827, line: 25, baseType: !1828)
!1827 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1827, line: 23, size: 64, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1828, file: !1827, line: 24, baseType: !1429, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1811, file: !1812, line: 97, baseType: !676, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1811, file: !1812, line: 100, baseType: !147, size: 32, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1811, file: !1812, line: 106, baseType: !147, size: 32, offset: 736)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1811, file: !1812, line: 107, baseType: !1277, size: 64, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1811, file: !1812, line: 110, baseType: !147, size: 32, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !1812, line: 111, baseType: !7, size: 32, offset: 864)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1811, file: !1812, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1811, file: !1812, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1811, file: !1812, line: 128, baseType: !147, size: 32, offset: 928)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1811, file: !1812, line: 129, baseType: !262, size: 128, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1811, file: !1812, line: 132, baseType: !1353, size: 512, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1811, file: !1812, line: 133, baseType: !1361, size: 64, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1811, file: !1812, line: 140, baseType: !1844, size: 256, offset: 1664)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, size: 256, elements: !1626)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1812, line: 38, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1845, file: !1812, line: 39, baseType: !460, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1845, file: !1812, line: 40, baseType: !460, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1811, file: !1812, line: 146, baseType: !1850, size: 192, offset: 1920)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1812, line: 66, size: 192, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1850, file: !1812, line: 67, baseType: !1853, size: 192)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1812, line: 47, size: 192, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1853, file: !1812, line: 48, baseType: !770, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1853, file: !1812, line: 49, baseType: !770, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1853, file: !1812, line: 50, baseType: !770, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1811, file: !1812, line: 150, baseType: !1587, size: 640, offset: 2112)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1811, file: !1812, line: 153, baseType: !1860, size: 256, offset: 2752)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 256, elements: !1238)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1811, file: !1812, line: 159, baseType: !1528, size: 64, offset: 3008)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1811, file: !1812, line: 162, baseType: !147, size: 32, offset: 3072)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1811, file: !1812, line: 164, baseType: !1864, size: 64, offset: 3136)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1812, line: 164, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1811, file: !1812, line: 175, baseType: !1867, size: 32, offset: 3200)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !431, line: 805, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 798, size: 32, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1868, file: !431, line: 803, baseType: !430, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1868, file: !431, line: 804, baseType: !276, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1811, file: !1812, line: 176, baseType: !460, size: 64, offset: 3264)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1811, file: !1812, line: 176, baseType: !460, size: 64, offset: 3328)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1811, file: !1812, line: 176, baseType: !460, size: 64, offset: 3392)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1811, file: !1812, line: 176, baseType: !460, size: 64, offset: 3456)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1811, file: !1812, line: 177, baseType: !460, size: 64, offset: 3520)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1811, file: !1812, line: 178, baseType: !460, size: 64, offset: 3584)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1811, file: !1812, line: 179, baseType: !1575, size: 128, offset: 3648)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1811, file: !1812, line: 180, baseType: !366, size: 64, offset: 3776)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1811, file: !1812, line: 180, baseType: !366, size: 64, offset: 3840)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1811, file: !1812, line: 180, baseType: !366, size: 64, offset: 3904)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1811, file: !1812, line: 180, baseType: !366, size: 64, offset: 3968)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1811, file: !1812, line: 181, baseType: !366, size: 64, offset: 4032)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1811, file: !1812, line: 181, baseType: !366, size: 64, offset: 4096)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1811, file: !1812, line: 181, baseType: !366, size: 64, offset: 4160)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1811, file: !1812, line: 181, baseType: !366, size: 64, offset: 4224)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1811, file: !1812, line: 182, baseType: !366, size: 64, offset: 4288)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1811, file: !1812, line: 182, baseType: !366, size: 64, offset: 4352)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1811, file: !1812, line: 182, baseType: !366, size: 64, offset: 4416)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1811, file: !1812, line: 182, baseType: !366, size: 64, offset: 4480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1811, file: !1812, line: 183, baseType: !366, size: 64, offset: 4544)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1811, file: !1812, line: 183, baseType: !366, size: 64, offset: 4608)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1811, file: !1812, line: 184, baseType: !1894, offset: 4672)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1895, line: 12, elements: !290)
!1895 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1811, file: !1812, line: 192, baseType: !462, size: 64, offset: 4672)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1811, file: !1812, line: 203, baseType: !1898, size: 2048, offset: 4736)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 2048, elements: !1792)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1900, line: 43, size: 128, elements: !1901)
!1900 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1899, file: !1900, line: 44, baseType: !365, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1899, file: !1900, line: 45, baseType: !365, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1811, file: !1812, line: 220, baseType: !528, size: 8, offset: 6784)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1811, file: !1812, line: 221, baseType: !1266, size: 16, offset: 6800)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1811, file: !1812, line: 222, baseType: !1266, size: 16, offset: 6816)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1811, file: !1812, line: 224, baseType: !1057, size: 64, offset: 6848)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1811, file: !1812, line: 227, baseType: !764, size: 192, offset: 6912)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1811, file: !1812, line: 233, baseType: !764, size: 192, offset: 7104)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1278, file: !1279, line: 970, baseType: !1911, size: 64, offset: 9280)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1812, line: 20, size: 16576, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1912, file: !1812, line: 21, baseType: !276)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1912, file: !1812, line: 22, baseType: !1291, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1912, file: !1812, line: 23, baseType: !1538, size: 128, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1912, file: !1812, line: 24, baseType: !1918, size: 16384, offset: 192)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 16384, elements: !322)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1822, line: 49, size: 256, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1919, file: !1822, line: 50, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1822, line: 35, size: 256, elements: !1923)
!1923 = !{!1924, !1931, !1932, !1938}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1922, file: !1822, line: 37, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1926, line: 19, baseType: !1927)
!1926 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1926, line: 18, baseType: !1929)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !147}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1922, file: !1822, line: 38, baseType: !366, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1922, file: !1822, line: 44, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1926, line: 22, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1926, line: 21, baseType: !1936)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1922, file: !1822, line: 46, baseType: !1826, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1278, file: !1279, line: 971, baseType: !1826, size: 64, offset: 9344)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1278, file: !1279, line: 972, baseType: !1826, size: 64, offset: 9408)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1278, file: !1279, line: 974, baseType: !1826, size: 64, offset: 9472)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1278, file: !1279, line: 975, baseType: !1821, size: 192, offset: 9536)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1278, file: !1279, line: 976, baseType: !366, size: 64, offset: 9728)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1278, file: !1279, line: 977, baseType: !363, size: 64, offset: 9792)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1278, file: !1279, line: 978, baseType: !7, size: 32, offset: 9856)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1278, file: !1279, line: 980, baseType: !411, size: 64, offset: 9920)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1278, file: !1279, line: 989, baseType: !1948, size: 128, offset: 9984)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1949, line: 35, size: 128, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1948, file: !1949, line: 36, baseType: !147, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1948, file: !1949, line: 37, baseType: !838, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1948, file: !1949, line: 38, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1949, line: 23, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1278, file: !1279, line: 992, baseType: !460, size: 64, offset: 10112)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1278, file: !1279, line: 993, baseType: !460, size: 64, offset: 10176)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1278, file: !1279, line: 996, baseType: !276, offset: 10240)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1278, file: !1279, line: 999, baseType: !864, offset: 10240)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1278, file: !1279, line: 1001, baseType: !1961, size: 64, offset: 10240)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1279, line: 636, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1961, file: !1279, line: 637, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1278, file: !1279, line: 1005, baseType: !843, size: 128, offset: 10304)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1278, file: !1279, line: 1007, baseType: !1277, size: 64, offset: 10432)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1278, file: !1279, line: 1009, baseType: !1968, size: 64, offset: 10496)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1279, line: 1009, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1278, file: !1279, line: 1043, baseType: !390, size: 64, offset: 10560)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1278, file: !1279, line: 1046, baseType: !1972, size: 64, offset: 10624)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1279, line: 41, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1278, file: !1279, line: 1050, baseType: !1975, size: 64, offset: 10688)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1279, line: 42, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1278, file: !1279, line: 1054, baseType: !1978, size: 64, offset: 10752)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1279, line: 55, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1278, file: !1279, line: 1056, baseType: !1981, size: 64, offset: 10816)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1279, line: 40, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1278, file: !1279, line: 1058, baseType: !1984, size: 64, offset: 10880)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1986, line: 99, size: 704, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !2013, !2014}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1985, file: !1986, line: 100, baseType: !768, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1985, file: !1986, line: 101, baseType: !838, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1985, file: !1986, line: 102, baseType: !838, size: 32, offset: 96)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1986, line: 105, baseType: !276, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1985, file: !1986, line: 107, baseType: !158, size: 16, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1985, file: !1986, line: 109, baseType: !829, size: 128, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1985, file: !1986, line: 110, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1986, line: 73, size: 448, elements: !1997)
!1997 = !{!1998, !2001, !2002, !2007, !2012}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1996, file: !1986, line: 74, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1986, line: 74, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1996, file: !1986, line: 75, baseType: !1984, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1986, line: 83, baseType: !2003, size: 128, offset: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !1986, line: 83, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2003, file: !1986, line: 84, baseType: !262, size: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2003, file: !1986, line: 85, baseType: !1017, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1986, line: 87, baseType: !2008, size: 128, offset: 256)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !1986, line: 87, size: 128, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2008, file: !1986, line: 88, baseType: !680, size: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2008, file: !1986, line: 89, baseType: !408, size: 128, align: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !1986, line: 92, baseType: !7, size: 32, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1985, file: !1986, line: 111, baseType: !676, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1985, file: !1986, line: 113, baseType: !2015, size: 256, offset: 448)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2016, line: 102, size: 256, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2015, file: !2016, line: 103, baseType: !768, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2015, file: !2016, line: 104, baseType: !262, size: 128, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2015, file: !2016, line: 105, baseType: !2021, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2016, line: 21, baseType: !2022)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1278, file: !1279, line: 1061, baseType: !2027, size: 64, offset: 10944)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1279, line: 43, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1278, file: !1279, line: 1064, baseType: !366, size: 64, offset: 11008)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1278, file: !1279, line: 1065, baseType: !2031, size: 64, offset: 11072)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1822, line: 14, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1822, line: 12, size: 384, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !1822, line: 13, baseType: !2036, size: 384)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1822, line: 13, size: 384, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2036, file: !1822, line: 13, baseType: !147, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2036, file: !1822, line: 13, baseType: !147, size: 32, offset: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2036, file: !1822, line: 13, baseType: !147, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2036, file: !1822, line: 13, baseType: !2042, size: 256, offset: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2043, line: 32, size: 256, elements: !2044)
!2043 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !{!2045, !2050, !2063, !2069, !2078, !2098, !2103}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2042, file: !2043, line: 37, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 34, size: 64, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2046, file: !2043, line: 35, baseType: !1517, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2046, file: !2043, line: 36, baseType: !479, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2042, file: !2043, line: 45, baseType: !2051, size: 192)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 40, size: 192, elements: !2052)
!2052 = !{!2053, !2055, !2056, !2062}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2051, file: !2043, line: 41, baseType: !2054, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !350, line: 95, baseType: !147)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2051, file: !2043, line: 42, baseType: !147, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2051, file: !2043, line: 43, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2043, line: 11, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2043, line: 8, size: 64, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2058, file: !2043, line: 9, baseType: !147, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2058, file: !2043, line: 10, baseType: !390, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2051, file: !2043, line: 44, baseType: !147, size: 32, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2042, file: !2043, line: 52, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 48, size: 128, elements: !2065)
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2064, file: !2043, line: 49, baseType: !1517, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2064, file: !2043, line: 50, baseType: !479, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2064, file: !2043, line: 51, baseType: !2057, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2042, file: !2043, line: 61, baseType: !2070, size: 256)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 55, size: 256, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2070, file: !2043, line: 56, baseType: !1517, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2070, file: !2043, line: 57, baseType: !479, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2070, file: !2043, line: 58, baseType: !147, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2070, file: !2043, line: 59, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !350, line: 94, baseType: !351)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2070, file: !2043, line: 60, baseType: !2076, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2042, file: !2043, line: 95, baseType: !2079, size: 256)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 64, size: 256, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2079, file: !2043, line: 65, baseType: !390, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2043, line: 77, baseType: !2083, size: 192, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2043, line: 77, size: 192, elements: !2084)
!2084 = !{!2085, !2086, !2093}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2083, file: !2043, line: 82, baseType: !1266, size: 16)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2083, file: !2043, line: 88, baseType: !2087, size: 192)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !2043, line: 84, size: 192, elements: !2088)
!2088 = !{!2089, !2091, !2092}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2087, file: !2043, line: 85, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1391)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2087, file: !2043, line: 86, baseType: !390, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2087, file: !2043, line: 87, baseType: !390, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2083, file: !2043, line: 93, baseType: !2094, size: 96)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !2043, line: 90, size: 96, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2094, file: !2043, line: 91, baseType: !2090, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2094, file: !2043, line: 92, baseType: !145, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2042, file: !2043, line: 101, baseType: !2099, size: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 98, size: 128, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2099, file: !2043, line: 99, baseType: !352, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2099, file: !2043, line: 100, baseType: !147, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2042, file: !2043, line: 108, baseType: !2104, size: 128)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !2043, line: 104, size: 128, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2104, file: !2043, line: 105, baseType: !390, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2104, file: !2043, line: 106, baseType: !147, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2104, file: !2043, line: 107, baseType: !7, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1278, file: !1279, line: 1067, baseType: !1894, offset: 11136)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1278, file: !1279, line: 1099, baseType: !2111, size: 64, offset: 11136)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1279, line: 56, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1278, file: !1279, line: 1103, baseType: !262, size: 128, offset: 11200)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1278, file: !1279, line: 1104, baseType: !2115, size: 64, offset: 11328)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1279, line: 46, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1278, file: !1279, line: 1105, baseType: !764, size: 192, offset: 11392)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1278, file: !1279, line: 1106, baseType: !7, size: 32, offset: 11584)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1278, file: !1279, line: 1109, baseType: !2120, size: 128, offset: 11648)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2121, size: 128, elements: !1626)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1279, line: 51, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1278, file: !1279, line: 1110, baseType: !764, size: 192, offset: 11776)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1278, file: !1279, line: 1111, baseType: !262, size: 128, offset: 11968)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1278, file: !1279, line: 1173, baseType: !2126, size: 64, offset: 12096)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2128, line: 62, size: 256, align: 256, elements: !2129)
!2128 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2131, !2132, !2137}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2127, file: !2128, line: 75, baseType: !145, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2127, file: !2128, line: 90, baseType: !145, size: 32, offset: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2127, file: !2128, line: 124, baseType: !2133, size: 64, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !2128, line: 109, size: 64, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2133, file: !2128, line: 110, baseType: !461, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2133, file: !2128, line: 112, baseType: !461, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2128, line: 144, baseType: !145, size: 32, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1278, file: !1279, line: 1174, baseType: !143, size: 32, offset: 12160)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1278, file: !1279, line: 1179, baseType: !366, size: 64, offset: 12224)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1278, file: !1279, line: 1182, baseType: !2141, size: 128, offset: 12288)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1234, line: 76, size: 128, elements: !2142)
!2142 = !{!2143, !2148, !2149}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2141, file: !1234, line: 85, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2145, line: 7, size: 64, elements: !2146)
!2145 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2144, file: !2145, line: 12, baseType: !1426, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2141, file: !1234, line: 88, baseType: !528, size: 8, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2141, file: !1234, line: 95, baseType: !528, size: 8, offset: 72)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1279, line: 1184, baseType: !2151, size: 128, offset: 12416)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !1279, line: 1184, size: 128, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2151, file: !1279, line: 1185, baseType: !1291, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2151, file: !1279, line: 1186, baseType: !408, size: 128, align: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1278, file: !1279, line: 1190, baseType: !2156, size: 64, offset: 12544)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1279, line: 53, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1278, file: !1279, line: 1192, baseType: !2159, size: 128, offset: 12608)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1234, line: 64, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2159, file: !1234, line: 65, baseType: !811, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2159, file: !1234, line: 67, baseType: !145, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2159, file: !1234, line: 68, baseType: !145, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1278, file: !1279, line: 1206, baseType: !147, size: 32, offset: 12736)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1278, file: !1279, line: 1207, baseType: !147, size: 32, offset: 12768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1278, file: !1279, line: 1209, baseType: !366, size: 64, offset: 12800)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1278, file: !1279, line: 1219, baseType: !460, size: 64, offset: 12864)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1278, file: !1279, line: 1220, baseType: !460, size: 64, offset: 12928)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1278, file: !1279, line: 1317, baseType: !147, size: 32, offset: 12992)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1278, file: !1279, line: 1319, baseType: !1277, size: 64, offset: 13056)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1278, file: !1279, line: 1322, baseType: !2172, size: 64, offset: 13120)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2174, line: 56, size: 512, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2184}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2173, file: !2174, line: 57, baseType: !2172, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2173, file: !2174, line: 58, baseType: !390, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2173, file: !2174, line: 59, baseType: !366, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 60, baseType: !366, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2173, file: !2174, line: 61, baseType: !904, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2173, file: !2174, line: 62, baseType: !7, size: 32, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2173, file: !2174, line: 63, baseType: !2183, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !263, line: 153, baseType: !460)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2173, file: !2174, line: 64, baseType: !2185, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1278, file: !1279, line: 1326, baseType: !1291, size: 32, offset: 13184)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1278, file: !1279, line: 1342, baseType: !390, size: 64, offset: 13248)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1278, file: !1279, line: 1343, baseType: !461, size: 64, offset: 13312)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1278, file: !1279, line: 1344, baseType: !460, size: 64, offset: 13376)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1278, file: !1279, line: 1345, baseType: !461, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1278, file: !1279, line: 1346, baseType: !461, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1278, file: !1279, line: 1347, baseType: !461, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1278, file: !1279, line: 1348, baseType: !408, size: 128, align: 64, offset: 13504)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1278, file: !1279, line: 1358, baseType: !2196, size: 34816, offset: 13824)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2197, line: 485, size: 34816, elements: !2198)
!2197 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2198 = !{!2199, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2228, !2229, !2230, !2231, !2232, !2233, !2236, !2237, !2238}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2196, file: !2197, line: 487, baseType: !2200, size: 192)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2201, size: 192, elements: !318)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2202, line: 16, size: 64, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2201, file: !2202, line: 17, baseType: !156, size: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2201, file: !2202, line: 18, baseType: !156, size: 16, offset: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2201, file: !2202, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2201, file: !2202, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2201, file: !2202, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2201, file: !2202, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2201, file: !2202, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2201, file: !2202, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2201, file: !2202, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2201, file: !2202, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2201, file: !2202, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2201, file: !2202, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2201, file: !2202, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2196, file: !2197, line: 491, baseType: !366, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2196, file: !2197, line: 495, baseType: !158, size: 16, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2196, file: !2197, line: 496, baseType: !158, size: 16, offset: 272)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2196, file: !2197, line: 497, baseType: !158, size: 16, offset: 288)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2196, file: !2197, line: 498, baseType: !158, size: 16, offset: 304)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2196, file: !2197, line: 502, baseType: !366, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2196, file: !2197, line: 503, baseType: !366, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2196, file: !2197, line: 514, baseType: !2225, size: 256, offset: 448)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2226, size: 256, elements: !1238)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2197, line: 483, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2196, file: !2197, line: 516, baseType: !366, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2196, file: !2197, line: 518, baseType: !366, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2196, file: !2197, line: 520, baseType: !366, size: 64, offset: 832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2196, file: !2197, line: 521, baseType: !366, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2196, file: !2197, line: 522, baseType: !366, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2196, file: !2197, line: 528, baseType: !2234, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2197, line: 10, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2196, file: !2197, line: 535, baseType: !366, size: 64, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2196, file: !2197, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2196, file: !2197, line: 540, baseType: !2239, size: 33280, offset: 1536)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2240, line: 317, size: 33280, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2239, file: !2240, line: 330, baseType: !7, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2239, file: !2240, line: 337, baseType: !366, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2239, file: !2240, line: 348, baseType: !2245, size: 32768, offset: 512)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2240, line: 304, size: 32768, elements: !2246)
!2246 = !{!2247, !2260, !2299, !2349, !2362}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2245, file: !2240, line: 305, baseType: !2248, size: 896)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2240, line: 12, size: 896, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2259}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2248, file: !2240, line: 13, baseType: !143, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2248, file: !2240, line: 14, baseType: !143, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2248, file: !2240, line: 15, baseType: !143, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2248, file: !2240, line: 16, baseType: !143, size: 32, offset: 96)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2248, file: !2240, line: 17, baseType: !143, size: 32, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2248, file: !2240, line: 18, baseType: !143, size: 32, offset: 160)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2248, file: !2240, line: 19, baseType: !143, size: 32, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2248, file: !2240, line: 22, baseType: !2258, size: 640, offset: 224)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !189)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2248, file: !2240, line: 25, baseType: !143, size: 32, offset: 864)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2245, file: !2240, line: 306, baseType: !2261, size: 4096, align: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2240, line: 34, size: 4096, align: 128, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2282, !2283, !2284, !2288, !2290, !2294}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2261, file: !2240, line: 35, baseType: !156, size: 16)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2261, file: !2240, line: 36, baseType: !156, size: 16, offset: 16)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2261, file: !2240, line: 37, baseType: !156, size: 16, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2261, file: !2240, line: 38, baseType: !156, size: 16, offset: 48)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !2240, line: 39, baseType: !2268, size: 128, offset: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !2240, line: 39, size: 128, elements: !2269)
!2269 = !{!2270, !2275}
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2240, line: 40, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !2240, line: 40, size: 128, elements: !2272)
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2271, file: !2240, line: 41, baseType: !460, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2271, file: !2240, line: 42, baseType: !460, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2240, line: 44, baseType: !2276, size: 128)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !2240, line: 44, size: 128, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2276, file: !2240, line: 45, baseType: !143, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2276, file: !2240, line: 46, baseType: !143, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2276, file: !2240, line: 47, baseType: !143, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2276, file: !2240, line: 48, baseType: !143, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2261, file: !2240, line: 51, baseType: !143, size: 32, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2261, file: !2240, line: 52, baseType: !143, size: 32, offset: 224)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2261, file: !2240, line: 55, baseType: !2285, size: 1024, offset: 256)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !2286)
!2286 = !{!2287}
!2287 = !DISubrange(count: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2261, file: !2240, line: 58, baseType: !2289, size: 2048, offset: 1280)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !322)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2261, file: !2240, line: 60, baseType: !2291, size: 384, offset: 3328)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 12)
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !2240, line: 62, baseType: !2295, size: 384, offset: 3712)
!2295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !2240, line: 62, size: 384, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2295, file: !2240, line: 63, baseType: !2291, size: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2295, file: !2240, line: 64, baseType: !2291, size: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2245, file: !2240, line: 307, baseType: !2300, size: 1088)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2240, line: 79, size: 1088, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2348}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2300, file: !2240, line: 80, baseType: !143, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2300, file: !2240, line: 81, baseType: !143, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2300, file: !2240, line: 82, baseType: !143, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2300, file: !2240, line: 83, baseType: !143, size: 32, offset: 96)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2300, file: !2240, line: 84, baseType: !143, size: 32, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2300, file: !2240, line: 85, baseType: !143, size: 32, offset: 160)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2300, file: !2240, line: 86, baseType: !143, size: 32, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2300, file: !2240, line: 88, baseType: !2258, size: 640, offset: 224)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2300, file: !2240, line: 89, baseType: !160, size: 8, offset: 864)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2300, file: !2240, line: 90, baseType: !160, size: 8, offset: 872)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2300, file: !2240, line: 91, baseType: !160, size: 8, offset: 880)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2300, file: !2240, line: 92, baseType: !160, size: 8, offset: 888)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2300, file: !2240, line: 93, baseType: !160, size: 8, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2300, file: !2240, line: 94, baseType: !160, size: 8, offset: 904)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2300, file: !2240, line: 95, baseType: !2317, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2319, line: 11, size: 128, elements: !2320)
!2319 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2318, file: !2319, line: 12, baseType: !352, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2318, file: !2319, line: 13, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2325, line: 56, size: 1344, elements: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2324, file: !2325, line: 61, baseType: !366, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2324, file: !2325, line: 62, baseType: !366, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2324, file: !2325, line: 63, baseType: !366, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2324, file: !2325, line: 64, baseType: !366, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2324, file: !2325, line: 65, baseType: !366, size: 64, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2324, file: !2325, line: 66, baseType: !366, size: 64, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2324, file: !2325, line: 68, baseType: !366, size: 64, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2324, file: !2325, line: 69, baseType: !366, size: 64, offset: 448)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2324, file: !2325, line: 70, baseType: !366, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2324, file: !2325, line: 71, baseType: !366, size: 64, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2324, file: !2325, line: 72, baseType: !366, size: 64, offset: 640)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2324, file: !2325, line: 73, baseType: !366, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2324, file: !2325, line: 74, baseType: !366, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2324, file: !2325, line: 75, baseType: !366, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2324, file: !2325, line: 76, baseType: !366, size: 64, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2324, file: !2325, line: 81, baseType: !366, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2324, file: !2325, line: 83, baseType: !366, size: 64, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2324, file: !2325, line: 84, baseType: !366, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !2325, line: 85, baseType: !366, size: 64, offset: 1152)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2324, file: !2325, line: 86, baseType: !366, size: 64, offset: 1216)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2324, file: !2325, line: 87, baseType: !366, size: 64, offset: 1280)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2300, file: !2240, line: 96, baseType: !143, size: 32, offset: 1024)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2245, file: !2240, line: 308, baseType: !2350, size: 4608, align: 512)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2240, line: 289, size: 4608, align: 512, elements: !2351)
!2351 = !{!2352, !2353, !2360}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2350, file: !2240, line: 290, baseType: !2261, size: 4096, align: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2350, file: !2240, line: 291, baseType: !2354, size: 512, offset: 4096)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2240, line: 268, size: 512, elements: !2355)
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2354, file: !2240, line: 269, baseType: !460, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2354, file: !2240, line: 270, baseType: !460, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2354, file: !2240, line: 271, baseType: !2359, size: 384, offset: 128)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !1682)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2350, file: !2240, line: 292, baseType: !2361, offset: 4608)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !1780)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2245, file: !2240, line: 309, baseType: !2363, size: 32768)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 32768, elements: !2364)
!2364 = !{!2365}
!2365 = !DISubrange(count: 4096)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1274, file: !813, line: 378, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1270, file: !813, line: 384, baseType: !1559, size: 192, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1061, file: !813, line: 500, baseType: !276, offset: 6656)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1061, file: !813, line: 501, baseType: !2371, size: 64, offset: 6656)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !813, line: 387, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1061, file: !813, line: 516, baseType: !1770, size: 64, offset: 6720)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1061, file: !813, line: 519, baseType: !395, size: 64, offset: 6784)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1061, file: !813, line: 521, baseType: !2376, size: 64, offset: 6848)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !813, line: 521, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1061, file: !813, line: 545, baseType: !838, size: 32, offset: 6912)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1061, file: !813, line: 548, baseType: !528, size: 8, offset: 6944)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1061, file: !813, line: 550, baseType: !2381, offset: 6952)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2382, line: 142, elements: !290)
!2382 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1061, file: !813, line: 554, baseType: !2015, size: 256, offset: 6976)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1061, file: !813, line: 557, baseType: !143, size: 32, offset: 7232)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1058, file: !813, line: 565, baseType: !2386, offset: 7296)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !2387)
!2387 = !{!2388}
!2388 = !DISubrange(count: -1)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1054, file: !813, line: 151, baseType: !838, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1046, file: !813, line: 156, baseType: !276, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 159, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 159, size: 128, elements: !2393)
!2393 = !{!2394, !2458}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2392, file: !813, line: 161, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2397)
!2397 = !{!2398, !2408, !2429, !2430, !2431, !2432, !2433, !2445, !2446, !2447}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2396, file: !31, line: 111, baseType: !2399, size: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2400)
!2400 = !{!2401, !2403, !2404, !2405, !2406, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2399, file: !31, line: 20, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2399, file: !31, line: 21, baseType: !2402, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2399, file: !31, line: 22, baseType: !2402, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2399, file: !31, line: 23, baseType: !366, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2399, file: !31, line: 24, baseType: !366, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2399, file: !31, line: 25, baseType: !366, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2396, file: !31, line: 112, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2411, line: 105, size: 128, elements: !2412)
!2411 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2410, file: !2411, line: 110, baseType: !366, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2410, file: !2411, line: 118, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2411, line: 95, size: 448, elements: !2417)
!2417 = !{!2418, !2419, !2424, !2425, !2426, !2427, !2428}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2416, file: !2411, line: 96, baseType: !768, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2416, file: !2411, line: 97, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2411, line: 60, baseType: !2422)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2409}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2416, file: !2411, line: 98, baseType: !2420, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2416, file: !2411, line: 99, baseType: !528, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2416, file: !2411, line: 100, baseType: !528, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2416, file: !2411, line: 101, baseType: !408, size: 128, align: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2416, file: !2411, line: 102, baseType: !2409, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2396, file: !31, line: 113, baseType: !2410, size: 128, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2396, file: !31, line: 114, baseType: !1559, size: 192, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2396, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2396, file: !31, line: 117, baseType: !2434, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2437)
!2437 = !{!2438, !2439, !2443, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2436, file: !31, line: 73, baseType: !924, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2436, file: !31, line: 78, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2395}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2436, file: !31, line: 83, baseType: !2440, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2436, file: !31, line: 89, baseType: !1110, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2396, file: !31, line: 118, baseType: !390, size: 64, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2396, file: !31, line: 119, baseType: !147, size: 32, offset: 960)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !31, line: 120, baseType: !2448, size: 128, offset: 1024)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !31, line: 120, size: 128, elements: !2449)
!2449 = !{!2450, !2456}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2448, file: !31, line: 121, baseType: !2451, size: 128)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2452, line: 6, size: 128, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2451, file: !2452, line: 7, baseType: !460, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2451, file: !2452, line: 8, baseType: !460, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2448, file: !31, line: 122, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2451, elements: !1780)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2392, file: !813, line: 162, baseType: !390, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !817, file: !813, line: 176, baseType: !408, size: 128, align: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !813, line: 179, baseType: !2461, size: 32, offset: 384)
!2461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !812, file: !813, line: 179, size: 32, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2461, file: !813, line: 184, baseType: !838, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2461, file: !813, line: 192, baseType: !7, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2461, file: !813, line: 194, baseType: !7, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2461, file: !813, line: 195, baseType: !147, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !812, file: !813, line: 199, baseType: !838, size: 32, offset: 416)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !698, file: !44, line: 1964, baseType: !2469, size: 64, offset: 1344)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!352, !637, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2474, line: 12, size: 256, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476, !2477, !2478, !2479, !2480}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2473, file: !2474, line: 13, baseType: !834, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2473, file: !2474, line: 16, baseType: !147, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2473, file: !2474, line: 23, baseType: !366, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2473, file: !2474, line: 30, baseType: !366, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2473, file: !2474, line: 33, baseType: !2481, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !813, line: 27, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !698, file: !44, line: 1966, baseType: !2469, size: 64, offset: 1408)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !638, file: !44, line: 1424, baseType: !2485, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2488)
!2488 = !{!2489, !2535, !2539, !2543, !2544, !2545, !2546, !2547, !2552, !2557, !2561}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2487, file: !38, line: 323, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!147, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2520, !2521, !2522}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2494, file: !38, line: 295, baseType: !680, size: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2494, file: !38, line: 296, baseType: !262, size: 128, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2494, file: !38, line: 297, baseType: !262, size: 128, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2494, file: !38, line: 298, baseType: !262, size: 128, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2494, file: !38, line: 299, baseType: !764, size: 192, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2494, file: !38, line: 300, baseType: !276, offset: 704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2494, file: !38, line: 301, baseType: !838, size: 32, offset: 704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2494, file: !38, line: 302, baseType: !637, size: 64, offset: 768)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2494, file: !38, line: 303, baseType: !2505, size: 64, offset: 832)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2506)
!2506 = !{!2507, !2519}
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2505, file: !38, line: 69, baseType: !2508, size: 32)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2505, file: !38, line: 69, size: 32, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2508, file: !38, line: 70, baseType: !473, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2508, file: !38, line: 71, baseType: !481, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2508, file: !38, line: 72, baseType: !2513, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2514, line: 24, baseType: !2515)
!2514 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2514, line: 22, size: 32, elements: !2516)
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2515, file: !2514, line: 23, baseType: !2518, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2514, line: 20, baseType: !479)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2505, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2494, file: !38, line: 304, baseType: !569, size: 64, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2494, file: !38, line: 305, baseType: !366, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2494, file: !38, line: 306, baseType: !2523, size: 576, offset: 1024)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2524)
!2524 = !{!2525, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2523, file: !38, line: 206, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !571)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2523, file: !38, line: 207, baseType: !2526, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2523, file: !38, line: 208, baseType: !2526, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2523, file: !38, line: 209, baseType: !2526, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2523, file: !38, line: 210, baseType: !2526, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2523, file: !38, line: 211, baseType: !2526, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2523, file: !38, line: 212, baseType: !2526, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2523, file: !38, line: 213, baseType: !577, size: 64, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2523, file: !38, line: 214, baseType: !577, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2487, file: !38, line: 324, baseType: !2536, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2493, !637, !147}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2487, file: !38, line: 325, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2493}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2487, file: !38, line: 326, baseType: !2490, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2487, file: !38, line: 327, baseType: !2490, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2487, file: !38, line: 328, baseType: !2490, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2487, file: !38, line: 329, baseType: !726, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2487, file: !38, line: 332, baseType: !2548, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2551, !467}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2487, file: !38, line: 333, baseType: !2553, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!147, !467, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2487, file: !38, line: 335, baseType: !2558, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!147, !467, !2551}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2487, file: !38, line: 337, baseType: !2562, size: 64, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!147, !637, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !638, file: !44, line: 1425, baseType: !2567, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2570)
!2570 = !{!2571, !2575, !2576, !2580, !2581, !2582, !2597, !2620, !2624, !2625, !2648}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2569, file: !38, line: 429, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!147, !637, !147, !147, !587}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2569, file: !38, line: 430, baseType: !726, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2569, file: !38, line: 431, baseType: !2577, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!147, !637, !7}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2569, file: !38, line: 432, baseType: !2577, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2569, file: !38, line: 433, baseType: !726, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2569, file: !38, line: 434, baseType: !2583, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!147, !637, !147, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2587, file: !38, line: 416, baseType: !147, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2587, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2587, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2587, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2587, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2587, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2587, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2587, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2569, file: !38, line: 435, baseType: !2598, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!147, !637, !2505, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2602, file: !38, line: 344, baseType: !147, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2602, file: !38, line: 345, baseType: !460, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2602, file: !38, line: 346, baseType: !460, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2602, file: !38, line: 347, baseType: !460, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2602, file: !38, line: 348, baseType: !460, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2602, file: !38, line: 349, baseType: !460, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2602, file: !38, line: 350, baseType: !460, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2602, file: !38, line: 351, baseType: !774, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2602, file: !38, line: 353, baseType: !774, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2602, file: !38, line: 354, baseType: !147, size: 32, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2602, file: !38, line: 355, baseType: !147, size: 32, offset: 608)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2602, file: !38, line: 356, baseType: !460, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2602, file: !38, line: 357, baseType: !460, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2602, file: !38, line: 358, baseType: !460, size: 64, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2602, file: !38, line: 359, baseType: !774, size: 64, offset: 832)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2602, file: !38, line: 360, baseType: !147, size: 32, offset: 896)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2569, file: !38, line: 436, baseType: !2621, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!147, !637, !2565, !2601}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2569, file: !38, line: 438, baseType: !2598, size: 64, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2569, file: !38, line: 439, baseType: !2626, size: 64, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!147, !637, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2630, file: !38, line: 410, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2630, file: !38, line: 411, baseType: !2634, size: 1344, offset: 64)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 1344, elements: !318)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2647}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2635, file: !38, line: 396, baseType: !7, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2635, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2635, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2635, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2635, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2635, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2635, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2635, file: !38, line: 404, baseType: !462, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2635, file: !38, line: 405, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !263, line: 126, baseType: !460)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2635, file: !38, line: 406, baseType: !2646, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2569, file: !38, line: 440, baseType: !2577, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !638, file: !44, line: 1426, baseType: !2650, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !638, file: !44, line: 1427, baseType: !366, size: 64, offset: 640)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !638, file: !44, line: 1428, baseType: !366, size: 64, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !638, file: !44, line: 1429, baseType: !366, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !638, file: !44, line: 1430, baseType: !425, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !638, file: !44, line: 1431, baseType: !858, size: 256, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !638, file: !44, line: 1432, baseType: !147, size: 32, offset: 1152)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !638, file: !44, line: 1433, baseType: !838, size: 32, offset: 1184)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !638, file: !44, line: 1437, baseType: !2661, size: 64, offset: 1216)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !638, file: !44, line: 1449, baseType: !2666, size: 64, offset: 1280)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !441, line: 34, size: 64, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2666, file: !441, line: 35, baseType: !444, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !638, file: !44, line: 1450, baseType: !262, size: 128, offset: 1344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !638, file: !44, line: 1451, baseType: !2671, size: 64, offset: 1472)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !638, file: !44, line: 1452, baseType: !1981, size: 64, offset: 1536)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !638, file: !44, line: 1453, baseType: !2675, size: 64, offset: 1600)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !638, file: !44, line: 1454, baseType: !680, size: 128, offset: 1664)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !638, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !638, file: !44, line: 1456, baseType: !2680, size: 2432, offset: 1856)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2686, !2718}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2680, file: !38, line: 519, baseType: !7, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2680, file: !38, line: 520, baseType: !858, size: 256, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2680, file: !38, line: 521, baseType: !2685, size: 192, offset: 320)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, elements: !318)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2680, file: !38, line: 522, baseType: !2687, size: 1728, offset: 512)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 1728, elements: !318)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2689)
!2689 = !{!2690, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2688, file: !38, line: 223, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2693)
!2693 = !{!2694, !2695, !2708, !2709}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2692, file: !38, line: 444, baseType: !147, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2692, file: !38, line: 445, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2698, file: !38, line: 311, baseType: !726, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2698, file: !38, line: 312, baseType: !726, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2698, file: !38, line: 313, baseType: !726, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2698, file: !38, line: 314, baseType: !726, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2698, file: !38, line: 315, baseType: !2490, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2698, file: !38, line: 316, baseType: !2490, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2698, file: !38, line: 317, baseType: !2490, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2698, file: !38, line: 318, baseType: !2562, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2692, file: !38, line: 446, baseType: !671, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2692, file: !38, line: 447, baseType: !2691, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2688, file: !38, line: 224, baseType: !147, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2688, file: !38, line: 226, baseType: !262, size: 128, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2688, file: !38, line: 227, baseType: !366, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2688, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2688, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2688, file: !38, line: 230, baseType: !2526, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2688, file: !38, line: 231, baseType: !2526, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2688, file: !38, line: 232, baseType: !390, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2680, file: !38, line: 523, baseType: !2719, size: 192, offset: 2240)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 192, elements: !318)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !638, file: !44, line: 1458, baseType: !2721, size: 2112, offset: 4288)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2721, file: !44, line: 1411, baseType: !147, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2721, file: !44, line: 1412, baseType: !1538, size: 128, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2721, file: !44, line: 1413, baseType: !2726, size: 1920, offset: 192)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2727, size: 1920, elements: !318)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2728, line: 12, size: 640, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2729 = !{!2730, !2738, !2740, !2745, !2746}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2727, file: !2728, line: 13, baseType: !2731, size: 320)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2732, line: 17, size: 320, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2731, file: !2732, line: 18, baseType: !147, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2731, file: !2732, line: 19, baseType: !147, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2731, file: !2732, line: 20, baseType: !1538, size: 128, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2731, file: !2732, line: 22, baseType: !408, size: 128, align: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2727, file: !2728, line: 14, baseType: !2739, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2727, file: !2728, line: 15, baseType: !2741, size: 64, offset: 384)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2742, line: 16, size: 64, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2741, file: !2742, line: 17, baseType: !1277, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2727, file: !2728, line: 16, baseType: !1538, size: 128, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2727, file: !2728, line: 17, baseType: !838, size: 32, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !638, file: !44, line: 1465, baseType: !390, size: 64, offset: 6400)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !638, file: !44, line: 1468, baseType: !143, size: 32, offset: 6464)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !638, file: !44, line: 1470, baseType: !577, size: 64, offset: 6528)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !638, file: !44, line: 1471, baseType: !577, size: 64, offset: 6592)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !638, file: !44, line: 1473, baseType: !145, size: 32, offset: 6656)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !638, file: !44, line: 1474, baseType: !2753, size: 64, offset: 6720)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !638, file: !44, line: 1477, baseType: !2756, size: 256, offset: 6784)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !2286)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !638, file: !44, line: 1478, baseType: !2758, size: 128, offset: 7040)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2759, line: 18, baseType: !2760)
!2759 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2759, line: 16, size: 128, elements: !2761)
!2761 = !{!2762}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2760, file: !2759, line: 17, baseType: !2763, size: 128)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !1792)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !638, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !638, file: !44, line: 1481, baseType: !2766, size: 32, offset: 7200)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !263, line: 150, baseType: !7)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !638, file: !44, line: 1487, baseType: !764, size: 192, offset: 7232)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !638, file: !44, line: 1493, baseType: !258, size: 64, offset: 7424)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !638, file: !44, line: 1495, baseType: !2770, size: 64, offset: 7488)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !423, line: 135, size: 1024, align: 512, elements: !2773)
!2773 = !{!2774, !2778, !2779, !2786, !2792, !2796, !2800, !2804, !2805, !2809, !2813, !2818, !2822}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2772, file: !423, line: 136, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!147, !425, !7}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2772, file: !423, line: 137, baseType: !2775, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2772, file: !423, line: 138, baseType: !2780, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!147, !2783, !2785}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2772, file: !423, line: 139, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!147, !2783, !7, !258, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2772, file: !423, line: 141, baseType: !2793, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!147, !2783}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2772, file: !423, line: 142, baseType: !2797, size: 64, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!147, !425}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2772, file: !423, line: 143, baseType: !2801, size: 64, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !425}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2772, file: !423, line: 144, baseType: !2801, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2772, file: !423, line: 145, baseType: !2806, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !425, !467}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2772, file: !423, line: 146, baseType: !2810, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!317, !425, !317, !147}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2772, file: !423, line: 147, baseType: !2814, size: 64, offset: 640)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!421, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2772, file: !423, line: 148, baseType: !2819, size: 64, offset: 704)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!147, !587, !528}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2772, file: !423, line: 149, baseType: !2823, size: 64, offset: 768)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!425, !425, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !638, file: !44, line: 1500, baseType: !147, size: 32, offset: 7552)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !638, file: !44, line: 1502, baseType: !2830, size: 448, offset: 7616)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2474, line: 60, size: 448, elements: !2831)
!2831 = !{!2832, !2837, !2838, !2839, !2840, !2841, !2842}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2830, file: !2474, line: 61, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!366, !2836, !2472}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2830, file: !2474, line: 63, baseType: !2833, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2830, file: !2474, line: 66, baseType: !352, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2830, file: !2474, line: 67, baseType: !147, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !2474, line: 68, baseType: !7, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2830, file: !2474, line: 71, baseType: !262, size: 128, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2830, file: !2474, line: 77, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !638, file: !44, line: 1505, baseType: !768, size: 64, offset: 8064)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !638, file: !44, line: 1508, baseType: !768, size: 64, offset: 8128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !638, file: !44, line: 1511, baseType: !147, size: 32, offset: 8192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !638, file: !44, line: 1514, baseType: !991, size: 32, offset: 8224)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !638, file: !44, line: 1517, baseType: !2849, size: 64, offset: 8256)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2016, line: 18, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !638, file: !44, line: 1518, baseType: !676, size: 64, offset: 8320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !638, file: !44, line: 1525, baseType: !1770, size: 64, offset: 8384)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !638, file: !44, line: 1532, baseType: !2854, size: 64, offset: 8448)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2855, line: 52, size: 64, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2856 = !{!2857}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2854, file: !2855, line: 53, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2855, line: 40, size: 256, elements: !2860)
!2860 = !{!2861, !2862, !2867}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2859, file: !2855, line: 42, baseType: !276)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2859, file: !2855, line: 44, baseType: !2863, size: 192)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2855, line: 28, size: 192, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2863, file: !2855, line: 29, baseType: !262, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2863, file: !2855, line: 31, baseType: !352, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2859, file: !2855, line: 49, baseType: !352, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !638, file: !44, line: 1533, baseType: !2854, size: 64, offset: 8512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !638, file: !44, line: 1534, baseType: !408, size: 128, align: 64, offset: 8576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !638, file: !44, line: 1535, baseType: !2015, size: 256, offset: 8704)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !638, file: !44, line: 1537, baseType: !764, size: 192, offset: 8960)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !638, file: !44, line: 1542, baseType: !147, size: 32, offset: 9152)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !638, file: !44, line: 1545, baseType: !276, offset: 9184)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !638, file: !44, line: 1546, baseType: !262, size: 128, offset: 9216)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !638, file: !44, line: 1548, baseType: !276, offset: 9344)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !638, file: !44, line: 1549, baseType: !262, size: 128, offset: 9344)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !468, file: !44, line: 624, baseType: !824, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !468, file: !44, line: 631, baseType: !366, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !44, line: 639, baseType: !2880, size: 32, offset: 384)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !44, line: 639, size: 32, elements: !2881)
!2881 = !{!2882, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2880, file: !44, line: 640, baseType: !2883, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2880, file: !44, line: 641, baseType: !7, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !468, file: !44, line: 643, baseType: !551, size: 32, offset: 416)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !468, file: !44, line: 644, baseType: !569, size: 64, offset: 448)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !468, file: !44, line: 645, baseType: !573, size: 128, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !468, file: !44, line: 646, baseType: !573, size: 128, offset: 640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !468, file: !44, line: 647, baseType: !573, size: 128, offset: 768)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !468, file: !44, line: 648, baseType: !276, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !468, file: !44, line: 649, baseType: !158, size: 16, offset: 896)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !468, file: !44, line: 650, baseType: !160, size: 8, offset: 912)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !468, file: !44, line: 651, baseType: !160, size: 8, offset: 920)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !468, file: !44, line: 652, baseType: !2646, size: 64, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !468, file: !44, line: 659, baseType: !366, size: 64, offset: 1024)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !468, file: !44, line: 660, baseType: !858, size: 256, offset: 1088)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !468, file: !44, line: 662, baseType: !366, size: 64, offset: 1344)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !468, file: !44, line: 663, baseType: !366, size: 64, offset: 1408)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !468, file: !44, line: 665, baseType: !680, size: 128, offset: 1472)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !468, file: !44, line: 666, baseType: !262, size: 128, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !468, file: !44, line: 675, baseType: !262, size: 128, offset: 1728)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !468, file: !44, line: 676, baseType: !262, size: 128, offset: 1856)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !468, file: !44, line: 677, baseType: !262, size: 128, offset: 1984)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !44, line: 678, baseType: !2905, size: 128, offset: 2112)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !44, line: 678, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2905, file: !44, line: 679, baseType: !676, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2905, file: !44, line: 680, baseType: !408, size: 128, align: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !468, file: !44, line: 682, baseType: !770, size: 64, offset: 2240)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !468, file: !44, line: 683, baseType: !770, size: 64, offset: 2304)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !468, file: !44, line: 684, baseType: !838, size: 32, offset: 2368)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !468, file: !44, line: 685, baseType: !838, size: 32, offset: 2400)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !468, file: !44, line: 686, baseType: !838, size: 32, offset: 2432)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !468, file: !44, line: 688, baseType: !838, size: 32, offset: 2464)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !44, line: 690, baseType: !2916, size: 64, offset: 2496)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !44, line: 690, size: 64, elements: !2917)
!2917 = !{!2918, !3140}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2916, file: !44, line: 691, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2922)
!2922 = !{!2923, !2924, !2928, !2932, !2936, !2937, !2938, !2942, !2955, !2956, !2964, !2968, !2969, !2973, !2974, !2978, !2983, !2984, !2988, !2992, !3100, !3104, !3105, !3109, !3110, !3114, !3118, !3123, !3127, !3131, !3135, !3139}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2921, file: !44, line: 1823, baseType: !671, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2921, file: !44, line: 1824, baseType: !2925, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!569, !395, !569, !147}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2921, file: !44, line: 1825, baseType: !2929, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!348, !395, !317, !363, !786}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2921, file: !44, line: 1826, baseType: !2933, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!348, !395, !258, !363, !786}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2921, file: !44, line: 1827, baseType: !928, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2921, file: !44, line: 1828, baseType: !928, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2921, file: !44, line: 1829, baseType: !2939, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!147, !931, !528}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2921, file: !44, line: 1830, baseType: !2943, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!147, !395, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2948)
!2948 = !{!2949, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2947, file: !44, line: 1777, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!147, !2946, !258, !147, !569, !460, !7}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2947, file: !44, line: 1778, baseType: !569, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2921, file: !44, line: 1831, baseType: !2943, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2921, file: !44, line: 1832, baseType: !2957, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!2960, !395, !2962}
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2961, line: 52, baseType: !7)
!2961 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !657, line: 27, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2921, file: !44, line: 1833, baseType: !2965, size: 64, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!352, !395, !7, !366}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2921, file: !44, line: 1834, baseType: !2965, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2921, file: !44, line: 1835, baseType: !2970, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!147, !395, !1064}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2921, file: !44, line: 1836, baseType: !366, size: 64, offset: 832)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2921, file: !44, line: 1837, baseType: !2975, size: 64, offset: 896)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!147, !467, !395}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2921, file: !44, line: 1838, baseType: !2979, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!147, !395, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !390)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2921, file: !44, line: 1839, baseType: !2975, size: 64, offset: 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2921, file: !44, line: 1840, baseType: !2985, size: 64, offset: 1088)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!147, !395, !569, !569, !147}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2921, file: !44, line: 1841, baseType: !2989, size: 64, offset: 1152)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!147, !147, !395, !147}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2921, file: !44, line: 1842, baseType: !2993, size: 64, offset: 1216)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!147, !395, !147, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3030, !3031, !3032, !3045, !3076}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2997, file: !44, line: 1063, baseType: !2996, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2997, file: !44, line: 1064, baseType: !262, size: 128, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2997, file: !44, line: 1065, baseType: !680, size: 128, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2997, file: !44, line: 1066, baseType: !262, size: 128, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2997, file: !44, line: 1069, baseType: !262, size: 128, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2997, file: !44, line: 1072, baseType: !2982, size: 64, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2997, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2997, file: !44, line: 1074, baseType: !162, size: 8, offset: 672)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2997, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2997, file: !44, line: 1076, baseType: !147, size: 32, offset: 736)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2997, file: !44, line: 1077, baseType: !1538, size: 128, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2997, file: !44, line: 1078, baseType: !395, size: 64, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2997, file: !44, line: 1079, baseType: !569, size: 64, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2997, file: !44, line: 1080, baseType: !569, size: 64, offset: 1024)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2997, file: !44, line: 1082, baseType: !3014, size: 64, offset: 1088)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3016)
!3016 = !{!3017, !3025, !3026, !3027, !3028, !3029}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3015, file: !44, line: 1315, baseType: !3018)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3019, line: 20, baseType: !3020)
!3019 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3019, line: 11, elements: !3021)
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3020, file: !3019, line: 12, baseType: !3023)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !288, line: 33, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 31, elements: !290)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3015, file: !44, line: 1316, baseType: !147, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3015, file: !44, line: 1317, baseType: !147, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3015, file: !44, line: 1318, baseType: !3014, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3015, file: !44, line: 1319, baseType: !395, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3015, file: !44, line: 1320, baseType: !408, size: 128, align: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2997, file: !44, line: 1084, baseType: !366, size: 64, offset: 1152)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2997, file: !44, line: 1085, baseType: !366, size: 64, offset: 1216)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2997, file: !44, line: 1087, baseType: !3033, size: 64, offset: 1280)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3035)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3036)
!3036 = !{!3037, !3041}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3035, file: !44, line: 1012, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2996, !2996}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3035, file: !44, line: 1013, baseType: !3042, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !2996}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2997, file: !44, line: 1088, baseType: !3046, size: 64, offset: 1344)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3049)
!3049 = !{!3050, !3054, !3058, !3059, !3063, !3067, !3071, !3075}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3048, file: !44, line: 1017, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!2982, !2982}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3048, file: !44, line: 1018, baseType: !3055, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2982}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3048, file: !44, line: 1019, baseType: !3042, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3048, file: !44, line: 1020, baseType: !3060, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!147, !2996, !147}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3048, file: !44, line: 1021, baseType: !3064, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!528, !2996}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3048, file: !44, line: 1022, baseType: !3068, size: 64, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!147, !2996, !147, !266}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3048, file: !44, line: 1023, baseType: !3072, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !2996, !905}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3048, file: !44, line: 1024, baseType: !3064, size: 64, offset: 448)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2997, file: !44, line: 1097, baseType: !3077, size: 256, offset: 1408)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2997, file: !44, line: 1089, size: 256, elements: !3078)
!3078 = !{!3079, !3088, !3094}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3077, file: !44, line: 1090, baseType: !3080, size: 256)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3081, line: 10, size: 256, elements: !3082)
!3081 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3082 = !{!3083, !3084, !3087}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3080, file: !3081, line: 11, baseType: !143, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3080, file: !3081, line: 12, baseType: !3085, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3081, line: 5, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3080, file: !3081, line: 13, baseType: !262, size: 128, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3077, file: !44, line: 1091, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3081, line: 17, size: 64, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3089, file: !3081, line: 18, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3081, line: 16, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3077, file: !44, line: 1096, baseType: !3095, size: 192)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3077, file: !44, line: 1092, size: 192, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3095, file: !44, line: 1093, baseType: !262, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3095, file: !44, line: 1094, baseType: !147, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3095, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2921, file: !44, line: 1843, baseType: !3101, size: 64, offset: 1280)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!348, !395, !811, !147, !363, !786, !147}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2921, file: !44, line: 1844, baseType: !1184, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2921, file: !44, line: 1845, baseType: !3106, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!147, !147}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2921, file: !44, line: 1846, baseType: !2993, size: 64, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2921, file: !44, line: 1847, baseType: !3111, size: 64, offset: 1536)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!348, !2156, !395, !786, !363, !7}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2921, file: !44, line: 1848, baseType: !3115, size: 64, offset: 1600)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!348, !395, !786, !2156, !363, !7}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2921, file: !44, line: 1849, baseType: !3119, size: 64, offset: 1664)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!147, !395, !352, !3122, !905}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2921, file: !44, line: 1850, baseType: !3124, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!352, !395, !147, !569, !569}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2921, file: !44, line: 1852, baseType: !3128, size: 64, offset: 1792)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !752, !395}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2921, file: !44, line: 1856, baseType: !3132, size: 64, offset: 1856)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!348, !395, !569, !395, !569, !363, !7}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2921, file: !44, line: 1858, baseType: !3136, size: 64, offset: 1920)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!569, !395, !569, !395, !569, !569, !7}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2921, file: !44, line: 1861, baseType: !2985, size: 64, offset: 1984)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2916, file: !44, line: 692, baseType: !705, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !468, file: !44, line: 694, baseType: !3142, size: 64, offset: 2560)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3143, file: !44, line: 1101, baseType: !276)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3143, file: !44, line: 1102, baseType: !262, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3143, file: !44, line: 1103, baseType: !262, size: 128, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3143, file: !44, line: 1104, baseType: !262, size: 128, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !468, file: !44, line: 695, baseType: !825, size: 1216, align: 64, offset: 2624)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !468, file: !44, line: 696, baseType: !262, size: 128, offset: 3840)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !44, line: 697, baseType: !3152, size: 64, offset: 3968)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !44, line: 697, size: 64, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3167, !3168}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3152, file: !44, line: 698, baseType: !2156, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3152, file: !44, line: 699, baseType: !2671, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3152, file: !44, line: 700, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3159, line: 14, size: 832, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3158, file: !3159, line: 15, baseType: !254, size: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3158, file: !3159, line: 16, baseType: !671, size: 64, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3158, file: !3159, line: 17, baseType: !2919, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3158, file: !3159, line: 18, baseType: !262, size: 128, offset: 640)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3158, file: !3159, line: 19, baseType: !551, size: 32, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3158, file: !3159, line: 20, baseType: !7, size: 32, offset: 800)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3152, file: !44, line: 701, baseType: !317, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3152, file: !44, line: 702, baseType: !7, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !468, file: !44, line: 705, baseType: !145, size: 32, offset: 4032)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !468, file: !44, line: 708, baseType: !145, size: 32, offset: 4064)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !468, file: !44, line: 709, baseType: !2753, size: 64, offset: 4096)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !468, file: !44, line: 720, baseType: !390, size: 64, offset: 4160)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !426, file: !423, line: 98, baseType: !3174, size: 256, offset: 448)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !2286)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !426, file: !423, line: 101, baseType: !3176, size: 32, offset: 704)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3177, line: 25, size: 32, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3178 = !{!3179}
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !3177, line: 26, baseType: !3180, size: 32)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3176, file: !3177, line: 26, size: 32, elements: !3181)
!3181 = !{!3182}
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !3177, line: 30, baseType: !3183, size: 32)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3180, file: !3177, line: 30, size: 32, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3183, file: !3177, line: 31, baseType: !276)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3183, file: !3177, line: 32, baseType: !147, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !426, file: !423, line: 102, baseType: !2770, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !426, file: !423, line: 103, baseType: !637, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !426, file: !423, line: 104, baseType: !366, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !426, file: !423, line: 105, baseType: !390, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !423, line: 107, baseType: !3192, size: 128, offset: 1024)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 107, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3192, file: !423, line: 108, baseType: !262, size: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3192, file: !423, line: 109, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !426, file: !423, line: 111, baseType: !262, size: 128, offset: 1152)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !426, file: !423, line: 112, baseType: !262, size: 128, offset: 1280)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !426, file: !423, line: 120, baseType: !3200, size: 128, offset: 1408)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 116, size: 128, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3200, file: !423, line: 117, baseType: !680, size: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3200, file: !423, line: 118, baseType: !440, size: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3200, file: !423, line: 119, baseType: !408, size: 128, align: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !396, file: !44, line: 922, baseType: !467, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !396, file: !44, line: 923, baseType: !2919, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !396, file: !44, line: 929, baseType: !276, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !396, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !396, file: !44, line: 931, baseType: !768, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !396, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !396, file: !44, line: 933, baseType: !2766, size: 32, offset: 544)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !396, file: !44, line: 934, baseType: !764, size: 192, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !396, file: !44, line: 935, baseType: !569, size: 64, offset: 768)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !396, file: !44, line: 936, baseType: !3215, size: 192, offset: 832)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !44, line: 886, baseType: !3018)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3215, file: !44, line: 887, baseType: !1528, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3215, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3215, file: !44, line: 889, baseType: !473, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3215, file: !44, line: 889, baseType: !473, size: 32, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3215, file: !44, line: 890, baseType: !147, size: 32, offset: 160)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !396, file: !44, line: 937, baseType: !1604, size: 64, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !396, file: !44, line: 938, baseType: !3225, size: 256, offset: 1088)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3225, file: !44, line: 897, baseType: !366, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3225, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3225, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3225, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3225, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3225, file: !44, line: 904, baseType: !569, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !396, file: !44, line: 940, baseType: !460, size: 64, offset: 1344)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !396, file: !44, line: 945, baseType: !390, size: 64, offset: 1408)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !396, file: !44, line: 949, baseType: !262, size: 128, offset: 1472)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !396, file: !44, line: 950, baseType: !262, size: 128, offset: 1600)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !396, file: !44, line: 952, baseType: !824, size: 64, offset: 1728)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !396, file: !44, line: 953, baseType: !991, size: 32, offset: 1792)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !396, file: !44, line: 954, baseType: !991, size: 32, offset: 1824)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !385, file: !342, line: 174, baseType: !392, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !385, file: !342, line: 176, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!147, !395, !269, !384, !1064}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !373, file: !342, line: 90, baseType: !368, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !373, file: !342, line: 91, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !332, file: !255, line: 143, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!3252, !269}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3255)
!3255 = !{!3256, !3257, !3261, !3265, !3271, !3275}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3254, file: !61, line: 40, baseType: !60, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3254, file: !61, line: 41, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!528}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3254, file: !61, line: 42, baseType: !3262, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!390}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3254, file: !61, line: 43, baseType: !3266, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!2185, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3254, file: !61, line: 44, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!2185}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3254, file: !61, line: 45, baseType: !506, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !332, file: !255, line: 144, baseType: !3277, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!2185, !269}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !332, file: !255, line: 145, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !269, !3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !254, file: !255, line: 70, baseType: !3287, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !657, line: 123, size: 1024, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3406, !3407, !3408, !3409, !3410}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3288, file: !657, line: 124, baseType: !838, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3288, file: !657, line: 125, baseType: !838, size: 32, offset: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3288, file: !657, line: 135, baseType: !3287, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3288, file: !657, line: 136, baseType: !258, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3288, file: !657, line: 138, baseType: !851, size: 192, align: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3288, file: !657, line: 140, baseType: !2185, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3288, file: !657, line: 141, baseType: !7, size: 32, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !3288, file: !657, line: 142, baseType: !3298, size: 256, offset: 512)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3288, file: !657, line: 142, size: 256, elements: !3299)
!3299 = !{!3300, !3346, !3350}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3298, file: !657, line: 143, baseType: !3301, size: 192)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !657, line: 91, size: 192, elements: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3301, file: !657, line: 92, baseType: !366, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3301, file: !657, line: 94, baseType: !847, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3301, file: !657, line: 100, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !657, line: 180, size: 704, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3318, !3319, !3320, !3344, !3345}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3307, file: !657, line: 182, baseType: !3287, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3307, file: !657, line: 183, baseType: !7, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3307, file: !657, line: 186, baseType: !3312, size: 192, offset: 128)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3313, line: 19, size: 192, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3314 = !{!3315, !3316, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3312, file: !3313, line: 20, baseType: !829, size: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3312, file: !3313, line: 21, baseType: !7, size: 32, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3312, file: !3313, line: 22, baseType: !7, size: 32, offset: 160)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3307, file: !657, line: 187, baseType: !143, size: 32, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3307, file: !657, line: 188, baseType: !143, size: 32, offset: 352)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3307, file: !657, line: 189, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !657, line: 168, size: 320, elements: !3323)
!3323 = !{!3324, !3328, !3332, !3336, !3340}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3322, file: !657, line: 169, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!147, !752, !3306}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3322, file: !657, line: 171, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!147, !3287, !258, !358}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3322, file: !657, line: 173, baseType: !3333, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!147, !3287}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3322, file: !657, line: 174, baseType: !3337, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!147, !3287, !3287, !258}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3322, file: !657, line: 176, baseType: !3341, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!147, !752, !3287, !3306}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3307, file: !657, line: 192, baseType: !262, size: 128, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3307, file: !657, line: 194, baseType: !1538, size: 128, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3298, file: !657, line: 144, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !657, line: 103, size: 64, elements: !3348)
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3347, file: !657, line: 104, baseType: !3287, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3298, file: !657, line: 145, baseType: !3351, size: 256)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !657, line: 107, size: 256, elements: !3352)
!3352 = !{!3353, !3401, !3404, !3405}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3351, file: !657, line: 108, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !657, line: 217, size: 768, elements: !3357)
!3357 = !{!3358, !3378, !3382, !3383, !3384, !3385, !3386, !3390, !3391, !3392, !3393, !3397}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3356, file: !657, line: 222, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!147, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !657, line: 197, size: 1088, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3363, file: !657, line: 199, baseType: !3287, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3363, file: !657, line: 200, baseType: !395, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3363, file: !657, line: 201, baseType: !752, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3363, file: !657, line: 202, baseType: !390, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3363, file: !657, line: 205, baseType: !764, size: 192, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3363, file: !657, line: 206, baseType: !764, size: 192, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3363, file: !657, line: 207, baseType: !147, size: 32, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3363, file: !657, line: 208, baseType: !262, size: 128, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3363, file: !657, line: 209, baseType: !317, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3363, file: !657, line: 211, baseType: !363, size: 64, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3363, file: !657, line: 212, baseType: !528, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3363, file: !657, line: 213, baseType: !528, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3363, file: !657, line: 214, baseType: !1092, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3356, file: !657, line: 223, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !3362}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3356, file: !657, line: 236, baseType: !796, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3356, file: !657, line: 238, baseType: !783, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3356, file: !657, line: 239, baseType: !792, size: 64, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3356, file: !657, line: 240, baseType: !788, size: 64, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3356, file: !657, line: 242, baseType: !3387, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!348, !3362, !317, !363, !569}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3356, file: !657, line: 252, baseType: !363, size: 64, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3356, file: !657, line: 259, baseType: !528, size: 8, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3356, file: !657, line: 260, baseType: !3387, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3356, file: !657, line: 263, baseType: !3394, size: 64, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!2960, !3362, !2962}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3356, file: !657, line: 266, baseType: !3398, size: 64, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!147, !3362, !1064}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3351, file: !657, line: 109, baseType: !3402, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !657, line: 31, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3351, file: !657, line: 110, baseType: !569, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3351, file: !657, line: 111, baseType: !3287, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3288, file: !657, line: 148, baseType: !390, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3288, file: !657, line: 154, baseType: !460, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3288, file: !657, line: 156, baseType: !158, size: 16, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3288, file: !657, line: 157, baseType: !358, size: 16, offset: 912)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3288, file: !657, line: 158, baseType: !3411, size: 64, offset: 960)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !657, line: 32, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !254, file: !255, line: 71, baseType: !3414, size: 32, offset: 448)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3415, line: 19, size: 32, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3414, file: !3415, line: 20, baseType: !1291, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !254, file: !255, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !254, file: !255, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !254, file: !255, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !254, file: !255, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !254, file: !255, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !73, line: 463, baseType: !250, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !251, file: !73, line: 465, baseType: !3425, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !251, file: !73, line: 467, baseType: !258, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !251, file: !73, line: 468, baseType: !3429, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3439, !3444, !3448}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3431, file: !73, line: 88, baseType: !258, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3431, file: !73, line: 89, baseType: !370, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3431, file: !73, line: 90, baseType: !3436, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!147, !250, !312}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3431, file: !73, line: 91, baseType: !3440, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!317, !250, !3443, !3284, !3285}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3431, file: !73, line: 93, baseType: !3445, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !250}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3431, file: !73, line: 95, baseType: !3449, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3452)
!3452 = !{!3453, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3451, file: !80, line: 279, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!147, !250}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3451, file: !80, line: 280, baseType: !3445, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !80, line: 281, baseType: !3454, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !80, line: 282, baseType: !3454, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3451, file: !80, line: 283, baseType: !3454, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3451, file: !80, line: 284, baseType: !3454, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3451, file: !80, line: 285, baseType: !3454, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3451, file: !80, line: 286, baseType: !3454, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3451, file: !80, line: 287, baseType: !3454, size: 64, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3451, file: !80, line: 288, baseType: !3454, size: 64, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3451, file: !80, line: 289, baseType: !3454, size: 64, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3451, file: !80, line: 290, baseType: !3454, size: 64, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3451, file: !80, line: 291, baseType: !3454, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3451, file: !80, line: 292, baseType: !3454, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3451, file: !80, line: 293, baseType: !3454, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3451, file: !80, line: 294, baseType: !3454, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3451, file: !80, line: 295, baseType: !3454, size: 64, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3451, file: !80, line: 296, baseType: !3454, size: 64, offset: 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3451, file: !80, line: 297, baseType: !3454, size: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3451, file: !80, line: 298, baseType: !3454, size: 64, offset: 1216)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3451, file: !80, line: 299, baseType: !3454, size: 64, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3451, file: !80, line: 300, baseType: !3454, size: 64, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3451, file: !80, line: 301, baseType: !3454, size: 64, offset: 1408)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !251, file: !73, line: 470, baseType: !3480, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3482, line: 82, size: 1408, elements: !3483)
!3482 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3565, !3568, !3569}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3481, file: !3482, line: 83, baseType: !258, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3481, file: !3482, line: 84, baseType: !258, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3481, file: !3482, line: 85, baseType: !250, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3481, file: !3482, line: 86, baseType: !370, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3481, file: !3482, line: 87, baseType: !370, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3481, file: !3482, line: 88, baseType: !370, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3481, file: !3482, line: 90, baseType: !3491, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!147, !250, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503, !3516, !3529, !3530, !3531, !3532, !3533, !3541, !3542, !3543, !3544, !3545, !3546}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3495, file: !67, line: 96, baseType: !258, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3495, file: !67, line: 97, baseType: !3480, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3495, file: !67, line: 99, baseType: !671, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3495, file: !67, line: 100, baseType: !258, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3495, file: !67, line: 102, baseType: !528, size: 8, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3495, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3495, file: !67, line: 105, baseType: !3504, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3507, line: 262, size: 1600, elements: !3508)
!3507 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3508 = !{!3509, !3510, !3511, !3515}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3506, file: !3507, line: 263, baseType: !2756, size: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3506, file: !3507, line: 264, baseType: !2756, size: 256, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3506, file: !3507, line: 265, baseType: !3512, size: 1024, offset: 512)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3506, file: !3507, line: 266, baseType: !2185, size: 64, offset: 1536)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3495, file: !67, line: 106, baseType: !3517, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3507, line: 210, size: 256, elements: !3520)
!3520 = !{!3521, !3525, !3527, !3528}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3519, file: !3507, line: 211, baseType: !3522, size: 72)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 72, elements: !3523)
!3523 = !{!3524}
!3524 = !DISubrange(count: 9)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3519, file: !3507, line: 212, baseType: !3526, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3507, line: 14, baseType: !366)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3519, file: !3507, line: 213, baseType: !145, size: 32, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3519, file: !3507, line: 214, baseType: !145, size: 32, offset: 224)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3495, file: !67, line: 108, baseType: !3454, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3495, file: !67, line: 109, baseType: !3445, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3495, file: !67, line: 110, baseType: !3454, size: 64, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3495, file: !67, line: 111, baseType: !3445, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3495, file: !67, line: 112, baseType: !3534, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!147, !250, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3538, file: !80, line: 51, baseType: !147, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3495, file: !67, line: 113, baseType: !3454, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3495, file: !67, line: 114, baseType: !370, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3495, file: !67, line: 115, baseType: !370, size: 64, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3495, file: !67, line: 117, baseType: !3449, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3495, file: !67, line: 118, baseType: !3445, size: 64, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3495, file: !67, line: 120, baseType: !3547, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3481, file: !3482, line: 91, baseType: !3436, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3481, file: !3482, line: 92, baseType: !3454, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3481, file: !3482, line: 93, baseType: !3445, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3481, file: !3482, line: 94, baseType: !3454, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3481, file: !3482, line: 95, baseType: !3445, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3481, file: !3482, line: 97, baseType: !3454, size: 64, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3481, file: !3482, line: 98, baseType: !3454, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3481, file: !3482, line: 100, baseType: !3534, size: 64, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3481, file: !3482, line: 101, baseType: !3454, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3481, file: !3482, line: 103, baseType: !3454, size: 64, offset: 1024)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3481, file: !3482, line: 105, baseType: !3454, size: 64, offset: 1088)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3481, file: !3482, line: 107, baseType: !3449, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3481, file: !3482, line: 109, baseType: !3562, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3482, line: 109, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3481, file: !3482, line: 111, baseType: !3566, size: 64, offset: 1280)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3482, line: 111, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3481, file: !3482, line: 112, baseType: !686, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3481, file: !3482, line: 114, baseType: !528, size: 8, offset: 1344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !251, file: !73, line: 471, baseType: !3494, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !251, file: !73, line: 473, baseType: !390, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !251, file: !73, line: 475, baseType: !390, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !251, file: !73, line: 480, baseType: !764, size: 192, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !251, file: !73, line: 484, baseType: !3575, size: 576, offset: 1216)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3575, file: !73, line: 362, baseType: !262, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3575, file: !73, line: 363, baseType: !262, size: 128, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3575, file: !73, line: 364, baseType: !262, size: 128, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3575, file: !73, line: 365, baseType: !262, size: 128, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3575, file: !73, line: 366, baseType: !528, size: 8, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3575, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !251, file: !73, line: 485, baseType: !3584, size: 2304, offset: 1792)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3681, !3685}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3584, file: !80, line: 566, baseType: !3537, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3584, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3584, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3584, file: !80, line: 569, baseType: !528, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3584, file: !80, line: 570, baseType: !528, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3584, file: !80, line: 571, baseType: !528, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3584, file: !80, line: 572, baseType: !528, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3584, file: !80, line: 573, baseType: !528, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3584, file: !80, line: 574, baseType: !528, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3584, file: !80, line: 575, baseType: !528, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3584, file: !80, line: 576, baseType: !528, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3584, file: !80, line: 577, baseType: !143, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !80, line: 578, baseType: !276, offset: 96)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3584, file: !80, line: 580, baseType: !262, size: 128, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3584, file: !80, line: 581, baseType: !1559, size: 192, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3584, file: !80, line: 582, baseType: !3602, size: 64, offset: 448)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3604, line: 43, size: 1472, elements: !3605)
!3604 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3613, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3603, file: !3604, line: 44, baseType: !258, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3603, file: !3604, line: 45, baseType: !147, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3603, file: !3604, line: 46, baseType: !262, size: 128, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3603, file: !3604, line: 47, baseType: !276, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3603, file: !3604, line: 48, baseType: !3611, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3603, file: !3604, line: 49, baseType: !3614, size: 320, offset: 320)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3615, line: 11, size: 320, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3616 = !{!3617, !3618, !3619, !3624}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3614, file: !3615, line: 16, baseType: !680, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3614, file: !3615, line: 17, baseType: !366, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3614, file: !3615, line: 18, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3614, file: !3615, line: 19, baseType: !143, size: 32, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3603, file: !3604, line: 50, baseType: !366, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3603, file: !3604, line: 51, baseType: !1361, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3603, file: !3604, line: 52, baseType: !1361, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3603, file: !3604, line: 53, baseType: !1361, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3603, file: !3604, line: 54, baseType: !1361, size: 64, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3603, file: !3604, line: 55, baseType: !1361, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3603, file: !3604, line: 56, baseType: !366, size: 64, offset: 1024)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3603, file: !3604, line: 57, baseType: !366, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3603, file: !3604, line: 58, baseType: !366, size: 64, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3603, file: !3604, line: 59, baseType: !366, size: 64, offset: 1216)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3603, file: !3604, line: 60, baseType: !366, size: 64, offset: 1280)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3603, file: !3604, line: 61, baseType: !250, size: 64, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3603, file: !3604, line: 62, baseType: !528, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3603, file: !3604, line: 63, baseType: !528, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3584, file: !80, line: 583, baseType: !528, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3584, file: !80, line: 584, baseType: !528, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3584, file: !80, line: 585, baseType: !528, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3584, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3584, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3584, file: !80, line: 592, baseType: !1353, size: 512, offset: 576)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3584, file: !80, line: 593, baseType: !460, size: 64, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3584, file: !80, line: 594, baseType: !2015, size: 256, offset: 1152)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3584, file: !80, line: 595, baseType: !1538, size: 128, offset: 1408)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3584, file: !80, line: 596, baseType: !3611, size: 64, offset: 1536)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3584, file: !80, line: 597, baseType: !838, size: 32, offset: 1600)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3584, file: !80, line: 598, baseType: !838, size: 32, offset: 1632)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3584, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3584, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3584, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3584, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3584, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3584, file: !80, line: 604, baseType: !528, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3584, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3584, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3584, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3584, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3584, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3584, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3584, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3584, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3584, file: !80, line: 613, baseType: !147, size: 32, offset: 1792)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3584, file: !80, line: 614, baseType: !147, size: 32, offset: 1824)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3584, file: !80, line: 615, baseType: !460, size: 64, offset: 1856)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3584, file: !80, line: 616, baseType: !460, size: 64, offset: 1920)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3584, file: !80, line: 617, baseType: !460, size: 64, offset: 1984)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3584, file: !80, line: 618, baseType: !460, size: 64, offset: 2048)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3584, file: !80, line: 620, baseType: !3672, size: 64, offset: 2112)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3673, file: !80, line: 537, baseType: !276)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3673, file: !80, line: 538, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3673, file: !80, line: 540, baseType: !262, size: 128, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3673, file: !80, line: 543, baseType: !3679, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3584, file: !80, line: 621, baseType: !3682, size: 64, offset: 2176)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !250, !1501}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3584, file: !80, line: 622, baseType: !3686, size: 64, offset: 2240)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !251, file: !73, line: 486, baseType: !3689, size: 64, offset: 4096)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3698, !3699, !3700}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3690, file: !80, line: 643, baseType: !3451, size: 1472)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3690, file: !80, line: 644, baseType: !3454, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3690, file: !80, line: 645, baseType: !3695, size: 64, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !250, !528}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3690, file: !80, line: 646, baseType: !3454, size: 64, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3690, file: !80, line: 647, baseType: !3445, size: 64, offset: 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3690, file: !80, line: 648, baseType: !3445, size: 64, offset: 1728)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !251, file: !73, line: 493, baseType: !3702, size: 64, offset: 4160)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3978, !3979, !3980, !3981, !3982, !3983, !4109, !4110, !4111, !4112, !4113, !4114, !4115}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3703, file: !94, line: 163, baseType: !262, size: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3703, file: !94, line: 164, baseType: !258, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3703, file: !94, line: 165, baseType: !3708, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3711)
!3711 = !{!3712, !3830, !3841, !3846, !3850, !3857, !3861, !3865, !3970, !3974}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3710, file: !94, line: 106, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!147, !3702, !3716, !93}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3718, line: 51, size: 1344, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3719 = !{!3720, !3721, !3723, !3724, !3814, !3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3717, file: !3718, line: 52, baseType: !258, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3717, file: !3718, line: 53, baseType: !3722, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3718, line: 28, baseType: !143)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3717, file: !3718, line: 54, baseType: !258, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3717, file: !3718, line: 55, baseType: !3725, size: 192, offset: 192)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3726, line: 17, size: 192, elements: !3727)
!3726 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3727 = !{!3728, !3730, !3813}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3725, file: !3726, line: 18, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3725, file: !3726, line: 19, baseType: !3731, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3726, line: 110, size: 1152, elements: !3734)
!3734 = !{!3735, !3739, !3743, !3749, !3755, !3759, !3763, !3768, !3772, !3773, !3777, !3781, !3785, !3796, !3797, !3798, !3799, !3809}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3733, file: !3726, line: 111, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!3729, !3729}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3733, file: !3726, line: 112, baseType: !3740, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3729}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3733, file: !3726, line: 113, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!528, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3733, file: !3726, line: 114, baseType: !3750, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!2185, !3747, !3753}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3733, file: !3726, line: 116, baseType: !3756, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!528, !3747, !258}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3733, file: !3726, line: 118, baseType: !3760, size: 64, offset: 320)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!147, !3747, !258, !7, !390, !363}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3733, file: !3726, line: 123, baseType: !3764, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!147, !3747, !258, !3767, !363}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3733, file: !3726, line: 126, baseType: !3769, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!258, !3747}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3733, file: !3726, line: 127, baseType: !3769, size: 64, offset: 512)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3733, file: !3726, line: 128, baseType: !3774, size: 64, offset: 576)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!3729, !3747}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3733, file: !3726, line: 130, baseType: !3778, size: 64, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!3729, !3747, !3729}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3733, file: !3726, line: 133, baseType: !3782, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3729, !3747, !258}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3733, file: !3726, line: 135, baseType: !3786, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!147, !3747, !258, !258, !7, !7, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3726, line: 43, size: 640, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3790, file: !3726, line: 44, baseType: !3729, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3790, file: !3726, line: 45, baseType: !7, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3790, file: !3726, line: 46, baseType: !3795, size: 512, offset: 128)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 512, elements: !1391)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3733, file: !3726, line: 140, baseType: !3778, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3733, file: !3726, line: 143, baseType: !3774, size: 64, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3733, file: !3726, line: 145, baseType: !3736, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3733, file: !3726, line: 146, baseType: !3800, size: 64, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!147, !3747, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3726, line: 29, size: 128, elements: !3805)
!3805 = !{!3806, !3807, !3808}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3804, file: !3726, line: 30, baseType: !7, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3804, file: !3726, line: 31, baseType: !7, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3804, file: !3726, line: 32, baseType: !3747, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3733, file: !3726, line: 148, baseType: !3810, size: 64, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!147, !3747, !250}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3725, file: !3726, line: 20, baseType: !250, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3717, file: !3718, line: 57, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3718, line: 31, size: 704, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3816, file: !3718, line: 32, baseType: !317, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3816, file: !3718, line: 33, baseType: !147, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3816, file: !3718, line: 34, baseType: !390, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3816, file: !3718, line: 35, baseType: !3815, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3816, file: !3718, line: 43, baseType: !385, size: 448, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3717, file: !3718, line: 58, baseType: !3815, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3717, file: !3718, line: 59, baseType: !3716, size: 64, offset: 512)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3717, file: !3718, line: 60, baseType: !3716, size: 64, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3717, file: !3718, line: 61, baseType: !3716, size: 64, offset: 640)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3717, file: !3718, line: 63, baseType: !254, size: 512, offset: 704)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3717, file: !3718, line: 65, baseType: !366, size: 64, offset: 1216)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3717, file: !3718, line: 66, baseType: !390, size: 64, offset: 1280)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3710, file: !94, line: 108, baseType: !3831, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!147, !3702, !3834, !93}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3835, file: !94, line: 64, baseType: !3729, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3835, file: !94, line: 65, baseType: !147, size: 32, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3835, file: !94, line: 66, baseType: !3840, size: 512, offset: 96)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, elements: !1792)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3710, file: !94, line: 110, baseType: !3842, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!147, !3702, !7, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !263, line: 164, baseType: !366)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3710, file: !94, line: 111, baseType: !3847, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !3702, !7}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3710, file: !94, line: 112, baseType: !3851, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!147, !3702, !3716, !3854, !7, !3856, !2739}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3710, file: !94, line: 117, baseType: !3858, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!147, !3702, !7, !7, !390}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3710, file: !94, line: 119, baseType: !3862, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3702, !7, !7}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3710, file: !94, line: 121, baseType: !3866, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!147, !3702, !3869, !528}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3887, !3967, !3968, !3969}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3870, file: !115, line: 176, baseType: !143, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3870, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3870, file: !115, line: 178, baseType: !366, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3870, file: !115, line: 179, baseType: !3876, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3884}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3877, file: !115, line: 146, baseType: !7, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3877, file: !115, line: 150, baseType: !390, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3877, file: !115, line: 151, baseType: !3882, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !115, line: 127, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3877, file: !115, line: 152, baseType: !3885, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1425, line: 756, baseType: !3886)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 64, elements: !175)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3870, file: !115, line: 180, baseType: !3888, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3897, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3914, !3918, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3935, !3936, !3937, !3943, !3944, !3948, !3952, !3956, !3960, !3964, !3965, !3966}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3889, file: !115, line: 504, baseType: !250, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3889, file: !115, line: 505, baseType: !258, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3889, file: !115, line: 506, baseType: !3894, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!7, !3869}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3889, file: !115, line: 507, baseType: !3898, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3869}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3889, file: !115, line: 508, baseType: !3898, size: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3889, file: !115, line: 509, baseType: !3898, size: 64, offset: 320)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3889, file: !115, line: 511, baseType: !3898, size: 64, offset: 384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3889, file: !115, line: 512, baseType: !3898, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3889, file: !115, line: 513, baseType: !3898, size: 64, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3889, file: !115, line: 514, baseType: !3898, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3889, file: !115, line: 515, baseType: !3898, size: 64, offset: 640)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3889, file: !115, line: 517, baseType: !3909, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!147, !3869, !3912, !528}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3889, file: !115, line: 518, baseType: !3915, size: 64, offset: 768)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!147, !3869}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3889, file: !115, line: 519, baseType: !3919, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!147, !3869, !7}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3889, file: !115, line: 520, baseType: !3919, size: 64, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3889, file: !115, line: 522, baseType: !3898, size: 64, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3889, file: !115, line: 523, baseType: !3898, size: 64, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3889, file: !115, line: 525, baseType: !3898, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3889, file: !115, line: 526, baseType: !3898, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3889, file: !115, line: 528, baseType: !3898, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3889, file: !115, line: 529, baseType: !3898, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3889, file: !115, line: 530, baseType: !3898, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3889, file: !115, line: 532, baseType: !3898, size: 64, offset: 1408)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3889, file: !115, line: 534, baseType: !3932, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3869, !752}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3889, file: !115, line: 535, baseType: !3915, size: 64, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3889, file: !115, line: 536, baseType: !3898, size: 64, offset: 1600)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3889, file: !115, line: 538, baseType: !3938, size: 64, offset: 1664)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3869, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !115, line: 29, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3889, file: !115, line: 539, baseType: !3938, size: 64, offset: 1728)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3889, file: !115, line: 541, baseType: !3945, size: 64, offset: 1792)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!147, !3869, !107, !973}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3889, file: !115, line: 542, baseType: !3949, size: 64, offset: 1856)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!147, !3869, !107, !528}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3889, file: !115, line: 544, baseType: !3953, size: 64, offset: 1920)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!147, !3869, !390}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3889, file: !115, line: 546, baseType: !3957, size: 64, offset: 1984)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !3869, !7}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3889, file: !115, line: 547, baseType: !3961, size: 64, offset: 2048)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3869, !3912}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3889, file: !115, line: 549, baseType: !3915, size: 64, offset: 2112)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3889, file: !115, line: 550, baseType: !3898, size: 64, offset: 2176)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !115, line: 552, baseType: !366, size: 64, offset: 2240)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3870, file: !115, line: 181, baseType: !3702, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3870, file: !115, line: 183, baseType: !3869, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3870, file: !115, line: 185, baseType: !390, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3710, file: !94, line: 122, baseType: !3971, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3702, !3869}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3710, file: !94, line: 123, baseType: !3975, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!147, !3702, !3834, !3856, !2739}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3703, file: !94, line: 166, baseType: !390, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3703, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3703, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3703, file: !94, line: 171, baseType: !3729, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3703, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3703, file: !94, line: 173, baseType: !3984, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3985, file: !115, line: 1102, baseType: !7, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3985, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3985, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3985, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3985, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3985, file: !115, line: 1107, baseType: !3993, offset: 192)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3994, elements: !2387)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4003, !4007, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3995, file: !115, line: 1052, baseType: !864)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3995, file: !115, line: 1053, baseType: !390, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3995, file: !115, line: 1054, baseType: !4000, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!143, !390}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3995, file: !115, line: 1055, baseType: !4004, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !143, !390}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3995, file: !115, line: 1056, baseType: !4008, size: 64, offset: 192)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3994}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3995, file: !115, line: 1057, baseType: !4008, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3995, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3995, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3995, file: !115, line: 1060, baseType: !143, size: 32, offset: 384)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3995, file: !115, line: 1061, baseType: !143, size: 32, offset: 416)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3995, file: !115, line: 1062, baseType: !143, size: 32, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3995, file: !115, line: 1063, baseType: !143, size: 32, offset: 480)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3995, file: !115, line: 1064, baseType: !143, size: 32, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3995, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3995, file: !115, line: 1066, baseType: !390, size: 64, offset: 576)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3995, file: !115, line: 1067, baseType: !366, size: 64, offset: 640)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3995, file: !115, line: 1068, baseType: !366, size: 64, offset: 704)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3995, file: !115, line: 1069, baseType: !3702, size: 64, offset: 768)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3995, file: !115, line: 1070, baseType: !262, size: 128, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3995, file: !115, line: 1071, baseType: !4026, offset: 960)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4027, elements: !2387)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4028)
!4028 = !{!4029, !4030, !4040, !4106, !4107, !4108}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4027, file: !115, line: 1010, baseType: !3889, size: 2304)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4027, file: !115, line: 1011, baseType: !4031, size: 448, offset: 2304)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4031, file: !115, line: 987, baseType: !366, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4031, file: !115, line: 988, baseType: !366, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4031, file: !115, line: 989, baseType: !366, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4031, file: !115, line: 990, baseType: !366, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4031, file: !115, line: 991, baseType: !366, size: 64, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4031, file: !115, line: 992, baseType: !366, size: 64, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4031, file: !115, line: 993, baseType: !366, size: 64, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4027, file: !115, line: 1012, baseType: !4041, size: 64, offset: 2752)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4042, line: 12, baseType: !4043)
!4042 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4048, line: 55, size: 2880, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4047, file: !4048, line: 56, baseType: !3877, size: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4047, file: !4048, line: 57, baseType: !3870, size: 448, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4047, file: !4048, line: 58, baseType: !2739, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4047, file: !4048, line: 59, baseType: !4041, size: 64, offset: 768)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4047, file: !4048, line: 60, baseType: !4055, size: 64, offset: 832)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4057)
!4057 = !{!4058, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4056, file: !108, line: 111, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4060)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!4063, !147, !390}
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4056, file: !108, line: 112, baseType: !390, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4056, file: !108, line: 113, baseType: !390, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4056, file: !108, line: 114, baseType: !4055, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4056, file: !108, line: 115, baseType: !4059, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4056, file: !108, line: 116, baseType: !1277, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4056, file: !108, line: 117, baseType: !4055, size: 64, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4056, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4056, file: !108, line: 120, baseType: !366, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4056, file: !108, line: 121, baseType: !366, size: 64, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4056, file: !108, line: 122, baseType: !258, size: 64, offset: 640)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4056, file: !108, line: 123, baseType: !4076, size: 64, offset: 704)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 123, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4047, file: !4048, line: 61, baseType: !7, size: 32, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4047, file: !4048, line: 62, baseType: !7, size: 32, offset: 928)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4047, file: !4048, line: 63, baseType: !7, size: 32, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4047, file: !4048, line: 64, baseType: !7, size: 32, offset: 992)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4047, file: !4048, line: 65, baseType: !7, size: 32, offset: 1024)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4047, file: !4048, line: 66, baseType: !7, size: 32, offset: 1056)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4047, file: !4048, line: 67, baseType: !366, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4047, file: !4048, line: 68, baseType: !7, size: 32, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4047, file: !4048, line: 69, baseType: !838, size: 32, offset: 1184)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4047, file: !4048, line: 70, baseType: !147, size: 32, offset: 1216)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4047, file: !4048, line: 71, baseType: !864, offset: 1248)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4047, file: !4048, line: 72, baseType: !4090, size: 64, offset: 1280)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4047, file: !4048, line: 73, baseType: !3912, size: 64, offset: 1344)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4047, file: !4048, line: 81, baseType: !366, size: 64, offset: 1408)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4047, file: !4048, line: 82, baseType: !838, size: 32, offset: 1472)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4047, file: !4048, line: 83, baseType: !1538, size: 128, offset: 1536)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4047, file: !4048, line: 85, baseType: !7, size: 32, offset: 1664)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4047, file: !4048, line: 86, baseType: !7, size: 32, offset: 1696)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4047, file: !4048, line: 87, baseType: !7, size: 32, offset: 1728)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4047, file: !4048, line: 88, baseType: !7, size: 32, offset: 1760)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4047, file: !4048, line: 91, baseType: !4076, size: 64, offset: 1792)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4047, file: !4048, line: 98, baseType: !408, size: 128, align: 64, offset: 1856)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4047, file: !4048, line: 99, baseType: !254, size: 512, offset: 1984)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4047, file: !4048, line: 101, baseType: !764, size: 192, offset: 2496)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4047, file: !4048, line: 102, baseType: !147, size: 32, offset: 2688)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4047, file: !4048, line: 103, baseType: !671, size: 64, offset: 2752)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4047, file: !4048, line: 104, baseType: !258, size: 64, offset: 2816)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4027, file: !115, line: 1013, baseType: !143, size: 32, offset: 2816)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4027, file: !115, line: 1014, baseType: !143, size: 32, offset: 2848)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4027, file: !115, line: 1015, baseType: !1472, size: 64, offset: 2880)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3703, file: !94, line: 175, baseType: !3702, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3703, file: !94, line: 182, baseType: !3845, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3703, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3703, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3703, file: !94, line: 185, baseType: !829, size: 128, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3703, file: !94, line: 186, baseType: !764, size: 192, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3703, file: !94, line: 187, baseType: !4116, offset: 1088)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2387)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !251, file: !73, line: 499, baseType: !262, size: 128, offset: 4224)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !251, file: !73, line: 502, baseType: !4119, size: 64, offset: 4352)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4121)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !251, file: !73, line: 504, baseType: !4123, size: 64, offset: 4416)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !251, file: !73, line: 505, baseType: !460, size: 64, offset: 4480)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !251, file: !73, line: 510, baseType: !460, size: 64, offset: 4544)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !251, file: !73, line: 511, baseType: !4127, size: 64, offset: 4608)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4129)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !251, file: !73, line: 513, baseType: !4131, size: 64, offset: 4672)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4133)
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4132, file: !73, line: 293, baseType: !7, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4132, file: !73, line: 294, baseType: !366, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !251, file: !73, line: 515, baseType: !262, size: 128, offset: 4736)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !251, file: !73, line: 526, baseType: !4138, offset: 4864)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4139, line: 5, elements: !290)
!4139 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !251, file: !73, line: 528, baseType: !3716, size: 64, offset: 4864)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !251, file: !73, line: 529, baseType: !3729, size: 64, offset: 4928)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !251, file: !73, line: 534, baseType: !551, size: 32, offset: 4992)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !251, file: !73, line: 535, baseType: !143, size: 32, offset: 5024)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !251, file: !73, line: 537, baseType: !276, offset: 5056)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !251, file: !73, line: 538, baseType: !262, size: 128, offset: 5056)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !251, file: !73, line: 540, baseType: !4147, size: 64, offset: 5184)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4149, line: 54, size: 960, elements: !4150)
!4149 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157, !4161, !4165, !4166, !4167, !4168, !4172, !4176, !4177}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4148, file: !4149, line: 55, baseType: !258, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4148, file: !4149, line: 56, baseType: !671, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4148, file: !4149, line: 58, baseType: !370, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4148, file: !4149, line: 59, baseType: !370, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4148, file: !4149, line: 60, baseType: !269, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4148, file: !4149, line: 62, baseType: !3436, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4148, file: !4149, line: 63, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!317, !250, !3443}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4148, file: !4149, line: 65, baseType: !4162, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4147}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4148, file: !4149, line: 66, baseType: !3445, size: 64, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4148, file: !4149, line: 68, baseType: !3454, size: 64, offset: 576)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4148, file: !4149, line: 70, baseType: !3252, size: 64, offset: 640)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4148, file: !4149, line: 71, baseType: !4169, size: 64, offset: 704)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!2185, !250}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4148, file: !4149, line: 73, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{null, !250, !3284, !3285}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4148, file: !4149, line: 75, baseType: !3449, size: 64, offset: 832)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4148, file: !4149, line: 77, baseType: !3566, size: 64, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !251, file: !73, line: 541, baseType: !370, size: 64, offset: 5248)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !251, file: !73, line: 543, baseType: !3445, size: 64, offset: 5312)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !251, file: !73, line: 544, baseType: !4181, size: 64, offset: 5376)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !251, file: !73, line: 545, baseType: !4184, size: 64, offset: 5440)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !251, file: !73, line: 547, baseType: !528, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !251, file: !73, line: 548, baseType: !528, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !251, file: !73, line: 549, baseType: !528, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !251, file: !73, line: 550, baseType: !528, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !218, file: !129, line: 273, baseType: !250, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !218, file: !129, line: 275, baseType: !4192, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_bus", file: !129, line: 416, size: 14016, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4203, !4204, !4205, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4498, !4499, !4500, !4501, !4509, !4512, !4515, !4520, !4712, !4713, !4714, !4715}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !4193, file: !129, line: 418, baseType: !390, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4193, file: !129, line: 420, baseType: !221, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_device", scope: !4193, file: !129, line: 424, baseType: !217, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !129, line: 425, baseType: !4199, size: 32, offset: 192)
!4199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4193, file: !129, line: 425, size: 32, elements: !4200)
!4200 = !{!4201, !4202}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_pcmcia_seg", scope: !4199, file: !129, line: 427, baseType: !160, size: 8)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_sbaddr", scope: !4199, file: !129, line: 429, baseType: !143, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "bar_lock", scope: !4193, file: !129, line: 433, baseType: !276, offset: 224)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4193, file: !129, line: 436, baseType: !128, size: 32, offset: 224)
!4205 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !129, line: 438, baseType: !4206, size: 64, offset: 256)
!4206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4193, file: !129, line: 438, size: 64, elements: !4207)
!4207 = !{!4208, !4483, !4486}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "host_pci", scope: !4206, file: !129, line: 440, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4211, line: 309, size: 19264, elements: !4212)
!4211 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4212 = !{!4213, !4214, !4286, !4287, !4288, !4289, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4381, !4382, !4383, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4457, !4458, !4459, !4460, !4461, !4462, !4464, !4465, !4466, !4469, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4210, file: !4211, line: 310, baseType: !262, size: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4210, file: !4211, line: 311, baseType: !4215, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4211, line: 605, size: 8064, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4239, !4240, !4241, !4265, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4278, !4279, !4281, !4282, !4283, !4284, !4285}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4216, file: !4211, line: 606, baseType: !262, size: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4216, file: !4211, line: 607, baseType: !4215, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4216, file: !4211, line: 608, baseType: !262, size: 128, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4216, file: !4211, line: 609, baseType: !262, size: 128, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4216, file: !4211, line: 610, baseType: !4209, size: 64, offset: 448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4216, file: !4211, line: 611, baseType: !262, size: 128, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4216, file: !4211, line: 613, baseType: !4225, size: 256, offset: 640)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4226, size: 256, elements: !1238)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4228, line: 20, size: 512, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4229 = !{!4230, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4227, file: !4228, line: 21, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !263, line: 158, baseType: !2183)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4227, file: !4228, line: 22, baseType: !4231, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4227, file: !4228, line: 23, baseType: !258, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !4228, line: 24, baseType: !366, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4227, file: !4228, line: 25, baseType: !366, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4227, file: !4228, line: 26, baseType: !4226, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4227, file: !4228, line: 26, baseType: !4226, size: 64, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4227, file: !4228, line: 26, baseType: !4226, size: 64, offset: 448)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4216, file: !4211, line: 614, baseType: !262, size: 128, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4216, file: !4211, line: 615, baseType: !4227, size: 512, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4216, file: !4211, line: 617, baseType: !4242, size: 64, offset: 1536)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4211, line: 731, size: 320, elements: !4244)
!4244 = !{!4245, !4249, !4253, !4257, !4261}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4243, file: !4211, line: 732, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!147, !4215}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4243, file: !4211, line: 733, baseType: !4250, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4215}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4243, file: !4211, line: 734, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!390, !4215, !7, !147}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4243, file: !4211, line: 735, baseType: !4258, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!147, !4215, !7, !147, !147, !1472}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4243, file: !4211, line: 736, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!147, !4215, !7, !147, !147, !143}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4216, file: !4211, line: 618, baseType: !4266, size: 64, offset: 1600)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4211, line: 537, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4216, file: !4211, line: 619, baseType: !390, size: 64, offset: 1664)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4216, file: !4211, line: 620, baseType: !4076, size: 64, offset: 1728)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4216, file: !4211, line: 622, baseType: !162, size: 8, offset: 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4216, file: !4211, line: 623, baseType: !162, size: 8, offset: 1800)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4216, file: !4211, line: 624, baseType: !162, size: 8, offset: 1808)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4216, file: !4211, line: 625, baseType: !162, size: 8, offset: 1816)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4216, file: !4211, line: 630, baseType: !4275, size: 384, offset: 1824)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !4276)
!4276 = !{!4277}
!4277 = !DISubrange(count: 48)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4216, file: !4211, line: 632, baseType: !158, size: 16, offset: 2208)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4216, file: !4211, line: 633, baseType: !4280, size: 16, offset: 2224)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4211, line: 237, baseType: !158)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4216, file: !4211, line: 634, baseType: !250, size: 64, offset: 2240)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4216, file: !4211, line: 635, baseType: !251, size: 5568, offset: 2304)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4216, file: !4211, line: 636, baseType: !384, size: 64, offset: 7872)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4216, file: !4211, line: 637, baseType: !384, size: 64, offset: 7936)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4216, file: !4211, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4210, file: !4211, line: 312, baseType: !4215, size: 64, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4210, file: !4211, line: 314, baseType: !390, size: 64, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4210, file: !4211, line: 315, baseType: !4076, size: 64, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4210, file: !4211, line: 316, baseType: !4290, size: 64, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4211, line: 69, size: 832, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4298, !4299}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4291, file: !4211, line: 70, baseType: !4215, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4291, file: !4211, line: 71, baseType: !262, size: 128, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4291, file: !4211, line: 72, baseType: !4296, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4211, line: 72, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4291, file: !4211, line: 73, baseType: !162, size: 8, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4291, file: !4211, line: 74, baseType: !254, size: 512, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4210, file: !4211, line: 318, baseType: !7, size: 32, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4210, file: !4211, line: 319, baseType: !158, size: 16, offset: 480)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4210, file: !4211, line: 320, baseType: !158, size: 16, offset: 496)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4210, file: !4211, line: 321, baseType: !158, size: 16, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4210, file: !4211, line: 322, baseType: !158, size: 16, offset: 528)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4210, file: !4211, line: 323, baseType: !7, size: 32, offset: 544)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4210, file: !4211, line: 324, baseType: !160, size: 8, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4210, file: !4211, line: 325, baseType: !160, size: 8, offset: 584)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4210, file: !4211, line: 330, baseType: !160, size: 8, offset: 592)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4210, file: !4211, line: 331, baseType: !160, size: 8, offset: 600)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4210, file: !4211, line: 332, baseType: !160, size: 8, offset: 608)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4210, file: !4211, line: 333, baseType: !160, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4210, file: !4211, line: 334, baseType: !160, size: 8, offset: 624)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4210, file: !4211, line: 335, baseType: !160, size: 8, offset: 632)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4210, file: !4211, line: 336, baseType: !156, size: 16, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4210, file: !4211, line: 337, baseType: !3856, size: 64, offset: 704)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4210, file: !4211, line: 339, baseType: !4317, size: 64, offset: 768)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4211, line: 858, size: 2048, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4334, !4338, !4342, !4346, !4350, !4351, !4355, !4374, !4375, !4376}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4318, file: !4211, line: 859, baseType: !262, size: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4318, file: !4211, line: 860, baseType: !258, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4318, file: !4211, line: 861, baseType: !4323, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3507, line: 38, size: 256, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4325, file: !3507, line: 39, baseType: !145, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4325, file: !3507, line: 39, baseType: !145, size: 32, offset: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4325, file: !3507, line: 40, baseType: !145, size: 32, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4325, file: !3507, line: 40, baseType: !145, size: 32, offset: 96)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4325, file: !3507, line: 41, baseType: !145, size: 32, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4325, file: !3507, line: 41, baseType: !145, size: 32, offset: 160)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4325, file: !3507, line: 42, baseType: !3526, size: 64, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4318, file: !4211, line: 862, baseType: !4335, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!147, !4209, !4323}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4318, file: !4211, line: 863, baseType: !4339, size: 64, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4209}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4318, file: !4211, line: 864, baseType: !4343, size: 64, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!147, !4209, !3537}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4318, file: !4211, line: 865, baseType: !4347, size: 64, offset: 448)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!147, !4209}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4318, file: !4211, line: 866, baseType: !4339, size: 64, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4318, file: !4211, line: 867, baseType: !4352, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!147, !4209, !147}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4318, file: !4211, line: 868, baseType: !4356, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4211, line: 795, size: 384, elements: !4359)
!4359 = !{!4360, !4366, !4370, !4371, !4372, !4373}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4358, file: !4211, line: 797, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4364, !4209, !4365}
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4211, line: 772, baseType: !7)
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4211, line: 180, baseType: !7)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4358, file: !4211, line: 801, baseType: !4367, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!4364, !4209}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4358, file: !4211, line: 804, baseType: !4367, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4358, file: !4211, line: 807, baseType: !4339, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4358, file: !4211, line: 808, baseType: !4339, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4358, file: !4211, line: 811, baseType: !4339, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4318, file: !4211, line: 869, baseType: !370, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4318, file: !4211, line: 870, baseType: !3495, size: 1152, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4318, file: !4211, line: 871, baseType: !4377, size: 128, offset: 1920)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4211, line: 759, size: 128, elements: !4378)
!4378 = !{!4379, !4380}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4377, file: !4211, line: 760, baseType: !276)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4377, file: !4211, line: 761, baseType: !262, size: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4210, file: !4211, line: 340, baseType: !460, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4210, file: !4211, line: 346, baseType: !4132, size: 128, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4210, file: !4211, line: 348, baseType: !4384, size: 32, offset: 1024)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4211, line: 155, baseType: !147)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4210, file: !4211, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4210, file: !4211, line: 352, baseType: !160, size: 8, offset: 1064)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4210, file: !4211, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4210, file: !4211, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4210, file: !4211, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4210, file: !4211, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4210, file: !4211, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4210, file: !4211, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4210, file: !4211, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4210, file: !4211, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4210, file: !4211, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4210, file: !4211, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4210, file: !4211, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4210, file: !4211, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4210, file: !4211, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4210, file: !4211, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4210, file: !4211, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4210, file: !4211, line: 376, baseType: !7, size: 32, offset: 1120)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4210, file: !4211, line: 377, baseType: !7, size: 32, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4210, file: !4211, line: 380, baseType: !4405, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4211, line: 303, flags: DIFlagFwdDecl)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4210, file: !4211, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4210, file: !4211, line: 383, baseType: !147, size: 32, offset: 1312)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4210, file: !4211, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4210, file: !4211, line: 387, baseType: !4365, size: 32, offset: 1376)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4210, file: !4211, line: 388, baseType: !251, size: 5568, offset: 1408)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4210, file: !4211, line: 390, baseType: !147, size: 32, offset: 6976)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4210, file: !4211, line: 396, baseType: !7, size: 32, offset: 7008)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4210, file: !4211, line: 397, baseType: !4415, size: 8704, offset: 7040)
!4415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4227, size: 8704, elements: !4416)
!4416 = !{!4417}
!4417 = !DISubrange(count: 17)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4210, file: !4211, line: 399, baseType: !528, size: 8, offset: 15744)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4210, file: !4211, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4210, file: !4211, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4210, file: !4211, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4210, file: !4211, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4210, file: !4211, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4210, file: !4211, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4210, file: !4211, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4210, file: !4211, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4210, file: !4211, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4210, file: !4211, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4210, file: !4211, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4210, file: !4211, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4210, file: !4211, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4210, file: !4211, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4210, file: !4211, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4210, file: !4211, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4210, file: !4211, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4210, file: !4211, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4210, file: !4211, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4210, file: !4211, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4210, file: !4211, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4210, file: !4211, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4210, file: !4211, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4210, file: !4211, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4210, file: !4211, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4210, file: !4211, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4210, file: !4211, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4210, file: !4211, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4210, file: !4211, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4210, file: !4211, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4210, file: !4211, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4210, file: !4211, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4210, file: !4211, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4210, file: !4211, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4210, file: !4211, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4210, file: !4211, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4210, file: !4211, line: 450, baseType: !4456, size: 16, offset: 15792)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4211, line: 206, baseType: !158)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4210, file: !4211, line: 451, baseType: !838, size: 32, offset: 15808)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4210, file: !4211, line: 453, baseType: !3840, size: 512, offset: 15840)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4210, file: !4211, line: 454, baseType: !676, size: 64, offset: 16384)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4210, file: !4211, line: 455, baseType: !384, size: 64, offset: 16448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4210, file: !4211, line: 456, baseType: !147, size: 32, offset: 16512)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4210, file: !4211, line: 457, baseType: !4463, size: 1088, offset: 16576)
!4463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1088, elements: !4416)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4210, file: !4211, line: 458, baseType: !4463, size: 1088, offset: 17664)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4210, file: !4211, line: 469, baseType: !370, size: 64, offset: 18752)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4210, file: !4211, line: 471, baseType: !4467, size: 64, offset: 18816)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4211, line: 304, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4211, line: 478, baseType: !4470, size: 64, offset: 18880)
!4470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4211, line: 478, size: 64, elements: !4471)
!4471 = !{!4472, !4475}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4470, file: !4211, line: 479, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4211, line: 305, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4470, file: !4211, line: 480, baseType: !4209, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4210, file: !4211, line: 482, baseType: !156, size: 16, offset: 18944)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4210, file: !4211, line: 483, baseType: !160, size: 8, offset: 18960)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4210, file: !4211, line: 497, baseType: !156, size: 16, offset: 18976)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4210, file: !4211, line: 498, baseType: !2183, size: 64, offset: 19008)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4210, file: !4211, line: 499, baseType: !363, size: 64, offset: 19072)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4210, file: !4211, line: 500, baseType: !317, size: 64, offset: 19136)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4210, file: !4211, line: 502, baseType: !366, size: 64, offset: 19200)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "host_pcmcia", scope: !4206, file: !129, line: 442, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_device", file: !129, line: 18, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "host_sdio", scope: !4206, file: !129, line: 444, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !129, line: 444, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4193, file: !129, line: 448, baseType: !7, size: 32, offset: 320)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_mutex", scope: !4193, file: !129, line: 452, baseType: !764, size: 192, offset: 384)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "chip_id", scope: !4193, file: !129, line: 456, baseType: !156, size: 16, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "chip_rev", scope: !4193, file: !129, line: 457, baseType: !160, size: 8, offset: 592)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_offset", scope: !4193, file: !129, line: 458, baseType: !156, size: 16, offset: 608)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_size", scope: !4193, file: !129, line: 459, baseType: !156, size: 16, offset: 624)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "chip_package", scope: !4193, file: !129, line: 460, baseType: !160, size: 8, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4193, file: !129, line: 463, baseType: !4497, size: 8192, offset: 704)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 8192, elements: !1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_devices", scope: !4193, file: !129, line: 464, baseType: !160, size: 8, offset: 8896)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "busnumber", scope: !4193, file: !129, line: 467, baseType: !7, size: 32, offset: 8928)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "chipco", scope: !4193, file: !129, line: 470, baseType: !214, size: 320, offset: 8960)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pcicore", scope: !4193, file: !129, line: 472, baseType: !4502, size: 128, offset: 9280)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_pcicore", file: !4503, line: 84, size: 128, elements: !4504)
!4503 = !DIFile(filename: "./include/linux/ssb/ssb_driver_pci.h", directory: "/home/lizy2001/genbc/linux")
!4504 = !{!4505, !4506, !4507, !4508}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4502, file: !4503, line: 85, baseType: !217, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "setup_done", scope: !4502, file: !4503, line: 86, baseType: !160, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "hostmode", scope: !4502, file: !4503, line: 87, baseType: !160, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "cardbusmode", scope: !4502, file: !4503, line: 88, baseType: !160, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mipscore", scope: !4193, file: !129, line: 474, baseType: !4510, offset: 9408)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_mipscore", file: !4511, line: 56, elements: !290)
!4511 = !DIFile(filename: "./include/linux/ssb/ssb_driver_mips.h", directory: "/home/lizy2001/genbc/linux")
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "extif", scope: !4193, file: !129, line: 476, baseType: !4513, offset: 9408)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_extif", file: !4514, line: 195, elements: !290)
!4514 = !DIFile(filename: "./include/linux/ssb/ssb_driver_extif.h", directory: "/home/lizy2001/genbc/linux")
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "boardinfo", scope: !4193, file: !129, line: 484, baseType: !4516, size: 32, offset: 9408)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_boardinfo", file: !129, line: 198, size: 32, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4516, file: !129, line: 199, baseType: !156, size: 16)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4516, file: !129, line: 200, baseType: !156, size: 16, offset: 16)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "sprom", scope: !4193, file: !129, line: 486, baseType: !4521, size: 4320, offset: 9440)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_sprom", file: !129, line: 28, size: 4320, elements: !4522)
!4522 = !{!4523, !4524, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4574, !4575, !4576, !4577, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4617, !4624, !4643, !4645, !4646, !4647, !4648, !4649, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4521, file: !129, line: 29, baseType: !160, size: 8)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "il0mac", scope: !4521, file: !129, line: 30, baseType: !4525, size: 48, align: 16, offset: 16)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !1682)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "et0mac", scope: !4521, file: !129, line: 31, baseType: !4525, size: 48, align: 16, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "et1mac", scope: !4521, file: !129, line: 32, baseType: !4525, size: 48, align: 16, offset: 112)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "et2mac", scope: !4521, file: !129, line: 33, baseType: !4525, size: 48, align: 16, offset: 160)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "et0phyaddr", scope: !4521, file: !129, line: 34, baseType: !160, size: 8, offset: 208)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "et1phyaddr", scope: !4521, file: !129, line: 35, baseType: !160, size: 8, offset: 216)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "et2phyaddr", scope: !4521, file: !129, line: 36, baseType: !160, size: 8, offset: 224)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "et0mdcport", scope: !4521, file: !129, line: 37, baseType: !160, size: 8, offset: 232)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "et1mdcport", scope: !4521, file: !129, line: 38, baseType: !160, size: 8, offset: 240)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "et2mdcport", scope: !4521, file: !129, line: 39, baseType: !160, size: 8, offset: 248)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4521, file: !129, line: 40, baseType: !156, size: 16, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "board_rev", scope: !4521, file: !129, line: 41, baseType: !156, size: 16, offset: 272)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "board_num", scope: !4521, file: !129, line: 42, baseType: !156, size: 16, offset: 288)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "board_type", scope: !4521, file: !129, line: 43, baseType: !156, size: 16, offset: 304)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "country_code", scope: !4521, file: !129, line: 44, baseType: !160, size: 8, offset: 320)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "alpha2", scope: !4521, file: !129, line: 45, baseType: !4541, size: 16, offset: 328)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 16, elements: !1626)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "leddc_on_time", scope: !4521, file: !129, line: 46, baseType: !160, size: 8, offset: 344)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "leddc_off_time", scope: !4521, file: !129, line: 47, baseType: !160, size: 8, offset: 352)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ant_available_a", scope: !4521, file: !129, line: 48, baseType: !160, size: 8, offset: 360)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "ant_available_bg", scope: !4521, file: !129, line: 49, baseType: !160, size: 8, offset: 368)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b0", scope: !4521, file: !129, line: 50, baseType: !156, size: 16, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b1", scope: !4521, file: !129, line: 51, baseType: !156, size: 16, offset: 400)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b2", scope: !4521, file: !129, line: 52, baseType: !156, size: 16, offset: 416)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b0", scope: !4521, file: !129, line: 53, baseType: !156, size: 16, offset: 432)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b1", scope: !4521, file: !129, line: 54, baseType: !156, size: 16, offset: 448)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b2", scope: !4521, file: !129, line: 55, baseType: !156, size: 16, offset: 464)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob0", scope: !4521, file: !129, line: 56, baseType: !156, size: 16, offset: 480)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob1", scope: !4521, file: !129, line: 57, baseType: !156, size: 16, offset: 496)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob2", scope: !4521, file: !129, line: 58, baseType: !156, size: 16, offset: 512)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib0", scope: !4521, file: !129, line: 59, baseType: !156, size: 16, offset: 528)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib1", scope: !4521, file: !129, line: 60, baseType: !156, size: 16, offset: 544)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib2", scope: !4521, file: !129, line: 61, baseType: !156, size: 16, offset: 560)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "gpio0", scope: !4521, file: !129, line: 62, baseType: !160, size: 8, offset: 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "gpio1", scope: !4521, file: !129, line: 63, baseType: !160, size: 8, offset: 584)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "gpio2", scope: !4521, file: !129, line: 64, baseType: !160, size: 8, offset: 592)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "gpio3", scope: !4521, file: !129, line: 65, baseType: !160, size: 8, offset: 600)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_bg", scope: !4521, file: !129, line: 66, baseType: !160, size: 8, offset: 608)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_al", scope: !4521, file: !129, line: 67, baseType: !160, size: 8, offset: 616)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_a", scope: !4521, file: !129, line: 68, baseType: !160, size: 8, offset: 624)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_ah", scope: !4521, file: !129, line: 69, baseType: !160, size: 8, offset: 632)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_a", scope: !4521, file: !129, line: 70, baseType: !160, size: 8, offset: 640)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_bg", scope: !4521, file: !129, line: 71, baseType: !160, size: 8, offset: 648)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "tri2g", scope: !4521, file: !129, line: 72, baseType: !160, size: 8, offset: 656)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "tri5gl", scope: !4521, file: !129, line: 73, baseType: !160, size: 8, offset: 664)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "tri5g", scope: !4521, file: !129, line: 74, baseType: !160, size: 8, offset: 672)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "tri5gh", scope: !4521, file: !129, line: 75, baseType: !160, size: 8, offset: 680)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "txpid2g", scope: !4521, file: !129, line: 76, baseType: !4573, size: 32, offset: 688)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 32, elements: !1238)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5gl", scope: !4521, file: !129, line: 77, baseType: !4573, size: 32, offset: 720)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5g", scope: !4521, file: !129, line: 78, baseType: !4573, size: 32, offset: 752)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5gh", scope: !4521, file: !129, line: 79, baseType: !4573, size: 32, offset: 784)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "rxpo2g", scope: !4521, file: !129, line: 80, baseType: !4578, size: 8, offset: 816)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !144, line: 16, baseType: !4579)
!4579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !146, line: 20, baseType: !4580)
!4580 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "rxpo5g", scope: !4521, file: !129, line: 81, baseType: !4578, size: 8, offset: 824)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "rssisav2g", scope: !4521, file: !129, line: 82, baseType: !160, size: 8, offset: 832)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "rssismc2g", scope: !4521, file: !129, line: 83, baseType: !160, size: 8, offset: 840)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "rssismf2g", scope: !4521, file: !129, line: 84, baseType: !160, size: 8, offset: 848)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "bxa2g", scope: !4521, file: !129, line: 85, baseType: !160, size: 8, offset: 856)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "rssisav5g", scope: !4521, file: !129, line: 86, baseType: !160, size: 8, offset: 864)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "rssismc5g", scope: !4521, file: !129, line: 87, baseType: !160, size: 8, offset: 872)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "rssismf5g", scope: !4521, file: !129, line: 88, baseType: !160, size: 8, offset: 880)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bxa5g", scope: !4521, file: !129, line: 89, baseType: !160, size: 8, offset: 888)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "cck2gpo", scope: !4521, file: !129, line: 90, baseType: !156, size: 16, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm2gpo", scope: !4521, file: !129, line: 91, baseType: !143, size: 32, offset: 928)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5glpo", scope: !4521, file: !129, line: 92, baseType: !143, size: 32, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5gpo", scope: !4521, file: !129, line: 93, baseType: !143, size: 32, offset: 992)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5ghpo", scope: !4521, file: !129, line: 94, baseType: !143, size: 32, offset: 1024)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags", scope: !4521, file: !129, line: 95, baseType: !143, size: 32, offset: 1056)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2", scope: !4521, file: !129, line: 96, baseType: !143, size: 32, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags3", scope: !4521, file: !129, line: 97, baseType: !143, size: 32, offset: 1120)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags_lo", scope: !4521, file: !129, line: 99, baseType: !156, size: 16, offset: 1152)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags_hi", scope: !4521, file: !129, line: 100, baseType: !156, size: 16, offset: 1168)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2_lo", scope: !4521, file: !129, line: 101, baseType: !156, size: 16, offset: 1184)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2_hi", scope: !4521, file: !129, line: 102, baseType: !156, size: 16, offset: 1200)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "core_pwr_info", scope: !4521, file: !129, line: 104, baseType: !4603, size: 1216, offset: 1216)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4604, size: 1216, elements: !1238)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_sprom_core_pwr_info", file: !129, line: 22, size: 304, elements: !4605)
!4605 = !{!4606, !4607, !4608, !4609, !4610, !4611, !4612, !4614, !4615, !4616}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_2g", scope: !4604, file: !129, line: 23, baseType: !160, size: 8)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_5g", scope: !4604, file: !129, line: 23, baseType: !160, size: 8, offset: 8)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_2g", scope: !4604, file: !129, line: 24, baseType: !160, size: 8, offset: 16)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5gl", scope: !4604, file: !129, line: 24, baseType: !160, size: 8, offset: 24)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5g", scope: !4604, file: !129, line: 24, baseType: !160, size: 8, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5gh", scope: !4604, file: !129, line: 24, baseType: !160, size: 8, offset: 40)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "pa_2g", scope: !4604, file: !129, line: 25, baseType: !4613, size: 64, offset: 48)
!4613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1238)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5gl", scope: !4604, file: !129, line: 25, baseType: !4613, size: 64, offset: 112)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5g", scope: !4604, file: !129, line: 25, baseType: !4613, size: 64, offset: 176)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5gh", scope: !4604, file: !129, line: 25, baseType: !4613, size: 64, offset: 240)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "antenna_gain", scope: !4521, file: !129, line: 111, baseType: !4618, size: 32, offset: 2432)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4521, file: !129, line: 109, size: 32, elements: !4619)
!4619 = !{!4620, !4621, !4622, !4623}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "a0", scope: !4618, file: !129, line: 110, baseType: !4578, size: 8)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !4618, file: !129, line: 110, baseType: !4578, size: 8, offset: 8)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !4618, file: !129, line: 110, baseType: !4578, size: 8, offset: 16)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !4618, file: !129, line: 110, baseType: !4578, size: 8, offset: 24)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "fem", scope: !4521, file: !129, line: 120, baseType: !4625, size: 80, offset: 2464)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4521, file: !129, line: 113, size: 80, elements: !4626)
!4626 = !{!4627, !4635}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ghz2", scope: !4625, file: !129, line: 116, baseType: !4628, size: 40)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4625, file: !129, line: 114, size: 40, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "tssipos", scope: !4628, file: !129, line: 115, baseType: !160, size: 8)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "extpa_gain", scope: !4628, file: !129, line: 115, baseType: !160, size: 8, offset: 8)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "pdet_range", scope: !4628, file: !129, line: 115, baseType: !160, size: 8, offset: 16)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "tr_iso", scope: !4628, file: !129, line: 115, baseType: !160, size: 8, offset: 24)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "antswlut", scope: !4628, file: !129, line: 115, baseType: !160, size: 8, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ghz5", scope: !4625, file: !129, line: 119, baseType: !4636, size: 40, offset: 40)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4625, file: !129, line: 117, size: 40, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "tssipos", scope: !4636, file: !129, line: 118, baseType: !160, size: 8)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "extpa_gain", scope: !4636, file: !129, line: 118, baseType: !160, size: 8, offset: 8)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "pdet_range", scope: !4636, file: !129, line: 118, baseType: !160, size: 8, offset: 16)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "tr_iso", scope: !4636, file: !129, line: 118, baseType: !160, size: 8, offset: 24)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "antswlut", scope: !4636, file: !129, line: 118, baseType: !160, size: 8, offset: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mcs2gpo", scope: !4521, file: !129, line: 122, baseType: !4644, size: 128, offset: 2544)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !1391)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5gpo", scope: !4521, file: !129, line: 123, baseType: !4644, size: 128, offset: 2672)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5glpo", scope: !4521, file: !129, line: 124, baseType: !4644, size: 128, offset: 2800)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5ghpo", scope: !4521, file: !129, line: 125, baseType: !4644, size: 128, offset: 2928)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "opo", scope: !4521, file: !129, line: 126, baseType: !160, size: 8, offset: 3056)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr2ga", scope: !4521, file: !129, line: 128, baseType: !4650, size: 24, offset: 3064)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 24, elements: !318)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gla", scope: !4521, file: !129, line: 129, baseType: !4650, size: 24, offset: 3088)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gma", scope: !4521, file: !129, line: 130, baseType: !4650, size: 24, offset: 3112)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gha", scope: !4521, file: !129, line: 131, baseType: !4650, size: 24, offset: 3136)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gua", scope: !4521, file: !129, line: 132, baseType: !4650, size: 24, offset: 3160)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl2ga", scope: !4521, file: !129, line: 134, baseType: !4650, size: 24, offset: 3184)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gla", scope: !4521, file: !129, line: 135, baseType: !4650, size: 24, offset: 3208)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gma", scope: !4521, file: !129, line: 136, baseType: !4650, size: 24, offset: 3232)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gha", scope: !4521, file: !129, line: 137, baseType: !4650, size: 24, offset: 3256)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gua", scope: !4521, file: !129, line: 138, baseType: !4650, size: 24, offset: 3280)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "regrev", scope: !4521, file: !129, line: 140, baseType: !160, size: 8, offset: 3304)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "txchain", scope: !4521, file: !129, line: 141, baseType: !160, size: 8, offset: 3312)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "rxchain", scope: !4521, file: !129, line: 142, baseType: !160, size: 8, offset: 3320)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "antswitch", scope: !4521, file: !129, line: 143, baseType: !160, size: 8, offset: 3328)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "cddpo", scope: !4521, file: !129, line: 144, baseType: !156, size: 16, offset: 3344)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "stbcpo", scope: !4521, file: !129, line: 145, baseType: !156, size: 16, offset: 3360)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "bw40po", scope: !4521, file: !129, line: 146, baseType: !156, size: 16, offset: 3376)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "bwduppo", scope: !4521, file: !129, line: 147, baseType: !156, size: 16, offset: 3392)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "tempthresh", scope: !4521, file: !129, line: 149, baseType: !160, size: 8, offset: 3408)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "tempoffset", scope: !4521, file: !129, line: 150, baseType: !160, size: 8, offset: 3416)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "rawtempsense", scope: !4521, file: !129, line: 151, baseType: !156, size: 16, offset: 3424)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "measpower", scope: !4521, file: !129, line: 152, baseType: !160, size: 8, offset: 3440)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "tempsense_slope", scope: !4521, file: !129, line: 153, baseType: !160, size: 8, offset: 3448)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "tempcorrx", scope: !4521, file: !129, line: 154, baseType: !160, size: 8, offset: 3456)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "tempsense_option", scope: !4521, file: !129, line: 155, baseType: !160, size: 8, offset: 3464)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "freqoffset_corr", scope: !4521, file: !129, line: 156, baseType: !160, size: 8, offset: 3472)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "iqcal_swp_dis", scope: !4521, file: !129, line: 157, baseType: !160, size: 8, offset: 3480)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "hw_iqcal_en", scope: !4521, file: !129, line: 158, baseType: !160, size: 8, offset: 3488)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "elna2g", scope: !4521, file: !129, line: 159, baseType: !160, size: 8, offset: 3496)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "elna5g", scope: !4521, file: !129, line: 160, baseType: !160, size: 8, offset: 3504)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "phycal_tempdelta", scope: !4521, file: !129, line: 161, baseType: !160, size: 8, offset: 3512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "temps_period", scope: !4521, file: !129, line: 162, baseType: !160, size: 8, offset: 3520)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "temps_hysteresis", scope: !4521, file: !129, line: 163, baseType: !160, size: 8, offset: 3528)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "measpower1", scope: !4521, file: !129, line: 164, baseType: !160, size: 8, offset: 3536)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "measpower2", scope: !4521, file: !129, line: 165, baseType: !160, size: 8, offset: 3544)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pcieingress_war", scope: !4521, file: !129, line: 166, baseType: !160, size: 8, offset: 3552)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "cckbw202gpo", scope: !4521, file: !129, line: 169, baseType: !156, size: 16, offset: 3568)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "cckbw20ul2gpo", scope: !4521, file: !129, line: 170, baseType: !156, size: 16, offset: 3584)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw202gpo", scope: !4521, file: !129, line: 171, baseType: !143, size: 32, offset: 3616)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul2gpo", scope: !4521, file: !129, line: 172, baseType: !143, size: 32, offset: 3648)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205glpo", scope: !4521, file: !129, line: 173, baseType: !143, size: 32, offset: 3680)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5glpo", scope: !4521, file: !129, line: 174, baseType: !143, size: 32, offset: 3712)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205gmpo", scope: !4521, file: !129, line: 175, baseType: !143, size: 32, offset: 3744)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5gmpo", scope: !4521, file: !129, line: 176, baseType: !143, size: 32, offset: 3776)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205ghpo", scope: !4521, file: !129, line: 177, baseType: !143, size: 32, offset: 3808)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5ghpo", scope: !4521, file: !129, line: 178, baseType: !143, size: 32, offset: 3840)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw202gpo", scope: !4521, file: !129, line: 179, baseType: !143, size: 32, offset: 3872)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul2gpo", scope: !4521, file: !129, line: 180, baseType: !143, size: 32, offset: 3904)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw402gpo", scope: !4521, file: !129, line: 181, baseType: !143, size: 32, offset: 3936)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205glpo", scope: !4521, file: !129, line: 182, baseType: !143, size: 32, offset: 3968)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5glpo", scope: !4521, file: !129, line: 183, baseType: !143, size: 32, offset: 4000)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405glpo", scope: !4521, file: !129, line: 184, baseType: !143, size: 32, offset: 4032)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205gmpo", scope: !4521, file: !129, line: 185, baseType: !143, size: 32, offset: 4064)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5gmpo", scope: !4521, file: !129, line: 186, baseType: !143, size: 32, offset: 4096)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405gmpo", scope: !4521, file: !129, line: 187, baseType: !143, size: 32, offset: 4128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205ghpo", scope: !4521, file: !129, line: 188, baseType: !143, size: 32, offset: 4160)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5ghpo", scope: !4521, file: !129, line: 189, baseType: !143, size: 32, offset: 4192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405ghpo", scope: !4521, file: !129, line: 190, baseType: !143, size: 32, offset: 4224)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mcs32po", scope: !4521, file: !129, line: 191, baseType: !156, size: 16, offset: 4256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "legofdm40duppo", scope: !4521, file: !129, line: 192, baseType: !156, size: 16, offset: 4272)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "sar2g", scope: !4521, file: !129, line: 193, baseType: !160, size: 8, offset: 4288)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "sar5g", scope: !4521, file: !129, line: 194, baseType: !160, size: 8, offset: 4296)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "has_cardbus_slot", scope: !4193, file: !129, line: 488, baseType: !528, size: 8, offset: 13760)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4193, file: !129, line: 501, baseType: !262, size: 128, offset: 13824)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "powered_up", scope: !4193, file: !129, line: 503, baseType: !528, size: 8, offset: 13952)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "power_warn_count", scope: !4193, file: !129, line: 504, baseType: !147, size: 32, offset: 13984)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !218, file: !129, line: 276, baseType: !4717, size: 48, align: 16, offset: 256)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_device_id", file: !3507, line: 401, size: 48, align: 16, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4717, file: !3507, line: 402, baseType: !157, size: 16)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "coreid", scope: !4717, file: !3507, line: 403, baseType: !157, size: 16, offset: 16)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4717, file: !3507, line: 404, baseType: !161, size: 8, offset: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !4717, file: !3507, line: 405, baseType: !161, size: 8, offset: 40)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "core_index", scope: !218, file: !129, line: 278, baseType: !160, size: 8, offset: 304)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !218, file: !129, line: 279, baseType: !7, size: 32, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "drvdata", scope: !218, file: !129, line: 282, baseType: !390, size: 64, offset: 384)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "devtypedata", scope: !218, file: !129, line: 283, baseType: !390, size: 64, offset: 448)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !214, file: !136, line: 589, baseType: !143, size: 32, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !214, file: !136, line: 590, baseType: !143, size: 32, offset: 96)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "fast_pwrup_delay", scope: !214, file: !136, line: 592, baseType: !156, size: 16, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_lock", scope: !214, file: !136, line: 593, baseType: !276, offset: 144)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !214, file: !136, line: 594, baseType: !4732, size: 64, offset: 160)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_chipcommon_pmu", file: !136, line: 582, size: 64, elements: !4733)
!4733 = !{!4734, !4735}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4732, file: !136, line: 583, baseType: !160, size: 8)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "crystalfreq", scope: !4732, file: !136, line: 584, baseType: !143, size: 32, offset: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_ms", scope: !214, file: !136, line: 595, baseType: !143, size: 32, offset: 224)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "max_timer_ms", scope: !214, file: !136, line: 596, baseType: !143, size: 32, offset: 256)
!4738 = !DILocalVariable(name: "cc", arg: 1, scope: !210, file: !3, line: 517, type: !213)
!4739 = !DILocation(line: 517, column: 42, scope: !210)
!4740 = !DILocalVariable(name: "pmucap", scope: !210, file: !3, line: 519, type: !143)
!4741 = !DILocation(line: 519, column: 6, scope: !210)
!4742 = !DILocation(line: 521, column: 8, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !210, file: !3, line: 521, column: 6)
!4744 = !DILocation(line: 521, column: 12, scope: !4743)
!4745 = !DILocation(line: 521, column: 25, scope: !4743)
!4746 = !DILocation(line: 521, column: 6, scope: !210)
!4747 = !DILocation(line: 522, column: 3, scope: !4743)
!4748 = !DILocation(line: 524, column: 11, scope: !210)
!4749 = !DILocation(line: 524, column: 9, scope: !210)
!4750 = !DILocation(line: 525, column: 17, scope: !210)
!4751 = !DILocation(line: 525, column: 24, scope: !210)
!4752 = !DILocation(line: 525, column: 16, scope: !210)
!4753 = !DILocation(line: 525, column: 2, scope: !210)
!4754 = !DILocation(line: 525, column: 6, scope: !210)
!4755 = !DILocation(line: 525, column: 10, scope: !210)
!4756 = !DILocation(line: 525, column: 14, scope: !210)
!4757 = !DILocation(line: 530, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !210, file: !3, line: 530, column: 6)
!4759 = !DILocation(line: 530, column: 10, scope: !4758)
!4760 = !DILocation(line: 530, column: 14, scope: !4758)
!4761 = !DILocation(line: 530, column: 18, scope: !4758)
!4762 = !DILocation(line: 530, column: 6, scope: !210)
!4763 = !DILocation(line: 531, column: 3, scope: !4758)
!4764 = !DILocation(line: 534, column: 3, scope: !4758)
!4765 = !DILocation(line: 536, column: 19, scope: !210)
!4766 = !DILocation(line: 536, column: 2, scope: !210)
!4767 = !DILocation(line: 537, column: 25, scope: !210)
!4768 = !DILocation(line: 537, column: 2, scope: !210)
!4769 = !DILocation(line: 538, column: 1, scope: !210)
!4770 = distinct !DISubprogram(name: "ssb_read32", scope: !129, file: !129, line: 583, type: !235, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4771 = !DILocalVariable(name: "dev", arg: 1, scope: !4770, file: !129, line: 583, type: !217)
!4772 = !DILocation(line: 583, column: 49, scope: !4770)
!4773 = !DILocalVariable(name: "offset", arg: 2, scope: !4770, file: !129, line: 583, type: !156)
!4774 = !DILocation(line: 583, column: 58, scope: !4770)
!4775 = !DILocation(line: 585, column: 9, scope: !4770)
!4776 = !DILocation(line: 585, column: 14, scope: !4770)
!4777 = !DILocation(line: 585, column: 19, scope: !4770)
!4778 = !DILocation(line: 585, column: 26, scope: !4770)
!4779 = !DILocation(line: 585, column: 31, scope: !4770)
!4780 = !DILocation(line: 585, column: 2, scope: !4770)
!4781 = distinct !DISubprogram(name: "ssb_write32", scope: !129, file: !129, line: 595, type: !247, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4782 = !DILocalVariable(name: "dev", arg: 1, scope: !4781, file: !129, line: 595, type: !217)
!4783 = !DILocation(line: 595, column: 51, scope: !4781)
!4784 = !DILocalVariable(name: "offset", arg: 2, scope: !4781, file: !129, line: 595, type: !156)
!4785 = !DILocation(line: 595, column: 60, scope: !4781)
!4786 = !DILocalVariable(name: "value", arg: 3, scope: !4781, file: !129, line: 595, type: !143)
!4787 = !DILocation(line: 595, column: 72, scope: !4781)
!4788 = !DILocation(line: 597, column: 2, scope: !4781)
!4789 = !DILocation(line: 597, column: 7, scope: !4781)
!4790 = !DILocation(line: 597, column: 12, scope: !4781)
!4791 = !DILocation(line: 597, column: 20, scope: !4781)
!4792 = !DILocation(line: 597, column: 25, scope: !4781)
!4793 = !DILocation(line: 597, column: 33, scope: !4781)
!4794 = !DILocation(line: 598, column: 1, scope: !4781)
!4795 = distinct !DISubprogram(name: "ssb_pmu_pll_init", scope: !3, file: !3, line: 317, type: !211, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4796 = !DILocalVariable(name: "cc", arg: 1, scope: !4795, file: !3, line: 317, type: !213)
!4797 = !DILocation(line: 317, column: 53, scope: !4795)
!4798 = !DILocalVariable(name: "bus", scope: !4795, file: !3, line: 319, type: !4192)
!4799 = !DILocation(line: 319, column: 18, scope: !4795)
!4800 = !DILocation(line: 319, column: 24, scope: !4795)
!4801 = !DILocation(line: 319, column: 28, scope: !4795)
!4802 = !DILocation(line: 319, column: 33, scope: !4795)
!4803 = !DILocalVariable(name: "crystalfreq", scope: !4795, file: !3, line: 320, type: !143)
!4804 = !DILocation(line: 320, column: 6, scope: !4795)
!4805 = !DILocation(line: 322, column: 6, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 322, column: 6)
!4807 = !DILocation(line: 322, column: 11, scope: !4806)
!4808 = !DILocation(line: 322, column: 19, scope: !4806)
!4809 = !DILocation(line: 322, column: 6, scope: !4795)
!4810 = !DILocation(line: 328, column: 2, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 322, column: 39)
!4812 = !DILocation(line: 330, column: 10, scope: !4795)
!4813 = !DILocation(line: 330, column: 15, scope: !4795)
!4814 = !DILocation(line: 330, column: 2, scope: !4795)
!4815 = !DILocation(line: 333, column: 23, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 330, column: 24)
!4817 = !DILocation(line: 333, column: 27, scope: !4816)
!4818 = !DILocation(line: 333, column: 3, scope: !4816)
!4819 = !DILocation(line: 334, column: 3, scope: !4816)
!4820 = !DILocation(line: 336, column: 23, scope: !4816)
!4821 = !DILocation(line: 336, column: 27, scope: !4816)
!4822 = !DILocation(line: 336, column: 3, scope: !4816)
!4823 = !DILocation(line: 337, column: 3, scope: !4816)
!4824 = !DILocation(line: 339, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 339, column: 7)
!4826 = !DILocation(line: 339, column: 19, scope: !4825)
!4827 = !DILocation(line: 339, column: 7, scope: !4816)
!4828 = !DILocation(line: 340, column: 16, scope: !4825)
!4829 = !DILocation(line: 340, column: 4, scope: !4825)
!4830 = !DILocation(line: 341, column: 23, scope: !4816)
!4831 = !DILocation(line: 341, column: 27, scope: !4816)
!4832 = !DILocation(line: 341, column: 3, scope: !4816)
!4833 = !DILocation(line: 342, column: 3, scope: !4816)
!4834 = !DILocation(line: 344, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 344, column: 7)
!4836 = !DILocation(line: 344, column: 11, scope: !4835)
!4837 = !DILocation(line: 344, column: 15, scope: !4835)
!4838 = !DILocation(line: 344, column: 19, scope: !4835)
!4839 = !DILocation(line: 344, column: 7, scope: !4816)
!4840 = !DILocation(line: 345, column: 4, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 344, column: 25)
!4842 = !DILocation(line: 346, column: 4, scope: !4841)
!4843 = !DILocation(line: 347, column: 3, scope: !4841)
!4844 = !DILocation(line: 348, column: 3, scope: !4816)
!4845 = !DILocation(line: 350, column: 3, scope: !4816)
!4846 = !DILocation(line: 352, column: 3, scope: !4816)
!4847 = !DILocation(line: 354, column: 2, scope: !4816)
!4848 = !DILocation(line: 355, column: 1, scope: !4795)
!4849 = distinct !DISubprogram(name: "ssb_pmu_resources_init", scope: !3, file: !3, line: 423, type: !211, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4850 = !DILocalVariable(name: "cc", arg: 1, scope: !4849, file: !3, line: 423, type: !213)
!4851 = !DILocation(line: 423, column: 59, scope: !4849)
!4852 = !DILocalVariable(name: "bus", scope: !4849, file: !3, line: 425, type: !4192)
!4853 = !DILocation(line: 425, column: 18, scope: !4849)
!4854 = !DILocation(line: 425, column: 24, scope: !4849)
!4855 = !DILocation(line: 425, column: 28, scope: !4849)
!4856 = !DILocation(line: 425, column: 33, scope: !4849)
!4857 = !DILocalVariable(name: "min_msk", scope: !4849, file: !3, line: 426, type: !143)
!4858 = !DILocation(line: 426, column: 6, scope: !4849)
!4859 = !DILocalVariable(name: "max_msk", scope: !4849, file: !3, line: 426, type: !143)
!4860 = !DILocation(line: 426, column: 19, scope: !4849)
!4861 = !DILocalVariable(name: "i", scope: !4849, file: !3, line: 427, type: !7)
!4862 = !DILocation(line: 427, column: 15, scope: !4849)
!4863 = !DILocalVariable(name: "updown_tab", scope: !4849, file: !3, line: 428, type: !4864)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!4865 = !DILocation(line: 428, column: 41, scope: !4849)
!4866 = !DILocalVariable(name: "updown_tab_size", scope: !4849, file: !3, line: 429, type: !7)
!4867 = !DILocation(line: 429, column: 15, scope: !4849)
!4868 = !DILocalVariable(name: "depend_tab", scope: !4849, file: !3, line: 430, type: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!4870 = !DILocation(line: 430, column: 41, scope: !4849)
!4871 = !DILocalVariable(name: "depend_tab_size", scope: !4849, file: !3, line: 431, type: !7)
!4872 = !DILocation(line: 431, column: 15, scope: !4849)
!4873 = !DILocation(line: 433, column: 10, scope: !4849)
!4874 = !DILocation(line: 433, column: 15, scope: !4849)
!4875 = !DILocation(line: 433, column: 2, scope: !4849)
!4876 = !DILocation(line: 435, column: 12, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 433, column: 24)
!4878 = !DILocation(line: 436, column: 4, scope: !4877)
!4879 = !DILocation(line: 443, column: 3, scope: !4877)
!4880 = !DILocation(line: 446, column: 11, scope: !4877)
!4881 = !DILocation(line: 448, column: 7, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 448, column: 7)
!4883 = !DILocation(line: 448, column: 46, scope: !4882)
!4884 = !DILocation(line: 448, column: 7, scope: !4877)
!4885 = !DILocation(line: 450, column: 12, scope: !4882)
!4886 = !DILocation(line: 450, column: 4, scope: !4882)
!4887 = !DILocation(line: 452, column: 11, scope: !4877)
!4888 = !DILocation(line: 453, column: 14, scope: !4877)
!4889 = !DILocation(line: 454, column: 19, scope: !4877)
!4890 = !DILocation(line: 455, column: 14, scope: !4877)
!4891 = !DILocation(line: 456, column: 19, scope: !4877)
!4892 = !DILocation(line: 457, column: 3, scope: !4877)
!4893 = !DILocation(line: 459, column: 11, scope: !4877)
!4894 = !DILocation(line: 463, column: 11, scope: !4877)
!4895 = !DILocation(line: 464, column: 14, scope: !4877)
!4896 = !DILocation(line: 465, column: 19, scope: !4877)
!4897 = !DILocation(line: 466, column: 14, scope: !4877)
!4898 = !DILocation(line: 467, column: 19, scope: !4877)
!4899 = !DILocation(line: 468, column: 3, scope: !4877)
!4900 = !DILocation(line: 471, column: 11, scope: !4877)
!4901 = !DILocation(line: 472, column: 3, scope: !4877)
!4902 = !DILocation(line: 474, column: 3, scope: !4877)
!4903 = !DILocation(line: 476, column: 2, scope: !4877)
!4904 = !DILocation(line: 478, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 478, column: 6)
!4906 = !DILocation(line: 478, column: 6, scope: !4849)
!4907 = !DILocation(line: 479, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 479, column: 3)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 478, column: 18)
!4910 = !DILocation(line: 479, column: 8, scope: !4908)
!4911 = !DILocation(line: 479, column: 15, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 479, column: 3)
!4913 = !DILocation(line: 479, column: 19, scope: !4912)
!4914 = !DILocation(line: 479, column: 17, scope: !4912)
!4915 = !DILocation(line: 479, column: 3, scope: !4908)
!4916 = !DILocation(line: 480, column: 4, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 479, column: 41)
!4918 = !DILocation(line: 482, column: 4, scope: !4917)
!4919 = !DILocation(line: 484, column: 3, scope: !4917)
!4920 = !DILocation(line: 479, column: 37, scope: !4912)
!4921 = !DILocation(line: 479, column: 3, scope: !4912)
!4922 = distinct !{!4922, !4915, !4923}
!4923 = !DILocation(line: 484, column: 3, scope: !4908)
!4924 = !DILocation(line: 485, column: 2, scope: !4909)
!4925 = !DILocation(line: 486, column: 6, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 486, column: 6)
!4927 = !DILocation(line: 486, column: 6, scope: !4849)
!4928 = !DILocation(line: 487, column: 10, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 487, column: 3)
!4930 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 486, column: 18)
!4931 = !DILocation(line: 487, column: 8, scope: !4929)
!4932 = !DILocation(line: 487, column: 15, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 487, column: 3)
!4934 = !DILocation(line: 487, column: 19, scope: !4933)
!4935 = !DILocation(line: 487, column: 17, scope: !4933)
!4936 = !DILocation(line: 487, column: 3, scope: !4929)
!4937 = !DILocation(line: 488, column: 4, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 487, column: 41)
!4939 = !DILocation(line: 490, column: 12, scope: !4938)
!4940 = !DILocation(line: 490, column: 23, scope: !4938)
!4941 = !DILocation(line: 490, column: 26, scope: !4938)
!4942 = !DILocation(line: 490, column: 4, scope: !4938)
!4943 = !DILocation(line: 492, column: 5, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 490, column: 32)
!4945 = !DILocation(line: 494, column: 5, scope: !4944)
!4946 = !DILocation(line: 496, column: 5, scope: !4944)
!4947 = !DILocation(line: 498, column: 5, scope: !4944)
!4948 = !DILocation(line: 500, column: 5, scope: !4944)
!4949 = !DILocation(line: 502, column: 5, scope: !4944)
!4950 = !DILocalVariable(name: "__ret_warn_on", scope: !4951, file: !3, line: 504, type: !147)
!4951 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 504, column: 5)
!4952 = !DILocation(line: 504, column: 5, scope: !4951)
!4953 = !DILocation(line: 504, column: 5, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 504, column: 5)
!4955 = !DILocation(line: 504, column: 5, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 504, column: 5)
!4957 = !DILocation(line: 504, column: 5, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 504, column: 5)
!4959 = !DILocation(line: 504, column: 5, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 504, column: 5)
!4961 = !{i32 -2141394170, i32 -2141394141, i32 -2141394095, i32 -2141394037, i32 -2141393983, i32 -2141393929, i32 -2141393874, i32 -2141393843}
!4962 = !DILocation(line: 504, column: 5, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 504, column: 5)
!4964 = !{i32 -2141393426, i32 -2141393419, i32 -2141393367, i32 -2141393336, i32 -2141393306}
!4965 = !DILocation(line: 504, column: 5, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 504, column: 5)
!4967 = !DILocation(line: 505, column: 4, scope: !4944)
!4968 = !DILocation(line: 506, column: 3, scope: !4938)
!4969 = !DILocation(line: 487, column: 37, scope: !4933)
!4970 = !DILocation(line: 487, column: 3, scope: !4933)
!4971 = distinct !{!4971, !4936, !4972}
!4972 = !DILocation(line: 506, column: 3, scope: !4929)
!4973 = !DILocation(line: 507, column: 2, scope: !4930)
!4974 = !DILocation(line: 510, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 510, column: 6)
!4976 = !DILocation(line: 510, column: 6, scope: !4849)
!4977 = !DILocation(line: 511, column: 3, scope: !4975)
!4978 = !DILocation(line: 512, column: 6, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 512, column: 6)
!4980 = !DILocation(line: 512, column: 6, scope: !4849)
!4981 = !DILocation(line: 513, column: 3, scope: !4979)
!4982 = !DILocation(line: 514, column: 1, scope: !4849)
!4983 = distinct !DISubprogram(name: "ssb_pmu_set_ldo_voltage", scope: !3, file: !3, line: 540, type: !4984, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{null, !213, !135, !143}
!4986 = !DILocalVariable(name: "cc", arg: 1, scope: !4983, file: !3, line: 540, type: !213)
!4987 = !DILocation(line: 540, column: 53, scope: !4983)
!4988 = !DILocalVariable(name: "id", arg: 2, scope: !4983, file: !3, line: 541, type: !135)
!4989 = !DILocation(line: 541, column: 34, scope: !4983)
!4990 = !DILocalVariable(name: "voltage", arg: 3, scope: !4983, file: !3, line: 541, type: !143)
!4991 = !DILocation(line: 541, column: 42, scope: !4983)
!4992 = !DILocalVariable(name: "bus", scope: !4983, file: !3, line: 543, type: !4192)
!4993 = !DILocation(line: 543, column: 18, scope: !4983)
!4994 = !DILocation(line: 543, column: 24, scope: !4983)
!4995 = !DILocation(line: 543, column: 28, scope: !4983)
!4996 = !DILocation(line: 543, column: 33, scope: !4983)
!4997 = !DILocalVariable(name: "addr", scope: !4983, file: !3, line: 544, type: !143)
!4998 = !DILocation(line: 544, column: 6, scope: !4983)
!4999 = !DILocalVariable(name: "shift", scope: !4983, file: !3, line: 544, type: !143)
!5000 = !DILocation(line: 544, column: 12, scope: !4983)
!5001 = !DILocalVariable(name: "mask", scope: !4983, file: !3, line: 544, type: !143)
!5002 = !DILocation(line: 544, column: 19, scope: !4983)
!5003 = !DILocation(line: 546, column: 10, scope: !4983)
!5004 = !DILocation(line: 546, column: 15, scope: !4983)
!5005 = !DILocation(line: 546, column: 2, scope: !4983)
!5006 = !DILocation(line: 549, column: 11, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 546, column: 24)
!5008 = !DILocation(line: 549, column: 3, scope: !5007)
!5009 = !DILocation(line: 551, column: 9, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 549, column: 15)
!5011 = !DILocation(line: 552, column: 10, scope: !5010)
!5012 = !DILocation(line: 553, column: 9, scope: !5010)
!5013 = !DILocation(line: 554, column: 4, scope: !5010)
!5014 = !DILocation(line: 556, column: 9, scope: !5010)
!5015 = !DILocation(line: 557, column: 10, scope: !5010)
!5016 = !DILocation(line: 558, column: 9, scope: !5010)
!5017 = !DILocation(line: 559, column: 4, scope: !5010)
!5018 = !DILocation(line: 561, column: 9, scope: !5010)
!5019 = !DILocation(line: 562, column: 10, scope: !5010)
!5020 = !DILocation(line: 563, column: 9, scope: !5010)
!5021 = !DILocation(line: 564, column: 4, scope: !5010)
!5022 = !DILocation(line: 566, column: 9, scope: !5010)
!5023 = !DILocation(line: 567, column: 10, scope: !5010)
!5024 = !DILocation(line: 568, column: 9, scope: !5010)
!5025 = !DILocation(line: 569, column: 4, scope: !5010)
!5026 = !DILocalVariable(name: "__ret_warn_on", scope: !5027, file: !3, line: 571, type: !147)
!5027 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 571, column: 4)
!5028 = !DILocation(line: 571, column: 4, scope: !5027)
!5029 = !DILocation(line: 571, column: 4, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 571, column: 4)
!5031 = !DILocation(line: 571, column: 4, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 571, column: 4)
!5033 = !DILocation(line: 571, column: 4, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 571, column: 4)
!5035 = !DILocation(line: 571, column: 4, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 571, column: 4)
!5037 = !{i32 -2141391803, i32 -2141391774, i32 -2141391728, i32 -2141391670, i32 -2141391616, i32 -2141391562, i32 -2141391507, i32 -2141391476}
!5038 = !DILocation(line: 571, column: 4, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 571, column: 4)
!5040 = !{i32 -2141391059, i32 -2141391052, i32 -2141391000, i32 -2141390969, i32 -2141390939}
!5041 = !DILocation(line: 571, column: 4, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 571, column: 4)
!5043 = !DILocation(line: 572, column: 4, scope: !5010)
!5044 = !DILocation(line: 574, column: 3, scope: !5007)
!5045 = !DILocalVariable(name: "__ret_warn_on", scope: !5046, file: !3, line: 576, type: !147)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 576, column: 7)
!5047 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 576, column: 7)
!5048 = !DILocation(line: 576, column: 7, scope: !5046)
!5049 = !DILocation(line: 576, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 576, column: 7)
!5051 = !DILocation(line: 576, column: 7, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 576, column: 7)
!5053 = !DILocation(line: 576, column: 7, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 576, column: 7)
!5055 = !DILocation(line: 576, column: 7, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 576, column: 7)
!5057 = !{i32 -2141390352, i32 -2141390323, i32 -2141390277, i32 -2141390219, i32 -2141390165, i32 -2141390111, i32 -2141390056, i32 -2141390025}
!5058 = !DILocation(line: 576, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 576, column: 7)
!5060 = !{i32 -2141389608, i32 -2141389601, i32 -2141389549, i32 -2141389518, i32 -2141389488}
!5061 = !DILocation(line: 576, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 576, column: 7)
!5063 = !DILocation(line: 576, column: 7, scope: !5047)
!5064 = !DILocation(line: 576, column: 7, scope: !5007)
!5065 = !DILocation(line: 577, column: 4, scope: !5047)
!5066 = !DILocation(line: 578, column: 8, scope: !5007)
!5067 = !DILocation(line: 579, column: 9, scope: !5007)
!5068 = !DILocation(line: 580, column: 8, scope: !5007)
!5069 = !DILocation(line: 581, column: 3, scope: !5007)
!5070 = !DILocation(line: 583, column: 3, scope: !5007)
!5071 = !DILocation(line: 586, column: 28, scope: !4983)
!5072 = !DILocation(line: 586, column: 32, scope: !4983)
!5073 = !DILocation(line: 586, column: 40, scope: !4983)
!5074 = !DILocation(line: 586, column: 48, scope: !4983)
!5075 = !DILocation(line: 586, column: 45, scope: !4983)
!5076 = !DILocation(line: 586, column: 38, scope: !4983)
!5077 = !DILocation(line: 587, column: 8, scope: !4983)
!5078 = !DILocation(line: 587, column: 18, scope: !4983)
!5079 = !DILocation(line: 587, column: 16, scope: !4983)
!5080 = !DILocation(line: 587, column: 27, scope: !4983)
!5081 = !DILocation(line: 587, column: 24, scope: !4983)
!5082 = !DILocation(line: 586, column: 2, scope: !4983)
!5083 = !DILocation(line: 588, column: 1, scope: !4983)
!5084 = distinct !DISubprogram(name: "ssb_chipco_regctl_maskset", scope: !3, file: !3, line: 35, type: !5085, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !213, !143, !143, !143}
!5087 = !DILocalVariable(name: "cc", arg: 1, scope: !5084, file: !3, line: 35, type: !213)
!5088 = !DILocation(line: 35, column: 62, scope: !5084)
!5089 = !DILocalVariable(name: "offset", arg: 2, scope: !5084, file: !3, line: 36, type: !143)
!5090 = !DILocation(line: 36, column: 12, scope: !5084)
!5091 = !DILocalVariable(name: "mask", arg: 3, scope: !5084, file: !3, line: 36, type: !143)
!5092 = !DILocation(line: 36, column: 24, scope: !5084)
!5093 = !DILocalVariable(name: "set", arg: 4, scope: !5084, file: !3, line: 36, type: !143)
!5094 = !DILocation(line: 36, column: 34, scope: !5084)
!5095 = !DILocalVariable(name: "value", scope: !5084, file: !3, line: 38, type: !143)
!5096 = !DILocation(line: 38, column: 6, scope: !5084)
!5097 = !DILocation(line: 40, column: 2, scope: !5084)
!5098 = !DILocation(line: 41, column: 2, scope: !5084)
!5099 = !DILocation(line: 42, column: 2, scope: !5084)
!5100 = !DILocation(line: 43, column: 10, scope: !5084)
!5101 = !DILocation(line: 43, column: 8, scope: !5084)
!5102 = !DILocation(line: 44, column: 11, scope: !5084)
!5103 = !DILocation(line: 44, column: 8, scope: !5084)
!5104 = !DILocation(line: 45, column: 11, scope: !5084)
!5105 = !DILocation(line: 45, column: 8, scope: !5084)
!5106 = !DILocation(line: 46, column: 2, scope: !5084)
!5107 = !DILocation(line: 47, column: 2, scope: !5084)
!5108 = !DILocation(line: 48, column: 1, scope: !5084)
!5109 = distinct !DISubprogram(name: "ssb_pmu_set_ldo_paref", scope: !3, file: !3, line: 590, type: !5110, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{null, !213, !528}
!5112 = !DILocalVariable(name: "cc", arg: 1, scope: !5109, file: !3, line: 590, type: !213)
!5113 = !DILocation(line: 590, column: 51, scope: !5109)
!5114 = !DILocalVariable(name: "on", arg: 2, scope: !5109, file: !3, line: 590, type: !528)
!5115 = !DILocation(line: 590, column: 60, scope: !5109)
!5116 = !DILocalVariable(name: "bus", scope: !5109, file: !3, line: 592, type: !4192)
!5117 = !DILocation(line: 592, column: 18, scope: !5109)
!5118 = !DILocation(line: 592, column: 24, scope: !5109)
!5119 = !DILocation(line: 592, column: 28, scope: !5109)
!5120 = !DILocation(line: 592, column: 33, scope: !5109)
!5121 = !DILocalVariable(name: "ldo", scope: !5109, file: !3, line: 593, type: !147)
!5122 = !DILocation(line: 593, column: 6, scope: !5109)
!5123 = !DILocation(line: 595, column: 10, scope: !5109)
!5124 = !DILocation(line: 595, column: 15, scope: !5109)
!5125 = !DILocation(line: 595, column: 2, scope: !5109)
!5126 = !DILocation(line: 597, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 595, column: 24)
!5128 = !DILocation(line: 598, column: 3, scope: !5127)
!5129 = !DILocation(line: 600, column: 7, scope: !5127)
!5130 = !DILocation(line: 601, column: 3, scope: !5127)
!5131 = !DILocation(line: 603, column: 7, scope: !5127)
!5132 = !DILocation(line: 604, column: 3, scope: !5127)
!5133 = !DILocation(line: 606, column: 3, scope: !5127)
!5134 = !DILocation(line: 609, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 609, column: 6)
!5136 = !DILocation(line: 609, column: 6, scope: !5109)
!5137 = !DILocation(line: 610, column: 3, scope: !5135)
!5138 = !DILocation(line: 612, column: 3, scope: !5135)
!5139 = !DILocation(line: 613, column: 2, scope: !5109)
!5140 = !DILocation(line: 614, column: 1, scope: !5109)
!5141 = distinct !DISubprogram(name: "ssb_pmu_get_alp_clock", scope: !3, file: !3, line: 631, type: !5142, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!143, !213}
!5144 = !DILocalVariable(name: "cc", arg: 1, scope: !5141, file: !3, line: 631, type: !213)
!5145 = !DILocation(line: 631, column: 50, scope: !5141)
!5146 = !DILocalVariable(name: "bus", scope: !5141, file: !3, line: 633, type: !4192)
!5147 = !DILocation(line: 633, column: 18, scope: !5141)
!5148 = !DILocation(line: 633, column: 24, scope: !5141)
!5149 = !DILocation(line: 633, column: 28, scope: !5141)
!5150 = !DILocation(line: 633, column: 33, scope: !5141)
!5151 = !DILocation(line: 635, column: 10, scope: !5141)
!5152 = !DILocation(line: 635, column: 15, scope: !5141)
!5153 = !DILocation(line: 635, column: 2, scope: !5141)
!5154 = !DILocation(line: 637, column: 37, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 635, column: 24)
!5156 = !DILocation(line: 637, column: 10, scope: !5155)
!5157 = !DILocation(line: 637, column: 3, scope: !5155)
!5158 = !DILocation(line: 639, column: 3, scope: !5155)
!5159 = !DILocation(line: 641, column: 3, scope: !5155)
!5160 = !DILocation(line: 643, column: 1, scope: !5141)
!5161 = distinct !DISubprogram(name: "ssb_pmu_get_alp_clock_clk0", scope: !3, file: !3, line: 619, type: !5142, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5162 = !DILocalVariable(name: "cc", arg: 1, scope: !5161, file: !3, line: 619, type: !213)
!5163 = !DILocation(line: 619, column: 62, scope: !5161)
!5164 = !DILocalVariable(name: "crystalfreq", scope: !5161, file: !3, line: 621, type: !143)
!5165 = !DILocation(line: 621, column: 6, scope: !5161)
!5166 = !DILocalVariable(name: "e", scope: !5161, file: !3, line: 622, type: !5167)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!5168 = !DILocation(line: 622, column: 34, scope: !5161)
!5169 = !DILocation(line: 624, column: 17, scope: !5161)
!5170 = !DILocation(line: 624, column: 55, scope: !5161)
!5171 = !DILocation(line: 625, column: 40, scope: !5161)
!5172 = !DILocation(line: 624, column: 14, scope: !5161)
!5173 = !DILocation(line: 626, column: 29, scope: !5161)
!5174 = !DILocation(line: 626, column: 6, scope: !5161)
!5175 = !DILocation(line: 626, column: 4, scope: !5161)
!5176 = !DILocation(line: 627, column: 2, scope: !5161)
!5177 = !DILocation(line: 627, column: 2, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 627, column: 2)
!5179 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 627, column: 2)
!5180 = !DILocation(line: 627, column: 2, scope: !5179)
!5181 = !DILocation(line: 627, column: 2, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 627, column: 2)
!5183 = !DILocation(line: 627, column: 2, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 627, column: 2)
!5185 = !DILocation(line: 627, column: 2, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 627, column: 2)
!5187 = !{i32 -2141388342, i32 -2141388313, i32 -2141388267, i32 -2141388209, i32 -2141388155, i32 -2141388101, i32 -2141388046, i32 -2141388015}
!5188 = !DILocation(line: 627, column: 2, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 627, column: 2)
!5190 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 627, column: 2)
!5191 = !{i32 -2141387557, i32 -2141387550, i32 -2141387496, i32 -2141387465, i32 -2141387435}
!5192 = !DILocation(line: 627, column: 2, scope: !5190)
!5193 = !DILocation(line: 628, column: 9, scope: !5161)
!5194 = !DILocation(line: 628, column: 12, scope: !5161)
!5195 = !DILocation(line: 628, column: 17, scope: !5161)
!5196 = !DILocation(line: 628, column: 2, scope: !5161)
!5197 = distinct !DISubprogram(name: "ssb_pmu_get_cpu_clock", scope: !3, file: !3, line: 645, type: !5142, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5198 = !DILocalVariable(name: "cc", arg: 1, scope: !5197, file: !3, line: 645, type: !213)
!5199 = !DILocation(line: 645, column: 50, scope: !5197)
!5200 = !DILocalVariable(name: "bus", scope: !5197, file: !3, line: 647, type: !4192)
!5201 = !DILocation(line: 647, column: 18, scope: !5197)
!5202 = !DILocation(line: 647, column: 24, scope: !5197)
!5203 = !DILocation(line: 647, column: 28, scope: !5197)
!5204 = !DILocation(line: 647, column: 33, scope: !5197)
!5205 = !DILocation(line: 649, column: 10, scope: !5197)
!5206 = !DILocation(line: 649, column: 15, scope: !5197)
!5207 = !DILocation(line: 649, column: 2, scope: !5197)
!5208 = !DILocation(line: 652, column: 3, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 649, column: 24)
!5210 = !DILocation(line: 654, column: 3, scope: !5209)
!5211 = !DILocation(line: 656, column: 3, scope: !5209)
!5212 = !DILocation(line: 658, column: 1, scope: !5197)
!5213 = distinct !DISubprogram(name: "ssb_pmu_get_controlclock", scope: !3, file: !3, line: 660, type: !5142, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5214 = !DILocalVariable(name: "cc", arg: 1, scope: !5213, file: !3, line: 660, type: !213)
!5215 = !DILocation(line: 660, column: 53, scope: !5213)
!5216 = !DILocalVariable(name: "bus", scope: !5213, file: !3, line: 662, type: !4192)
!5217 = !DILocation(line: 662, column: 18, scope: !5213)
!5218 = !DILocation(line: 662, column: 24, scope: !5213)
!5219 = !DILocation(line: 662, column: 28, scope: !5213)
!5220 = !DILocation(line: 662, column: 33, scope: !5213)
!5221 = !DILocation(line: 664, column: 10, scope: !5213)
!5222 = !DILocation(line: 664, column: 15, scope: !5213)
!5223 = !DILocation(line: 664, column: 2, scope: !5213)
!5224 = !DILocation(line: 666, column: 3, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 664, column: 24)
!5226 = !DILocation(line: 668, column: 3, scope: !5225)
!5227 = !DILocation(line: 670, column: 3, scope: !5225)
!5228 = !DILocation(line: 672, column: 1, scope: !5213)
!5229 = distinct !DISubprogram(name: "ssb_pmu_spuravoid_pllupdate", scope: !3, file: !3, line: 674, type: !5230, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !213, !147}
!5232 = !DILocalVariable(name: "cc", arg: 1, scope: !5229, file: !3, line: 674, type: !213)
!5233 = !DILocation(line: 674, column: 57, scope: !5229)
!5234 = !DILocalVariable(name: "spuravoid", arg: 2, scope: !5229, file: !3, line: 674, type: !147)
!5235 = !DILocation(line: 674, column: 65, scope: !5229)
!5236 = !DILocalVariable(name: "pmu_ctl", scope: !5229, file: !3, line: 676, type: !143)
!5237 = !DILocation(line: 676, column: 6, scope: !5229)
!5238 = !DILocation(line: 678, column: 10, scope: !5229)
!5239 = !DILocation(line: 678, column: 14, scope: !5229)
!5240 = !DILocation(line: 678, column: 19, scope: !5229)
!5241 = !DILocation(line: 678, column: 24, scope: !5229)
!5242 = !DILocation(line: 678, column: 2, scope: !5229)
!5243 = !DILocation(line: 680, column: 24, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 678, column: 33)
!5245 = !DILocation(line: 680, column: 3, scope: !5244)
!5246 = !DILocation(line: 681, column: 24, scope: !5244)
!5247 = !DILocation(line: 681, column: 3, scope: !5244)
!5248 = !DILocation(line: 682, column: 24, scope: !5244)
!5249 = !DILocation(line: 682, column: 3, scope: !5244)
!5250 = !DILocation(line: 683, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 683, column: 7)
!5252 = !DILocation(line: 683, column: 17, scope: !5251)
!5253 = !DILocation(line: 683, column: 7, scope: !5244)
!5254 = !DILocation(line: 684, column: 25, scope: !5251)
!5255 = !DILocation(line: 684, column: 4, scope: !5251)
!5256 = !DILocation(line: 686, column: 25, scope: !5251)
!5257 = !DILocation(line: 686, column: 4, scope: !5251)
!5258 = !DILocation(line: 687, column: 11, scope: !5244)
!5259 = !DILocation(line: 688, column: 3, scope: !5244)
!5260 = !DILocation(line: 690, column: 7, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 690, column: 7)
!5262 = !DILocation(line: 690, column: 17, scope: !5261)
!5263 = !DILocation(line: 690, column: 7, scope: !5244)
!5264 = !DILocation(line: 691, column: 25, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 690, column: 23)
!5266 = !DILocation(line: 691, column: 4, scope: !5265)
!5267 = !DILocation(line: 692, column: 25, scope: !5265)
!5268 = !DILocation(line: 692, column: 4, scope: !5265)
!5269 = !DILocation(line: 693, column: 25, scope: !5265)
!5270 = !DILocation(line: 693, column: 4, scope: !5265)
!5271 = !DILocation(line: 694, column: 25, scope: !5265)
!5272 = !DILocation(line: 694, column: 4, scope: !5265)
!5273 = !DILocation(line: 695, column: 25, scope: !5265)
!5274 = !DILocation(line: 695, column: 4, scope: !5265)
!5275 = !DILocation(line: 696, column: 25, scope: !5265)
!5276 = !DILocation(line: 696, column: 4, scope: !5265)
!5277 = !DILocation(line: 697, column: 3, scope: !5265)
!5278 = !DILocation(line: 698, column: 25, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 697, column: 10)
!5280 = !DILocation(line: 698, column: 4, scope: !5279)
!5281 = !DILocation(line: 699, column: 25, scope: !5279)
!5282 = !DILocation(line: 699, column: 4, scope: !5279)
!5283 = !DILocation(line: 700, column: 25, scope: !5279)
!5284 = !DILocation(line: 700, column: 4, scope: !5279)
!5285 = !DILocation(line: 701, column: 25, scope: !5279)
!5286 = !DILocation(line: 701, column: 4, scope: !5279)
!5287 = !DILocation(line: 702, column: 25, scope: !5279)
!5288 = !DILocation(line: 702, column: 4, scope: !5279)
!5289 = !DILocation(line: 703, column: 25, scope: !5279)
!5290 = !DILocation(line: 703, column: 4, scope: !5279)
!5291 = !DILocation(line: 705, column: 11, scope: !5244)
!5292 = !DILocation(line: 706, column: 3, scope: !5244)
!5293 = !DILocation(line: 708, column: 3, scope: !5244)
!5294 = !DILocation(line: 711, column: 3, scope: !5244)
!5295 = !DILocation(line: 714, column: 2, scope: !5229)
!5296 = !DILocation(line: 715, column: 1, scope: !5229)
!5297 = distinct !DISubprogram(name: "ssb_chipco_pll_write", scope: !3, file: !3, line: 28, type: !5298, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{null, !213, !143, !143}
!5300 = !DILocalVariable(name: "cc", arg: 1, scope: !5297, file: !3, line: 28, type: !213)
!5301 = !DILocation(line: 28, column: 57, scope: !5297)
!5302 = !DILocalVariable(name: "offset", arg: 2, scope: !5297, file: !3, line: 29, type: !143)
!5303 = !DILocation(line: 29, column: 10, scope: !5297)
!5304 = !DILocalVariable(name: "value", arg: 3, scope: !5297, file: !3, line: 29, type: !143)
!5305 = !DILocation(line: 29, column: 22, scope: !5297)
!5306 = !DILocation(line: 31, column: 2, scope: !5297)
!5307 = !DILocation(line: 32, column: 2, scope: !5297)
!5308 = !DILocation(line: 33, column: 1, scope: !5297)
!5309 = distinct !DISubprogram(name: "ssb_pmu1_pllinit_r0", scope: !3, file: !3, line: 221, type: !5310, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !213, !143}
!5312 = !DILocalVariable(name: "cc", arg: 1, scope: !5309, file: !3, line: 221, type: !213)
!5313 = !DILocation(line: 221, column: 56, scope: !5309)
!5314 = !DILocalVariable(name: "crystalfreq", arg: 2, scope: !5309, file: !3, line: 222, type: !143)
!5315 = !DILocation(line: 222, column: 9, scope: !5309)
!5316 = !DILocalVariable(name: "bus", scope: !5309, file: !3, line: 224, type: !4192)
!5317 = !DILocation(line: 224, column: 18, scope: !5309)
!5318 = !DILocation(line: 224, column: 24, scope: !5309)
!5319 = !DILocation(line: 224, column: 28, scope: !5309)
!5320 = !DILocation(line: 224, column: 33, scope: !5309)
!5321 = !DILocalVariable(name: "e", scope: !5309, file: !3, line: 225, type: !5322)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!5323 = !DILocation(line: 225, column: 34, scope: !5309)
!5324 = !DILocalVariable(name: "buffer_strength", scope: !5309, file: !3, line: 226, type: !143)
!5325 = !DILocation(line: 226, column: 6, scope: !5309)
!5326 = !DILocalVariable(name: "tmp", scope: !5309, file: !3, line: 227, type: !143)
!5327 = !DILocation(line: 227, column: 6, scope: !5309)
!5328 = !DILocalVariable(name: "pllctl", scope: !5309, file: !3, line: 227, type: !143)
!5329 = !DILocation(line: 227, column: 11, scope: !5309)
!5330 = !DILocalVariable(name: "pmuctl", scope: !5309, file: !3, line: 227, type: !143)
!5331 = !DILocation(line: 227, column: 19, scope: !5309)
!5332 = !DILocalVariable(name: "i", scope: !5309, file: !3, line: 228, type: !7)
!5333 = !DILocation(line: 228, column: 15, scope: !5309)
!5334 = !DILocation(line: 230, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 230, column: 6)
!5336 = !DILocation(line: 230, column: 11, scope: !5335)
!5337 = !DILocation(line: 230, column: 19, scope: !5335)
!5338 = !DILocation(line: 230, column: 6, scope: !5309)
!5339 = !DILocation(line: 233, column: 3, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 230, column: 30)
!5341 = !DILocation(line: 233, column: 7, scope: !5340)
!5342 = !DILocation(line: 233, column: 11, scope: !5340)
!5343 = !DILocation(line: 233, column: 23, scope: !5340)
!5344 = !DILocation(line: 234, column: 3, scope: !5340)
!5345 = !DILocation(line: 237, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 237, column: 6)
!5347 = !DILocation(line: 237, column: 6, scope: !5309)
!5348 = !DILocation(line: 238, column: 30, scope: !5346)
!5349 = !DILocation(line: 238, column: 7, scope: !5346)
!5350 = !DILocation(line: 238, column: 5, scope: !5346)
!5351 = !DILocation(line: 238, column: 3, scope: !5346)
!5352 = !DILocation(line: 239, column: 7, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 239, column: 6)
!5354 = !DILocation(line: 239, column: 6, scope: !5309)
!5355 = !DILocation(line: 240, column: 7, scope: !5353)
!5356 = !DILocation(line: 240, column: 5, scope: !5353)
!5357 = !DILocation(line: 240, column: 3, scope: !5353)
!5358 = !DILocation(line: 241, column: 2, scope: !5309)
!5359 = !DILocation(line: 241, column: 2, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 241, column: 2)
!5361 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 241, column: 2)
!5362 = !DILocation(line: 241, column: 2, scope: !5361)
!5363 = !DILocation(line: 241, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 241, column: 2)
!5365 = !DILocation(line: 241, column: 2, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 241, column: 2)
!5367 = !DILocation(line: 241, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 241, column: 2)
!5369 = !{i32 -2141402088, i32 -2141402059, i32 -2141402013, i32 -2141401955, i32 -2141401901, i32 -2141401847, i32 -2141401792, i32 -2141401761}
!5370 = !DILocation(line: 241, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 241, column: 2)
!5372 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 241, column: 2)
!5373 = !{i32 -2141401303, i32 -2141401296, i32 -2141401242, i32 -2141401211, i32 -2141401181}
!5374 = !DILocation(line: 241, column: 2, scope: !5372)
!5375 = !DILocation(line: 242, column: 16, scope: !5309)
!5376 = !DILocation(line: 242, column: 19, scope: !5309)
!5377 = !DILocation(line: 242, column: 14, scope: !5309)
!5378 = !DILocation(line: 243, column: 24, scope: !5309)
!5379 = !DILocation(line: 243, column: 27, scope: !5309)
!5380 = !DILocation(line: 243, column: 2, scope: !5309)
!5381 = !DILocation(line: 243, column: 6, scope: !5309)
!5382 = !DILocation(line: 243, column: 10, scope: !5309)
!5383 = !DILocation(line: 243, column: 22, scope: !5309)
!5384 = !DILocation(line: 246, column: 11, scope: !5309)
!5385 = !DILocation(line: 246, column: 9, scope: !5309)
!5386 = !DILocation(line: 247, column: 8, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 247, column: 6)
!5388 = !DILocation(line: 247, column: 15, scope: !5387)
!5389 = !DILocation(line: 247, column: 46, scope: !5387)
!5390 = !DILocation(line: 247, column: 87, scope: !5387)
!5391 = !DILocation(line: 247, column: 90, scope: !5387)
!5392 = !DILocation(line: 247, column: 84, scope: !5387)
!5393 = !DILocation(line: 247, column: 6, scope: !5309)
!5394 = !DILocation(line: 249, column: 3, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 247, column: 94)
!5396 = !DILocation(line: 252, column: 2, scope: !5309)
!5397 = !DILocation(line: 256, column: 10, scope: !5309)
!5398 = !DILocation(line: 256, column: 15, scope: !5309)
!5399 = !DILocation(line: 256, column: 2, scope: !5309)
!5400 = !DILocation(line: 258, column: 3, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 256, column: 24)
!5402 = !DILocation(line: 261, column: 3, scope: !5401)
!5403 = !DILocation(line: 265, column: 19, scope: !5401)
!5404 = !DILocation(line: 266, column: 3, scope: !5401)
!5405 = !DILocalVariable(name: "__ret_warn_on", scope: !5406, file: !3, line: 268, type: !147)
!5406 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 268, column: 3)
!5407 = !DILocation(line: 268, column: 3, scope: !5406)
!5408 = !DILocation(line: 268, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 268, column: 3)
!5410 = !DILocation(line: 268, column: 3, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 268, column: 3)
!5412 = !DILocation(line: 268, column: 3, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 268, column: 3)
!5414 = !DILocation(line: 268, column: 3, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 268, column: 3)
!5416 = !{i32 -2141399869, i32 -2141399840, i32 -2141399794, i32 -2141399736, i32 -2141399682, i32 -2141399628, i32 -2141399573, i32 -2141399542}
!5417 = !DILocation(line: 268, column: 3, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 268, column: 3)
!5419 = !{i32 -2141399125, i32 -2141399118, i32 -2141399066, i32 -2141399035, i32 -2141399005}
!5420 = !DILocation(line: 268, column: 3, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 268, column: 3)
!5422 = !DILocation(line: 269, column: 2, scope: !5401)
!5423 = !DILocation(line: 270, column: 9, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 270, column: 2)
!5425 = !DILocation(line: 270, column: 7, scope: !5424)
!5426 = !DILocation(line: 270, column: 17, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 270, column: 2)
!5428 = !DILocation(line: 270, column: 2, scope: !5424)
!5429 = !DILocation(line: 271, column: 9, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 270, column: 25)
!5431 = !DILocation(line: 271, column: 7, scope: !5430)
!5432 = !DILocation(line: 272, column: 9, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 272, column: 7)
!5434 = !DILocation(line: 272, column: 13, scope: !5433)
!5435 = !DILocation(line: 272, column: 7, scope: !5430)
!5436 = !DILocation(line: 273, column: 4, scope: !5433)
!5437 = !DILocation(line: 274, column: 3, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 274, column: 3)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 274, column: 3)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 274, column: 3)
!5441 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 274, column: 3)
!5442 = !DILocation(line: 275, column: 2, scope: !5430)
!5443 = !DILocation(line: 270, column: 21, scope: !5427)
!5444 = !DILocation(line: 270, column: 2, scope: !5427)
!5445 = distinct !{!5445, !5428, !5446}
!5446 = !DILocation(line: 275, column: 2, scope: !5424)
!5447 = !DILocation(line: 276, column: 8, scope: !5309)
!5448 = !DILocation(line: 276, column: 6, scope: !5309)
!5449 = !DILocation(line: 277, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 277, column: 6)
!5451 = !DILocation(line: 277, column: 10, scope: !5450)
!5452 = !DILocation(line: 277, column: 6, scope: !5309)
!5453 = !DILocation(line: 278, column: 3, scope: !5450)
!5454 = !DILocation(line: 281, column: 31, scope: !5309)
!5455 = !DILocation(line: 281, column: 11, scope: !5309)
!5456 = !DILocation(line: 281, column: 9, scope: !5309)
!5457 = !DILocation(line: 282, column: 9, scope: !5309)
!5458 = !DILocation(line: 283, column: 18, scope: !5309)
!5459 = !DILocation(line: 283, column: 21, scope: !5309)
!5460 = !DILocation(line: 283, column: 13, scope: !5309)
!5461 = !DILocation(line: 283, column: 27, scope: !5309)
!5462 = !DILocation(line: 283, column: 60, scope: !5309)
!5463 = !DILocation(line: 283, column: 9, scope: !5309)
!5464 = !DILocation(line: 284, column: 18, scope: !5309)
!5465 = !DILocation(line: 284, column: 21, scope: !5309)
!5466 = !DILocation(line: 284, column: 13, scope: !5309)
!5467 = !DILocation(line: 284, column: 27, scope: !5309)
!5468 = !DILocation(line: 284, column: 60, scope: !5309)
!5469 = !DILocation(line: 284, column: 9, scope: !5309)
!5470 = !DILocation(line: 285, column: 23, scope: !5309)
!5471 = !DILocation(line: 285, column: 45, scope: !5309)
!5472 = !DILocation(line: 285, column: 2, scope: !5309)
!5473 = !DILocation(line: 288, column: 31, scope: !5309)
!5474 = !DILocation(line: 288, column: 11, scope: !5309)
!5475 = !DILocation(line: 288, column: 9, scope: !5309)
!5476 = !DILocation(line: 289, column: 9, scope: !5309)
!5477 = !DILocation(line: 290, column: 18, scope: !5309)
!5478 = !DILocation(line: 290, column: 21, scope: !5309)
!5479 = !DILocation(line: 290, column: 13, scope: !5309)
!5480 = !DILocation(line: 290, column: 30, scope: !5309)
!5481 = !DILocation(line: 290, column: 65, scope: !5309)
!5482 = !DILocation(line: 290, column: 9, scope: !5309)
!5483 = !DILocation(line: 291, column: 9, scope: !5309)
!5484 = !DILocation(line: 292, column: 23, scope: !5309)
!5485 = !DILocation(line: 292, column: 45, scope: !5309)
!5486 = !DILocation(line: 292, column: 2, scope: !5309)
!5487 = !DILocation(line: 295, column: 31, scope: !5309)
!5488 = !DILocation(line: 295, column: 11, scope: !5309)
!5489 = !DILocation(line: 295, column: 9, scope: !5309)
!5490 = !DILocation(line: 296, column: 9, scope: !5309)
!5491 = !DILocation(line: 297, column: 18, scope: !5309)
!5492 = !DILocation(line: 297, column: 21, scope: !5309)
!5493 = !DILocation(line: 297, column: 31, scope: !5309)
!5494 = !DILocation(line: 297, column: 67, scope: !5309)
!5495 = !DILocation(line: 297, column: 9, scope: !5309)
!5496 = !DILocation(line: 298, column: 23, scope: !5309)
!5497 = !DILocation(line: 298, column: 45, scope: !5309)
!5498 = !DILocation(line: 298, column: 2, scope: !5309)
!5499 = !DILocation(line: 301, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 301, column: 6)
!5501 = !DILocation(line: 301, column: 6, scope: !5309)
!5502 = !DILocation(line: 302, column: 32, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 301, column: 23)
!5504 = !DILocation(line: 302, column: 12, scope: !5503)
!5505 = !DILocation(line: 302, column: 10, scope: !5503)
!5506 = !DILocation(line: 303, column: 10, scope: !5503)
!5507 = !DILocation(line: 304, column: 14, scope: !5503)
!5508 = !DILocation(line: 304, column: 30, scope: !5503)
!5509 = !DILocation(line: 304, column: 64, scope: !5503)
!5510 = !DILocation(line: 304, column: 10, scope: !5503)
!5511 = !DILocation(line: 305, column: 24, scope: !5503)
!5512 = !DILocation(line: 305, column: 46, scope: !5503)
!5513 = !DILocation(line: 305, column: 3, scope: !5503)
!5514 = !DILocation(line: 306, column: 2, scope: !5503)
!5515 = !DILocation(line: 309, column: 11, scope: !5309)
!5516 = !DILocation(line: 309, column: 9, scope: !5309)
!5517 = !DILocation(line: 310, column: 9, scope: !5309)
!5518 = !DILocation(line: 311, column: 20, scope: !5309)
!5519 = !DILocation(line: 311, column: 23, scope: !5309)
!5520 = !DILocation(line: 311, column: 15, scope: !5309)
!5521 = !DILocation(line: 311, column: 28, scope: !5309)
!5522 = !DILocation(line: 311, column: 35, scope: !5309)
!5523 = !DILocation(line: 311, column: 41, scope: !5309)
!5524 = !DILocation(line: 311, column: 46, scope: !5309)
!5525 = !DILocation(line: 312, column: 4, scope: !5309)
!5526 = !DILocation(line: 311, column: 9, scope: !5309)
!5527 = !DILocation(line: 313, column: 18, scope: !5309)
!5528 = !DILocation(line: 313, column: 21, scope: !5309)
!5529 = !DILocation(line: 313, column: 13, scope: !5309)
!5530 = !DILocation(line: 313, column: 24, scope: !5309)
!5531 = !DILocation(line: 313, column: 62, scope: !5309)
!5532 = !DILocation(line: 313, column: 9, scope: !5309)
!5533 = !DILocation(line: 314, column: 2, scope: !5309)
!5534 = !DILocation(line: 315, column: 1, scope: !5309)
!5535 = distinct !DISubprogram(name: "ssb_pmu0_pllinit_r0", scope: !3, file: !3, line: 90, type: !5310, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5536 = !DILocalVariable(name: "cc", arg: 1, scope: !5535, file: !3, line: 90, type: !213)
!5537 = !DILocation(line: 90, column: 56, scope: !5535)
!5538 = !DILocalVariable(name: "crystalfreq", arg: 2, scope: !5535, file: !3, line: 91, type: !143)
!5539 = !DILocation(line: 91, column: 9, scope: !5535)
!5540 = !DILocalVariable(name: "bus", scope: !5535, file: !3, line: 93, type: !4192)
!5541 = !DILocation(line: 93, column: 18, scope: !5535)
!5542 = !DILocation(line: 93, column: 24, scope: !5535)
!5543 = !DILocation(line: 93, column: 28, scope: !5535)
!5544 = !DILocation(line: 93, column: 33, scope: !5535)
!5545 = !DILocalVariable(name: "e", scope: !5535, file: !3, line: 94, type: !5167)
!5546 = !DILocation(line: 94, column: 34, scope: !5535)
!5547 = !DILocalVariable(name: "pmuctl", scope: !5535, file: !3, line: 95, type: !143)
!5548 = !DILocation(line: 95, column: 6, scope: !5535)
!5549 = !DILocalVariable(name: "tmp", scope: !5535, file: !3, line: 95, type: !143)
!5550 = !DILocation(line: 95, column: 14, scope: !5535)
!5551 = !DILocalVariable(name: "pllctl", scope: !5535, file: !3, line: 95, type: !143)
!5552 = !DILocation(line: 95, column: 19, scope: !5535)
!5553 = !DILocalVariable(name: "i", scope: !5535, file: !3, line: 96, type: !7)
!5554 = !DILocation(line: 96, column: 15, scope: !5535)
!5555 = !DILocation(line: 98, column: 6, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 98, column: 6)
!5557 = !DILocation(line: 98, column: 6, scope: !5535)
!5558 = !DILocation(line: 99, column: 30, scope: !5556)
!5559 = !DILocation(line: 99, column: 7, scope: !5556)
!5560 = !DILocation(line: 99, column: 5, scope: !5556)
!5561 = !DILocation(line: 99, column: 3, scope: !5556)
!5562 = !DILocation(line: 100, column: 7, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 100, column: 6)
!5564 = !DILocation(line: 100, column: 6, scope: !5535)
!5565 = !DILocation(line: 101, column: 7, scope: !5563)
!5566 = !DILocation(line: 101, column: 5, scope: !5563)
!5567 = !DILocation(line: 101, column: 3, scope: !5563)
!5568 = !DILocation(line: 102, column: 2, scope: !5535)
!5569 = !DILocation(line: 102, column: 2, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 102, column: 2)
!5571 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 102, column: 2)
!5572 = !DILocation(line: 102, column: 2, scope: !5571)
!5573 = !DILocation(line: 102, column: 2, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 102, column: 2)
!5575 = !DILocation(line: 102, column: 2, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 102, column: 2)
!5577 = !DILocation(line: 102, column: 2, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 102, column: 2)
!5579 = !{i32 -2141407084, i32 -2141407055, i32 -2141407009, i32 -2141406951, i32 -2141406897, i32 -2141406843, i32 -2141406788, i32 -2141406757}
!5580 = !DILocation(line: 102, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 102, column: 2)
!5582 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 102, column: 2)
!5583 = !{i32 -2141406299, i32 -2141406292, i32 -2141406238, i32 -2141406207, i32 -2141406177}
!5584 = !DILocation(line: 102, column: 2, scope: !5582)
!5585 = !DILocation(line: 103, column: 16, scope: !5535)
!5586 = !DILocation(line: 103, column: 19, scope: !5535)
!5587 = !DILocation(line: 103, column: 14, scope: !5535)
!5588 = !DILocation(line: 104, column: 24, scope: !5535)
!5589 = !DILocation(line: 104, column: 27, scope: !5535)
!5590 = !DILocation(line: 104, column: 2, scope: !5535)
!5591 = !DILocation(line: 104, column: 6, scope: !5535)
!5592 = !DILocation(line: 104, column: 10, scope: !5535)
!5593 = !DILocation(line: 104, column: 22, scope: !5535)
!5594 = !DILocation(line: 107, column: 11, scope: !5535)
!5595 = !DILocation(line: 107, column: 9, scope: !5535)
!5596 = !DILocation(line: 108, column: 8, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 108, column: 6)
!5598 = !DILocation(line: 108, column: 15, scope: !5597)
!5599 = !DILocation(line: 108, column: 46, scope: !5597)
!5600 = !DILocation(line: 108, column: 87, scope: !5597)
!5601 = !DILocation(line: 108, column: 90, scope: !5597)
!5602 = !DILocation(line: 108, column: 84, scope: !5597)
!5603 = !DILocation(line: 108, column: 6, scope: !5535)
!5604 = !DILocation(line: 110, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 108, column: 94)
!5606 = !DILocation(line: 113, column: 2, scope: !5535)
!5607 = !DILocation(line: 117, column: 10, scope: !5535)
!5608 = !DILocation(line: 117, column: 15, scope: !5535)
!5609 = !DILocation(line: 117, column: 2, scope: !5535)
!5610 = !DILocation(line: 119, column: 3, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 117, column: 24)
!5612 = !DILocation(line: 121, column: 3, scope: !5611)
!5613 = !DILocation(line: 123, column: 3, scope: !5611)
!5614 = !DILocation(line: 125, column: 3, scope: !5611)
!5615 = !DILocation(line: 127, column: 3, scope: !5611)
!5616 = !DILocation(line: 129, column: 3, scope: !5611)
!5617 = !DILocalVariable(name: "__ret_warn_on", scope: !5618, file: !3, line: 131, type: !147)
!5618 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 131, column: 3)
!5619 = !DILocation(line: 131, column: 3, scope: !5618)
!5620 = !DILocation(line: 131, column: 3, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 131, column: 3)
!5622 = !DILocation(line: 131, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 131, column: 3)
!5624 = !DILocation(line: 131, column: 3, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 131, column: 3)
!5626 = !DILocation(line: 131, column: 3, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 131, column: 3)
!5628 = !{i32 -2141404463, i32 -2141404434, i32 -2141404388, i32 -2141404330, i32 -2141404276, i32 -2141404222, i32 -2141404167, i32 -2141404136}
!5629 = !DILocation(line: 131, column: 3, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 131, column: 3)
!5631 = !{i32 -2141403719, i32 -2141403712, i32 -2141403660, i32 -2141403629, i32 -2141403599}
!5632 = !DILocation(line: 131, column: 3, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 131, column: 3)
!5634 = !DILocation(line: 132, column: 2, scope: !5611)
!5635 = !DILocation(line: 133, column: 9, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 133, column: 2)
!5637 = !DILocation(line: 133, column: 7, scope: !5636)
!5638 = !DILocation(line: 133, column: 17, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 133, column: 2)
!5640 = !DILocation(line: 133, column: 2, scope: !5636)
!5641 = !DILocation(line: 134, column: 9, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 133, column: 25)
!5643 = !DILocation(line: 134, column: 7, scope: !5642)
!5644 = !DILocation(line: 135, column: 9, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 135, column: 7)
!5646 = !DILocation(line: 135, column: 13, scope: !5645)
!5647 = !DILocation(line: 135, column: 7, scope: !5642)
!5648 = !DILocation(line: 136, column: 4, scope: !5645)
!5649 = !DILocation(line: 137, column: 3, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 137, column: 3)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 137, column: 3)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 137, column: 3)
!5653 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 137, column: 3)
!5654 = !DILocation(line: 138, column: 2, scope: !5642)
!5655 = !DILocation(line: 133, column: 21, scope: !5639)
!5656 = !DILocation(line: 133, column: 2, scope: !5639)
!5657 = distinct !{!5657, !5640, !5658}
!5658 = !DILocation(line: 138, column: 2, scope: !5636)
!5659 = !DILocation(line: 139, column: 8, scope: !5535)
!5660 = !DILocation(line: 139, column: 6, scope: !5535)
!5661 = !DILocation(line: 140, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 140, column: 6)
!5663 = !DILocation(line: 140, column: 10, scope: !5662)
!5664 = !DILocation(line: 140, column: 6, scope: !5535)
!5665 = !DILocation(line: 141, column: 3, scope: !5662)
!5666 = !DILocation(line: 144, column: 31, scope: !5535)
!5667 = !DILocation(line: 144, column: 11, scope: !5535)
!5668 = !DILocation(line: 144, column: 9, scope: !5535)
!5669 = !DILocation(line: 145, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 145, column: 6)
!5671 = !DILocation(line: 145, column: 18, scope: !5670)
!5672 = !DILocation(line: 145, column: 6, scope: !5535)
!5673 = !DILocation(line: 146, column: 10, scope: !5670)
!5674 = !DILocation(line: 146, column: 3, scope: !5670)
!5675 = !DILocation(line: 148, column: 10, scope: !5670)
!5676 = !DILocation(line: 149, column: 23, scope: !5535)
!5677 = !DILocation(line: 149, column: 45, scope: !5535)
!5678 = !DILocation(line: 149, column: 2, scope: !5535)
!5679 = !DILocation(line: 152, column: 31, scope: !5535)
!5680 = !DILocation(line: 152, column: 11, scope: !5535)
!5681 = !DILocation(line: 152, column: 9, scope: !5535)
!5682 = !DILocation(line: 153, column: 9, scope: !5535)
!5683 = !DILocation(line: 154, column: 9, scope: !5535)
!5684 = !DILocation(line: 155, column: 18, scope: !5535)
!5685 = !DILocation(line: 155, column: 21, scope: !5535)
!5686 = !DILocation(line: 155, column: 13, scope: !5535)
!5687 = !DILocation(line: 155, column: 28, scope: !5535)
!5688 = !DILocation(line: 155, column: 65, scope: !5535)
!5689 = !DILocation(line: 155, column: 9, scope: !5535)
!5690 = !DILocation(line: 156, column: 18, scope: !5535)
!5691 = !DILocation(line: 156, column: 21, scope: !5535)
!5692 = !DILocation(line: 156, column: 29, scope: !5535)
!5693 = !DILocation(line: 156, column: 66, scope: !5535)
!5694 = !DILocation(line: 156, column: 9, scope: !5535)
!5695 = !DILocation(line: 157, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 157, column: 6)
!5697 = !DILocation(line: 157, column: 9, scope: !5696)
!5698 = !DILocation(line: 157, column: 17, scope: !5696)
!5699 = !DILocation(line: 157, column: 6, scope: !5535)
!5700 = !DILocation(line: 158, column: 10, scope: !5696)
!5701 = !DILocation(line: 158, column: 3, scope: !5696)
!5702 = !DILocation(line: 159, column: 23, scope: !5535)
!5703 = !DILocation(line: 159, column: 45, scope: !5535)
!5704 = !DILocation(line: 159, column: 2, scope: !5535)
!5705 = !DILocation(line: 162, column: 31, scope: !5535)
!5706 = !DILocation(line: 162, column: 11, scope: !5535)
!5707 = !DILocation(line: 162, column: 9, scope: !5535)
!5708 = !DILocation(line: 163, column: 9, scope: !5535)
!5709 = !DILocation(line: 164, column: 19, scope: !5535)
!5710 = !DILocation(line: 164, column: 22, scope: !5535)
!5711 = !DILocation(line: 164, column: 14, scope: !5535)
!5712 = !DILocation(line: 164, column: 29, scope: !5535)
!5713 = !DILocation(line: 164, column: 35, scope: !5535)
!5714 = !DILocation(line: 164, column: 74, scope: !5535)
!5715 = !DILocation(line: 164, column: 9, scope: !5535)
!5716 = !DILocation(line: 165, column: 23, scope: !5535)
!5717 = !DILocation(line: 165, column: 45, scope: !5535)
!5718 = !DILocation(line: 165, column: 2, scope: !5535)
!5719 = !DILocation(line: 168, column: 11, scope: !5535)
!5720 = !DILocation(line: 168, column: 9, scope: !5535)
!5721 = !DILocation(line: 169, column: 9, scope: !5535)
!5722 = !DILocation(line: 170, column: 15, scope: !5535)
!5723 = !DILocation(line: 170, column: 27, scope: !5535)
!5724 = !DILocation(line: 170, column: 34, scope: !5535)
!5725 = !DILocation(line: 170, column: 40, scope: !5535)
!5726 = !DILocation(line: 170, column: 45, scope: !5535)
!5727 = !DILocation(line: 171, column: 4, scope: !5535)
!5728 = !DILocation(line: 170, column: 9, scope: !5535)
!5729 = !DILocation(line: 172, column: 9, scope: !5535)
!5730 = !DILocation(line: 173, column: 18, scope: !5535)
!5731 = !DILocation(line: 173, column: 21, scope: !5535)
!5732 = !DILocation(line: 173, column: 13, scope: !5535)
!5733 = !DILocation(line: 173, column: 24, scope: !5535)
!5734 = !DILocation(line: 173, column: 62, scope: !5535)
!5735 = !DILocation(line: 173, column: 9, scope: !5535)
!5736 = !DILocation(line: 174, column: 2, scope: !5535)
!5737 = !DILocation(line: 175, column: 1, scope: !5535)
!5738 = distinct !DISubprogram(name: "pmu1_plltab_find_entry", scope: !3, file: !3, line: 206, type: !5739, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!5322, !143}
!5741 = !DILocalVariable(name: "crystalfreq", arg: 1, scope: !5738, file: !3, line: 206, type: !143)
!5742 = !DILocation(line: 206, column: 68, scope: !5738)
!5743 = !DILocalVariable(name: "e", scope: !5738, file: !3, line: 208, type: !5322)
!5744 = !DILocation(line: 208, column: 34, scope: !5738)
!5745 = !DILocalVariable(name: "i", scope: !5738, file: !3, line: 209, type: !7)
!5746 = !DILocation(line: 209, column: 15, scope: !5738)
!5747 = !DILocation(line: 211, column: 9, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 211, column: 2)
!5749 = !DILocation(line: 211, column: 7, scope: !5748)
!5750 = !DILocation(line: 211, column: 14, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 211, column: 2)
!5752 = !DILocation(line: 211, column: 16, scope: !5751)
!5753 = !DILocation(line: 211, column: 2, scope: !5748)
!5754 = !DILocation(line: 212, column: 20, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 211, column: 48)
!5756 = !DILocation(line: 212, column: 8, scope: !5755)
!5757 = !DILocation(line: 212, column: 5, scope: !5755)
!5758 = !DILocation(line: 213, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 213, column: 7)
!5760 = !DILocation(line: 213, column: 10, scope: !5759)
!5761 = !DILocation(line: 213, column: 18, scope: !5759)
!5762 = !DILocation(line: 213, column: 15, scope: !5759)
!5763 = !DILocation(line: 213, column: 7, scope: !5755)
!5764 = !DILocation(line: 214, column: 11, scope: !5759)
!5765 = !DILocation(line: 214, column: 4, scope: !5759)
!5766 = !DILocation(line: 215, column: 2, scope: !5755)
!5767 = !DILocation(line: 211, column: 44, scope: !5751)
!5768 = !DILocation(line: 211, column: 2, scope: !5751)
!5769 = distinct !{!5769, !5753, !5770}
!5770 = !DILocation(line: 215, column: 2, scope: !5748)
!5771 = !DILocation(line: 217, column: 2, scope: !5738)
!5772 = !DILocation(line: 218, column: 1, scope: !5738)
!5773 = distinct !DISubprogram(name: "ssb_chipco_pll_read", scope: !3, file: !3, line: 22, type: !5774, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!143, !213, !143}
!5776 = !DILocalVariable(name: "cc", arg: 1, scope: !5773, file: !3, line: 22, type: !213)
!5777 = !DILocation(line: 22, column: 55, scope: !5773)
!5778 = !DILocalVariable(name: "offset", arg: 2, scope: !5773, file: !3, line: 22, type: !143)
!5779 = !DILocation(line: 22, column: 63, scope: !5773)
!5780 = !DILocation(line: 24, column: 2, scope: !5773)
!5781 = !DILocation(line: 25, column: 9, scope: !5773)
!5782 = !DILocation(line: 25, column: 2, scope: !5773)
!5783 = distinct !DISubprogram(name: "pmu0_plltab_find_entry", scope: !3, file: !3, line: 75, type: !5784, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{!5167, !143}
!5786 = !DILocalVariable(name: "crystalfreq", arg: 1, scope: !5783, file: !3, line: 75, type: !143)
!5787 = !DILocation(line: 75, column: 68, scope: !5783)
!5788 = !DILocalVariable(name: "e", scope: !5783, file: !3, line: 77, type: !5167)
!5789 = !DILocation(line: 77, column: 34, scope: !5783)
!5790 = !DILocalVariable(name: "i", scope: !5783, file: !3, line: 78, type: !7)
!5791 = !DILocation(line: 78, column: 15, scope: !5783)
!5792 = !DILocation(line: 80, column: 9, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 80, column: 2)
!5794 = !DILocation(line: 80, column: 7, scope: !5793)
!5795 = !DILocation(line: 80, column: 14, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 80, column: 2)
!5797 = !DILocation(line: 80, column: 16, scope: !5796)
!5798 = !DILocation(line: 80, column: 2, scope: !5793)
!5799 = !DILocation(line: 81, column: 20, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 80, column: 48)
!5801 = !DILocation(line: 81, column: 8, scope: !5800)
!5802 = !DILocation(line: 81, column: 5, scope: !5800)
!5803 = !DILocation(line: 82, column: 7, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 82, column: 7)
!5805 = !DILocation(line: 82, column: 10, scope: !5804)
!5806 = !DILocation(line: 82, column: 18, scope: !5804)
!5807 = !DILocation(line: 82, column: 15, scope: !5804)
!5808 = !DILocation(line: 82, column: 7, scope: !5800)
!5809 = !DILocation(line: 83, column: 11, scope: !5804)
!5810 = !DILocation(line: 83, column: 4, scope: !5804)
!5811 = !DILocation(line: 84, column: 2, scope: !5800)
!5812 = !DILocation(line: 80, column: 44, scope: !5796)
!5813 = !DILocation(line: 80, column: 2, scope: !5796)
!5814 = distinct !{!5814, !5798, !5815}
!5815 = !DILocation(line: 84, column: 2, scope: !5793)
!5816 = !DILocation(line: 86, column: 2, scope: !5783)
!5817 = !DILocation(line: 87, column: 1, scope: !5783)
