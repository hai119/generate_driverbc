; ModuleID = '../bcout/drivers/pnp/core.llvm.bc'
source_filename = "drivers/pnp/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_pnp_init4:\09\09\09"
module asm ".long\09pnp_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.kmem_cache = type opaque
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.65] }
%struct.anon.65 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@pnp_global = dso_local global %struct.list_head { %struct.list_head* @pnp_global, %struct.list_head* @pnp_global }, align 8, !dbg !0
@pnp_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pnp_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pnp_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !3890
@.str = private unnamed_addr constant [22 x i8] c"\013pnp: Out of Memory\0A\00", align 1
@pnp_protocols = internal global %struct.list_head { %struct.list_head* @pnp_protocols, %struct.list_head* @pnp_protocols }, align 8, !dbg !3955
@.str.1 = private unnamed_addr constant [6 x i8] c"pnp%d\00", align 1
@pnp_bus_type = external dso_local global %struct.bus_type, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s device, IDs%s (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@__UNIQUE_ID___addressable_pnp_init236 = internal global i8* bitcast (i32 ()* @pnp_init to i8*), section ".discard.addressable", align 8, !dbg !3892
@__param_str_debug = internal constant [10 x i8] c"pnp.debug\00", align 1, !dbg !3957
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@pnp_debug = dso_local global i32 0, align 4, !dbg !3953
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @pnp_debug to i8*) } }, section "__param", align 8, !dbg !3894
@__UNIQUE_ID_debugtype237 = internal constant [23 x i8] c"pnp.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !3946
@pnp_platform_devices = dso_local global i32 0, align 4, !dbg !3951
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pnp_init236 to i8*), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_debugtype237, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @pnp_alloc(i64 %size) #0 !dbg !3967 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.declare(metadata i8** %result, metadata !3972, metadata !DIExpression()), !dbg !3973
  %0 = load i64, i64* %size.addr, align 8, !dbg !3974
  %call = call i8* @kzalloc(i64 %0, i32 3264) #8, !dbg !3975
  store i8* %call, i8** %result, align 8, !dbg !3976
  %1 = load i8*, i8** %result, align 8, !dbg !3977
  %tobool = icmp ne i8* %1, null, !dbg !3977
  br i1 %tobool, label %if.end, label %if.then, !dbg !3979

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3980
  store i8* null, i8** %retval, align 8, !dbg !3982
  br label %return, !dbg !3982

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %result, align 8, !dbg !3983
  store i8* %2, i8** %retval, align 8, !dbg !3984
  br label %return, !dbg !3984

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !3985
  ret i8* %3, !dbg !3985
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3986 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !3993
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3999, metadata !DIExpression()), !dbg !4000
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4001, metadata !DIExpression()), !dbg !4002
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4003, metadata !DIExpression()), !dbg !4004
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4005, metadata !DIExpression()), !dbg !4009
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4011, metadata !DIExpression()), !dbg !4015
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4017, metadata !DIExpression()), !dbg !4021
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4026, metadata !DIExpression()), !dbg !4027
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4028, metadata !DIExpression()), !dbg !4029
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4030, metadata !DIExpression()), !dbg !4031
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4032, metadata !DIExpression()), !dbg !4033
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4034, metadata !DIExpression()), !dbg !4035
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4036, metadata !DIExpression()), !dbg !4037
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4038, metadata !DIExpression()), !dbg !4039
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4040, metadata !DIExpression()), !dbg !4041
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4044, metadata !DIExpression()), !dbg !4045
  %0 = load i64, i64* %size.addr, align 8, !dbg !4046
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4047
  %or = or i32 %1, 256, !dbg !4048
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4049
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4050
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4051

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4052
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4053
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4054

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4055
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4056
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4057
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4058
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4035
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4059
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4060
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4061
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4062
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4063
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4064
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4065
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4065
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4065
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4065
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4065
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4066
  br label %kmalloc.exit, !dbg !4066

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4067
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4068
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4068
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4070

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4071
  br label %kmalloc_index.exit.i, !dbg !4071

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4072
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4074
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4075

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4076
  br label %kmalloc_index.exit.i, !dbg !4076

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4077
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4079
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4080

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4081
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4082
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4083

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4084
  br label %kmalloc_index.exit.i, !dbg !4084

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4085
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4087
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4088

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4089
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4090
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4091

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4092
  br label %kmalloc_index.exit.i, !dbg !4092

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4093
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4095
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4096

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4097
  br label %kmalloc_index.exit.i, !dbg !4097

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4098
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4100
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4101

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4102
  br label %kmalloc_index.exit.i, !dbg !4102

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4105
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4106

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4107
  br label %kmalloc_index.exit.i, !dbg !4107

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4108
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4110
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4111

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4112
  br label %kmalloc_index.exit.i, !dbg !4112

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4113
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4115
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4116

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4117
  br label %kmalloc_index.exit.i, !dbg !4117

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4118
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4120
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4121

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4125
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4126

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4127
  br label %kmalloc_index.exit.i, !dbg !4127

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4128
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4130
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4131

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4132
  br label %kmalloc_index.exit.i, !dbg !4132

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4133
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4135
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4136

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4137
  br label %kmalloc_index.exit.i, !dbg !4137

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4138
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4140
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4141

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4142
  br label %kmalloc_index.exit.i, !dbg !4142

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4145
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4146

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4147
  br label %kmalloc_index.exit.i, !dbg !4147

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4148
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4150
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4151

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4152
  br label %kmalloc_index.exit.i, !dbg !4152

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4153
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4155
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4156

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4157
  br label %kmalloc_index.exit.i, !dbg !4157

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4158
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4160
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4161

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4162
  br label %kmalloc_index.exit.i, !dbg !4162

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4163
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4165
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4166

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4167
  br label %kmalloc_index.exit.i, !dbg !4167

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4168
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4170
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4171

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4172
  br label %kmalloc_index.exit.i, !dbg !4172

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4173
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4175
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4176

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4177
  br label %kmalloc_index.exit.i, !dbg !4177

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4178
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4180
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4181

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4183
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4185
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4186

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4187
  br label %kmalloc_index.exit.i, !dbg !4187

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4188
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4190
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4191

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4192
  br label %kmalloc_index.exit.i, !dbg !4192

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4195
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4196

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4197
  br label %kmalloc_index.exit.i, !dbg !4197

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4198
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4200
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4201

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4202
  br label %kmalloc_index.exit.i, !dbg !4202

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4203
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4205
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4206

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4207
  br label %kmalloc_index.exit.i, !dbg !4207

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4208
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4210
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4211

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4212
  br label %kmalloc_index.exit.i, !dbg !4212

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4213, !srcloc !4216
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !4217, !srcloc !4220
  unreachable, !dbg !4221

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4222
  store i32 %45, i32* %index.i, align 4, !dbg !4223
  %46 = load i32, i32* %index.i, align 4, !dbg !4224
  %tobool.i = icmp ne i32 %46, 0, !dbg !4224
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4226

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4227
  br label %kmalloc.exit, !dbg !4227

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4228
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4229
  %and.i.i = and i32 %48, 17, !dbg !4229
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4229
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4229
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4229
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4229
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4231

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4232
  br label %kmalloc_type.exit.i, !dbg !4232

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4233
  %and2.i.i = and i32 %49, 1, !dbg !4234
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4233
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4233
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4233
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4235
  br label %kmalloc_type.exit.i, !dbg !4235

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4236
  %idxprom.i = zext i32 %51 to i64, !dbg !4237
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4237
  %52 = load i32, i32* %index.i, align 4, !dbg !4238
  %idxprom6.i = zext i32 %52 to i64, !dbg !4237
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4237
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4237
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4239
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4240
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4241
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4242
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4243
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4243
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4243
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4243
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4243
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4004
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4244
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4245
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4246
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4247
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4248
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4249
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4250
  store i8* %62, i8** %retval.i, align 8, !dbg !4251
  br label %kmalloc.exit, !dbg !4251

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4252
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4253
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4254
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4254
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4254
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4254
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4254
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4255
  br label %kmalloc.exit, !dbg !4255

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4256
  ret i8* %65, !dbg !4257
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_protocol(%struct.pnp_protocol* %protocol) #0 !dbg !4258 {
entry:
  %protocol.addr = alloca %struct.pnp_protocol*, align 8
  %pos = alloca %struct.list_head*, align 8
  %nodenum = alloca i32, align 4
  %ret = alloca i32, align 4
  %cur = alloca %struct.pnp_protocol*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_protocol*, align 8
  store %struct.pnp_protocol* %protocol, %struct.pnp_protocol** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %protocol.addr, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %nodenum, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4267, metadata !DIExpression()), !dbg !4268
  %0 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4269
  %devices = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %0, i32 0, i32 11, !dbg !4270
  call void @INIT_LIST_HEAD(%struct.list_head* %devices) #8, !dbg !4271
  %1 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4272
  %cards = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %1, i32 0, i32 10, !dbg !4273
  call void @INIT_LIST_HEAD(%struct.list_head* %cards) #8, !dbg !4274
  store i32 0, i32* %nodenum, align 4, !dbg !4275
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4276
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_protocols, i32 0, i32 0), align 8, !dbg !4277
  store %struct.list_head* %2, %struct.list_head** %pos, align 8, !dbg !4277
  br label %for.cond, !dbg !4277

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4279
  %cmp = icmp ne %struct.list_head* %3, @pnp_protocols, !dbg !4279
  br i1 %cmp, label %for.body, label %for.end, !dbg !4277

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %cur, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4284, metadata !DIExpression()), !dbg !4286
  %4 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4286
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4286
  store i8* %5, i8** %__mptr, align 8, !dbg !4286
  br label %do.body, !dbg !4286

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !4287

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4286
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !4286
  %7 = bitcast i8* %add.ptr to %struct.pnp_protocol*, !dbg !4286
  store %struct.pnp_protocol* %7, %struct.pnp_protocol** %tmp, align 8, !dbg !4287
  %8 = load %struct.pnp_protocol*, %struct.pnp_protocol** %tmp, align 8, !dbg !4286
  store %struct.pnp_protocol* %8, %struct.pnp_protocol** %cur, align 8, !dbg !4283
  %9 = load %struct.pnp_protocol*, %struct.pnp_protocol** %cur, align 8, !dbg !4289
  %number = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %9, i32 0, i32 8, !dbg !4291
  %10 = load i8, i8* %number, align 8, !dbg !4291
  %conv = zext i8 %10 to i32, !dbg !4289
  %11 = load i32, i32* %nodenum, align 4, !dbg !4292
  %cmp1 = icmp eq i32 %conv, %11, !dbg !4293
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4294

if.then:                                          ; preds = %do.end
  store %struct.list_head* @pnp_protocols, %struct.list_head** %pos, align 8, !dbg !4295
  %12 = load i32, i32* %nodenum, align 4, !dbg !4297
  %inc = add i32 %12, 1, !dbg !4297
  store i32 %inc, i32* %nodenum, align 4, !dbg !4297
  br label %if.end, !dbg !4298

if.end:                                           ; preds = %if.then, %do.end
  br label %for.inc, !dbg !4299

for.inc:                                          ; preds = %if.end
  %13 = load %struct.list_head*, %struct.list_head** %pos, align 8, !dbg !4279
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0, !dbg !4279
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4279
  store %struct.list_head* %14, %struct.list_head** %pos, align 8, !dbg !4279
  br label %for.cond, !dbg !4279, !llvm.loop !4300

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %nodenum, align 4, !dbg !4302
  %conv3 = trunc i32 %15 to i8, !dbg !4302
  %16 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4303
  %number4 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %16, i32 0, i32 8, !dbg !4304
  store i8 %conv3, i8* %number4, align 8, !dbg !4305
  %17 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4306
  %dev = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %17, i32 0, i32 9, !dbg !4307
  %18 = load i32, i32* %nodenum, align 4, !dbg !4308
  %call = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %18) #8, !dbg !4309
  %19 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4310
  %protocol_list = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %19, i32 0, i32 0, !dbg !4311
  call void @list_add_tail(%struct.list_head* %protocol_list, %struct.list_head* @pnp_protocols) #8, !dbg !4312
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4313
  %20 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4314
  %dev5 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %20, i32 0, i32 9, !dbg !4315
  %call6 = call i32 @device_register(%struct.device* %dev5) #8, !dbg !4316
  store i32 %call6, i32* %ret, align 4, !dbg !4317
  %21 = load i32, i32* %ret, align 4, !dbg !4318
  %tobool = icmp ne i32 %21, 0, !dbg !4318
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !4320

if.then7:                                         ; preds = %for.end
  %22 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4321
  call void @pnp_remove_protocol(%struct.pnp_protocol* %22) #8, !dbg !4322
  br label %if.end8, !dbg !4322

if.end8:                                          ; preds = %if.then7, %for.end
  %23 = load i32, i32* %ret, align 4, !dbg !4323
  ret i32 %23, !dbg !4324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4325 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  br label %do.body, !dbg !4331

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4332

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4334

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4332

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4336
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4336
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4336
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4336
  br label %do.end3, !dbg !4336

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4332

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4338
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4339
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4340
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4341
  ret void, !dbg !4342
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4343 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4350
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4351
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4352
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4352
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4353
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4354
  ret void, !dbg !4355
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_remove_protocol(%struct.pnp_protocol* %protocol) #0 !dbg !4356 {
entry:
  %protocol.addr = alloca %struct.pnp_protocol*, align 8
  store %struct.pnp_protocol* %protocol, %struct.pnp_protocol** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %protocol.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4361
  %0 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4362
  %protocol_list = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %0, i32 0, i32 0, !dbg !4363
  call void @list_del(%struct.list_head* %protocol_list) #8, !dbg !4364
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4365
  ret void, !dbg !4366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_unregister_protocol(%struct.pnp_protocol* %protocol) #0 !dbg !4367 {
entry:
  %protocol.addr = alloca %struct.pnp_protocol*, align 8
  store %struct.pnp_protocol* %protocol, %struct.pnp_protocol** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %protocol.addr, metadata !4368, metadata !DIExpression()), !dbg !4369
  %0 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4370
  call void @pnp_remove_protocol(%struct.pnp_protocol* %0) #8, !dbg !4371
  %1 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4372
  %dev = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %1, i32 0, i32 9, !dbg !4373
  call void @device_unregister(%struct.device* %dev) #8, !dbg !4374
  ret void, !dbg !4375
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_free_resource(%struct.pnp_resource* %pnp_res) #0 !dbg !4376 {
entry:
  %pnp_res.addr = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_resource* %pnp_res, %struct.pnp_resource** %pnp_res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  %0 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res.addr, align 8, !dbg !4381
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %0, i32 0, i32 0, !dbg !4382
  call void @list_del(%struct.list_head* %list) #8, !dbg !4383
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res.addr, align 8, !dbg !4384
  %2 = bitcast %struct.pnp_resource* %1 to i8*, !dbg !4384
  call void @kfree(i8* %2) #8, !dbg !4385
  ret void, !dbg !4386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4387 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4390
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4391
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4392
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4393
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4394
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4395
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4396
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4397
  ret void, !dbg !4398
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_free_resources(%struct.pnp_dev* %dev) #0 !dbg !4399 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %tmp = alloca %struct.pnp_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.pnp_resource*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.pnp_resource*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %tmp, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4406, metadata !DIExpression()), !dbg !4409
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4409
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 16, !dbg !4409
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4409
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4409
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4409
  store i8* %2, i8** %__mptr, align 8, !dbg !4409
  br label %do.body, !dbg !4409

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4410

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4409
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4409
  %4 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !4409
  store %struct.pnp_resource* %4, %struct.pnp_resource** %tmp1, align 8, !dbg !4410
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp1, align 8, !dbg !4409
  store %struct.pnp_resource* %5, %struct.pnp_resource** %pnp_res, align 8, !dbg !4412
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4413, metadata !DIExpression()), !dbg !4415
  %6 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4415
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %6, i32 0, i32 0, !dbg !4415
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4415
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !4415
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4415
  store i8* %8, i8** %__mptr2, align 8, !dbg !4415
  br label %do.body4, !dbg !4415

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4416

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !4415
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !4415
  %10 = bitcast i8* %add.ptr7 to %struct.pnp_resource*, !dbg !4415
  store %struct.pnp_resource* %10, %struct.pnp_resource** %tmp6, align 8, !dbg !4416
  %11 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp6, align 8, !dbg !4415
  store %struct.pnp_resource* %11, %struct.pnp_resource** %tmp, align 8, !dbg !4412
  br label %for.cond, !dbg !4412

for.cond:                                         ; preds = %do.end14, %do.end5
  %12 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4418
  %list8 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %12, i32 0, i32 0, !dbg !4418
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4418
  %resources9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 16, !dbg !4418
  %cmp = icmp eq %struct.list_head* %list8, %resources9, !dbg !4418
  %lnot = xor i1 %cmp, true, !dbg !4418
  br i1 %lnot, label %for.body, label %for.end, !dbg !4412

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4420
  call void @pnp_free_resource(%struct.pnp_resource* %14) #8, !dbg !4422
  br label %for.inc, !dbg !4423

for.inc:                                          ; preds = %for.body
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !4418
  store %struct.pnp_resource* %15, %struct.pnp_resource** %pnp_res, align 8, !dbg !4418
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !4424, metadata !DIExpression()), !dbg !4426
  %16 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !4426
  %list11 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %16, i32 0, i32 0, !dbg !4426
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %list11, i32 0, i32 0, !dbg !4426
  %17 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !4426
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4426
  store i8* %18, i8** %__mptr10, align 8, !dbg !4426
  br label %do.body13, !dbg !4426

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !4427

do.end14:                                         ; preds = %do.body13
  %19 = load i8*, i8** %__mptr10, align 8, !dbg !4426
  %add.ptr16 = getelementptr i8, i8* %19, i64 0, !dbg !4426
  %20 = bitcast i8* %add.ptr16 to %struct.pnp_resource*, !dbg !4426
  store %struct.pnp_resource* %20, %struct.pnp_resource** %tmp15, align 8, !dbg !4427
  %21 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp15, align 8, !dbg !4426
  store %struct.pnp_resource* %21, %struct.pnp_resource** %tmp, align 8, !dbg !4418
  br label %for.cond, !dbg !4418, !llvm.loop !4429

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_dev* @pnp_alloc_dev(%struct.pnp_protocol* %protocol, i32 %id, i8* %pnpid) #0 !dbg !4432 {
entry:
  %retval = alloca %struct.pnp_dev*, align 8
  %protocol.addr = alloca %struct.pnp_protocol*, align 8
  %id.addr = alloca i32, align 4
  %pnpid.addr = alloca i8*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %dev_id = alloca %struct.pnp_id*, align 8
  store %struct.pnp_protocol* %protocol, %struct.pnp_protocol** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_protocol** %protocol.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i8* %pnpid, i8** %pnpid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pnpid.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %dev_id, metadata !4443, metadata !DIExpression()), !dbg !4444
  %call = call i8* @kzalloc(i64 936, i32 3264) #8, !dbg !4445
  %0 = bitcast i8* %call to %struct.pnp_dev*, !dbg !4445
  store %struct.pnp_dev* %0, %struct.pnp_dev** %dev, align 8, !dbg !4446
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4447
  %tobool = icmp ne %struct.pnp_dev* %1, null, !dbg !4447
  br i1 %tobool, label %if.end, label %if.then, !dbg !4449

if.then:                                          ; preds = %entry
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4450
  br label %return, !dbg !4450

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4451
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 16, !dbg !4452
  call void @INIT_LIST_HEAD(%struct.list_head* %resources) #8, !dbg !4453
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4454
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 17, !dbg !4455
  call void @INIT_LIST_HEAD(%struct.list_head* %options) #8, !dbg !4456
  %4 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol.addr, align 8, !dbg !4457
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4458
  %protocol1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 8, !dbg !4459
  store %struct.pnp_protocol* %4, %struct.pnp_protocol** %protocol1, align 8, !dbg !4460
  %6 = load i32, i32* %id.addr, align 4, !dbg !4461
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4462
  %number = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 2, !dbg !4463
  store i32 %6, i32* %number, align 8, !dbg !4464
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4465
  %dma_mask = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 1, !dbg !4466
  store i64 16777215, i64* %dma_mask, align 8, !dbg !4467
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4468
  %protocol2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 8, !dbg !4469
  %10 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol2, align 8, !dbg !4469
  %dev3 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %10, i32 0, i32 9, !dbg !4470
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4471
  %dev4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !4472
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 1, !dbg !4473
  store %struct.device* %dev3, %struct.device** %parent, align 8, !dbg !4474
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4475
  %dev5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0, !dbg !4476
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 5, !dbg !4477
  store %struct.bus_type* @pnp_bus_type, %struct.bus_type** %bus, align 8, !dbg !4478
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4479
  %dma_mask6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 1, !dbg !4480
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4481
  %dev7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0, !dbg !4482
  %dma_mask8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 16, !dbg !4483
  store i64* %dma_mask6, i64** %dma_mask8, align 8, !dbg !4484
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4485
  %dma_mask9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 1, !dbg !4486
  %16 = load i64, i64* %dma_mask9, align 8, !dbg !4486
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4487
  %dev10 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 0, !dbg !4488
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 17, !dbg !4489
  store i64 %16, i64* %coherent_dma_mask, align 8, !dbg !4490
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4491
  %dev11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0, !dbg !4492
  %release = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 31, !dbg !4493
  store void (%struct.device*)* @pnp_release_device, void (%struct.device*)** %release, align 8, !dbg !4494
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4495
  %dev12 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 0, !dbg !4496
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4497
  %protocol13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %20, i32 0, i32 8, !dbg !4498
  %21 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol13, align 8, !dbg !4498
  %number14 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %21, i32 0, i32 8, !dbg !4499
  %22 = load i8, i8* %number14, align 8, !dbg !4499
  %conv = zext i8 %22 to i32, !dbg !4497
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4500
  %number15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 2, !dbg !4501
  %24 = load i32, i32* %number15, align 8, !dbg !4501
  %call16 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %conv, i32 %24) #8, !dbg !4502
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4503
  %26 = load i8*, i8** %pnpid.addr, align 8, !dbg !4504
  %call17 = call %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %25, i8* %26) #8, !dbg !4505
  store %struct.pnp_id* %call17, %struct.pnp_id** %dev_id, align 8, !dbg !4506
  %27 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !4507
  %tobool18 = icmp ne %struct.pnp_id* %27, null, !dbg !4507
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4509

if.then19:                                        ; preds = %if.end
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4510
  %29 = bitcast %struct.pnp_dev* %28 to i8*, !dbg !4510
  call void @kfree(i8* %29) #8, !dbg !4512
  store %struct.pnp_dev* null, %struct.pnp_dev** %retval, align 8, !dbg !4513
  br label %return, !dbg !4513

if.end20:                                         ; preds = %if.end
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4514
  store %struct.pnp_dev* %30, %struct.pnp_dev** %retval, align 8, !dbg !4515
  br label %return, !dbg !4515

return:                                           ; preds = %if.end20, %if.then19, %if.then
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %retval, align 8, !dbg !4516
  ret %struct.pnp_dev* %31, !dbg !4516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_release_device(%struct.device* %dmdev) #0 !dbg !4517 {
entry:
  %dmdev.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4522, metadata !DIExpression()), !dbg !4524
  %0 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !4524
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4524
  store i8* %1, i8** %__mptr, align 8, !dbg !4524
  br label %do.body, !dbg !4524

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4525

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4524
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4524
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4524
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !4525
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4524
  store %struct.pnp_dev* %4, %struct.pnp_dev** %dev, align 8, !dbg !4521
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4527
  call void @pnp_free_ids(%struct.pnp_dev* %5) #8, !dbg !4528
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4529
  call void @pnp_free_resources(%struct.pnp_dev* %6) #8, !dbg !4530
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4531
  call void @pnp_free_options(%struct.pnp_dev* %7) #8, !dbg !4532
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !4533
  %9 = bitcast %struct.pnp_dev* %8 to i8*, !dbg !4533
  call void @kfree(i8* %9) #8, !dbg !4534
  ret void, !dbg !4535
}

; Function Attrs: noredzone
declare dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__pnp_add_device(%struct.pnp_dev* %dev) #0 !dbg !4536 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4539, metadata !DIExpression()), !dbg !4540
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4541
  call void @pnp_fixup_device(%struct.pnp_dev* %0) #8, !dbg !4542
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4543
  %status = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 3, !dbg !4544
  store i32 0, i32* %status, align 4, !dbg !4545
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4546
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4547
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 4, !dbg !4548
  call void @list_add_tail(%struct.list_head* %global_list, %struct.list_head* @pnp_global) #8, !dbg !4549
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4550
  %protocol_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 5, !dbg !4551
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4552
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 8, !dbg !4553
  %5 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !4553
  %devices = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %5, i32 0, i32 11, !dbg !4554
  call void @list_add_tail(%struct.list_head* %protocol_list, %struct.list_head* %devices) #8, !dbg !4555
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4556
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4557
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !4558
  %call = call i32 @device_register(%struct.device* %dev1) #8, !dbg !4559
  store i32 %call, i32* %ret, align 4, !dbg !4560
  %7 = load i32, i32* %ret, align 4, !dbg !4561
  %tobool = icmp ne i32 %7, 0, !dbg !4561
  br i1 %tobool, label %if.then, label %if.else, !dbg !4563

if.then:                                          ; preds = %entry
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4564
  call void @pnp_delist_device(%struct.pnp_dev* %8) #8, !dbg !4565
  br label %if.end9, !dbg !4565

if.else:                                          ; preds = %entry
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4566
  %protocol2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 8, !dbg !4568
  %10 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol2, align 8, !dbg !4568
  %can_wakeup = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %10, i32 0, i32 5, !dbg !4569
  %11 = load i1 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)** %can_wakeup, align 8, !dbg !4569
  %tobool3 = icmp ne i1 (%struct.pnp_dev*)* %11, null, !dbg !4566
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4570

if.then4:                                         ; preds = %if.else
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4571
  %dev5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0, !dbg !4572
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4573
  %protocol6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 8, !dbg !4574
  %14 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol6, align 8, !dbg !4574
  %can_wakeup7 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %14, i32 0, i32 5, !dbg !4575
  %15 = load i1 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)** %can_wakeup7, align 8, !dbg !4575
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4576
  %call8 = call zeroext i1 %15(%struct.pnp_dev* %16) #8, !dbg !4573
  call void @device_set_wakeup_capable(%struct.device* %dev5, i1 zeroext %call8) #8, !dbg !4577
  br label %if.end, !dbg !4577

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %17 = load i32, i32* %ret, align 4, !dbg !4578
  ret i32 %17, !dbg !4579
}

; Function Attrs: noredzone
declare dso_local void @pnp_fixup_device(%struct.pnp_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_delist_device(%struct.pnp_dev* %dev) #0 !dbg !4580 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @mutex_lock(%struct.mutex* @pnp_lock) #8, !dbg !4583
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4584
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 4, !dbg !4585
  call void @list_del(%struct.list_head* %global_list) #8, !dbg !4586
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4587
  %protocol_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 5, !dbg !4588
  call void @list_del(%struct.list_head* %protocol_list) #8, !dbg !4589
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #8, !dbg !4590
  ret void, !dbg !4591
}

; Function Attrs: noredzone
declare dso_local void @device_set_wakeup_capable(%struct.device*, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_add_device(%struct.pnp_dev* %dev) #0 !dbg !4592 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %len = alloca i32, align 4
  %id = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4599, metadata !DIExpression()), !dbg !4600
  store i32 0, i32* %len, align 4, !dbg !4600
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %id, metadata !4601, metadata !DIExpression()), !dbg !4602
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4603
  %card = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 9, !dbg !4605
  %1 = load %struct.pnp_card*, %struct.pnp_card** %card, align 8, !dbg !4605
  %tobool = icmp ne %struct.pnp_card* %1, null, !dbg !4603
  br i1 %tobool, label %if.then, label %if.end, !dbg !4606

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4608
  %call = call i32 @__pnp_add_device(%struct.pnp_dev* %2) #8, !dbg !4609
  store i32 %call, i32* %ret, align 4, !dbg !4610
  %3 = load i32, i32* %ret, align 4, !dbg !4611
  %tobool1 = icmp ne i32 %3, 0, !dbg !4611
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4613

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4, !dbg !4614
  store i32 %4, i32* %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !4616
  store i8 0, i8* %arrayidx, align 16, !dbg !4617
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4618
  %id4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 12, !dbg !4620
  %6 = load %struct.pnp_id*, %struct.pnp_id** %id4, align 8, !dbg !4620
  store %struct.pnp_id* %6, %struct.pnp_id** %id, align 8, !dbg !4621
  br label %for.cond, !dbg !4622

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4623
  %tobool5 = icmp ne %struct.pnp_id* %7, null, !dbg !4625
  br i1 %tobool5, label %for.body, label %for.end, !dbg !4625

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !4626
  %8 = load i32, i32* %len, align 4, !dbg !4627
  %idx.ext = sext i32 %8 to i64, !dbg !4628
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !4628
  %9 = load i32, i32* %len, align 4, !dbg !4629
  %conv = sext i32 %9 to i64, !dbg !4629
  %sub = sub i64 128, %conv, !dbg !4630
  %10 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4631
  %id6 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %10, i32 0, i32 0, !dbg !4632
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %id6, i64 0, i64 0, !dbg !4631
  %call8 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr, i64 %sub, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay7) #8, !dbg !4633
  %11 = load i32, i32* %len, align 4, !dbg !4634
  %add = add i32 %11, %call8, !dbg !4634
  store i32 %add, i32* %len, align 4, !dbg !4634
  br label %for.inc, !dbg !4635

for.inc:                                          ; preds = %for.body
  %12 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4636
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %12, i32 0, i32 1, !dbg !4637
  %13 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !4637
  store %struct.pnp_id* %13, %struct.pnp_id** %id, align 8, !dbg !4638
  br label %for.cond, !dbg !4639, !llvm.loop !4640

for.end:                                          ; preds = %for.cond
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4642
  %dev9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0, !dbg !4643
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4644
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 8, !dbg !4645
  %16 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !4645
  %name = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %16, i32 0, i32 1, !dbg !4646
  %17 = load i8*, i8** %name, align 8, !dbg !4646
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !4647
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4648
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 13, !dbg !4649
  %19 = load i32, i32* %active, align 8, !dbg !4649
  %tobool11 = icmp ne i32 %19, 0, !dbg !4648
  %20 = zext i1 %tobool11 to i64, !dbg !4648
  %cond = select i1 %tobool11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !4648
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %17, i8* %arraydecay10, i8* %cond) #9, !dbg !4650
  store i32 0, i32* %retval, align 4, !dbg !4651
  br label %return, !dbg !4651

return:                                           ; preds = %for.end, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4652
  ret i32 %21, !dbg !4652
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #3

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__pnp_remove_device(%struct.pnp_dev* %dev) #0 !dbg !4653 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4656
  call void @pnp_delist_device(%struct.pnp_dev* %0) #8, !dbg !4657
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4658
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !4659
  call void @device_unregister(%struct.device* %dev1) #8, !dbg !4660
  ret void, !dbg !4661
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_init() #4 section ".init.text" !dbg !4662 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @pnp_bus_type) #8, !dbg !4665
  ret i32 %call, !dbg !4666
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4667 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4671, metadata !DIExpression()), !dbg !4676
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4678, metadata !DIExpression()), !dbg !4679
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i64, i64* %size.addr, align 8, !dbg !4682
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4684
  br i1 %1, label %if.then, label %if.end447, !dbg !4685

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4686
  %tobool = icmp ne i64 %2, 0, !dbg !4686
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4689

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4691
  %cmp = icmp ult i64 %3, 4096, !dbg !4693
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4694

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4695
  br label %return, !dbg !4695

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub = sub i64 %4, 1, !dbg !4696
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4696
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4696

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub4 = sub i64 %6, 1, !dbg !4696
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4696
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4696

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub6 = sub i64 %8, 1, !dbg !4696
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4696
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4696

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4696

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub9 = sub i64 %9, 1, !dbg !4696
  %and = and i64 %sub9, -9223372036854775808, !dbg !4696
  %tobool10 = icmp ne i64 %and, 0, !dbg !4696
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4696

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4696

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub13 = sub i64 %10, 1, !dbg !4696
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4696
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4696
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4696

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4696

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub18 = sub i64 %11, 1, !dbg !4696
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4696
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4696
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4696

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4696

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub23 = sub i64 %12, 1, !dbg !4696
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4696
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4696
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4696

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4696

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub28 = sub i64 %13, 1, !dbg !4696
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4696
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4696
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4696

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4696

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub33 = sub i64 %14, 1, !dbg !4696
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4696
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4696
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4696

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4696

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub38 = sub i64 %15, 1, !dbg !4696
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4696
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4696
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4696

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4696

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub43 = sub i64 %16, 1, !dbg !4696
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4696
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4696
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4696

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4696

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub48 = sub i64 %17, 1, !dbg !4696
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4696
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4696
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4696

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4696

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub53 = sub i64 %18, 1, !dbg !4696
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4696
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4696
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4696

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4696

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub58 = sub i64 %19, 1, !dbg !4696
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4696
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4696
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4696

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4696

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub63 = sub i64 %20, 1, !dbg !4696
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4696
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4696
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4696

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4696

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub68 = sub i64 %21, 1, !dbg !4696
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4696
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4696
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4696

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4696

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub73 = sub i64 %22, 1, !dbg !4696
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4696
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4696
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4696

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4696

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub78 = sub i64 %23, 1, !dbg !4696
  %and79 = and i64 %sub78, 562949953421312, !dbg !4696
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4696
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4696

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4696

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub83 = sub i64 %24, 1, !dbg !4696
  %and84 = and i64 %sub83, 281474976710656, !dbg !4696
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4696
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4696

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4696

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub88 = sub i64 %25, 1, !dbg !4696
  %and89 = and i64 %sub88, 140737488355328, !dbg !4696
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4696
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4696

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4696

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub93 = sub i64 %26, 1, !dbg !4696
  %and94 = and i64 %sub93, 70368744177664, !dbg !4696
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4696
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4696

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4696

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub98 = sub i64 %27, 1, !dbg !4696
  %and99 = and i64 %sub98, 35184372088832, !dbg !4696
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4696
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4696

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4696

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub103 = sub i64 %28, 1, !dbg !4696
  %and104 = and i64 %sub103, 17592186044416, !dbg !4696
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4696
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4696

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4696

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub108 = sub i64 %29, 1, !dbg !4696
  %and109 = and i64 %sub108, 8796093022208, !dbg !4696
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4696
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4696

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4696

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub113 = sub i64 %30, 1, !dbg !4696
  %and114 = and i64 %sub113, 4398046511104, !dbg !4696
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4696
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4696

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4696

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub118 = sub i64 %31, 1, !dbg !4696
  %and119 = and i64 %sub118, 2199023255552, !dbg !4696
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4696
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4696

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4696

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub123 = sub i64 %32, 1, !dbg !4696
  %and124 = and i64 %sub123, 1099511627776, !dbg !4696
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4696
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4696

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4696

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub128 = sub i64 %33, 1, !dbg !4696
  %and129 = and i64 %sub128, 549755813888, !dbg !4696
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4696
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4696

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4696

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub133 = sub i64 %34, 1, !dbg !4696
  %and134 = and i64 %sub133, 274877906944, !dbg !4696
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4696
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4696

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4696

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub138 = sub i64 %35, 1, !dbg !4696
  %and139 = and i64 %sub138, 137438953472, !dbg !4696
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4696
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4696

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4696

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub143 = sub i64 %36, 1, !dbg !4696
  %and144 = and i64 %sub143, 68719476736, !dbg !4696
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4696
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4696

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4696

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub148 = sub i64 %37, 1, !dbg !4696
  %and149 = and i64 %sub148, 34359738368, !dbg !4696
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4696
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4696

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4696

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub153 = sub i64 %38, 1, !dbg !4696
  %and154 = and i64 %sub153, 17179869184, !dbg !4696
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4696
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4696

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4696

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub158 = sub i64 %39, 1, !dbg !4696
  %and159 = and i64 %sub158, 8589934592, !dbg !4696
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4696
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4696

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4696

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub163 = sub i64 %40, 1, !dbg !4696
  %and164 = and i64 %sub163, 4294967296, !dbg !4696
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4696
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4696

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4696

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub168 = sub i64 %41, 1, !dbg !4696
  %and169 = and i64 %sub168, 2147483648, !dbg !4696
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4696
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4696

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4696

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub173 = sub i64 %42, 1, !dbg !4696
  %and174 = and i64 %sub173, 1073741824, !dbg !4696
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4696
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4696

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4696

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub178 = sub i64 %43, 1, !dbg !4696
  %and179 = and i64 %sub178, 536870912, !dbg !4696
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4696
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4696

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4696

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub183 = sub i64 %44, 1, !dbg !4696
  %and184 = and i64 %sub183, 268435456, !dbg !4696
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4696
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4696

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4696

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub188 = sub i64 %45, 1, !dbg !4696
  %and189 = and i64 %sub188, 134217728, !dbg !4696
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4696
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4696

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4696

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub193 = sub i64 %46, 1, !dbg !4696
  %and194 = and i64 %sub193, 67108864, !dbg !4696
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4696
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4696

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4696

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub198 = sub i64 %47, 1, !dbg !4696
  %and199 = and i64 %sub198, 33554432, !dbg !4696
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4696
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4696

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4696

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub203 = sub i64 %48, 1, !dbg !4696
  %and204 = and i64 %sub203, 16777216, !dbg !4696
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4696
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4696

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4696

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub208 = sub i64 %49, 1, !dbg !4696
  %and209 = and i64 %sub208, 8388608, !dbg !4696
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4696
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4696

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4696

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub213 = sub i64 %50, 1, !dbg !4696
  %and214 = and i64 %sub213, 4194304, !dbg !4696
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4696
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4696

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4696

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub218 = sub i64 %51, 1, !dbg !4696
  %and219 = and i64 %sub218, 2097152, !dbg !4696
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4696
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4696

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4696

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub223 = sub i64 %52, 1, !dbg !4696
  %and224 = and i64 %sub223, 1048576, !dbg !4696
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4696
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4696

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4696

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub228 = sub i64 %53, 1, !dbg !4696
  %and229 = and i64 %sub228, 524288, !dbg !4696
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4696
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4696

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4696

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub233 = sub i64 %54, 1, !dbg !4696
  %and234 = and i64 %sub233, 262144, !dbg !4696
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4696
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4696

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4696

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub238 = sub i64 %55, 1, !dbg !4696
  %and239 = and i64 %sub238, 131072, !dbg !4696
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4696
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4696

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4696

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub243 = sub i64 %56, 1, !dbg !4696
  %and244 = and i64 %sub243, 65536, !dbg !4696
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4696
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4696

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4696

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub248 = sub i64 %57, 1, !dbg !4696
  %and249 = and i64 %sub248, 32768, !dbg !4696
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4696
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4696

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4696

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub253 = sub i64 %58, 1, !dbg !4696
  %and254 = and i64 %sub253, 16384, !dbg !4696
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4696
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4696

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4696

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub258 = sub i64 %59, 1, !dbg !4696
  %and259 = and i64 %sub258, 8192, !dbg !4696
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4696
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4696

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4696

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub263 = sub i64 %60, 1, !dbg !4696
  %and264 = and i64 %sub263, 4096, !dbg !4696
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4696
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4696

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4696

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub268 = sub i64 %61, 1, !dbg !4696
  %and269 = and i64 %sub268, 2048, !dbg !4696
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4696
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4696

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4696

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub273 = sub i64 %62, 1, !dbg !4696
  %and274 = and i64 %sub273, 1024, !dbg !4696
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4696
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4696

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4696

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub278 = sub i64 %63, 1, !dbg !4696
  %and279 = and i64 %sub278, 512, !dbg !4696
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4696
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4696

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4696

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub283 = sub i64 %64, 1, !dbg !4696
  %and284 = and i64 %sub283, 256, !dbg !4696
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4696
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4696

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4696

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub288 = sub i64 %65, 1, !dbg !4696
  %and289 = and i64 %sub288, 128, !dbg !4696
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4696
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4696

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4696

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub293 = sub i64 %66, 1, !dbg !4696
  %and294 = and i64 %sub293, 64, !dbg !4696
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4696
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4696

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4696

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub298 = sub i64 %67, 1, !dbg !4696
  %and299 = and i64 %sub298, 32, !dbg !4696
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4696
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4696

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4696

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub303 = sub i64 %68, 1, !dbg !4696
  %and304 = and i64 %sub303, 16, !dbg !4696
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4696
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4696

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4696

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub308 = sub i64 %69, 1, !dbg !4696
  %and309 = and i64 %sub308, 8, !dbg !4696
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4696
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4696

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4696

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub313 = sub i64 %70, 1, !dbg !4696
  %and314 = and i64 %sub313, 4, !dbg !4696
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4696
  %71 = zext i1 %tobool315 to i64, !dbg !4696
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4696
  br label %cond.end, !dbg !4696

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4696
  br label %cond.end317, !dbg !4696

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4696
  br label %cond.end319, !dbg !4696

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4696
  br label %cond.end321, !dbg !4696

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4696
  br label %cond.end323, !dbg !4696

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4696
  br label %cond.end325, !dbg !4696

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4696
  br label %cond.end327, !dbg !4696

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4696
  br label %cond.end329, !dbg !4696

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4696
  br label %cond.end331, !dbg !4696

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4696
  br label %cond.end333, !dbg !4696

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4696
  br label %cond.end335, !dbg !4696

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4696
  br label %cond.end337, !dbg !4696

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4696
  br label %cond.end339, !dbg !4696

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4696
  br label %cond.end341, !dbg !4696

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4696
  br label %cond.end343, !dbg !4696

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4696
  br label %cond.end345, !dbg !4696

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4696
  br label %cond.end347, !dbg !4696

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4696
  br label %cond.end349, !dbg !4696

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4696
  br label %cond.end351, !dbg !4696

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4696
  br label %cond.end353, !dbg !4696

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4696
  br label %cond.end355, !dbg !4696

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4696
  br label %cond.end357, !dbg !4696

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4696
  br label %cond.end359, !dbg !4696

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4696
  br label %cond.end361, !dbg !4696

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4696
  br label %cond.end363, !dbg !4696

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4696
  br label %cond.end365, !dbg !4696

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4696
  br label %cond.end367, !dbg !4696

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4696
  br label %cond.end369, !dbg !4696

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4696
  br label %cond.end371, !dbg !4696

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4696
  br label %cond.end373, !dbg !4696

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4696
  br label %cond.end375, !dbg !4696

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4696
  br label %cond.end377, !dbg !4696

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4696
  br label %cond.end379, !dbg !4696

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4696
  br label %cond.end381, !dbg !4696

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4696
  br label %cond.end383, !dbg !4696

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4696
  br label %cond.end385, !dbg !4696

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4696
  br label %cond.end387, !dbg !4696

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4696
  br label %cond.end389, !dbg !4696

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4696
  br label %cond.end391, !dbg !4696

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4696
  br label %cond.end393, !dbg !4696

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4696
  br label %cond.end395, !dbg !4696

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4696
  br label %cond.end397, !dbg !4696

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4696
  br label %cond.end399, !dbg !4696

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4696
  br label %cond.end401, !dbg !4696

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4696
  br label %cond.end403, !dbg !4696

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4696
  br label %cond.end405, !dbg !4696

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4696
  br label %cond.end407, !dbg !4696

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4696
  br label %cond.end409, !dbg !4696

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4696
  br label %cond.end411, !dbg !4696

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4696
  br label %cond.end413, !dbg !4696

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4696
  br label %cond.end415, !dbg !4696

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4696
  br label %cond.end417, !dbg !4696

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4696
  br label %cond.end419, !dbg !4696

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4696
  br label %cond.end421, !dbg !4696

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4696
  br label %cond.end423, !dbg !4696

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4696
  br label %cond.end425, !dbg !4696

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4696
  br label %cond.end427, !dbg !4696

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4696
  br label %cond.end429, !dbg !4696

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4696
  br label %cond.end431, !dbg !4696

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4696
  br label %cond.end433, !dbg !4696

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4696
  br label %cond.end435, !dbg !4696

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4696
  br label %cond.end437, !dbg !4696

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4696
  br label %cond.end440, !dbg !4696

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4696

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4696
  br label %cond.end444, !dbg !4696

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4696
  %sub443 = sub i64 %72, 1, !dbg !4696
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4696
  br label %cond.end444, !dbg !4696

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4696
  %sub446 = sub i32 %cond445, 12, !dbg !4697
  %add = add i32 %sub446, 1, !dbg !4698
  store i32 %add, i32* %retval, align 4, !dbg !4699
  br label %return, !dbg !4699

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4700
  %dec = add i64 %73, -1, !dbg !4700
  store i64 %dec, i64* %size.addr, align 8, !dbg !4700
  %74 = load i64, i64* %size.addr, align 8, !dbg !4701
  %shr = lshr i64 %74, 12, !dbg !4701
  store i64 %shr, i64* %size.addr, align 8, !dbg !4701
  %75 = load i64, i64* %size.addr, align 8, !dbg !4702
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4679
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4703
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4704
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4703, !srcloc !4705
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4703
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4706
  %add.i = add i32 %79, 1, !dbg !4707
  store i32 %add.i, i32* %retval, align 4, !dbg !4708
  br label %return, !dbg !4708

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4709
  ret i32 %80, !dbg !4709
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4710 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4671, metadata !DIExpression()), !dbg !4714
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4678, metadata !DIExpression()), !dbg !4716
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load i64, i64* %n.addr, align 8, !dbg !4719
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4716
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4720
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4721
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4720, !srcloc !4705
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4720
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4722
  %add.i = add i32 %4, 1, !dbg !4723
  %sub = sub i32 %add.i, 1, !dbg !4724
  ret i32 %sub, !dbg !4725
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4726 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4738
  ret i8* %0, !dbg !4739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4740 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4749
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4751
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4752
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4753
  br i1 %call, label %if.end, label %if.then, !dbg !4754

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4755

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4756
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4757
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4758
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4759
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4760
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4761
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4762
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4763
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4764
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4765
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4766
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4767
  br label %do.body, !dbg !4768

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4769

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4771

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4769

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4773
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4773
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4773
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4773
  br label %do.end7, !dbg !4773

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4769

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4776 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  ret i1 true, !dbg !4785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4786 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4789
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !4791
  br i1 %call, label %if.end, label %if.then, !dbg !4792

if.then:                                          ; preds = %entry
  br label %return, !dbg !4793

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4794
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4795
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4795
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4796
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4797
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4797
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !4798
  br label %return, !dbg !4799

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4800 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  ret i1 true, !dbg !4805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4806 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4811
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4812
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4813
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4814
  br label %do.body, !dbg !4815

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4816

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4818

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4816

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4820
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4820
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4820
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4820
  br label %do.end5, !dbg !4820

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4816

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_free_ids(%struct.pnp_dev* %dev) #0 !dbg !4823 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %id = alloca %struct.pnp_id*, align 8
  %next = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %id, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %next, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4830
  %id1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 12, !dbg !4831
  %1 = load %struct.pnp_id*, %struct.pnp_id** %id1, align 8, !dbg !4831
  store %struct.pnp_id* %1, %struct.pnp_id** %id, align 8, !dbg !4832
  br label %while.cond, !dbg !4833

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4834
  %tobool = icmp ne %struct.pnp_id* %2, null, !dbg !4833
  br i1 %tobool, label %while.body, label %while.end, !dbg !4833

while.body:                                       ; preds = %while.cond
  %3 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4835
  %next2 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %3, i32 0, i32 1, !dbg !4837
  %4 = load %struct.pnp_id*, %struct.pnp_id** %next2, align 8, !dbg !4837
  store %struct.pnp_id* %4, %struct.pnp_id** %next, align 8, !dbg !4838
  %5 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !4839
  %6 = bitcast %struct.pnp_id* %5 to i8*, !dbg !4839
  call void @kfree(i8* %6) #8, !dbg !4840
  %7 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !4841
  store %struct.pnp_id* %7, %struct.pnp_id** %id, align 8, !dbg !4842
  br label %while.cond, !dbg !4833, !llvm.loop !4843

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4845
}

; Function Attrs: noredzone
declare dso_local void @pnp_free_options(%struct.pnp_dev*) #3

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!3962, !3963, !3964, !3965}
!llvm.ident = !{!3966}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_global", scope: !2, file: !3, line: 23, type: !114, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !3889, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100}
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
!105 = !{!106, !108, !109, !3868, !3887, !127}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 148, baseType: !7)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !111, line: 411, size: 6464, elements: !112)
!111 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !119, !122, !3856, !3857, !3858, !3862, !3863, !3864, !3865, !3866, !3867}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !110, file: !111, line: 412, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 178, size: 128, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !107, line: 179, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !107, line: 179, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 413, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !110, file: !111, line: 416, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !127}
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !111, line: 243, size: 7488, elements: !129)
!129 = !{!130, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3774, !3803, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !128, file: !111, line: 244, baseType: !131, size: 5568)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !132)
!132 = !{!133, !3292, !3294, !3297, !3298, !3349, !3440, !3441, !3442, !3443, !3444, !3453, !3558, !3571, !3574, !3575, !3579, !3581, !3582, !3583, !3587, !3593, !3594, !3597, !3601, !3691, !3692, !3693, !3694, !3695, !3727, !3728, !3729, !3732, !3735, !3736, !3737, !3738}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !131, file: !73, line: 462, baseType: !134, size: 512)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !135, line: 64, size: 512, elements: !136)
!135 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !140, !141, !143, !202, !3143, !3282, !3287, !3288, !3289, !3290, !3291}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !135, line: 65, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !134, file: !135, line: 66, baseType: !114, size: 128, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !135, line: 67, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !134, file: !135, line: 68, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !135, line: 192, size: 704, elements: !146)
!146 = !{!147, !148, !164, !165}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !145, file: !135, line: 193, baseType: !114, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !145, file: !135, line: 194, baseType: !149, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !150, line: 83, baseType: !151)
!150 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !150, line: 71, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !150, line: 72, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !150, line: 72, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !154, file: !150, line: 73, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !150, line: 20, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !157, file: !150, line: 21, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !161, line: 25, baseType: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 25, elements: !163)
!163 = !{}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !145, file: !135, line: 195, baseType: !134, size: 512, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !145, file: !135, line: 196, baseType: !166, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !135, line: 156, size: 192, elements: !169)
!169 = !{!170, !175, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !168, file: !135, line: 157, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!126, !144, !142}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !135, line: 158, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!138, !144, !142}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !168, file: !135, line: 159, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!126, !144, !142, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !135, line: 148, size: 20736, elements: !187)
!187 = !{!188, !192, !196, !197, !201}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !186, file: !135, line: 149, baseType: !189, size: 192)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !186, file: !135, line: 150, baseType: !193, size: 4096, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 4096, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !186, file: !135, line: 151, baseType: !126, size: 32, offset: 4288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !186, file: !135, line: 152, baseType: !198, size: 16384, offset: 4320)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !186, file: !135, line: 153, baseType: !126, size: 32, offset: 20704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !134, file: !135, line: 69, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !135, line: 138, size: 448, elements: !205)
!205 = !{!206, !210, !240, !242, !3105, !3133, !3137}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !204, file: !135, line: 139, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !142}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !204, file: !135, line: 140, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !214, line: 230, size: 128, elements: !215)
!214 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !232}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !213, file: !214, line: 231, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !142, !225, !120}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 60, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !222, line: 73, baseType: !223)
!222 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !222, line: 15, baseType: !224)
!224 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !214, line: 30, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !214, line: 31, baseType: !138, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !226, file: !214, line: 32, baseType: !230, size: 16, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 19, baseType: !231)
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !213, file: !214, line: 232, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!220, !142, !225, !138, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 55, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !222, line: 72, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !222, line: 16, baseType: !239)
!239 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !204, file: !135, line: 141, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !204, file: !135, line: 142, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !214, line: 84, size: 320, elements: !247)
!247 = !{!248, !249, !253, !3102, !3103}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !214, line: 85, baseType: !138, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !246, file: !214, line: 86, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!230, !142, !225, !126}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !246, file: !214, line: 88, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!230, !142, !257, !126}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !214, line: 168, size: 448, elements: !259)
!259 = !{!260, !261, !262, !263, !3097, !3098}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !258, file: !214, line: 169, baseType: !226, size: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !258, file: !214, line: 170, baseType: !236, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !258, file: !214, line: 171, baseType: !108, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !258, file: !214, line: 172, baseType: !264, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!220, !267, !142, !257, !120, !446, !236}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !269)
!269 = !{!270, !288, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3080, !3081, !3090, !3091, !3092, !3093, !3094, !3095, !3096}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !268, file: !44, line: 920, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !44, line: 917, size: 128, elements: !272)
!272 = !{!273, !279}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !271, file: !44, line: 918, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !275, line: 58, size: 64, elements: !276)
!275 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !275, line: 59, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !271, file: !44, line: 919, baseType: !280, size: 128, align: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 216, size: 128, align: 64, elements: !281)
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !107, line: 217, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !280, file: !107, line: 218, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !283}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !268, file: !44, line: 921, baseType: !289, size: 128, offset: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !290, line: 8, size: 128, elements: !291)
!290 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !289, file: !290, line: 9, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !295, line: 18, flags: DIFlagFwdDecl)
!295 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !289, file: !290, line: 10, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !295, line: 89, size: 1536, elements: !299)
!299 = !{!300, !301, !311, !319, !320, !343, !3030, !3032, !3044, !3045, !3046, !3047, !3048, !3054, !3055, !3056}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !298, file: !295, line: 91, baseType: !7, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !298, file: !295, line: 92, baseType: !302, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !303, line: 277, baseType: !304)
!303 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !303, line: 277, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !304, file: !303, line: 277, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !303, line: 70, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !303, line: 65, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !308, file: !303, line: 66, baseType: !7, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !298, file: !295, line: 93, baseType: !312, size: 128, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !313, line: 38, size: 128, elements: !314)
!313 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !313, line: 39, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !312, file: !313, line: 39, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !298, file: !295, line: 94, baseType: !297, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !298, file: !295, line: 95, baseType: !321, size: 128, offset: 256)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !295, line: 47, size: 128, elements: !322)
!322 = !{!323, !339}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !295, line: 48, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !295, line: 48, size: 64, elements: !325)
!325 = !{!326, !335}
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !295, line: 49, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !295, line: 49, size: 64, elements: !328)
!328 = !{!329, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !327, file: !295, line: 50, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !331, line: 21, baseType: !332)
!331 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !333, line: 27, baseType: !7)
!333 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !327, file: !295, line: 50, baseType: !330, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !324, file: !295, line: 52, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !331, line: 23, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !333, line: 31, baseType: !338)
!338 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !295, line: 54, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !298, file: !295, line: 96, baseType: !344, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !346)
!346 = !{!347, !348, !349, !357, !364, !365, !513, !2741, !2742, !2743, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !3006, !3014, !3015, !3016, !3026, !3027, !3028, !3029}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !345, file: !44, line: 611, baseType: !230, size: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !345, file: !44, line: 612, baseType: !231, size: 16, offset: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !345, file: !44, line: 613, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !351, line: 23, baseType: !352)
!351 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 21, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !352, file: !351, line: 22, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 32, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !222, line: 49, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !345, file: !44, line: 614, baseType: !358, size: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !351, line: 28, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 26, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !351, line: 27, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 33, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !222, line: 50, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !345, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !345, file: !44, line: 622, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !369)
!369 = !{!370, !374, !387, !391, !397, !401, !407, !411, !415, !419, !423, !424, !430, !434, !460, !489, !493, !499, !504, !508, !509}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !368, file: !44, line: 1865, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!297, !344, !297, !7}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !368, file: !44, line: 1866, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!138, !297, !344, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !380, line: 10, size: 128, elements: !381)
!380 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !379, file: !380, line: 11, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !108}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !379, file: !380, line: 12, baseType: !108, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !368, file: !44, line: 1867, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!126, !344, !126}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !368, file: !44, line: 1868, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !344, !126}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !368, file: !44, line: 1870, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!126, !297, !120, !126}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !368, file: !44, line: 1872, baseType: !402, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!126, !344, !297, !230, !405}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 30, baseType: !406)
!406 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !368, file: !44, line: 1873, baseType: !408, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!126, !297, !344, !297}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !368, file: !44, line: 1874, baseType: !412, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!126, !344, !297}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !368, file: !44, line: 1875, baseType: !416, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!126, !344, !297, !138}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !368, file: !44, line: 1876, baseType: !420, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!126, !344, !297, !230}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !368, file: !44, line: 1877, baseType: !412, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !368, file: !44, line: 1878, baseType: !425, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!126, !344, !297, !230, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 16, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 13, baseType: !330)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !368, file: !44, line: 1879, baseType: !431, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!126, !344, !297, !344, !297, !7}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !368, file: !44, line: 1881, baseType: !435, size: 64, offset: 832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!126, !297, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !449, !457, !458, !459}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !439, file: !44, line: 220, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !439, file: !44, line: 221, baseType: !230, size: 16, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !439, file: !44, line: 222, baseType: !350, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !439, file: !44, line: 223, baseType: !358, size: 32, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !439, file: !44, line: 224, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 46, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !222, line: 88, baseType: !448)
!448 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !439, file: !44, line: 225, baseType: !450, size: 128, offset: 192)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !451, line: 13, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !450, file: !451, line: 14, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !451, line: 8, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !333, line: 30, baseType: !448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !450, file: !451, line: 15, baseType: !224, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !439, file: !44, line: 226, baseType: !450, size: 128, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !439, file: !44, line: 227, baseType: !450, size: 128, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !439, file: !44, line: 234, baseType: !267, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !368, file: !44, line: 1882, baseType: !461, size: 64, offset: 896)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!126, !464, !466, !330, !7}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !468, line: 22, size: 1152, elements: !469)
!468 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!469 = !{!470, !471, !472, !473, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !467, file: !468, line: 23, baseType: !330, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !467, file: !468, line: 24, baseType: !230, size: 16, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !467, file: !468, line: 25, baseType: !7, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !467, file: !468, line: 26, baseType: !474, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 104, baseType: !330)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !467, file: !468, line: 27, baseType: !336, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !467, file: !468, line: 28, baseType: !336, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !467, file: !468, line: 37, baseType: !336, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !467, file: !468, line: 38, baseType: !428, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !467, file: !468, line: 39, baseType: !428, size: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !467, file: !468, line: 40, baseType: !350, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !467, file: !468, line: 41, baseType: !358, size: 32, offset: 416)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !467, file: !468, line: 42, baseType: !446, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !467, file: !468, line: 43, baseType: !450, size: 128, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !467, file: !468, line: 44, baseType: !450, size: 128, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !467, file: !468, line: 45, baseType: !450, size: 128, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !467, file: !468, line: 46, baseType: !450, size: 128, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !467, file: !468, line: 47, baseType: !336, size: 64, offset: 1024)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !467, file: !468, line: 48, baseType: !336, size: 64, offset: 1088)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !368, file: !44, line: 1883, baseType: !490, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!220, !297, !120, !236}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !368, file: !44, line: 1884, baseType: !494, size: 64, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!126, !344, !497, !336, !336}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !368, file: !44, line: 1886, baseType: !500, size: 64, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!126, !344, !503, !126}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !368, file: !44, line: 1887, baseType: !505, size: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!126, !344, !297, !267, !7, !230}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !368, file: !44, line: 1890, baseType: !420, size: 64, offset: 1216)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !368, file: !44, line: 1891, baseType: !510, size: 64, offset: 1280)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!126, !344, !395, !126}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !345, file: !44, line: 623, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !572, !2348, !2430, !2513, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2529, !2533, !2534, !2537, !2538, !2541, !2542, !2543, !2584, !2611, !2612, !2613, !2614, !2615, !2616, !2619, !2621, !2628, !2629, !2631, !2632, !2633, !2692, !2693, !2708, !2709, !2710, !2711, !2712, !2715, !2716, !2717, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !515, file: !44, line: 1417, baseType: !114, size: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !515, file: !44, line: 1418, baseType: !428, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !515, file: !44, line: 1419, baseType: !342, size: 8, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !515, file: !44, line: 1420, baseType: !239, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !515, file: !44, line: 1421, baseType: !446, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !515, file: !44, line: 1422, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !525)
!525 = !{!526, !527, !528, !535, !539, !543, !547, !551, !552, !562, !565, !566, !567, !569, !570, !571}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !44, line: 2229, baseType: !138, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !524, file: !44, line: 2230, baseType: !126, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !524, file: !44, line: 2238, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!126, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !534, line: 28, flags: DIFlagFwdDecl)
!534 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !524, file: !44, line: 2239, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !524, file: !44, line: 2240, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!297, !523, !126, !138, !108}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !524, file: !44, line: 2242, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !514}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !524, file: !44, line: 2243, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !550, line: 76, flags: DIFlagFwdDecl)
!550 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !44, line: 2244, baseType: !523, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !524, file: !44, line: 2245, baseType: !553, size: 64, offset: 512)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 182, size: 64, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !553, file: !107, line: 183, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 186, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !107, line: 187, baseType: !556, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !557, file: !107, line: 187, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !524, file: !44, line: 2247, baseType: !563, offset: 576)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !564, line: 187, elements: !163)
!564 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !524, file: !44, line: 2248, baseType: !563, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !524, file: !44, line: 2249, baseType: !563, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !524, file: !44, line: 2250, baseType: !568, offset: 576)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, elements: !190)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !524, file: !44, line: 2252, baseType: !563, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !524, file: !44, line: 2253, baseType: !563, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !524, file: !44, line: 2254, baseType: !563, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !515, file: !44, line: 1423, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !576)
!576 = !{!577, !581, !585, !586, !590, !596, !600, !601, !602, !606, !610, !611, !612, !613, !619, !624, !625, !632, !633, !634, !635, !2332, !2347}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !575, file: !44, line: 1936, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!344, !514}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !575, file: !44, line: 1937, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !344}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !575, file: !44, line: 1938, baseType: !582, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !575, file: !44, line: 1940, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !344, !126}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !575, file: !44, line: 1941, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!126, !344, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !575, file: !44, line: 1942, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!126, !344}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !575, file: !44, line: 1943, baseType: !582, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !575, file: !44, line: 1944, baseType: !544, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !575, file: !44, line: 1945, baseType: !603, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!126, !514, !126}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !575, file: !44, line: 1946, baseType: !607, size: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!126, !514}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !575, file: !44, line: 1947, baseType: !607, size: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !575, file: !44, line: 1948, baseType: !607, size: 64, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !575, file: !44, line: 1949, baseType: !607, size: 64, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !575, file: !44, line: 1950, baseType: !614, size: 64, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!126, !297, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !575, file: !44, line: 1951, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!126, !514, !623, !120}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !575, file: !44, line: 1952, baseType: !544, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !575, file: !44, line: 1954, baseType: !626, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!126, !629, !297}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !631, line: 539, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !575, file: !44, line: 1955, baseType: !626, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !575, file: !44, line: 1956, baseType: !626, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !575, file: !44, line: 1957, baseType: !626, size: 64, offset: 1216)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !575, file: !44, line: 1963, baseType: !636, size: 64, offset: 1280)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!126, !514, !639, !106}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !641, line: 68, size: 512, align: 128, elements: !642)
!641 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !644, !2324, !2331}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !641, line: 69, baseType: !239, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !641, line: 77, baseType: !645, size: 320, offset: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !641, line: 77, size: 320, elements: !646)
!646 = !{!647, !834, !839, !867, !875, !881, !2255, !2323}
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 78, baseType: !648, size: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 78, size: 320, elements: !649)
!649 = !{!650, !651, !832, !833}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !648, file: !641, line: 84, baseType: !114, size: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !648, file: !641, line: 86, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !654)
!654 = !{!655, !656, !663, !664, !669, !684, !700, !701, !702, !703, !825, !826, !829, !830, !831}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !653, file: !44, line: 452, baseType: !344, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !653, file: !44, line: 453, baseType: !657, size: 128, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !658, line: 292, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !657, file: !658, line: 293, baseType: !149)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !657, file: !658, line: 295, baseType: !106, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !657, file: !658, line: 296, baseType: !108, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !653, file: !44, line: 454, baseType: !106, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !653, file: !44, line: 455, baseType: !665, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 168, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 166, size: 32, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !666, file: !107, line: 167, baseType: !126, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !653, file: !44, line: 460, baseType: !670, size: 128, offset: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !671, line: 125, size: 128, elements: !672)
!671 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !683}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !670, file: !671, line: 126, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !671, line: 31, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !674, file: !671, line: 32, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !671, line: 24, size: 192, align: 64, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !678, file: !671, line: 25, baseType: !239, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !678, file: !671, line: 26, baseType: !677, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !678, file: !671, line: 27, baseType: !677, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !670, file: !671, line: 127, baseType: !677, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !653, file: !44, line: 461, baseType: !685, size: 256, offset: 384)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !686, line: 35, size: 256, elements: !687)
!686 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!687 = !{!688, !696, !697, !699}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !685, file: !686, line: 36, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !690, line: 13, baseType: !691)
!690 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 175, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 173, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !692, file: !107, line: 174, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !331, line: 22, baseType: !455)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !685, file: !686, line: 42, baseType: !689, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !685, file: !686, line: 46, baseType: !698, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !150, line: 29, baseType: !157)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !685, file: !686, line: 47, baseType: !114, size: 128, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !653, file: !44, line: 462, baseType: !239, size: 64, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !653, file: !44, line: 463, baseType: !239, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !653, file: !44, line: 464, baseType: !239, size: 64, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !653, file: !44, line: 465, baseType: !704, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !707)
!707 = !{!708, !712, !716, !720, !724, !728, !734, !740, !744, !749, !753, !757, !761, !789, !793, !799, !800, !801, !805, !810, !814, !821}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !706, file: !44, line: 368, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!126, !639, !594}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !706, file: !44, line: 369, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!126, !267, !639}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !706, file: !44, line: 372, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!126, !652, !594}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !706, file: !44, line: 375, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!126, !639}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !706, file: !44, line: 381, baseType: !725, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!126, !267, !652, !117, !7}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !706, file: !44, line: 383, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !706, file: !44, line: 385, baseType: !735, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!126, !267, !652, !446, !7, !7, !738, !739}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !706, file: !44, line: 388, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!126, !267, !652, !446, !7, !7, !639, !108}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !706, file: !44, line: 393, baseType: !745, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!748, !652, !748}
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !107, line: 125, baseType: !336)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !706, file: !44, line: 394, baseType: !750, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !639, !7, !7}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !706, file: !44, line: 395, baseType: !754, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!126, !639, !106}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !706, file: !44, line: 396, baseType: !758, size: 64, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !639}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !706, file: !44, line: 397, baseType: !762, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!220, !765, !787}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !767)
!767 = !{!768, !769, !770, !774, !775, !776, !779, !780}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !766, file: !44, line: 321, baseType: !267, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !766, file: !44, line: 326, baseType: !446, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !766, file: !44, line: 327, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !765, !224, !224}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !766, file: !44, line: 328, baseType: !108, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !766, file: !44, line: 329, baseType: !126, size: 32, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !766, file: !44, line: 330, baseType: !777, size: 16, offset: 288)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !331, line: 19, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !333, line: 24, baseType: !231)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !766, file: !44, line: 331, baseType: !777, size: 16, offset: 304)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !44, line: 332, baseType: !781, size: 64, offset: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !44, line: 332, size: 64, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !781, file: !44, line: 333, baseType: !7, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !781, file: !44, line: 334, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !706, file: !44, line: 402, baseType: !790, size: 64, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!126, !652, !639, !639, !5}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !706, file: !44, line: 404, baseType: !794, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!405, !639, !797}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !798, line: 305, baseType: !7)
!798 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !706, file: !44, line: 405, baseType: !758, size: 64, offset: 960)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !706, file: !44, line: 406, baseType: !721, size: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !706, file: !44, line: 407, baseType: !802, size: 64, offset: 1088)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!126, !639, !239, !239}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !706, file: !44, line: 409, baseType: !806, size: 64, offset: 1152)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !639, !809, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !706, file: !44, line: 410, baseType: !811, size: 64, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!126, !652, !639}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !706, file: !44, line: 413, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!126, !818, !267, !820}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !706, file: !44, line: 415, baseType: !822, size: 64, offset: 1344)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !267}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !44, line: 466, baseType: !239, size: 64, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !653, file: !44, line: 467, baseType: !827, size: 32, offset: 960)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !828, line: 8, baseType: !330)
!828 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !653, file: !44, line: 468, baseType: !149, offset: 992)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !653, file: !44, line: 469, baseType: !114, size: 128, offset: 1024)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !653, file: !44, line: 470, baseType: !108, size: 64, offset: 1152)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !648, file: !641, line: 87, baseType: !239, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !648, file: !641, line: 94, baseType: !239, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 96, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 96, size: 64, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !835, file: !641, line: 101, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !107, line: 143, baseType: !336)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 103, baseType: !840, size: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 103, size: 320, elements: !841)
!841 = !{!842, !852, !855, !856}
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !641, line: 104, baseType: !843, size: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !641, line: 104, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !843, file: !641, line: 105, baseType: !114, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !641, line: 106, baseType: !847, size: 128)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !641, line: 106, size: 128, elements: !848)
!848 = !{!849, !850, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !641, line: 107, baseType: !639, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !847, file: !641, line: 109, baseType: !126, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !847, file: !641, line: 110, baseType: !126, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !840, file: !641, line: 117, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !641, line: 117, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !840, file: !641, line: 119, baseType: !108, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !641, line: 120, baseType: !857, size: 64, offset: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !641, line: 120, size: 64, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !857, file: !641, line: 121, baseType: !108, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !857, file: !641, line: 122, baseType: !239, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !641, line: 123, baseType: !862, size: 32)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !641, line: 123, size: 32, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !862, file: !641, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !862, file: !641, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !862, file: !641, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 130, baseType: !868, size: 192)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 130, size: 192, elements: !869)
!869 = !{!870, !871, !872, !873, !874}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !868, file: !641, line: 131, baseType: !239, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !868, file: !641, line: 134, baseType: !342, size: 8, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !868, file: !641, line: 135, baseType: !342, size: 8, offset: 72)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !868, file: !641, line: 136, baseType: !665, size: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !868, file: !641, line: 137, baseType: !7, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 139, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 139, size: 256, elements: !877)
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !876, file: !641, line: 140, baseType: !239, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !876, file: !641, line: 141, baseType: !665, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !876, file: !641, line: 143, baseType: !114, size: 128, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 145, baseType: !882, size: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 145, size: 256, elements: !883)
!883 = !{!884, !885, !887, !888, !2254}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !882, file: !641, line: 146, baseType: !239, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !882, file: !641, line: 147, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !631, line: 509, baseType: !639)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !882, file: !641, line: 148, baseType: !239, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !641, line: 149, baseType: !889, size: 64, offset: 192)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !641, line: 149, size: 64, elements: !890)
!890 = !{!891, !2253}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !889, file: !641, line: 150, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !641, line: 388, size: 7296, elements: !894)
!894 = !{!895, !2249}
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !641, line: 389, baseType: !896, size: 7296)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !641, line: 389, size: 7296, elements: !897)
!897 = !{!898, !1016, !1017, !1018, !1022, !1023, !1024, !1025, !1026, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1067, !1075, !1078, !1124, !1125, !2233, !2234, !2237, !2238, !2239, !2242, !2243, !2244, !2247, !2248}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !896, file: !641, line: 390, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !641, line: 305, size: 1472, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !916, !917, !922, !923, !926, !1010, !1011, !1012, !1013, !1014}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !900, file: !641, line: 308, baseType: !239, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !900, file: !641, line: 309, baseType: !239, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !900, file: !641, line: 313, baseType: !899, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !900, file: !641, line: 313, baseType: !899, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !900, file: !641, line: 315, baseType: !678, size: 192, align: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !900, file: !641, line: 323, baseType: !239, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !900, file: !641, line: 327, baseType: !892, size: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !900, file: !641, line: 333, baseType: !910, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !631, line: 284, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !631, line: 284, size: 64, elements: !912)
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !911, file: !631, line: 284, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !915, line: 19, baseType: !239)
!915 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!916 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !900, file: !641, line: 334, baseType: !239, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !900, file: !641, line: 343, baseType: !918, size: 256, offset: 704)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !641, line: 340, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !918, file: !641, line: 341, baseType: !678, size: 192, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !918, file: !641, line: 342, baseType: !239, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !900, file: !641, line: 351, baseType: !114, size: 128, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !900, file: !641, line: 353, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !641, line: 353, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !900, file: !641, line: 356, baseType: !927, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !930)
!930 = !{!931, !935, !936, !940, !944, !984, !988, !992, !996, !997, !998, !1002, !1006}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !929, file: !14, line: 558, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !899}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !929, file: !14, line: 559, baseType: !932, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !929, file: !14, line: 560, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!126, !899, !239}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !929, file: !14, line: 561, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!126, !899}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !929, file: !14, line: 562, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !641, line: 682, baseType: !7)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !964, !971, !977, !978, !979, !981, !983}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !950, file: !14, line: 509, baseType: !899, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !950, file: !14, line: 511, baseType: !106, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !950, file: !14, line: 512, baseType: !239, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !950, file: !14, line: 513, baseType: !239, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !950, file: !14, line: 514, baseType: !958, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !631, line: 385, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 385, size: 64, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !960, file: !631, line: 385, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !915, line: 15, baseType: !239)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !950, file: !14, line: 516, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !631, line: 359, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 359, size: 64, elements: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !967, file: !631, line: 359, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !915, line: 16, baseType: !239)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !950, file: !14, line: 519, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !915, line: 21, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !915, line: 21, size: 64, elements: !974)
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !973, file: !915, line: 21, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !915, line: 14, baseType: !239)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !950, file: !14, line: 521, baseType: !639, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !950, file: !14, line: 522, baseType: !639, size: 64, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !950, file: !14, line: 528, baseType: !980, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !950, file: !14, line: 532, baseType: !982, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !950, file: !14, line: 536, baseType: !886, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !929, file: !14, line: 563, baseType: !985, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!948, !949, !13}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !929, file: !14, line: 565, baseType: !989, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !949, !239, !239}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !929, file: !14, line: 567, baseType: !993, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!239, !899}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !929, file: !14, line: 571, baseType: !945, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !929, file: !14, line: 574, baseType: !945, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !929, file: !14, line: 579, baseType: !999, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!126, !899, !239, !108, !126, !126}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !929, file: !14, line: 585, baseType: !1003, size: 64, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!138, !899}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !929, file: !14, line: 615, baseType: !1007, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!639, !899, !239}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !900, file: !641, line: 359, baseType: !239, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !900, file: !641, line: 361, baseType: !267, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !900, file: !641, line: 362, baseType: !108, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !900, file: !641, line: 365, baseType: !689, size: 64, offset: 1408)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !900, file: !641, line: 373, baseType: !1015, offset: 1472)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !641, line: 296, elements: !163)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !896, file: !641, line: 391, baseType: !674, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !896, file: !641, line: 392, baseType: !336, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !896, file: !641, line: 394, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!239, !267, !239, !239, !239, !239}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !896, file: !641, line: 398, baseType: !239, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !896, file: !641, line: 399, baseType: !239, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !896, file: !641, line: 405, baseType: !239, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !896, file: !641, line: 406, baseType: !239, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !896, file: !641, line: 407, baseType: !1027, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !631, line: 286, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 286, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1029, file: !631, line: 286, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !915, line: 18, baseType: !239)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !896, file: !641, line: 416, baseType: !665, size: 32, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !896, file: !641, line: 428, baseType: !665, size: 32, offset: 608)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !896, file: !641, line: 437, baseType: !665, size: 32, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !896, file: !641, line: 447, baseType: !665, size: 32, offset: 672)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !896, file: !641, line: 450, baseType: !689, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !896, file: !641, line: 452, baseType: !126, size: 32, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !896, file: !641, line: 454, baseType: !149, offset: 800)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !896, file: !641, line: 457, baseType: !685, size: 256, offset: 832)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !896, file: !641, line: 459, baseType: !114, size: 128, offset: 1088)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !896, file: !641, line: 466, baseType: !239, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !896, file: !641, line: 467, baseType: !239, size: 64, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !896, file: !641, line: 469, baseType: !239, size: 64, offset: 1344)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !896, file: !641, line: 470, baseType: !239, size: 64, offset: 1408)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !896, file: !641, line: 471, baseType: !691, size: 64, offset: 1472)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !896, file: !641, line: 472, baseType: !239, size: 64, offset: 1536)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !896, file: !641, line: 473, baseType: !239, size: 64, offset: 1600)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !896, file: !641, line: 474, baseType: !239, size: 64, offset: 1664)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !896, file: !641, line: 475, baseType: !239, size: 64, offset: 1728)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !896, file: !641, line: 477, baseType: !149, offset: 1792)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !896, file: !641, line: 478, baseType: !239, size: 64, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !896, file: !641, line: 478, baseType: !239, size: 64, offset: 1856)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !896, file: !641, line: 478, baseType: !239, size: 64, offset: 1920)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !896, file: !641, line: 478, baseType: !239, size: 64, offset: 1984)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !896, file: !641, line: 479, baseType: !239, size: 64, offset: 2048)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !896, file: !641, line: 479, baseType: !239, size: 64, offset: 2112)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !896, file: !641, line: 479, baseType: !239, size: 64, offset: 2176)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !896, file: !641, line: 480, baseType: !239, size: 64, offset: 2240)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !896, file: !641, line: 480, baseType: !239, size: 64, offset: 2304)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !896, file: !641, line: 480, baseType: !239, size: 64, offset: 2368)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !896, file: !641, line: 480, baseType: !239, size: 64, offset: 2432)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !896, file: !641, line: 482, baseType: !1064, size: 2816, offset: 2496)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2816, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 44)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !896, file: !641, line: 488, baseType: !1068, size: 256, offset: 5312)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1069, line: 60, size: 256, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1068, file: !1069, line: 61, baseType: !1072, size: 256)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 4)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !896, file: !641, line: 490, baseType: !1076, size: 64, offset: 5568)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !641, line: 490, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !896, file: !641, line: 493, baseType: !1079, size: 896, offset: 5632)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1080, line: 53, baseType: !1081)
!1080 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 13, size: 896, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1089, !1090, !1097, !1098, !1118, !1119, !1120}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1081, file: !1080, line: 18, baseType: !336, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1081, file: !1080, line: 28, baseType: !691, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1081, file: !1080, line: 31, baseType: !685, size: 256, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1081, file: !1080, line: 32, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1080, line: 32, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1081, file: !1080, line: 37, baseType: !231, size: 16, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1081, file: !1080, line: 40, baseType: !1091, size: 192, offset: 512)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1092, line: 53, size: 192, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1091, file: !1092, line: 54, baseType: !689, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1091, file: !1092, line: 55, baseType: !149, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1091, file: !1092, line: 59, baseType: !114, size: 128, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1081, file: !1080, line: 41, baseType: !108, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1081, file: !1080, line: 42, baseType: !1099, size: 64, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1102, line: 13, size: 896, elements: !1103)
!1102 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1101, file: !1102, line: 14, baseType: !108, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1101, file: !1102, line: 15, baseType: !239, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1101, file: !1102, line: 17, baseType: !239, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1101, file: !1102, line: 17, baseType: !239, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1101, file: !1102, line: 19, baseType: !224, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1101, file: !1102, line: 21, baseType: !224, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1101, file: !1102, line: 22, baseType: !224, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1101, file: !1102, line: 23, baseType: !224, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1101, file: !1102, line: 24, baseType: !224, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1101, file: !1102, line: 25, baseType: !224, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1101, file: !1102, line: 26, baseType: !224, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1101, file: !1102, line: 27, baseType: !224, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1101, file: !1102, line: 28, baseType: !224, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1101, file: !1102, line: 29, baseType: !224, size: 64, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1081, file: !1080, line: 44, baseType: !665, size: 32, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1081, file: !1080, line: 50, baseType: !777, size: 16, offset: 864)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1081, file: !1080, line: 51, baseType: !1121, size: 16, offset: 880)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !331, line: 18, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !333, line: 23, baseType: !1123)
!1123 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !896, file: !641, line: 495, baseType: !239, size: 64, offset: 6528)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !896, file: !641, line: 497, baseType: !1126, size: 64, offset: 6592)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !641, line: 381, size: 384, elements: !1128)
!1128 = !{!1129, !1130, !2232}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1127, file: !641, line: 382, baseType: !665, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1127, file: !641, line: 383, baseType: !1131, size: 128, offset: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !641, line: 376, size: 128, elements: !1132)
!1132 = !{!1133, !2230}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1131, file: !641, line: 377, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1136, line: 640, size: 48640, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1137 = !{!1138, !1144, !1146, !1147, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1182, !1193, !1278, !1279, !1280, !1291, !1292, !1294, !1295, !1296, !1297, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1376, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1414, !1416, !1417, !1418, !1430, !1431, !1432, !1433, !1434, !1435, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1459, !1464, !1648, !1649, !1650, !1651, !1655, !1658, !1661, !1664, !1667, !1670, !1772, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1818, !1819, !1820, !1821, !1822, !1827, !1828, !1829, !1832, !1833, !1836, !1839, !1842, !1845, !1888, !1891, !1892, !1971, !1972, !1975, !1976, !1979, !1980, !1981, !1985, !1986, !1987, !2000, !2001, !2002, !2012, !2017, !2020, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1135, file: !1136, line: 646, baseType: !1139, size: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1140, line: 56, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 57, baseType: !239, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1139, file: !1140, line: 58, baseType: !330, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1135, file: !1136, line: 649, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1135, file: !1136, line: 657, baseType: !108, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !1136, line: 658, baseType: !1148, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1149, line: 113, baseType: !1150)
!1149 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1149, line: 111, size: 32, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1150, file: !1149, line: 112, baseType: !665, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1136, line: 660, baseType: !7, size: 32, offset: 288)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1135, file: !1136, line: 661, baseType: !7, size: 32, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1135, file: !1136, line: 684, baseType: !126, size: 32, offset: 352)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1135, file: !1136, line: 686, baseType: !126, size: 32, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1135, file: !1136, line: 687, baseType: !126, size: 32, offset: 416)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1135, file: !1136, line: 688, baseType: !126, size: 32, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1135, file: !1136, line: 689, baseType: !7, size: 32, offset: 480)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1135, file: !1136, line: 691, baseType: !1161, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1136, line: 691, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1135, file: !1136, line: 692, baseType: !1165, size: 832, offset: 576)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1136, line: 451, size: 832, elements: !1166)
!1166 = !{!1167, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1165, file: !1136, line: 453, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1136, line: 325, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1168, file: !1136, line: 326, baseType: !239, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1168, file: !1136, line: 327, baseType: !330, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1165, file: !1136, line: 454, baseType: !678, size: 192, align: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1165, file: !1136, line: 455, baseType: !114, size: 128, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1165, file: !1136, line: 456, baseType: !7, size: 32, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1165, file: !1136, line: 458, baseType: !336, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1165, file: !1136, line: 459, baseType: !336, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1165, file: !1136, line: 460, baseType: !336, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1165, file: !1136, line: 461, baseType: !336, size: 64, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1165, file: !1136, line: 463, baseType: !336, size: 64, offset: 768)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1165, file: !1136, line: 465, baseType: !1181, offset: 832)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1136, line: 415, elements: !163)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1135, file: !1136, line: 693, baseType: !1183, size: 384, offset: 1408)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1136, line: 489, size: 384, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1183, file: !1136, line: 490, baseType: !114, size: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1183, file: !1136, line: 491, baseType: !239, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1183, file: !1136, line: 492, baseType: !239, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1183, file: !1136, line: 493, baseType: !7, size: 32, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1183, file: !1136, line: 494, baseType: !231, size: 16, offset: 288)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1183, file: !1136, line: 495, baseType: !231, size: 16, offset: 304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1183, file: !1136, line: 497, baseType: !1192, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1135, file: !1136, line: 697, baseType: !1194, size: 1792, offset: 1792)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1136, line: 507, size: 1792, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1275, !1276}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1194, file: !1136, line: 508, baseType: !678, size: 192, align: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1194, file: !1136, line: 515, baseType: !336, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1194, file: !1136, line: 516, baseType: !336, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1194, file: !1136, line: 517, baseType: !336, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1194, file: !1136, line: 518, baseType: !336, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1194, file: !1136, line: 519, baseType: !336, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1194, file: !1136, line: 526, baseType: !695, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1194, file: !1136, line: 527, baseType: !336, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !1136, line: 528, baseType: !7, size: 32, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1194, file: !1136, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1194, file: !1136, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1194, file: !1136, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1194, file: !1136, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1194, file: !1136, line: 563, baseType: !1210, size: 512, offset: 704)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1211)
!1211 = !{!1212, !1220, !1221, !1226, !1269, !1272, !1273, !1274}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1210, file: !20, line: 119, baseType: !1213, size: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1214, line: 9, size: 256, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1213, file: !1214, line: 10, baseType: !678, size: 192, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1213, file: !1214, line: 11, baseType: !1218, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1219, line: 29, baseType: !695)
!1219 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1210, file: !20, line: 120, baseType: !1218, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1210, file: !20, line: 121, baseType: !1222, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!19, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1210, file: !20, line: 122, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1229)
!1229 = !{!1230, !1250, !1251, !1254, !1259, !1260, !1264, !1268}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1228, file: !20, line: 160, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1232, file: !20, line: 215, baseType: !698)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1232, file: !20, line: 216, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1232, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1232, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1232, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1232, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1232, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1232, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1232, file: !20, line: 233, baseType: !1218, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1232, file: !20, line: 234, baseType: !1225, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1232, file: !20, line: 235, baseType: !1218, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1232, file: !20, line: 236, baseType: !1225, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1232, file: !20, line: 237, baseType: !1247, size: 4096, offset: 512)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 4096, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 8)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1228, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1228, file: !20, line: 162, baseType: !1252, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 27, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !222, line: 96, baseType: !126)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1228, file: !20, line: 163, baseType: !1255, size: 32, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !303, line: 276, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !303, line: 276, size: 32, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1256, file: !303, line: 276, baseType: !307, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1228, file: !20, line: 164, baseType: !1225, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1228, file: !20, line: 165, baseType: !1261, size: 128, offset: 256)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1214, line: 14, size: 128, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1261, file: !1214, line: 15, baseType: !670, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1228, file: !20, line: 166, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!1218}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1228, file: !20, line: 167, baseType: !1218, size: 64, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1210, file: !20, line: 123, baseType: !1270, size: 8, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !331, line: 17, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !333, line: 21, baseType: !342)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1210, file: !20, line: 124, baseType: !1270, size: 8, offset: 456)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1210, file: !20, line: 125, baseType: !1270, size: 8, offset: 464)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1210, file: !20, line: 126, baseType: !1270, size: 8, offset: 472)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1194, file: !1136, line: 572, baseType: !1210, size: 512, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1194, file: !1136, line: 580, baseType: !1277, size: 64, offset: 1728)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1135, file: !1136, line: 721, baseType: !7, size: 32, offset: 3584)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1135, file: !1136, line: 722, baseType: !126, size: 32, offset: 3616)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1135, file: !1136, line: 723, baseType: !1281, size: 64, offset: 3648)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1284, line: 17, baseType: !1285)
!1284 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1284, line: 17, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1285, file: !1284, line: 17, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 1)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1135, file: !1136, line: 724, baseType: !1283, size: 64, offset: 3712)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1135, file: !1136, line: 749, baseType: !1293, offset: 3776)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1136, line: 290, elements: !163)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1135, file: !1136, line: 751, baseType: !114, size: 128, offset: 3776)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1135, file: !1136, line: 757, baseType: !892, size: 64, offset: 3904)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1135, file: !1136, line: 758, baseType: !892, size: 64, offset: 3968)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1135, file: !1136, line: 761, baseType: !1298, size: 320, offset: 4032)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1069, line: 34, size: 320, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1298, file: !1069, line: 35, baseType: !336, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1298, file: !1069, line: 36, baseType: !1302, size: 256, offset: 64)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 256, elements: !1073)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1135, file: !1136, line: 766, baseType: !126, size: 32, offset: 4352)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1135, file: !1136, line: 767, baseType: !126, size: 32, offset: 4384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1135, file: !1136, line: 768, baseType: !126, size: 32, offset: 4416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1135, file: !1136, line: 770, baseType: !126, size: 32, offset: 4448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1135, file: !1136, line: 772, baseType: !239, size: 64, offset: 4480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1135, file: !1136, line: 775, baseType: !7, size: 32, offset: 4544)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1135, file: !1136, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1135, file: !1136, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1135, file: !1136, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1135, file: !1136, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1135, file: !1136, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1135, file: !1136, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1135, file: !1136, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1135, file: !1136, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1135, file: !1136, line: 831, baseType: !239, size: 64, offset: 4672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1135, file: !1136, line: 833, baseType: !1319, size: 384, offset: 4736)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1320)
!1320 = !{!1321, !1326}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1319, file: !25, line: 26, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!224, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !25, line: 27, baseType: !1327, size: 320, offset: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !25, line: 27, size: 320, elements: !1328)
!1328 = !{!1329, !1339, !1366}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1327, file: !25, line: 36, baseType: !1330, size: 320)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !25, line: 29, size: 320, elements: !1331)
!1331 = !{!1332, !1334, !1335, !1336, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1330, file: !25, line: 30, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1330, file: !25, line: 31, baseType: !330, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !25, line: 32, baseType: !330, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1330, file: !25, line: 33, baseType: !330, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1330, file: !25, line: 34, baseType: !336, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1330, file: !25, line: 35, baseType: !1333, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1327, file: !25, line: 46, baseType: !1340, size: 192)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !25, line: 38, size: 192, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1365}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1340, file: !25, line: 39, baseType: !1252, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1340, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !25, line: 41, baseType: !1345, size: 64, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !25, line: 41, size: 64, elements: !1346)
!1346 = !{!1347, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1345, file: !25, line: 42, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1350, line: 7, size: 128, elements: !1351)
!1350 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1349, file: !1350, line: 8, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !222, line: 93, baseType: !448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1349, file: !1350, line: 9, baseType: !448, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1345, file: !25, line: 43, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1358, line: 7, size: 64, elements: !1359)
!1358 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !{!1360, !1364}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1357, file: !1358, line: 8, baseType: !1361, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1358, line: 5, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !331, line: 20, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !333, line: 26, baseType: !126)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1357, file: !1358, line: 9, baseType: !1362, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1340, file: !25, line: 45, baseType: !336, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1327, file: !25, line: 54, baseType: !1367, size: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !25, line: 48, size: 256, elements: !1368)
!1368 = !{!1369, !1372, !1373, !1374, !1375}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1367, file: !25, line: 49, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1367, file: !25, line: 50, baseType: !126, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1367, file: !25, line: 51, baseType: !126, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1367, file: !25, line: 52, baseType: !239, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1367, file: !25, line: 53, baseType: !239, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1135, file: !1136, line: 835, baseType: !1377, size: 32, offset: 5120)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 22, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !222, line: 28, baseType: !126)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1135, file: !1136, line: 836, baseType: !1377, size: 32, offset: 5152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1135, file: !1136, line: 840, baseType: !239, size: 64, offset: 5184)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1135, file: !1136, line: 849, baseType: !1134, size: 64, offset: 5248)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1135, file: !1136, line: 852, baseType: !1134, size: 64, offset: 5312)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1135, file: !1136, line: 857, baseType: !114, size: 128, offset: 5376)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1135, file: !1136, line: 858, baseType: !114, size: 128, offset: 5504)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1135, file: !1136, line: 859, baseType: !1134, size: 64, offset: 5632)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1135, file: !1136, line: 867, baseType: !114, size: 128, offset: 5696)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1135, file: !1136, line: 868, baseType: !114, size: 128, offset: 5824)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1135, file: !1136, line: 871, baseType: !1389, size: 64, offset: 5952)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1397, !1398, !1405, !1406}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1390, file: !53, line: 61, baseType: !1148, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1390, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !53, line: 63, baseType: !149, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1390, file: !53, line: 65, baseType: !1396, size: 256, offset: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 256, elements: !1073)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1390, file: !53, line: 66, baseType: !553, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1390, file: !53, line: 68, baseType: !1399, size: 128, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1400, line: 40, baseType: !1401)
!1400 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1400, line: 36, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !1400, line: 37, baseType: !149)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1401, file: !1400, line: 38, baseType: !114, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !53, line: 69, baseType: !280, size: 128, align: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1390, file: !53, line: 70, baseType: !1407, size: 128, offset: 640)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 128, elements: !1289)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1408, file: !53, line: 55, baseType: !126, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1408, file: !53, line: 56, baseType: !1412, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1135, file: !1136, line: 872, baseType: !1415, size: 512, offset: 6016)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 512, elements: !1073)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1135, file: !1136, line: 873, baseType: !114, size: 128, offset: 6528)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1135, file: !1136, line: 874, baseType: !114, size: 128, offset: 6656)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1135, file: !1136, line: 876, baseType: !1419, size: 64, offset: 6784)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1421, line: 26, size: 192, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1420, file: !1421, line: 27, baseType: !7, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1420, file: !1421, line: 28, baseType: !1425, size: 128, offset: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1426, line: 43, size: 128, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1426, line: 44, baseType: !698)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1425, file: !1426, line: 45, baseType: !114, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1135, file: !1136, line: 879, baseType: !623, size: 64, offset: 6848)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1135, file: !1136, line: 882, baseType: !623, size: 64, offset: 6912)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1135, file: !1136, line: 884, baseType: !336, size: 64, offset: 6976)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1135, file: !1136, line: 885, baseType: !336, size: 64, offset: 7040)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1135, file: !1136, line: 890, baseType: !336, size: 64, offset: 7104)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1135, file: !1136, line: 891, baseType: !1436, size: 128, offset: 7168)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1136, line: 242, size: 128, elements: !1437)
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1436, file: !1136, line: 244, baseType: !336, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1436, file: !1136, line: 245, baseType: !336, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1436, file: !1136, line: 246, baseType: !698, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1135, file: !1136, line: 900, baseType: !239, size: 64, offset: 7296)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1135, file: !1136, line: 901, baseType: !239, size: 64, offset: 7360)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1135, file: !1136, line: 904, baseType: !336, size: 64, offset: 7424)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1135, file: !1136, line: 907, baseType: !336, size: 64, offset: 7488)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1135, file: !1136, line: 910, baseType: !239, size: 64, offset: 7552)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1135, file: !1136, line: 911, baseType: !239, size: 64, offset: 7616)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1135, file: !1136, line: 914, baseType: !1448, size: 640, offset: 7680)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1449, line: 123, size: 640, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1457, !1458}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1448, file: !1449, line: 124, baseType: !1452, size: 576)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 576, elements: !190)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1449, line: 108, size: 192, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1453, file: !1449, line: 109, baseType: !336, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1453, file: !1449, line: 110, baseType: !1261, size: 128, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1448, file: !1449, line: 125, baseType: !7, size: 32, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1448, file: !1449, line: 126, baseType: !7, size: 32, offset: 608)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1135, file: !1136, line: 917, baseType: !1460, size: 192, offset: 8320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1449, line: 134, size: 192, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1460, file: !1449, line: 135, baseType: !280, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1460, file: !1449, line: 136, baseType: !7, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1135, file: !1136, line: 923, baseType: !1465, size: 64, offset: 8512)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1468, line: 111, size: 1280, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1489, !1490, !1491, !1492, !1493, !1494, !1601, !1602, !1603, !1604, !1630, !1633, !1643}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1467, file: !1468, line: 112, baseType: !665, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1467, file: !1468, line: 120, baseType: !350, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1467, file: !1468, line: 121, baseType: !358, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1467, file: !1468, line: 122, baseType: !350, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1467, file: !1468, line: 123, baseType: !358, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1467, file: !1468, line: 124, baseType: !350, size: 32, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1467, file: !1468, line: 125, baseType: !358, size: 32, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1467, file: !1468, line: 126, baseType: !350, size: 32, offset: 224)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1467, file: !1468, line: 127, baseType: !358, size: 32, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1467, file: !1468, line: 128, baseType: !7, size: 32, offset: 288)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1467, file: !1468, line: 129, baseType: !1481, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1482, line: 26, baseType: !1483)
!1482 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1482, line: 24, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1483, file: !1482, line: 25, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 64, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 2)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1467, file: !1468, line: 130, baseType: !1481, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1467, file: !1468, line: 131, baseType: !1481, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1467, file: !1468, line: 132, baseType: !1481, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1467, file: !1468, line: 133, baseType: !1481, size: 64, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1467, file: !1468, line: 135, baseType: !342, size: 8, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1467, file: !1468, line: 137, baseType: !1495, size: 64, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1497, line: 189, size: 1664, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1500, !1503, !1508, !1509, !1512, !1513, !1518, !1519, !1520, !1521, !1523, !1524, !1525, !1526, !1527, !1565, !1586}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1496, file: !1497, line: 190, baseType: !1148, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1496, file: !1497, line: 191, baseType: !1501, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1497, line: 28, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !107, line: 98, baseType: !1362)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 192, baseType: !1504, size: 192, offset: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 192, size: 192, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1504, file: !1497, line: 193, baseType: !114, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1504, file: !1497, line: 194, baseType: !678, size: 192, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1496, file: !1497, line: 199, baseType: !685, size: 256, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1496, file: !1497, line: 200, baseType: !1510, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1497, line: 200, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1496, file: !1497, line: 201, baseType: !108, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 202, baseType: !1514, size: 64, offset: 640)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 202, size: 64, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1514, file: !1497, line: 203, baseType: !454, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1514, file: !1497, line: 204, baseType: !454, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1496, file: !1497, line: 206, baseType: !454, size: 64, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1496, file: !1497, line: 207, baseType: !350, size: 32, offset: 768)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1496, file: !1497, line: 208, baseType: !358, size: 32, offset: 800)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1496, file: !1497, line: 209, baseType: !1522, size: 32, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1497, line: 31, baseType: !474)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1496, file: !1497, line: 210, baseType: !231, size: 16, offset: 864)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1496, file: !1497, line: 211, baseType: !231, size: 16, offset: 880)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1496, file: !1497, line: 215, baseType: !1123, size: 16, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !1497, line: 222, baseType: !239, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 239, baseType: !1528, size: 320, offset: 1024)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 239, size: 320, elements: !1529)
!1529 = !{!1530, !1557}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1528, file: !1497, line: 240, baseType: !1531, size: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1497, line: 108, size: 320, elements: !1532)
!1532 = !{!1533, !1534, !1546, !1549, !1556}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1531, file: !1497, line: 110, baseType: !239, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !1497, line: 111, baseType: !1535, size: 64, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1531, file: !1497, line: 111, size: 64, elements: !1536)
!1536 = !{!1537, !1545}
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1497, line: 112, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !1497, line: 112, size: 64, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1538, file: !1497, line: 114, baseType: !777, size: 16)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1538, file: !1497, line: 115, baseType: !1542, size: 48, offset: 16)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 48, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 6)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1535, file: !1497, line: 121, baseType: !239, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1531, file: !1497, line: 123, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1497, line: 96, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1531, file: !1497, line: 124, baseType: !1550, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1497, line: 102, size: 192, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1551, file: !1497, line: 103, baseType: !280, size: 128, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1551, file: !1497, line: 104, baseType: !1148, size: 32, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1551, file: !1497, line: 105, baseType: !405, size: 8, offset: 160)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1531, file: !1497, line: 125, baseType: !138, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1497, line: 241, baseType: !1558, size: 320)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !1497, line: 241, size: 320, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1558, file: !1497, line: 242, baseType: !239, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1558, file: !1497, line: 243, baseType: !239, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1558, file: !1497, line: 244, baseType: !1547, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1558, file: !1497, line: 245, baseType: !1550, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1558, file: !1497, line: 246, baseType: !120, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 254, baseType: !1566, size: 256, offset: 1344)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 254, size: 256, elements: !1567)
!1567 = !{!1568, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1566, file: !1497, line: 255, baseType: !1569, size: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1497, line: 128, size: 256, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1569, file: !1497, line: 129, baseType: !108, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1569, file: !1497, line: 130, baseType: !1573, size: 256)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1073)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !1497, line: 256, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1566, file: !1497, line: 256, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1575, file: !1497, line: 258, baseType: !114, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1575, file: !1497, line: 259, baseType: !1579, size: 128, offset: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1580, line: 22, size: 128, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1579, file: !1580, line: 23, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1580, line: 23, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1579, file: !1580, line: 24, baseType: !239, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1496, file: !1497, line: 274, baseType: !1587, size: 64, offset: 1600)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1497, line: 170, size: 192, elements: !1589)
!1589 = !{!1590, !1599, !1600}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1588, file: !1497, line: 171, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1497, line: 165, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!126, !1495, !1595, !1597, !1495}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1588, file: !1497, line: 172, baseType: !1495, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1588, file: !1497, line: 173, baseType: !1547, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1467, file: !1468, line: 138, baseType: !1495, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1467, file: !1468, line: 139, baseType: !1495, size: 64, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1467, file: !1468, line: 140, baseType: !1495, size: 64, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1467, file: !1468, line: 145, baseType: !1605, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1607, line: 13, size: 896, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1606, file: !1607, line: 14, baseType: !1148, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1606, file: !1607, line: 15, baseType: !665, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1606, file: !1607, line: 16, baseType: !665, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1606, file: !1607, line: 21, baseType: !689, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1606, file: !1607, line: 27, baseType: !239, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1606, file: !1607, line: 28, baseType: !239, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1606, file: !1607, line: 29, baseType: !689, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1606, file: !1607, line: 32, baseType: !557, size: 128, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 33, baseType: !350, size: 32, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1606, file: !1607, line: 37, baseType: !689, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1606, file: !1607, line: 44, baseType: !1620, size: 256, offset: 640)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1621, line: 15, size: 256, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !1621, line: 16, baseType: !698)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1620, file: !1621, line: 18, baseType: !126, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1620, file: !1621, line: 19, baseType: !126, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1620, file: !1621, line: 20, baseType: !126, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1620, file: !1621, line: 21, baseType: !126, size: 32, offset: 96)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1620, file: !1621, line: 22, baseType: !239, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1621, line: 23, baseType: !239, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1467, file: !1468, line: 146, baseType: !1631, size: 64, offset: 1024)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !351, line: 18, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1467, file: !1468, line: 147, baseType: !1634, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1468, line: 25, size: 64, elements: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1635, file: !1468, line: 26, baseType: !665, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1635, file: !1468, line: 27, baseType: !126, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1635, file: !1468, line: 28, baseType: !1640, offset: 64)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 0)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !1468, line: 149, baseType: !1644, size: 128, offset: 1152)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !1468, line: 149, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1644, file: !1468, line: 150, baseType: !126, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1644, file: !1468, line: 151, baseType: !280, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1135, file: !1136, line: 926, baseType: !1465, size: 64, offset: 8576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1135, file: !1136, line: 929, baseType: !1465, size: 64, offset: 8640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1135, file: !1136, line: 933, baseType: !1495, size: 64, offset: 8704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1135, file: !1136, line: 943, baseType: !1652, size: 128, offset: 8768)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 16)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1135, file: !1136, line: 945, baseType: !1656, size: 64, offset: 8896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1136, line: 49, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1135, file: !1136, line: 956, baseType: !1659, size: 64, offset: 8960)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1136, line: 45, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1135, file: !1136, line: 959, baseType: !1662, size: 64, offset: 9024)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1136, line: 959, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1135, file: !1136, line: 962, baseType: !1665, size: 64, offset: 9088)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1136, line: 66, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1135, file: !1136, line: 966, baseType: !1668, size: 64, offset: 9152)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1136, line: 50, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1135, file: !1136, line: 969, baseType: !1671, size: 64, offset: 9216)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1673, line: 82, size: 7296, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1710, !1719, !1720, !1722, !1723, !1724, !1728, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1758, !1759, !1766, !1767, !1768, !1769, !1770, !1771}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1672, file: !1673, line: 83, baseType: !1148, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1672, file: !1673, line: 84, baseType: !665, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1672, file: !1673, line: 85, baseType: !126, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1672, file: !1673, line: 86, baseType: !114, size: 128, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1672, file: !1673, line: 88, baseType: !1399, size: 128, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1672, file: !1673, line: 91, baseType: !1134, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1672, file: !1673, line: 94, baseType: !1682, size: 192, offset: 448)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1683, line: 30, size: 192, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1682, file: !1683, line: 31, baseType: !114, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1682, file: !1683, line: 32, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1688, line: 25, baseType: !1689)
!1688 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1688, line: 23, size: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1689, file: !1688, line: 24, baseType: !1288, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1672, file: !1673, line: 97, baseType: !553, size: 64, offset: 640)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1672, file: !1673, line: 100, baseType: !126, size: 32, offset: 704)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1672, file: !1673, line: 106, baseType: !126, size: 32, offset: 736)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1672, file: !1673, line: 107, baseType: !1134, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1672, file: !1673, line: 110, baseType: !126, size: 32, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 111, baseType: !7, size: 32, offset: 864)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1672, file: !1673, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1672, file: !1673, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1672, file: !1673, line: 128, baseType: !126, size: 32, offset: 928)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1672, file: !1673, line: 129, baseType: !114, size: 128, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1672, file: !1673, line: 132, baseType: !1210, size: 512, offset: 1088)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1672, file: !1673, line: 133, baseType: !1218, size: 64, offset: 1600)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1672, file: !1673, line: 140, baseType: !1705, size: 256, offset: 1664)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 256, elements: !1487)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1673, line: 38, size: 128, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1706, file: !1673, line: 39, baseType: !336, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1706, file: !1673, line: 40, baseType: !336, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1672, file: !1673, line: 146, baseType: !1711, size: 192, offset: 1920)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1673, line: 66, size: 192, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1711, file: !1673, line: 67, baseType: !1714, size: 192)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1673, line: 47, size: 192, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1714, file: !1673, line: 48, baseType: !691, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1714, file: !1673, line: 49, baseType: !691, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1714, file: !1673, line: 50, baseType: !691, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1672, file: !1673, line: 150, baseType: !1448, size: 640, offset: 2112)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1672, file: !1673, line: 153, baseType: !1721, size: 256, offset: 2752)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 256, elements: !1073)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1672, file: !1673, line: 159, baseType: !1389, size: 64, offset: 3008)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1672, file: !1673, line: 162, baseType: !126, size: 32, offset: 3072)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1672, file: !1673, line: 164, baseType: !1725, size: 64, offset: 3136)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1727, line: 24, flags: DIFlagFwdDecl)
!1727 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1672, file: !1673, line: 175, baseType: !1729, size: 32, offset: 3200)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !303, line: 805, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 798, size: 32, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1730, file: !303, line: 803, baseType: !302, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !303, line: 804, baseType: !149, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1672, file: !1673, line: 176, baseType: !336, size: 64, offset: 3264)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1672, file: !1673, line: 176, baseType: !336, size: 64, offset: 3328)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1672, file: !1673, line: 176, baseType: !336, size: 64, offset: 3392)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1672, file: !1673, line: 176, baseType: !336, size: 64, offset: 3456)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1672, file: !1673, line: 177, baseType: !336, size: 64, offset: 3520)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1672, file: !1673, line: 178, baseType: !336, size: 64, offset: 3584)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1672, file: !1673, line: 179, baseType: !1436, size: 128, offset: 3648)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1672, file: !1673, line: 180, baseType: !239, size: 64, offset: 3776)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1672, file: !1673, line: 180, baseType: !239, size: 64, offset: 3840)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1672, file: !1673, line: 180, baseType: !239, size: 64, offset: 3904)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1672, file: !1673, line: 180, baseType: !239, size: 64, offset: 3968)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1672, file: !1673, line: 181, baseType: !239, size: 64, offset: 4032)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1672, file: !1673, line: 181, baseType: !239, size: 64, offset: 4096)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1672, file: !1673, line: 181, baseType: !239, size: 64, offset: 4160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1672, file: !1673, line: 181, baseType: !239, size: 64, offset: 4224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1672, file: !1673, line: 182, baseType: !239, size: 64, offset: 4288)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1672, file: !1673, line: 182, baseType: !239, size: 64, offset: 4352)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1672, file: !1673, line: 182, baseType: !239, size: 64, offset: 4416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1672, file: !1673, line: 182, baseType: !239, size: 64, offset: 4480)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1672, file: !1673, line: 183, baseType: !239, size: 64, offset: 4544)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1672, file: !1673, line: 183, baseType: !239, size: 64, offset: 4608)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1672, file: !1673, line: 184, baseType: !1756, offset: 4672)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1757, line: 12, elements: !163)
!1757 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1672, file: !1673, line: 192, baseType: !338, size: 64, offset: 4672)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1672, file: !1673, line: 203, baseType: !1760, size: 2048, offset: 4736)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 2048, elements: !1653)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1762, line: 43, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1761, file: !1762, line: 44, baseType: !238, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1761, file: !1762, line: 45, baseType: !238, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1672, file: !1673, line: 220, baseType: !405, size: 8, offset: 6784)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1672, file: !1673, line: 221, baseType: !1123, size: 16, offset: 6800)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1672, file: !1673, line: 222, baseType: !1123, size: 16, offset: 6816)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1672, file: !1673, line: 224, baseType: !892, size: 64, offset: 6848)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1672, file: !1673, line: 227, baseType: !1091, size: 192, offset: 6912)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1672, file: !1673, line: 233, baseType: !1091, size: 192, offset: 7104)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1135, file: !1136, line: 970, baseType: !1773, size: 64, offset: 9280)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1673, line: 20, size: 16576, elements: !1775)
!1775 = !{!1776, !1777, !1778, !1779}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1774, file: !1673, line: 21, baseType: !149)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1774, file: !1673, line: 22, baseType: !1148, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1774, file: !1673, line: 23, baseType: !1399, size: 128, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1774, file: !1673, line: 24, baseType: !1780, size: 16384, offset: 192)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1781, size: 16384, elements: !194)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1683, line: 49, size: 256, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1781, file: !1683, line: 50, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1683, line: 35, size: 256, elements: !1785)
!1785 = !{!1786, !1793, !1794, !1800}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1784, file: !1683, line: 37, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1788, line: 19, baseType: !1789)
!1788 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1788, line: 18, baseType: !1791)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !126}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1784, file: !1683, line: 38, baseType: !239, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1784, file: !1683, line: 44, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1788, line: 22, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1788, line: 21, baseType: !1798)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1784, file: !1683, line: 46, baseType: !1687, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1135, file: !1136, line: 971, baseType: !1687, size: 64, offset: 9344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1135, file: !1136, line: 972, baseType: !1687, size: 64, offset: 9408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1135, file: !1136, line: 974, baseType: !1687, size: 64, offset: 9472)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1135, file: !1136, line: 975, baseType: !1682, size: 192, offset: 9536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1135, file: !1136, line: 976, baseType: !239, size: 64, offset: 9728)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1135, file: !1136, line: 977, baseType: !236, size: 64, offset: 9792)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1135, file: !1136, line: 978, baseType: !7, size: 32, offset: 9856)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1135, file: !1136, line: 980, baseType: !283, size: 64, offset: 9920)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1135, file: !1136, line: 989, baseType: !1810, size: 128, offset: 9984)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1811, line: 35, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1810, file: !1811, line: 36, baseType: !126, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1810, file: !1811, line: 37, baseType: !665, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1810, file: !1811, line: 38, baseType: !1816, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1811, line: 23, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1135, file: !1136, line: 992, baseType: !336, size: 64, offset: 10112)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1135, file: !1136, line: 993, baseType: !336, size: 64, offset: 10176)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1135, file: !1136, line: 996, baseType: !149, offset: 10240)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1135, file: !1136, line: 999, baseType: !698, offset: 10240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1135, file: !1136, line: 1001, baseType: !1823, size: 64, offset: 10240)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1136, line: 636, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1823, file: !1136, line: 637, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1135, file: !1136, line: 1005, baseType: !670, size: 128, offset: 10304)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1135, file: !1136, line: 1007, baseType: !1134, size: 64, offset: 10432)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1135, file: !1136, line: 1009, baseType: !1830, size: 64, offset: 10496)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1136, line: 1009, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1135, file: !1136, line: 1043, baseType: !108, size: 64, offset: 10560)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1135, file: !1136, line: 1046, baseType: !1834, size: 64, offset: 10624)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1136, line: 41, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1135, file: !1136, line: 1050, baseType: !1837, size: 64, offset: 10688)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1136, line: 42, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1135, file: !1136, line: 1054, baseType: !1840, size: 64, offset: 10752)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1136, line: 55, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1135, file: !1136, line: 1056, baseType: !1843, size: 64, offset: 10816)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1136, line: 40, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1135, file: !1136, line: 1058, baseType: !1846, size: 64, offset: 10880)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1848, line: 99, size: 704, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1875, !1876}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1847, file: !1848, line: 100, baseType: !689, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1847, file: !1848, line: 101, baseType: !665, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1847, file: !1848, line: 102, baseType: !665, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1847, file: !1848, line: 105, baseType: !149, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1847, file: !1848, line: 107, baseType: !231, size: 16, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1847, file: !1848, line: 109, baseType: !657, size: 128, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1847, file: !1848, line: 110, baseType: !1857, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1848, line: 73, size: 448, elements: !1859)
!1859 = !{!1860, !1863, !1864, !1869, !1874}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1858, file: !1848, line: 74, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1848, line: 74, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1858, file: !1848, line: 75, baseType: !1846, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1848, line: 83, baseType: !1865, size: 128, offset: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1848, line: 83, size: 128, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1865, file: !1848, line: 84, baseType: !114, size: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1865, file: !1848, line: 85, baseType: !853, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1848, line: 87, baseType: !1870, size: 128, offset: 256)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1848, line: 87, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1870, file: !1848, line: 88, baseType: !557, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1870, file: !1848, line: 89, baseType: !280, size: 128, align: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !1848, line: 92, baseType: !7, size: 32, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1847, file: !1848, line: 111, baseType: !553, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1847, file: !1848, line: 113, baseType: !1877, size: 256, offset: 448)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1878, line: 102, size: 256, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !{!1880, !1881, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1877, file: !1878, line: 103, baseType: !689, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1877, file: !1878, line: 104, baseType: !114, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1877, file: !1878, line: 105, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1878, line: 21, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1135, file: !1136, line: 1061, baseType: !1889, size: 64, offset: 10944)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1136, line: 43, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1135, file: !1136, line: 1064, baseType: !239, size: 64, offset: 11008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1135, file: !1136, line: 1065, baseType: !1893, size: 64, offset: 11072)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1683, line: 14, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1683, line: 12, size: 384, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1683, line: 13, baseType: !1898, size: 384)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !1683, line: 13, size: 384, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1898, file: !1683, line: 13, baseType: !126, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1898, file: !1683, line: 13, baseType: !126, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1898, file: !1683, line: 13, baseType: !126, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1898, file: !1683, line: 13, baseType: !1904, size: 256, offset: 128)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1905, line: 32, size: 256, elements: !1906)
!1905 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1912, !1925, !1931, !1940, !1960, !1965}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1904, file: !1905, line: 37, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 34, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1908, file: !1905, line: 35, baseType: !1378, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1908, file: !1905, line: 36, baseType: !356, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1904, file: !1905, line: 45, baseType: !1913, size: 192)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 40, size: 192, elements: !1914)
!1914 = !{!1915, !1917, !1918, !1924}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1913, file: !1905, line: 41, baseType: !1916, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !222, line: 95, baseType: !126)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1913, file: !1905, line: 42, baseType: !126, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1913, file: !1905, line: 43, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1905, line: 11, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1905, line: 8, size: 64, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1920, file: !1905, line: 9, baseType: !126, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1920, file: !1905, line: 10, baseType: !108, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1913, file: !1905, line: 44, baseType: !126, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1904, file: !1905, line: 52, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 48, size: 128, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1926, file: !1905, line: 49, baseType: !1378, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1926, file: !1905, line: 50, baseType: !356, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1926, file: !1905, line: 51, baseType: !1919, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1904, file: !1905, line: 61, baseType: !1932, size: 256)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 55, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1939}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1932, file: !1905, line: 56, baseType: !1378, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1932, file: !1905, line: 57, baseType: !356, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1932, file: !1905, line: 58, baseType: !126, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1932, file: !1905, line: 59, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !222, line: 94, baseType: !223)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1932, file: !1905, line: 60, baseType: !1938, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1904, file: !1905, line: 95, baseType: !1941, size: 256)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 64, size: 256, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1941, file: !1905, line: 65, baseType: !108, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1905, line: 77, baseType: !1945, size: 192, offset: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1905, line: 77, size: 192, elements: !1946)
!1946 = !{!1947, !1948, !1955}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1945, file: !1905, line: 82, baseType: !1123, size: 16)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1945, file: !1905, line: 88, baseType: !1949, size: 192)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1905, line: 84, size: 192, elements: !1950)
!1950 = !{!1951, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1949, file: !1905, line: 85, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !1248)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1949, file: !1905, line: 86, baseType: !108, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1949, file: !1905, line: 87, baseType: !108, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1945, file: !1905, line: 93, baseType: !1956, size: 96)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1905, line: 90, size: 96, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1956, file: !1905, line: 91, baseType: !1952, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1956, file: !1905, line: 92, baseType: !332, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1904, file: !1905, line: 101, baseType: !1961, size: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 98, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1961, file: !1905, line: 99, baseType: !224, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1961, file: !1905, line: 100, baseType: !126, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1904, file: !1905, line: 108, baseType: !1966, size: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 104, size: 128, elements: !1967)
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1966, file: !1905, line: 105, baseType: !108, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1966, file: !1905, line: 106, baseType: !126, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1966, file: !1905, line: 107, baseType: !7, size: 32, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1135, file: !1136, line: 1067, baseType: !1756, offset: 11136)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1135, file: !1136, line: 1099, baseType: !1973, size: 64, offset: 11136)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1136, line: 56, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1135, file: !1136, line: 1103, baseType: !114, size: 128, offset: 11200)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1135, file: !1136, line: 1104, baseType: !1977, size: 64, offset: 11328)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1136, line: 46, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1135, file: !1136, line: 1105, baseType: !1091, size: 192, offset: 11392)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1135, file: !1136, line: 1106, baseType: !7, size: 32, offset: 11584)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1135, file: !1136, line: 1109, baseType: !1982, size: 128, offset: 11648)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1983, size: 128, elements: !1487)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1136, line: 51, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1135, file: !1136, line: 1110, baseType: !1091, size: 192, offset: 11776)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1135, file: !1136, line: 1111, baseType: !114, size: 128, offset: 11968)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1135, file: !1136, line: 1173, baseType: !1988, size: 64, offset: 12096)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1990, line: 62, size: 256, align: 256, elements: !1991)
!1990 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994, !1999}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1989, file: !1990, line: 75, baseType: !332, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1989, file: !1990, line: 90, baseType: !332, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1989, file: !1990, line: 124, baseType: !1995, size: 64, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !1990, line: 109, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1995, file: !1990, line: 110, baseType: !337, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1995, file: !1990, line: 112, baseType: !337, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !1990, line: 144, baseType: !332, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1135, file: !1136, line: 1174, baseType: !330, size: 32, offset: 12160)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1135, file: !1136, line: 1179, baseType: !239, size: 64, offset: 12224)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1135, file: !1136, line: 1182, baseType: !2003, size: 128, offset: 12288)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1069, line: 76, size: 128, elements: !2004)
!2004 = !{!2005, !2010, !2011}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2003, file: !1069, line: 85, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2007, line: 7, size: 64, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2006, file: !2007, line: 12, baseType: !1285, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2003, file: !1069, line: 88, baseType: !405, size: 8, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2003, file: !1069, line: 95, baseType: !405, size: 8, offset: 72)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1136, line: 1184, baseType: !2013, size: 128, offset: 12416)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1136, line: 1184, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2013, file: !1136, line: 1185, baseType: !1148, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2013, file: !1136, line: 1186, baseType: !280, size: 128, align: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1135, file: !1136, line: 1190, baseType: !2018, size: 64, offset: 12544)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1136, line: 53, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1135, file: !1136, line: 1192, baseType: !2021, size: 128, offset: 12608)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1069, line: 64, size: 128, elements: !2022)
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2021, file: !1069, line: 65, baseType: !639, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2021, file: !1069, line: 67, baseType: !332, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2021, file: !1069, line: 68, baseType: !332, size: 32, offset: 96)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1135, file: !1136, line: 1206, baseType: !126, size: 32, offset: 12736)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1135, file: !1136, line: 1207, baseType: !126, size: 32, offset: 12768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1135, file: !1136, line: 1209, baseType: !239, size: 64, offset: 12800)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1135, file: !1136, line: 1219, baseType: !336, size: 64, offset: 12864)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1135, file: !1136, line: 1220, baseType: !336, size: 64, offset: 12928)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1135, file: !1136, line: 1317, baseType: !126, size: 32, offset: 12992)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1135, file: !1136, line: 1319, baseType: !1134, size: 64, offset: 13056)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1135, file: !1136, line: 1322, baseType: !2034, size: 64, offset: 13120)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2036, line: 56, size: 512, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2046}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2035, file: !2036, line: 57, baseType: !2034, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2035, file: !2036, line: 58, baseType: !108, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2035, file: !2036, line: 59, baseType: !239, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2035, file: !2036, line: 60, baseType: !239, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2035, file: !2036, line: 61, baseType: !738, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2035, file: !2036, line: 62, baseType: !7, size: 32, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2035, file: !2036, line: 63, baseType: !2045, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !107, line: 153, baseType: !336)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2035, file: !2036, line: 64, baseType: !2047, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1135, file: !1136, line: 1326, baseType: !1148, size: 32, offset: 13184)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1135, file: !1136, line: 1342, baseType: !108, size: 64, offset: 13248)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1135, file: !1136, line: 1343, baseType: !337, size: 64, offset: 13312)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1135, file: !1136, line: 1344, baseType: !336, size: 64, offset: 13376)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1135, file: !1136, line: 1345, baseType: !337, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1135, file: !1136, line: 1346, baseType: !337, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1135, file: !1136, line: 1347, baseType: !337, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1135, file: !1136, line: 1348, baseType: !280, size: 128, align: 64, offset: 13504)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1135, file: !1136, line: 1358, baseType: !2058, size: 34816, offset: 13824)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2059, line: 485, size: 34816, elements: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2090, !2091, !2092, !2093, !2094, !2095, !2098, !2099, !2100}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2058, file: !2059, line: 487, baseType: !2062, size: 192)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2063, size: 192, elements: !190)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2064, line: 16, size: 64, elements: !2065)
!2064 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2063, file: !2064, line: 17, baseType: !777, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2063, file: !2064, line: 18, baseType: !777, size: 16, offset: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2063, file: !2064, line: 19, baseType: !777, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !2064, line: 19, baseType: !777, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2063, file: !2064, line: 19, baseType: !777, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2063, file: !2064, line: 19, baseType: !777, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2063, file: !2064, line: 19, baseType: !777, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2063, file: !2064, line: 20, baseType: !777, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2063, file: !2064, line: 20, baseType: !777, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2063, file: !2064, line: 20, baseType: !777, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2063, file: !2064, line: 20, baseType: !777, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2063, file: !2064, line: 20, baseType: !777, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2063, file: !2064, line: 20, baseType: !777, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2058, file: !2059, line: 491, baseType: !239, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2058, file: !2059, line: 495, baseType: !231, size: 16, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2058, file: !2059, line: 496, baseType: !231, size: 16, offset: 272)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2058, file: !2059, line: 497, baseType: !231, size: 16, offset: 288)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2058, file: !2059, line: 498, baseType: !231, size: 16, offset: 304)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2058, file: !2059, line: 502, baseType: !239, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2058, file: !2059, line: 503, baseType: !239, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2058, file: !2059, line: 514, baseType: !2087, size: 256, offset: 448)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, size: 256, elements: !1073)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2059, line: 483, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2058, file: !2059, line: 516, baseType: !239, size: 64, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2058, file: !2059, line: 518, baseType: !239, size: 64, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2058, file: !2059, line: 520, baseType: !239, size: 64, offset: 832)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2058, file: !2059, line: 521, baseType: !239, size: 64, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2058, file: !2059, line: 522, baseType: !239, size: 64, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2058, file: !2059, line: 528, baseType: !2096, size: 64, offset: 1024)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2059, line: 10, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2058, file: !2059, line: 535, baseType: !239, size: 64, offset: 1088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2058, file: !2059, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2058, file: !2059, line: 540, baseType: !2101, size: 33280, offset: 1536)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2102, line: 317, size: 33280, elements: !2103)
!2102 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2101, file: !2102, line: 330, baseType: !7, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2101, file: !2102, line: 337, baseType: !239, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2101, file: !2102, line: 348, baseType: !2107, size: 32768, offset: 512)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2102, line: 304, size: 32768, elements: !2108)
!2108 = !{!2109, !2124, !2163, !2213, !2226}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2107, file: !2102, line: 305, baseType: !2110, size: 896)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2102, line: 12, size: 896, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2123}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2110, file: !2102, line: 13, baseType: !330, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2110, file: !2102, line: 14, baseType: !330, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2110, file: !2102, line: 15, baseType: !330, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2110, file: !2102, line: 16, baseType: !330, size: 32, offset: 96)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2110, file: !2102, line: 17, baseType: !330, size: 32, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2110, file: !2102, line: 18, baseType: !330, size: 32, offset: 160)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2110, file: !2102, line: 19, baseType: !330, size: 32, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2110, file: !2102, line: 22, baseType: !2120, size: 640, offset: 224)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 640, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 20)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2110, file: !2102, line: 25, baseType: !330, size: 32, offset: 864)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2107, file: !2102, line: 306, baseType: !2125, size: 4096, align: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2102, line: 34, size: 4096, align: 128, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2146, !2147, !2148, !2152, !2154, !2158}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2125, file: !2102, line: 35, baseType: !777, size: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2125, file: !2102, line: 36, baseType: !777, size: 16, offset: 16)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2125, file: !2102, line: 37, baseType: !777, size: 16, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2125, file: !2102, line: 38, baseType: !777, size: 16, offset: 48)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2102, line: 39, baseType: !2132, size: 128, offset: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2102, line: 39, size: 128, elements: !2133)
!2133 = !{!2134, !2139}
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !2102, line: 40, baseType: !2135, size: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !2102, line: 40, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2135, file: !2102, line: 41, baseType: !336, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2135, file: !2102, line: 42, baseType: !336, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !2102, line: 44, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !2102, line: 44, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2140, file: !2102, line: 45, baseType: !330, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2140, file: !2102, line: 46, baseType: !330, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2140, file: !2102, line: 47, baseType: !330, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2140, file: !2102, line: 48, baseType: !330, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2125, file: !2102, line: 51, baseType: !330, size: 32, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2125, file: !2102, line: 52, baseType: !330, size: 32, offset: 224)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2125, file: !2102, line: 55, baseType: !2149, size: 1024, offset: 256)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 1024, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2125, file: !2102, line: 58, baseType: !2153, size: 2048, offset: 1280)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 2048, elements: !194)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2125, file: !2102, line: 60, baseType: !2155, size: 384, offset: 3328)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, elements: !2156)
!2156 = !{!2157}
!2157 = !DISubrange(count: 12)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2102, line: 62, baseType: !2159, size: 384, offset: 3712)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2102, line: 62, size: 384, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2159, file: !2102, line: 63, baseType: !2155, size: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2159, file: !2102, line: 64, baseType: !2155, size: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2107, file: !2102, line: 307, baseType: !2164, size: 1088)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2102, line: 79, size: 1088, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2212}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2164, file: !2102, line: 80, baseType: !330, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2164, file: !2102, line: 81, baseType: !330, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2164, file: !2102, line: 82, baseType: !330, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2164, file: !2102, line: 83, baseType: !330, size: 32, offset: 96)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2164, file: !2102, line: 84, baseType: !330, size: 32, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2164, file: !2102, line: 85, baseType: !330, size: 32, offset: 160)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2164, file: !2102, line: 86, baseType: !330, size: 32, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2164, file: !2102, line: 88, baseType: !2120, size: 640, offset: 224)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2164, file: !2102, line: 89, baseType: !1270, size: 8, offset: 864)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2164, file: !2102, line: 90, baseType: !1270, size: 8, offset: 872)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2164, file: !2102, line: 91, baseType: !1270, size: 8, offset: 880)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2164, file: !2102, line: 92, baseType: !1270, size: 8, offset: 888)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2164, file: !2102, line: 93, baseType: !1270, size: 8, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2164, file: !2102, line: 94, baseType: !1270, size: 8, offset: 904)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2164, file: !2102, line: 95, baseType: !2181, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2183, line: 11, size: 128, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2182, file: !2183, line: 12, baseType: !224, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2182, file: !2183, line: 13, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2189, line: 56, size: 1344, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2188, file: !2189, line: 61, baseType: !239, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2188, file: !2189, line: 62, baseType: !239, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2188, file: !2189, line: 63, baseType: !239, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2188, file: !2189, line: 64, baseType: !239, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2188, file: !2189, line: 65, baseType: !239, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2188, file: !2189, line: 66, baseType: !239, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2188, file: !2189, line: 68, baseType: !239, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2188, file: !2189, line: 69, baseType: !239, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2188, file: !2189, line: 70, baseType: !239, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2188, file: !2189, line: 71, baseType: !239, size: 64, offset: 576)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2188, file: !2189, line: 72, baseType: !239, size: 64, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2188, file: !2189, line: 73, baseType: !239, size: 64, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2188, file: !2189, line: 74, baseType: !239, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2188, file: !2189, line: 75, baseType: !239, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2188, file: !2189, line: 76, baseType: !239, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2188, file: !2189, line: 81, baseType: !239, size: 64, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2188, file: !2189, line: 83, baseType: !239, size: 64, offset: 1024)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2188, file: !2189, line: 84, baseType: !239, size: 64, offset: 1088)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2188, file: !2189, line: 85, baseType: !239, size: 64, offset: 1152)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2188, file: !2189, line: 86, baseType: !239, size: 64, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2188, file: !2189, line: 87, baseType: !239, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2164, file: !2102, line: 96, baseType: !330, size: 32, offset: 1024)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2107, file: !2102, line: 308, baseType: !2214, size: 4608, align: 512)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2102, line: 289, size: 4608, align: 512, elements: !2215)
!2215 = !{!2216, !2217, !2224}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2214, file: !2102, line: 290, baseType: !2125, size: 4096, align: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2214, file: !2102, line: 291, baseType: !2218, size: 512, offset: 4096)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2102, line: 268, size: 512, elements: !2219)
!2219 = !{!2220, !2221, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2218, file: !2102, line: 269, baseType: !336, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2218, file: !2102, line: 270, baseType: !336, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2218, file: !2102, line: 271, baseType: !2223, size: 384, offset: 128)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, elements: !1543)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2214, file: !2102, line: 292, baseType: !2225, offset: 4608)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, elements: !1641)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2107, file: !2102, line: 309, baseType: !2227, size: 32768)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 32768, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 4096)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1131, file: !641, line: 378, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1127, file: !641, line: 384, baseType: !1420, size: 192, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !896, file: !641, line: 500, baseType: !149, offset: 6656)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !896, file: !641, line: 501, baseType: !2235, size: 64, offset: 6656)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !641, line: 387, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !896, file: !641, line: 516, baseType: !1631, size: 64, offset: 6720)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !896, file: !641, line: 519, baseType: !267, size: 64, offset: 6784)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !896, file: !641, line: 521, baseType: !2240, size: 64, offset: 6848)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !641, line: 521, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !896, file: !641, line: 545, baseType: !665, size: 32, offset: 6912)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !896, file: !641, line: 548, baseType: !405, size: 8, offset: 6944)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !896, file: !641, line: 550, baseType: !2245, offset: 6952)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2246, line: 142, elements: !163)
!2246 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !896, file: !641, line: 554, baseType: !1877, size: 256, offset: 6976)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !896, file: !641, line: 557, baseType: !330, size: 32, offset: 7232)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !893, file: !641, line: 565, baseType: !2250, offset: 7296)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: -1)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !889, file: !641, line: 151, baseType: !665, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !882, file: !641, line: 156, baseType: !149, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !641, line: 159, baseType: !2256, size: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !641, line: 159, size: 128, elements: !2257)
!2257 = !{!2258, !2322}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2256, file: !641, line: 161, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2261)
!2261 = !{!2262, !2272, !2293, !2294, !2295, !2296, !2297, !2309, !2310, !2311}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2260, file: !31, line: 111, baseType: !2263, size: 384)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2264)
!2264 = !{!2265, !2267, !2268, !2269, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2263, file: !31, line: 20, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2263, file: !31, line: 21, baseType: !2266, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2263, file: !31, line: 22, baseType: !2266, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2263, file: !31, line: 23, baseType: !239, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2263, file: !31, line: 24, baseType: !239, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2263, file: !31, line: 25, baseType: !239, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2260, file: !31, line: 112, baseType: !2273, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2275, line: 105, size: 128, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2274, file: !2275, line: 110, baseType: !239, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2274, file: !2275, line: 118, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2275, line: 95, size: 448, elements: !2281)
!2281 = !{!2282, !2283, !2288, !2289, !2290, !2291, !2292}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2280, file: !2275, line: 96, baseType: !689, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2280, file: !2275, line: 97, baseType: !2284, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2275, line: 60, baseType: !2286)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2273}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2280, file: !2275, line: 98, baseType: !2284, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2280, file: !2275, line: 99, baseType: !405, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2280, file: !2275, line: 100, baseType: !405, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2280, file: !2275, line: 101, baseType: !280, size: 128, align: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2280, file: !2275, line: 102, baseType: !2273, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2260, file: !31, line: 113, baseType: !2274, size: 128, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2260, file: !31, line: 114, baseType: !1420, size: 192, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2260, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2260, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2260, file: !31, line: 117, baseType: !2298, size: 64, offset: 832)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2301)
!2301 = !{!2302, !2303, !2307, !2308}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2300, file: !31, line: 73, baseType: !758, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2300, file: !31, line: 78, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2259}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2300, file: !31, line: 83, baseType: !2304, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2300, file: !31, line: 89, baseType: !945, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2260, file: !31, line: 118, baseType: !108, size: 64, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2260, file: !31, line: 119, baseType: !126, size: 32, offset: 960)
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !31, line: 120, baseType: !2312, size: 128, offset: 1024)
!2312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !31, line: 120, size: 128, elements: !2313)
!2313 = !{!2314, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2312, file: !31, line: 121, baseType: !2315, size: 128)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2316, line: 6, size: 128, elements: !2317)
!2316 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2315, file: !2316, line: 7, baseType: !336, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2315, file: !2316, line: 8, baseType: !336, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2312, file: !31, line: 122, baseType: !2321)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, elements: !1641)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2256, file: !641, line: 162, baseType: !108, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !645, file: !641, line: 176, baseType: !280, size: 128, align: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !641, line: 179, baseType: !2325, size: 32, offset: 384)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !641, line: 179, size: 32, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2325, file: !641, line: 184, baseType: !665, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2325, file: !641, line: 192, baseType: !7, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2325, file: !641, line: 194, baseType: !7, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2325, file: !641, line: 195, baseType: !126, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !640, file: !641, line: 199, baseType: !665, size: 32, offset: 416)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !575, file: !44, line: 1964, baseType: !2333, size: 64, offset: 1344)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!224, !514, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2338, line: 12, size: 256, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !{!2340, !2341, !2342, !2343, !2344}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2337, file: !2338, line: 13, baseType: !106, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2337, file: !2338, line: 16, baseType: !126, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2337, file: !2338, line: 23, baseType: !239, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2337, file: !2338, line: 30, baseType: !239, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2337, file: !2338, line: 33, baseType: !2345, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !641, line: 27, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !575, file: !44, line: 1966, baseType: !2333, size: 64, offset: 1408)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !515, file: !44, line: 1424, baseType: !2349, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2352)
!2352 = !{!2353, !2399, !2403, !2407, !2408, !2409, !2410, !2411, !2416, !2421, !2425}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2351, file: !38, line: 323, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!126, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2384, !2385, !2386}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2358, file: !38, line: 295, baseType: !557, size: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2358, file: !38, line: 296, baseType: !114, size: 128, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2358, file: !38, line: 297, baseType: !114, size: 128, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2358, file: !38, line: 298, baseType: !114, size: 128, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2358, file: !38, line: 299, baseType: !1091, size: 192, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2358, file: !38, line: 300, baseType: !149, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2358, file: !38, line: 301, baseType: !665, size: 32, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2358, file: !38, line: 302, baseType: !514, size: 64, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2358, file: !38, line: 303, baseType: !2369, size: 64, offset: 832)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2370)
!2370 = !{!2371, !2383}
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !38, line: 69, baseType: !2372, size: 32)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !38, line: 69, size: 32, elements: !2373)
!2373 = !{!2374, !2375, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2372, file: !38, line: 70, baseType: !350, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2372, file: !38, line: 71, baseType: !358, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2372, file: !38, line: 72, baseType: !2377, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2378, line: 24, baseType: !2379)
!2378 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2378, line: 22, size: 32, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2379, file: !2378, line: 23, baseType: !2382, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2378, line: 20, baseType: !356)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2369, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2358, file: !38, line: 304, baseType: !446, size: 64, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2358, file: !38, line: 305, baseType: !239, size: 64, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2358, file: !38, line: 306, baseType: !2387, size: 576, offset: 1024)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2388)
!2388 = !{!2389, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2387, file: !38, line: 206, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2387, file: !38, line: 207, baseType: !2390, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2387, file: !38, line: 208, baseType: !2390, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2387, file: !38, line: 209, baseType: !2390, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2387, file: !38, line: 210, baseType: !2390, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2387, file: !38, line: 211, baseType: !2390, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2387, file: !38, line: 212, baseType: !2390, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2387, file: !38, line: 213, baseType: !454, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2387, file: !38, line: 214, baseType: !454, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2351, file: !38, line: 324, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!2357, !514, !126}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2351, file: !38, line: 325, baseType: !2404, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2357}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2351, file: !38, line: 326, baseType: !2354, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2351, file: !38, line: 327, baseType: !2354, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2351, file: !38, line: 328, baseType: !2354, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2351, file: !38, line: 329, baseType: !603, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2351, file: !38, line: 332, baseType: !2412, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2415, !344}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2351, file: !38, line: 333, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!126, !344, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2351, file: !38, line: 335, baseType: !2422, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!126, !344, !2415}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2351, file: !38, line: 337, baseType: !2426, size: 64, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!126, !514, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !515, file: !44, line: 1425, baseType: !2431, size: 64, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2434)
!2434 = !{!2435, !2439, !2440, !2444, !2445, !2446, !2461, !2484, !2488, !2489, !2512}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2433, file: !38, line: 429, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!126, !514, !126, !126, !464}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2433, file: !38, line: 430, baseType: !603, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2433, file: !38, line: 431, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!126, !514, !7}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2433, file: !38, line: 432, baseType: !2441, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2433, file: !38, line: 433, baseType: !603, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2433, file: !38, line: 434, baseType: !2447, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!126, !514, !126, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2451, file: !38, line: 416, baseType: !126, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2451, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2451, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2451, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2451, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2451, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2451, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2451, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2433, file: !38, line: 435, baseType: !2462, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!126, !514, !2369, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2466, file: !38, line: 344, baseType: !126, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2466, file: !38, line: 345, baseType: !336, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2466, file: !38, line: 346, baseType: !336, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2466, file: !38, line: 347, baseType: !336, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2466, file: !38, line: 348, baseType: !336, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2466, file: !38, line: 349, baseType: !336, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2466, file: !38, line: 350, baseType: !336, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2466, file: !38, line: 351, baseType: !695, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2466, file: !38, line: 353, baseType: !695, size: 64, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2466, file: !38, line: 354, baseType: !126, size: 32, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2466, file: !38, line: 355, baseType: !126, size: 32, offset: 608)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2466, file: !38, line: 356, baseType: !336, size: 64, offset: 640)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2466, file: !38, line: 357, baseType: !336, size: 64, offset: 704)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2466, file: !38, line: 358, baseType: !336, size: 64, offset: 768)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2466, file: !38, line: 359, baseType: !695, size: 64, offset: 832)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2466, file: !38, line: 360, baseType: !126, size: 32, offset: 896)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2433, file: !38, line: 436, baseType: !2485, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!126, !514, !2429, !2465}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2433, file: !38, line: 438, baseType: !2462, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2433, file: !38, line: 439, baseType: !2490, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!126, !514, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2495)
!2495 = !{!2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2494, file: !38, line: 410, baseType: !7, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2494, file: !38, line: 411, baseType: !2498, size: 1344, offset: 64)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 1344, elements: !190)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2511}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2499, file: !38, line: 396, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2499, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2499, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2499, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2499, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2499, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2499, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2499, file: !38, line: 404, baseType: !338, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2499, file: !38, line: 405, baseType: !2510, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !107, line: 126, baseType: !336)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2499, file: !38, line: 406, baseType: !2510, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2433, file: !38, line: 440, baseType: !2441, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !515, file: !44, line: 1426, baseType: !2514, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !515, file: !44, line: 1427, baseType: !239, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !515, file: !44, line: 1428, baseType: !239, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !515, file: !44, line: 1429, baseType: !239, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !515, file: !44, line: 1430, baseType: !297, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !515, file: !44, line: 1431, baseType: !685, size: 256, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !515, file: !44, line: 1432, baseType: !126, size: 32, offset: 1152)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !515, file: !44, line: 1433, baseType: !665, size: 32, offset: 1184)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !515, file: !44, line: 1437, baseType: !2525, size: 64, offset: 1216)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !515, file: !44, line: 1449, baseType: !2530, size: 64, offset: 1280)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !313, line: 34, size: 64, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2530, file: !313, line: 35, baseType: !316, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !515, file: !44, line: 1450, baseType: !114, size: 128, offset: 1344)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !515, file: !44, line: 1451, baseType: !2535, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !515, file: !44, line: 1452, baseType: !1843, size: 64, offset: 1536)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !515, file: !44, line: 1453, baseType: !2539, size: 64, offset: 1600)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !515, file: !44, line: 1454, baseType: !557, size: 128, offset: 1664)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !515, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !515, file: !44, line: 1456, baseType: !2544, size: 2432, offset: 1856)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2550, !2582}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !38, line: 519, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2544, file: !38, line: 520, baseType: !685, size: 256, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2544, file: !38, line: 521, baseType: !2549, size: 192, offset: 320)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !190)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2544, file: !38, line: 522, baseType: !2551, size: 1728, offset: 512)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 1728, elements: !190)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2553)
!2553 = !{!2554, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2552, file: !38, line: 223, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2557)
!2557 = !{!2558, !2559, !2572, !2573}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2556, file: !38, line: 444, baseType: !126, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2556, file: !38, line: 445, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2562, file: !38, line: 311, baseType: !603, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2562, file: !38, line: 312, baseType: !603, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2562, file: !38, line: 313, baseType: !603, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2562, file: !38, line: 314, baseType: !603, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2562, file: !38, line: 315, baseType: !2354, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2562, file: !38, line: 316, baseType: !2354, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2562, file: !38, line: 317, baseType: !2354, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2562, file: !38, line: 318, baseType: !2426, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2556, file: !38, line: 446, baseType: !548, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2556, file: !38, line: 447, baseType: !2555, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2552, file: !38, line: 224, baseType: !126, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2552, file: !38, line: 226, baseType: !114, size: 128, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2552, file: !38, line: 227, baseType: !239, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2552, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2552, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2552, file: !38, line: 230, baseType: !2390, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2552, file: !38, line: 231, baseType: !2390, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2552, file: !38, line: 232, baseType: !108, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2544, file: !38, line: 523, baseType: !2583, size: 192, offset: 2240)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2560, size: 192, elements: !190)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !515, file: !44, line: 1458, baseType: !2585, size: 2112, offset: 4288)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2585, file: !44, line: 1411, baseType: !126, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2585, file: !44, line: 1412, baseType: !1399, size: 128, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2585, file: !44, line: 1413, baseType: !2590, size: 1920, offset: 192)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 1920, elements: !190)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2592, line: 12, size: 640, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594, !2602, !2604, !2609, !2610}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2591, file: !2592, line: 13, baseType: !2595, size: 320)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2596, line: 17, size: 320, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2595, file: !2596, line: 18, baseType: !126, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2595, file: !2596, line: 19, baseType: !126, size: 32, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2595, file: !2596, line: 20, baseType: !1399, size: 128, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2595, file: !2596, line: 22, baseType: !280, size: 128, align: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2591, file: !2592, line: 14, baseType: !2603, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2591, file: !2592, line: 15, baseType: !2605, size: 64, offset: 384)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2606, line: 16, size: 64, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2605, file: !2606, line: 17, baseType: !1134, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2591, file: !2592, line: 16, baseType: !1399, size: 128, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2591, file: !2592, line: 17, baseType: !665, size: 32, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !515, file: !44, line: 1465, baseType: !108, size: 64, offset: 6400)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !515, file: !44, line: 1468, baseType: !330, size: 32, offset: 6464)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !515, file: !44, line: 1470, baseType: !454, size: 64, offset: 6528)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !515, file: !44, line: 1471, baseType: !454, size: 64, offset: 6592)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !515, file: !44, line: 1473, baseType: !332, size: 32, offset: 6656)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !515, file: !44, line: 1474, baseType: !2617, size: 64, offset: 6720)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !515, file: !44, line: 1477, baseType: !2620, size: 256, offset: 6784)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !2150)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !515, file: !44, line: 1478, baseType: !2622, size: 128, offset: 7040)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2623, line: 18, baseType: !2624)
!2623 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2623, line: 16, size: 128, elements: !2625)
!2625 = !{!2626}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2624, file: !2623, line: 17, baseType: !2627, size: 128)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 128, elements: !1653)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !515, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !515, file: !44, line: 1481, baseType: !2630, size: 32, offset: 7200)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !107, line: 150, baseType: !7)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !515, file: !44, line: 1487, baseType: !1091, size: 192, offset: 7232)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !515, file: !44, line: 1493, baseType: !138, size: 64, offset: 7424)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !515, file: !44, line: 1495, baseType: !2634, size: 64, offset: 7488)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !295, line: 135, size: 1024, align: 512, elements: !2637)
!2637 = !{!2638, !2642, !2643, !2650, !2656, !2660, !2664, !2668, !2669, !2673, !2677, !2682, !2686}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2636, file: !295, line: 136, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!126, !297, !7}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2636, file: !295, line: 137, baseType: !2639, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2636, file: !295, line: 138, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!126, !2647, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2636, file: !295, line: 139, baseType: !2651, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!126, !2647, !7, !138, !2654}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2636, file: !295, line: 141, baseType: !2657, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!126, !2647}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2636, file: !295, line: 142, baseType: !2661, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!126, !297}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2636, file: !295, line: 143, baseType: !2665, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{null, !297}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2636, file: !295, line: 144, baseType: !2665, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2636, file: !295, line: 145, baseType: !2670, size: 64, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !297, !344}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2636, file: !295, line: 146, baseType: !2674, size: 64, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!120, !297, !120, !126}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2636, file: !295, line: 147, baseType: !2678, size: 64, offset: 640)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!293, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2636, file: !295, line: 148, baseType: !2683, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!126, !464, !405}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2636, file: !295, line: 149, baseType: !2687, size: 64, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!297, !297, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !515, file: !44, line: 1500, baseType: !126, size: 32, offset: 7552)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !515, file: !44, line: 1502, baseType: !2694, size: 448, offset: 7616)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2338, line: 60, size: 448, elements: !2695)
!2695 = !{!2696, !2701, !2702, !2703, !2704, !2705, !2706}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2694, file: !2338, line: 61, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!239, !2700, !2336}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2694, file: !2338, line: 63, baseType: !2697, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2694, file: !2338, line: 66, baseType: !224, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2694, file: !2338, line: 67, baseType: !126, size: 32, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !2338, line: 68, baseType: !7, size: 32, offset: 224)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2694, file: !2338, line: 71, baseType: !114, size: 128, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2694, file: !2338, line: 77, baseType: !2707, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !515, file: !44, line: 1505, baseType: !689, size: 64, offset: 8064)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !515, file: !44, line: 1508, baseType: !689, size: 64, offset: 8128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !515, file: !44, line: 1511, baseType: !126, size: 32, offset: 8192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !515, file: !44, line: 1514, baseType: !827, size: 32, offset: 8224)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !515, file: !44, line: 1517, baseType: !2713, size: 64, offset: 8256)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1878, line: 18, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !515, file: !44, line: 1518, baseType: !553, size: 64, offset: 8320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !515, file: !44, line: 1525, baseType: !1631, size: 64, offset: 8384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !515, file: !44, line: 1532, baseType: !2718, size: 64, offset: 8448)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2719, line: 52, size: 64, elements: !2720)
!2719 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2720 = !{!2721}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2718, file: !2719, line: 53, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2719, line: 40, size: 256, elements: !2724)
!2724 = !{!2725, !2726, !2731}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2723, file: !2719, line: 42, baseType: !149)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2723, file: !2719, line: 44, baseType: !2727, size: 192)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2719, line: 28, size: 192, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2727, file: !2719, line: 29, baseType: !114, size: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2727, file: !2719, line: 31, baseType: !224, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2723, file: !2719, line: 49, baseType: !224, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !515, file: !44, line: 1533, baseType: !2718, size: 64, offset: 8512)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !515, file: !44, line: 1534, baseType: !280, size: 128, align: 64, offset: 8576)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !515, file: !44, line: 1535, baseType: !1877, size: 256, offset: 8704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !515, file: !44, line: 1537, baseType: !1091, size: 192, offset: 8960)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !515, file: !44, line: 1542, baseType: !126, size: 32, offset: 9152)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !515, file: !44, line: 1545, baseType: !149, offset: 9184)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !515, file: !44, line: 1546, baseType: !114, size: 128, offset: 9216)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !515, file: !44, line: 1548, baseType: !149, offset: 9344)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !515, file: !44, line: 1549, baseType: !114, size: 128, offset: 9344)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !345, file: !44, line: 624, baseType: !652, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !345, file: !44, line: 631, baseType: !239, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !44, line: 639, baseType: !2744, size: 32, offset: 384)
!2744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 639, size: 32, elements: !2745)
!2745 = !{!2746, !2748}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2744, file: !44, line: 640, baseType: !2747, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2744, file: !44, line: 641, baseType: !7, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !345, file: !44, line: 643, baseType: !428, size: 32, offset: 416)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !345, file: !44, line: 644, baseType: !446, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !345, file: !44, line: 645, baseType: !450, size: 128, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !345, file: !44, line: 646, baseType: !450, size: 128, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !345, file: !44, line: 647, baseType: !450, size: 128, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !345, file: !44, line: 648, baseType: !149, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !345, file: !44, line: 649, baseType: !231, size: 16, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !345, file: !44, line: 650, baseType: !1270, size: 8, offset: 912)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !345, file: !44, line: 651, baseType: !1270, size: 8, offset: 920)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !345, file: !44, line: 652, baseType: !2510, size: 64, offset: 960)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !345, file: !44, line: 659, baseType: !239, size: 64, offset: 1024)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !345, file: !44, line: 660, baseType: !685, size: 256, offset: 1088)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !345, file: !44, line: 662, baseType: !239, size: 64, offset: 1344)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !345, file: !44, line: 663, baseType: !239, size: 64, offset: 1408)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !345, file: !44, line: 665, baseType: !557, size: 128, offset: 1472)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !345, file: !44, line: 666, baseType: !114, size: 128, offset: 1600)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !345, file: !44, line: 675, baseType: !114, size: 128, offset: 1728)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !345, file: !44, line: 676, baseType: !114, size: 128, offset: 1856)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !345, file: !44, line: 677, baseType: !114, size: 128, offset: 1984)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !44, line: 678, baseType: !2769, size: 128, offset: 2112)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 678, size: 128, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2769, file: !44, line: 679, baseType: !553, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2769, file: !44, line: 680, baseType: !280, size: 128, align: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !345, file: !44, line: 682, baseType: !691, size: 64, offset: 2240)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !345, file: !44, line: 683, baseType: !691, size: 64, offset: 2304)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !345, file: !44, line: 684, baseType: !665, size: 32, offset: 2368)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !345, file: !44, line: 685, baseType: !665, size: 32, offset: 2400)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !345, file: !44, line: 686, baseType: !665, size: 32, offset: 2432)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !345, file: !44, line: 688, baseType: !665, size: 32, offset: 2464)
!2779 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !44, line: 690, baseType: !2780, size: 64, offset: 2496)
!2780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 690, size: 64, elements: !2781)
!2781 = !{!2782, !3005}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2780, file: !44, line: 691, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2786)
!2786 = !{!2787, !2788, !2792, !2797, !2801, !2802, !2803, !2807, !2820, !2821, !2829, !2833, !2834, !2838, !2839, !2843, !2848, !2849, !2853, !2857, !2965, !2969, !2970, !2974, !2975, !2979, !2983, !2988, !2992, !2996, !3000, !3004}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2785, file: !44, line: 1823, baseType: !548, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2785, file: !44, line: 1824, baseType: !2789, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!446, !267, !446, !126}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2785, file: !44, line: 1825, baseType: !2793, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!220, !267, !120, !236, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2785, file: !44, line: 1826, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!220, !267, !138, !236, !2796}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2785, file: !44, line: 1827, baseType: !762, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2785, file: !44, line: 1828, baseType: !762, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2785, file: !44, line: 1829, baseType: !2804, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!126, !765, !405}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2785, file: !44, line: 1830, baseType: !2808, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!126, !267, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2813)
!2813 = !{!2814, !2819}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2812, file: !44, line: 1777, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!126, !2811, !138, !126, !446, !336, !7}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2812, file: !44, line: 1778, baseType: !446, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2785, file: !44, line: 1831, baseType: !2808, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2785, file: !44, line: 1832, baseType: !2822, size: 64, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!2825, !267, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2826, line: 52, baseType: !7)
!2826 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !534, line: 27, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2785, file: !44, line: 1833, baseType: !2830, size: 64, offset: 640)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!224, !267, !7, !239}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2785, file: !44, line: 1834, baseType: !2830, size: 64, offset: 704)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2785, file: !44, line: 1835, baseType: !2835, size: 64, offset: 768)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!126, !267, !899}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2785, file: !44, line: 1836, baseType: !239, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2785, file: !44, line: 1837, baseType: !2840, size: 64, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!126, !344, !267}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2785, file: !44, line: 1838, baseType: !2844, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!126, !267, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !108)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2785, file: !44, line: 1839, baseType: !2840, size: 64, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2785, file: !44, line: 1840, baseType: !2850, size: 64, offset: 1088)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!126, !267, !446, !446, !126}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2785, file: !44, line: 1841, baseType: !2854, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!126, !126, !267, !126}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2785, file: !44, line: 1842, baseType: !2858, size: 64, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!126, !267, !126, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2895, !2896, !2897, !2910, !2941}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2862, file: !44, line: 1063, baseType: !2861, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2862, file: !44, line: 1064, baseType: !114, size: 128, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2862, file: !44, line: 1065, baseType: !557, size: 128, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2862, file: !44, line: 1066, baseType: !114, size: 128, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2862, file: !44, line: 1069, baseType: !114, size: 128, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2862, file: !44, line: 1072, baseType: !2847, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2862, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2862, file: !44, line: 1074, baseType: !342, size: 8, offset: 672)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2862, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2862, file: !44, line: 1076, baseType: !126, size: 32, offset: 736)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2862, file: !44, line: 1077, baseType: !1399, size: 128, offset: 768)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2862, file: !44, line: 1078, baseType: !267, size: 64, offset: 896)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2862, file: !44, line: 1079, baseType: !446, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2862, file: !44, line: 1080, baseType: !446, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2862, file: !44, line: 1082, baseType: !2879, size: 64, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2881)
!2881 = !{!2882, !2890, !2891, !2892, !2893, !2894}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2880, file: !44, line: 1315, baseType: !2883)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2884, line: 20, baseType: !2885)
!2884 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2884, line: 11, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2885, file: !2884, line: 12, baseType: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !161, line: 33, baseType: !2889)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 31, elements: !163)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2880, file: !44, line: 1316, baseType: !126, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2880, file: !44, line: 1317, baseType: !126, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2880, file: !44, line: 1318, baseType: !2879, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2880, file: !44, line: 1319, baseType: !267, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2880, file: !44, line: 1320, baseType: !280, size: 128, align: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2862, file: !44, line: 1084, baseType: !239, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2862, file: !44, line: 1085, baseType: !239, size: 64, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2862, file: !44, line: 1087, baseType: !2898, size: 64, offset: 1280)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2901)
!2901 = !{!2902, !2906}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2900, file: !44, line: 1012, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2861, !2861}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2900, file: !44, line: 1013, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2861}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2862, file: !44, line: 1088, baseType: !2911, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2914)
!2914 = !{!2915, !2919, !2923, !2924, !2928, !2932, !2936, !2940}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2913, file: !44, line: 1017, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!2847, !2847}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2913, file: !44, line: 1018, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2847}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2913, file: !44, line: 1019, baseType: !2907, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2913, file: !44, line: 1020, baseType: !2925, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!126, !2861, !126}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2913, file: !44, line: 1021, baseType: !2929, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!405, !2861}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2913, file: !44, line: 1022, baseType: !2933, size: 64, offset: 320)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!126, !2861, !126, !117}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2913, file: !44, line: 1023, baseType: !2937, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2861, !739}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2913, file: !44, line: 1024, baseType: !2929, size: 64, offset: 448)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2862, file: !44, line: 1097, baseType: !2942, size: 256, offset: 1408)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2862, file: !44, line: 1089, size: 256, elements: !2943)
!2943 = !{!2944, !2953, !2959}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2942, file: !44, line: 1090, baseType: !2945, size: 256)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2946, line: 10, size: 256, elements: !2947)
!2946 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2947 = !{!2948, !2949, !2952}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2945, file: !2946, line: 11, baseType: !330, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2945, file: !2946, line: 12, baseType: !2950, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2946, line: 5, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2945, file: !2946, line: 13, baseType: !114, size: 128, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2942, file: !44, line: 1091, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2946, line: 17, size: 64, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2954, file: !2946, line: 18, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2946, line: 16, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2942, file: !44, line: 1096, baseType: !2960, size: 192)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !44, line: 1092, size: 192, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2960, file: !44, line: 1093, baseType: !114, size: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2960, file: !44, line: 1094, baseType: !126, size: 32, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2960, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2785, file: !44, line: 1843, baseType: !2966, size: 64, offset: 1280)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!220, !267, !639, !126, !236, !2796, !126}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2785, file: !44, line: 1844, baseType: !1019, size: 64, offset: 1344)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2785, file: !44, line: 1845, baseType: !2971, size: 64, offset: 1408)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!126, !126}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2785, file: !44, line: 1846, baseType: !2858, size: 64, offset: 1472)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2785, file: !44, line: 1847, baseType: !2976, size: 64, offset: 1536)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!220, !2018, !267, !2796, !236, !7}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2785, file: !44, line: 1848, baseType: !2980, size: 64, offset: 1600)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!220, !267, !2796, !2018, !236, !7}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2785, file: !44, line: 1849, baseType: !2984, size: 64, offset: 1664)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!126, !267, !224, !2987, !739}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2785, file: !44, line: 1850, baseType: !2989, size: 64, offset: 1728)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!224, !267, !126, !446, !446}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2785, file: !44, line: 1852, baseType: !2993, size: 64, offset: 1792)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !629, !267}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2785, file: !44, line: 1856, baseType: !2997, size: 64, offset: 1856)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!220, !267, !446, !267, !446, !236, !7}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2785, file: !44, line: 1858, baseType: !3001, size: 64, offset: 1920)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!446, !267, !446, !267, !446, !446, !7}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2785, file: !44, line: 1861, baseType: !2850, size: 64, offset: 1984)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2780, file: !44, line: 692, baseType: !582, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !345, file: !44, line: 694, baseType: !3007, size: 64, offset: 2560)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3008, file: !44, line: 1101, baseType: !149)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3008, file: !44, line: 1102, baseType: !114, size: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3008, file: !44, line: 1103, baseType: !114, size: 128, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3008, file: !44, line: 1104, baseType: !114, size: 128, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !345, file: !44, line: 695, baseType: !653, size: 1216, align: 64, offset: 2624)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !345, file: !44, line: 696, baseType: !114, size: 128, offset: 3840)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !44, line: 697, baseType: !3017, size: 64, offset: 3968)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 697, size: 64, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3024, !3025}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3017, file: !44, line: 698, baseType: !2018, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3017, file: !44, line: 699, baseType: !2535, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3017, file: !44, line: 700, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3017, file: !44, line: 701, baseType: !120, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3017, file: !44, line: 702, baseType: !7, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !345, file: !44, line: 705, baseType: !332, size: 32, offset: 4032)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !345, file: !44, line: 708, baseType: !332, size: 32, offset: 4064)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !345, file: !44, line: 709, baseType: !2617, size: 64, offset: 4096)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !345, file: !44, line: 720, baseType: !108, size: 64, offset: 4160)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !298, file: !295, line: 98, baseType: !3031, size: 256, offset: 448)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !2150)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !298, file: !295, line: 101, baseType: !3033, size: 32, offset: 704)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3034, line: 25, size: 32, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !3034, line: 26, baseType: !3037, size: 32)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !3034, line: 26, size: 32, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3034, line: 30, baseType: !3040, size: 32)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3037, file: !3034, line: 30, size: 32, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3040, file: !3034, line: 31, baseType: !149)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3040, file: !3034, line: 32, baseType: !126, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !298, file: !295, line: 102, baseType: !2634, size: 64, offset: 768)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !298, file: !295, line: 103, baseType: !514, size: 64, offset: 832)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !298, file: !295, line: 104, baseType: !239, size: 64, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !298, file: !295, line: 105, baseType: !108, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !295, line: 107, baseType: !3049, size: 128, offset: 1024)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !295, line: 107, size: 128, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3049, file: !295, line: 108, baseType: !114, size: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3049, file: !295, line: 109, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !298, file: !295, line: 111, baseType: !114, size: 128, offset: 1152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !298, file: !295, line: 112, baseType: !114, size: 128, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !298, file: !295, line: 120, baseType: !3057, size: 128, offset: 1408)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !295, line: 116, size: 128, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3057, file: !295, line: 117, baseType: !557, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3057, file: !295, line: 118, baseType: !312, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3057, file: !295, line: 119, baseType: !280, size: 128, align: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !268, file: !44, line: 922, baseType: !344, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !268, file: !44, line: 923, baseType: !2783, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !268, file: !44, line: 929, baseType: !149, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !268, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !268, file: !44, line: 931, baseType: !689, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !268, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !268, file: !44, line: 933, baseType: !2630, size: 32, offset: 544)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !268, file: !44, line: 934, baseType: !1091, size: 192, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !268, file: !44, line: 935, baseType: !446, size: 64, offset: 768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !268, file: !44, line: 936, baseType: !3072, size: 192, offset: 832)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3079}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3072, file: !44, line: 886, baseType: !2883)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3072, file: !44, line: 887, baseType: !1389, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3072, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3072, file: !44, line: 889, baseType: !350, size: 32, offset: 96)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3072, file: !44, line: 889, baseType: !350, size: 32, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3072, file: !44, line: 890, baseType: !126, size: 32, offset: 160)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !268, file: !44, line: 937, baseType: !1465, size: 64, offset: 1024)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !268, file: !44, line: 938, baseType: !3082, size: 256, offset: 1088)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3082, file: !44, line: 897, baseType: !239, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3082, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3082, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3082, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3082, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3082, file: !44, line: 904, baseType: !446, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !268, file: !44, line: 940, baseType: !336, size: 64, offset: 1344)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !268, file: !44, line: 945, baseType: !108, size: 64, offset: 1408)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !268, file: !44, line: 949, baseType: !114, size: 128, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !268, file: !44, line: 950, baseType: !114, size: 128, offset: 1600)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !268, file: !44, line: 952, baseType: !652, size: 64, offset: 1728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !268, file: !44, line: 953, baseType: !827, size: 32, offset: 1792)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !268, file: !44, line: 954, baseType: !827, size: 32, offset: 1824)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !258, file: !214, line: 174, baseType: !264, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !258, file: !214, line: 176, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!126, !267, !142, !257, !899}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !246, file: !214, line: 90, baseType: !241, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !246, file: !214, line: 91, baseType: !3104, size: 64, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !204, file: !135, line: 143, baseType: !3106, size: 64, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!3109, !142}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3112)
!3112 = !{!3113, !3114, !3118, !3122, !3128, !3132}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3111, file: !61, line: 40, baseType: !60, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3111, file: !61, line: 41, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!405}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3111, file: !61, line: 42, baseType: !3119, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!108}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3111, file: !61, line: 43, baseType: !3123, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!2047, !3126}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3111, file: !61, line: 44, baseType: !3129, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!2047}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3111, file: !61, line: 45, baseType: !383, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !204, file: !135, line: 144, baseType: !3134, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!2047, !142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !204, file: !135, line: 145, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !142, !3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !134, file: !135, line: 70, baseType: !3144, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !534, line: 123, size: 1024, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3275, !3276, !3277, !3278, !3279}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3145, file: !534, line: 124, baseType: !665, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3145, file: !534, line: 125, baseType: !665, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3145, file: !534, line: 135, baseType: !3144, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3145, file: !534, line: 136, baseType: !138, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3145, file: !534, line: 138, baseType: !678, size: 192, align: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3145, file: !534, line: 140, baseType: !2047, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3145, file: !534, line: 141, baseType: !7, size: 32, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !534, line: 142, baseType: !3155, size: 256, offset: 512)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3145, file: !534, line: 142, size: 256, elements: !3156)
!3156 = !{!3157, !3203, !3207}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3155, file: !534, line: 143, baseType: !3158, size: 192)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !534, line: 91, size: 192, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3158, file: !534, line: 92, baseType: !239, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3158, file: !534, line: 94, baseType: !674, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3158, file: !534, line: 100, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !534, line: 180, size: 704, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3175, !3176, !3177, !3201, !3202}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3164, file: !534, line: 182, baseType: !3144, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3164, file: !534, line: 183, baseType: !7, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3164, file: !534, line: 186, baseType: !3169, size: 192, offset: 128)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3170, line: 19, size: 192, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3169, file: !3170, line: 20, baseType: !657, size: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3169, file: !3170, line: 21, baseType: !7, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3169, file: !3170, line: 22, baseType: !7, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3164, file: !534, line: 187, baseType: !330, size: 32, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3164, file: !534, line: 188, baseType: !330, size: 32, offset: 352)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3164, file: !534, line: 189, baseType: !3178, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !534, line: 168, size: 320, elements: !3180)
!3180 = !{!3181, !3185, !3189, !3193, !3197}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3179, file: !534, line: 169, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!126, !629, !3163}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3179, file: !534, line: 171, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!126, !3144, !138, !230}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3179, file: !534, line: 173, baseType: !3190, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!126, !3144}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3179, file: !534, line: 174, baseType: !3194, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!126, !3144, !3144, !138}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3179, file: !534, line: 176, baseType: !3198, size: 64, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!126, !629, !3144, !3163}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3164, file: !534, line: 192, baseType: !114, size: 128, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3164, file: !534, line: 194, baseType: !1399, size: 128, offset: 576)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3155, file: !534, line: 144, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !534, line: 103, size: 64, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3204, file: !534, line: 104, baseType: !3144, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3155, file: !534, line: 145, baseType: !3208, size: 256)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !534, line: 107, size: 256, elements: !3209)
!3209 = !{!3210, !3270, !3273, !3274}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3208, file: !534, line: 108, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3213)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !534, line: 217, size: 768, elements: !3214)
!3214 = !{!3215, !3235, !3239, !3243, !3247, !3251, !3255, !3259, !3260, !3261, !3262, !3266}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3213, file: !534, line: 222, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!126, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !534, line: 197, size: 1088, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3220, file: !534, line: 199, baseType: !3144, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3220, file: !534, line: 200, baseType: !267, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3220, file: !534, line: 201, baseType: !629, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3220, file: !534, line: 202, baseType: !108, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3220, file: !534, line: 205, baseType: !1091, size: 192, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3220, file: !534, line: 206, baseType: !1091, size: 192, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3220, file: !534, line: 207, baseType: !126, size: 32, offset: 640)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3220, file: !534, line: 208, baseType: !114, size: 128, offset: 704)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3220, file: !534, line: 209, baseType: !120, size: 64, offset: 832)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3220, file: !534, line: 211, baseType: !236, size: 64, offset: 896)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3220, file: !534, line: 212, baseType: !405, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3220, file: !534, line: 213, baseType: !405, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3220, file: !534, line: 214, baseType: !927, size: 64, offset: 1024)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3213, file: !534, line: 223, baseType: !3236, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !3219}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3213, file: !534, line: 236, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!126, !629, !108}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3213, file: !534, line: 238, baseType: !3244, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!108, !629, !2796}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3213, file: !534, line: 239, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!108, !629, !108, !2796}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3213, file: !534, line: 240, baseType: !3252, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !629, !108}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3213, file: !534, line: 242, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!220, !3219, !120, !236, !446}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3213, file: !534, line: 252, baseType: !236, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3213, file: !534, line: 259, baseType: !405, size: 8, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3213, file: !534, line: 260, baseType: !3256, size: 64, offset: 576)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3213, file: !534, line: 263, baseType: !3263, size: 64, offset: 640)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!2825, !3219, !2827}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3213, file: !534, line: 266, baseType: !3267, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!126, !3219, !899}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3208, file: !534, line: 109, baseType: !3271, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !534, line: 31, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3208, file: !534, line: 110, baseType: !446, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3208, file: !534, line: 111, baseType: !3144, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3145, file: !534, line: 148, baseType: !108, size: 64, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3145, file: !534, line: 154, baseType: !336, size: 64, offset: 832)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3145, file: !534, line: 156, baseType: !231, size: 16, offset: 896)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3145, file: !534, line: 157, baseType: !230, size: 16, offset: 912)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3145, file: !534, line: 158, baseType: !3280, size: 64, offset: 960)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !534, line: 32, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !134, file: !135, line: 71, baseType: !3283, size: 32, offset: 448)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3284, line: 19, size: 32, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3285 = !{!3286}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3283, file: !3284, line: 20, baseType: !1148, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !134, file: !135, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !134, file: !135, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !134, file: !135, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !134, file: !135, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !134, file: !135, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !73, line: 463, baseType: !3293, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !131, file: !73, line: 465, baseType: !3295, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !131, file: !73, line: 467, baseType: !138, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !73, line: 468, baseType: !3299, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3309, !3314, !3318}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3301, file: !73, line: 88, baseType: !138, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3301, file: !73, line: 89, baseType: !243, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3301, file: !73, line: 90, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!126, !3293, !185}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3301, file: !73, line: 91, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!120, !3293, !3313, !3141, !3142}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3301, file: !73, line: 93, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3293}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3301, file: !73, line: 95, baseType: !3319, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3322)
!3322 = !{!3323, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3321, file: !80, line: 279, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!126, !3293}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3321, file: !80, line: 280, baseType: !3315, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3321, file: !80, line: 281, baseType: !3324, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3321, file: !80, line: 282, baseType: !3324, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3321, file: !80, line: 283, baseType: !3324, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3321, file: !80, line: 284, baseType: !3324, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3321, file: !80, line: 285, baseType: !3324, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3321, file: !80, line: 286, baseType: !3324, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3321, file: !80, line: 287, baseType: !3324, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3321, file: !80, line: 288, baseType: !3324, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3321, file: !80, line: 289, baseType: !3324, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3321, file: !80, line: 290, baseType: !3324, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3321, file: !80, line: 291, baseType: !3324, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3321, file: !80, line: 292, baseType: !3324, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3321, file: !80, line: 293, baseType: !3324, size: 64, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3321, file: !80, line: 294, baseType: !3324, size: 64, offset: 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3321, file: !80, line: 295, baseType: !3324, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3321, file: !80, line: 296, baseType: !3324, size: 64, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3321, file: !80, line: 297, baseType: !3324, size: 64, offset: 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3321, file: !80, line: 298, baseType: !3324, size: 64, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3321, file: !80, line: 299, baseType: !3324, size: 64, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3321, file: !80, line: 300, baseType: !3324, size: 64, offset: 1344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3321, file: !80, line: 301, baseType: !3324, size: 64, offset: 1408)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !131, file: !73, line: 470, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3352, line: 82, size: 1408, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3435, !3438, !3439}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 83, baseType: !138, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3351, file: !3352, line: 84, baseType: !138, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3351, file: !3352, line: 85, baseType: !3293, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3351, file: !3352, line: 86, baseType: !243, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !3352, line: 87, baseType: !243, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3351, file: !3352, line: 88, baseType: !243, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3351, file: !3352, line: 90, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!126, !3293, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3386, !3399, !3400, !3401, !3402, !3403, !3411, !3412, !3413, !3414, !3415, !3416}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3365, file: !67, line: 96, baseType: !138, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3365, file: !67, line: 97, baseType: !3350, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3365, file: !67, line: 99, baseType: !548, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3365, file: !67, line: 100, baseType: !138, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3365, file: !67, line: 102, baseType: !405, size: 8, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3365, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3365, file: !67, line: 105, baseType: !3374, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3377, line: 262, size: 1600, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379, !3380, !3381, !3385}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3376, file: !3377, line: 263, baseType: !2620, size: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3376, file: !3377, line: 264, baseType: !2620, size: 256, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3376, file: !3377, line: 265, baseType: !3382, size: 1024, offset: 512)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !3383)
!3383 = !{!3384}
!3384 = !DISubrange(count: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3376, file: !3377, line: 266, baseType: !2047, size: 64, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3365, file: !67, line: 106, baseType: !3387, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3377, line: 210, size: 256, elements: !3390)
!3390 = !{!3391, !3395, !3397, !3398}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3389, file: !3377, line: 211, baseType: !3392, size: 72)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 72, elements: !3393)
!3393 = !{!3394}
!3394 = !DISubrange(count: 9)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3389, file: !3377, line: 212, baseType: !3396, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3377, line: 14, baseType: !239)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3389, file: !3377, line: 213, baseType: !332, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3389, file: !3377, line: 214, baseType: !332, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3365, file: !67, line: 108, baseType: !3324, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3365, file: !67, line: 109, baseType: !3315, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3365, file: !67, line: 110, baseType: !3324, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3365, file: !67, line: 111, baseType: !3315, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3365, file: !67, line: 112, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!126, !3293, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3408, file: !80, line: 51, baseType: !126, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3365, file: !67, line: 113, baseType: !3324, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3365, file: !67, line: 114, baseType: !243, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3365, file: !67, line: 115, baseType: !243, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3365, file: !67, line: 117, baseType: !3319, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3365, file: !67, line: 118, baseType: !3315, size: 64, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3365, file: !67, line: 120, baseType: !3417, size: 64, offset: 1088)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3351, file: !3352, line: 91, baseType: !3306, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3351, file: !3352, line: 92, baseType: !3324, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3351, file: !3352, line: 93, baseType: !3315, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3351, file: !3352, line: 94, baseType: !3324, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3351, file: !3352, line: 95, baseType: !3315, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3351, file: !3352, line: 97, baseType: !3324, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3351, file: !3352, line: 98, baseType: !3324, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3351, file: !3352, line: 100, baseType: !3404, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3351, file: !3352, line: 101, baseType: !3324, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3351, file: !3352, line: 103, baseType: !3324, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3351, file: !3352, line: 105, baseType: !3324, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !3352, line: 107, baseType: !3319, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3351, file: !3352, line: 109, baseType: !3432, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3352, line: 109, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3351, file: !3352, line: 111, baseType: !3436, size: 64, offset: 1280)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3352, line: 111, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3351, file: !3352, line: 112, baseType: !563, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3351, file: !3352, line: 114, baseType: !405, size: 8, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !131, file: !73, line: 471, baseType: !3364, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !131, file: !73, line: 473, baseType: !108, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !131, file: !73, line: 475, baseType: !108, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !131, file: !73, line: 480, baseType: !1091, size: 192, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !131, file: !73, line: 484, baseType: !3445, size: 576, offset: 1216)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3445, file: !73, line: 362, baseType: !114, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3445, file: !73, line: 363, baseType: !114, size: 128, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3445, file: !73, line: 364, baseType: !114, size: 128, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3445, file: !73, line: 365, baseType: !114, size: 128, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3445, file: !73, line: 366, baseType: !405, size: 8, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3445, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !131, file: !73, line: 485, baseType: !3454, size: 2304, offset: 1792)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3551, !3555}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3454, file: !80, line: 566, baseType: !3407, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3454, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3454, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3454, file: !80, line: 569, baseType: !405, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3454, file: !80, line: 570, baseType: !405, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3454, file: !80, line: 571, baseType: !405, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3454, file: !80, line: 572, baseType: !405, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3454, file: !80, line: 573, baseType: !405, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3454, file: !80, line: 574, baseType: !405, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3454, file: !80, line: 575, baseType: !405, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3454, file: !80, line: 576, baseType: !405, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3454, file: !80, line: 577, baseType: !330, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !80, line: 578, baseType: !149, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !80, line: 580, baseType: !114, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3454, file: !80, line: 581, baseType: !1420, size: 192, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3454, file: !80, line: 582, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3474, line: 43, size: 1472, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3483, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 44, baseType: !138, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !3474, line: 45, baseType: !126, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3473, file: !3474, line: 46, baseType: !114, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !3474, line: 47, baseType: !149, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3473, file: !3474, line: 48, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3473, file: !3474, line: 49, baseType: !3484, size: 320, offset: 320)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3485, line: 11, size: 320, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3484, file: !3485, line: 16, baseType: !557, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3484, file: !3485, line: 17, baseType: !239, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3484, file: !3485, line: 18, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3485, line: 19, baseType: !330, size: 32, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3473, file: !3474, line: 50, baseType: !239, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3473, file: !3474, line: 51, baseType: !1218, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3473, file: !3474, line: 52, baseType: !1218, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3473, file: !3474, line: 53, baseType: !1218, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3473, file: !3474, line: 54, baseType: !1218, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3473, file: !3474, line: 55, baseType: !1218, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3473, file: !3474, line: 56, baseType: !239, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3473, file: !3474, line: 57, baseType: !239, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3473, file: !3474, line: 58, baseType: !239, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3473, file: !3474, line: 59, baseType: !239, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3473, file: !3474, line: 60, baseType: !239, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 61, baseType: !3293, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3473, file: !3474, line: 62, baseType: !405, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3473, file: !3474, line: 63, baseType: !405, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3454, file: !80, line: 583, baseType: !405, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3454, file: !80, line: 584, baseType: !405, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3454, file: !80, line: 585, baseType: !405, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3454, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3454, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3454, file: !80, line: 592, baseType: !1210, size: 512, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3454, file: !80, line: 593, baseType: !336, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3454, file: !80, line: 594, baseType: !1877, size: 256, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3454, file: !80, line: 595, baseType: !1399, size: 128, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3454, file: !80, line: 596, baseType: !3481, size: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3454, file: !80, line: 597, baseType: !665, size: 32, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3454, file: !80, line: 598, baseType: !665, size: 32, offset: 1632)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3454, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3454, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3454, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3454, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3454, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3454, file: !80, line: 604, baseType: !405, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3454, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3454, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3454, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3454, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3454, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3454, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3454, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3454, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3454, file: !80, line: 613, baseType: !126, size: 32, offset: 1792)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3454, file: !80, line: 614, baseType: !126, size: 32, offset: 1824)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3454, file: !80, line: 615, baseType: !336, size: 64, offset: 1856)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3454, file: !80, line: 616, baseType: !336, size: 64, offset: 1920)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3454, file: !80, line: 617, baseType: !336, size: 64, offset: 1984)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3454, file: !80, line: 618, baseType: !336, size: 64, offset: 2048)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3454, file: !80, line: 620, baseType: !3542, size: 64, offset: 2112)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 537, baseType: !149)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3543, file: !80, line: 538, baseType: !7, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3543, file: !80, line: 540, baseType: !114, size: 128, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3543, file: !80, line: 543, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3454, file: !80, line: 621, baseType: !3552, size: 64, offset: 2176)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3293, !1362}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3454, file: !80, line: 622, baseType: !3556, size: 64, offset: 2240)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !131, file: !73, line: 486, baseType: !3559, size: 64, offset: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3560, file: !80, line: 643, baseType: !3321, size: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3560, file: !80, line: 644, baseType: !3324, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3560, file: !80, line: 645, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3293, !405}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3560, file: !80, line: 646, baseType: !3324, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3560, file: !80, line: 647, baseType: !3315, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3560, file: !80, line: 648, baseType: !3315, size: 64, offset: 1728)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !131, file: !73, line: 493, baseType: !3572, size: 64, offset: 4160)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !131, file: !73, line: 499, baseType: !114, size: 128, offset: 4224)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !131, file: !73, line: 502, baseType: !3576, size: 64, offset: 4352)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !131, file: !73, line: 504, baseType: !3580, size: 64, offset: 4416)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !131, file: !73, line: 505, baseType: !336, size: 64, offset: 4480)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !131, file: !73, line: 510, baseType: !336, size: 64, offset: 4544)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !131, file: !73, line: 511, baseType: !3584, size: 64, offset: 4608)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3586)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !131, file: !73, line: 513, baseType: !3588, size: 64, offset: 4672)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3589, file: !73, line: 293, baseType: !7, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3589, file: !73, line: 294, baseType: !239, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !131, file: !73, line: 515, baseType: !114, size: 128, offset: 4736)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !131, file: !73, line: 526, baseType: !3595, offset: 4864)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3596, line: 5, elements: !163)
!3596 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !131, file: !73, line: 528, baseType: !3598, size: 64, offset: 4864)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3600, line: 14, flags: DIFlagFwdDecl)
!3600 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !131, file: !73, line: 529, baseType: !3602, size: 64, offset: 4928)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3604, line: 17, size: 192, elements: !3605)
!3604 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3605 = !{!3606, !3607, !3690}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3603, file: !3604, line: 18, baseType: !3602, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3603, file: !3604, line: 19, baseType: !3608, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3604, line: 110, size: 1152, elements: !3611)
!3611 = !{!3612, !3616, !3620, !3626, !3632, !3636, !3640, !3645, !3649, !3650, !3654, !3658, !3662, !3673, !3674, !3675, !3676, !3686}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3610, file: !3604, line: 111, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!3602, !3602}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3610, file: !3604, line: 112, baseType: !3617, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3602}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3610, file: !3604, line: 113, baseType: !3621, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!405, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3610, file: !3604, line: 114, baseType: !3627, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!2047, !3624, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3610, file: !3604, line: 116, baseType: !3633, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!405, !3624, !138}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3610, file: !3604, line: 118, baseType: !3637, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!126, !3624, !138, !7, !108, !236}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3610, file: !3604, line: 123, baseType: !3641, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!126, !3624, !138, !3644, !236}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3610, file: !3604, line: 126, baseType: !3646, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!138, !3624}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3610, file: !3604, line: 127, baseType: !3646, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3610, file: !3604, line: 128, baseType: !3651, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!3602, !3624}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3610, file: !3604, line: 130, baseType: !3655, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!3602, !3624, !3602}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3610, file: !3604, line: 133, baseType: !3659, size: 64, offset: 704)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!3602, !3624, !138}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3610, file: !3604, line: 135, baseType: !3663, size: 64, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!126, !3624, !138, !138, !7, !7, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3604, line: 43, size: 640, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3667, file: !3604, line: 44, baseType: !3602, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3667, file: !3604, line: 45, baseType: !7, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3667, file: !3604, line: 46, baseType: !3672, size: 512, offset: 128)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 512, elements: !1248)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3610, file: !3604, line: 140, baseType: !3655, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3610, file: !3604, line: 143, baseType: !3651, size: 64, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3610, file: !3604, line: 145, baseType: !3613, size: 64, offset: 960)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3610, file: !3604, line: 146, baseType: !3677, size: 64, offset: 1024)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!126, !3624, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3604, line: 29, size: 128, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3681, file: !3604, line: 30, baseType: !7, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3681, file: !3604, line: 31, baseType: !7, size: 32, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3681, file: !3604, line: 32, baseType: !3624, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3610, file: !3604, line: 148, baseType: !3687, size: 64, offset: 1088)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!126, !3624, !3293}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3603, file: !3604, line: 20, baseType: !3293, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !131, file: !73, line: 534, baseType: !428, size: 32, offset: 4992)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !73, line: 535, baseType: !330, size: 32, offset: 5024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !131, file: !73, line: 537, baseType: !149, offset: 5056)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !131, file: !73, line: 538, baseType: !114, size: 128, offset: 5056)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !131, file: !73, line: 540, baseType: !3696, size: 64, offset: 5184)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3698, line: 54, size: 960, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3710, !3714, !3715, !3716, !3717, !3721, !3725, !3726}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3697, file: !3698, line: 55, baseType: !138, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3697, file: !3698, line: 56, baseType: !548, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3697, file: !3698, line: 58, baseType: !243, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3697, file: !3698, line: 59, baseType: !243, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3697, file: !3698, line: 60, baseType: !142, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3697, file: !3698, line: 62, baseType: !3306, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3697, file: !3698, line: 63, baseType: !3707, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!120, !3293, !3313}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3697, file: !3698, line: 65, baseType: !3711, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3696}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3697, file: !3698, line: 66, baseType: !3315, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3697, file: !3698, line: 68, baseType: !3324, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3697, file: !3698, line: 70, baseType: !3109, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3697, file: !3698, line: 71, baseType: !3718, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!2047, !3293}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3697, file: !3698, line: 73, baseType: !3722, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !3293, !3141, !3142}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3697, file: !3698, line: 75, baseType: !3319, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3697, file: !3698, line: 77, baseType: !3436, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !131, file: !73, line: 541, baseType: !243, size: 64, offset: 5248)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !131, file: !73, line: 543, baseType: !3315, size: 64, offset: 5312)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !131, file: !73, line: 544, baseType: !3730, size: 64, offset: 5376)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !131, file: !73, line: 545, baseType: !3733, size: 64, offset: 5440)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !131, file: !73, line: 547, baseType: !405, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !131, file: !73, line: 548, baseType: !405, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !131, file: !73, line: 549, baseType: !405, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !131, file: !73, line: 550, baseType: !405, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !128, file: !111, line: 245, baseType: !336, size: 64, offset: 5568)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !128, file: !111, line: 246, baseType: !7, size: 32, offset: 5632)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !128, file: !111, line: 247, baseType: !126, size: 32, offset: 5664)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !128, file: !111, line: 249, baseType: !114, size: 128, offset: 5696)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !128, file: !111, line: 250, baseType: !114, size: 128, offset: 5824)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !128, file: !111, line: 251, baseType: !114, size: 128, offset: 5952)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !128, file: !111, line: 252, baseType: !114, size: 128, offset: 6080)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !128, file: !111, line: 254, baseType: !109, size: 64, offset: 6208)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !128, file: !111, line: 255, baseType: !3748, size: 64, offset: 6272)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !111, line: 202, size: 6720, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3763, !3767, !3768, !3769, !3770, !3771}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3749, file: !111, line: 203, baseType: !131, size: 5568)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3749, file: !111, line: 204, baseType: !342, size: 8, offset: 5568)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3749, file: !111, line: 205, baseType: !114, size: 128, offset: 5632)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3749, file: !111, line: 206, baseType: !114, size: 128, offset: 5760)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3749, file: !111, line: 207, baseType: !114, size: 128, offset: 5888)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3749, file: !111, line: 209, baseType: !109, size: 64, offset: 6016)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3749, file: !111, line: 210, baseType: !3758, size: 64, offset: 6080)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !111, line: 369, size: 128, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3759, file: !111, line: 370, baseType: !1952, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3759, file: !111, line: 371, baseType: !3758, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3749, file: !111, line: 212, baseType: !3764, size: 400, offset: 6144)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 400, elements: !3765)
!3765 = !{!3766}
!3766 = !DISubrange(count: 50)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !3749, file: !111, line: 213, baseType: !342, size: 8, offset: 6544)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !3749, file: !111, line: 214, baseType: !342, size: 8, offset: 6552)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3749, file: !111, line: 215, baseType: !7, size: 32, offset: 6560)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3749, file: !111, line: 216, baseType: !342, size: 8, offset: 6592)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3749, file: !111, line: 217, baseType: !3772, size: 64, offset: 6656)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !111, line: 217, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !128, file: !111, line: 256, baseType: !3775, size: 64, offset: 6336)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !111, line: 374, size: 1664, elements: !3777)
!3777 = !{!3778, !3779, !3787, !3788, !3792, !3796, !3797, !3801, !3802}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3776, file: !111, line: 375, baseType: !138, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3776, file: !111, line: 376, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !3377, line: 220, size: 128, elements: !3783)
!3783 = !{!3784, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3782, file: !3377, line: 221, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 64, elements: !1248)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3782, file: !3377, line: 222, baseType: !3396, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !111, line: 377, baseType: !7, size: 32, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3776, file: !111, line: 378, baseType: !3789, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!126, !127, !3780}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3776, file: !111, line: 379, baseType: !3793, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !127}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3776, file: !111, line: 380, baseType: !3793, size: 64, offset: 320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3776, file: !111, line: 381, baseType: !3798, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!126, !127, !3407}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3776, file: !111, line: 382, baseType: !123, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3776, file: !111, line: 383, baseType: !3365, size: 1152, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !128, file: !111, line: 257, baseType: !3804, size: 64, offset: 6400)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !111, line: 226, size: 256, elements: !3806)
!3806 = !{!3807, !3808, !3844, !3845}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !3805, file: !111, line: 227, baseType: !3748, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3805, file: !111, line: 228, baseType: !3809, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !111, line: 388, size: 2240, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3826, !3827, !3831, !3835, !3839, !3843}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3810, file: !111, line: 389, baseType: !114, size: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3810, file: !111, line: 390, baseType: !120, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3810, file: !111, line: 391, baseType: !3815, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3817)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !3377, line: 225, size: 640, elements: !3818)
!3818 = !{!3819, !3820, !3821}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3817, file: !3377, line: 226, baseType: !3785, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3817, file: !3377, line: 227, baseType: !3396, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !3817, file: !3377, line: 230, baseType: !3822, size: 512, offset: 128)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3823, size: 512, elements: !1248)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3817, file: !3377, line: 228, size: 64, elements: !3824)
!3824 = !{!3825}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3823, file: !3377, line: 229, baseType: !3785, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3810, file: !111, line: 392, baseType: !7, size: 32, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3810, file: !111, line: 393, baseType: !3828, size: 64, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!126, !3804, !3815}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3810, file: !111, line: 395, baseType: !3832, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3804}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3810, file: !111, line: 396, baseType: !3836, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!126, !3804, !3407}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3810, file: !111, line: 397, baseType: !3840, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!126, !3804}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3810, file: !111, line: 398, baseType: !3776, size: 1664, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3805, file: !111, line: 229, baseType: !108, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !3805, file: !111, line: 230, baseType: !3407, size: 32, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !128, file: !111, line: 259, baseType: !3758, size: 64, offset: 6464)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !128, file: !111, line: 261, baseType: !126, size: 32, offset: 6528)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !128, file: !111, line: 262, baseType: !126, size: 32, offset: 6560)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !128, file: !111, line: 263, baseType: !7, size: 32, offset: 6592)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !128, file: !111, line: 264, baseType: !114, size: 128, offset: 6656)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !128, file: !111, line: 265, baseType: !114, size: 128, offset: 6784)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !111, line: 267, baseType: !3764, size: 400, offset: 6912)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !111, line: 268, baseType: !126, size: 32, offset: 7328)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !128, file: !111, line: 269, baseType: !3772, size: 64, offset: 7360)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !128, file: !111, line: 270, baseType: !108, size: 64, offset: 7424)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !110, file: !111, line: 417, baseType: !123, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !110, file: !111, line: 418, baseType: !123, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !110, file: !111, line: 421, baseType: !3859, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!405, !127}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !110, file: !111, line: 422, baseType: !3798, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !110, file: !111, line: 423, baseType: !123, size: 64, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !110, file: !111, line: 426, baseType: !342, size: 8, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !110, file: !111, line: 427, baseType: !131, size: 5568, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !110, file: !111, line: 428, baseType: !114, size: 128, offset: 6208)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !110, file: !111, line: 429, baseType: !114, size: 128, offset: 6336)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !3870, line: 156, size: 640, elements: !3871)
!3870 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3869, file: !3870, line: 157, baseType: !114, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !3869, file: !3870, line: 158, baseType: !3874, size: 512, offset: 128)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3875, line: 20, size: 512, elements: !3876)
!3875 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3876 = !{!3877, !3879, !3880, !3881, !3882, !3883, !3885, !3886}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3874, file: !3875, line: 21, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !107, line: 158, baseType: !2045)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3874, file: !3875, line: 22, baseType: !3878, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3874, file: !3875, line: 23, baseType: !138, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3874, file: !3875, line: 24, baseType: !239, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3874, file: !3875, line: 25, baseType: !239, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3874, file: !3875, line: 26, baseType: !3884, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3874, file: !3875, line: 26, baseType: !3884, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3874, file: !3875, line: 26, baseType: !3884, size: 64, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!3889 = !{!0, !3890, !3892, !3894, !3946, !3951, !3953, !3955, !3957}
!3890 = !DIGlobalVariableExpression(var: !3891, expr: !DIExpression())
!3891 = distinct !DIGlobalVariable(name: "pnp_lock", scope: !2, file: !3, line: 24, type: !1091, isLocal: false, isDefinition: true)
!3892 = !DIGlobalVariableExpression(var: !3893, expr: !DIExpression())
!3893 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_init236", scope: !2, file: !3, line: 247, type: !108, isLocal: true, isDefinition: true)
!3894 = !DIGlobalVariableExpression(var: !3895, expr: !DIExpression())
!3895 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 252, type: !3896, isLocal: true, isDefinition: true, align: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3897)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3898, line: 69, size: 320, elements: !3899)
!3898 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3899 = !{!3900, !3901, !3902, !3918, !3920, !3924, !3925}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3897, file: !3898, line: 70, baseType: !138, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3897, file: !3898, line: 71, baseType: !548, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3897, file: !3898, line: 72, baseType: !3903, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3898, line: 47, size: 256, elements: !3906)
!3906 = !{!3907, !3908, !3913, !3917}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3905, file: !3898, line: 49, baseType: !7, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3905, file: !3898, line: 51, baseType: !3909, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!126, !138, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3905, file: !3898, line: 53, baseType: !3914, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!126, !120, !3912}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3905, file: !3898, line: 55, baseType: !383, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3897, file: !3898, line: 73, baseType: !3919, size: 16, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3897, file: !3898, line: 74, baseType: !3921, size: 8, offset: 208)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !331, line: 16, baseType: !3922)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !333, line: 20, baseType: !3923)
!3923 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3897, file: !3898, line: 75, baseType: !1270, size: 8, offset: 216)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3897, file: !3898, line: 76, baseType: !3926, size: 64, offset: 256)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3897, file: !3898, line: 76, size: 64, elements: !3927)
!3927 = !{!3928, !3929, !3936}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3926, file: !3898, line: 77, baseType: !108, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3926, file: !3898, line: 78, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3898, line: 86, size: 128, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3932, file: !3898, line: 87, baseType: !7, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3932, file: !3898, line: 88, baseType: !120, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3926, file: !3898, line: 79, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3898, line: 92, size: 256, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3939, file: !3898, line: 94, baseType: !7, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3939, file: !3898, line: 95, baseType: !7, size: 32, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3939, file: !3898, line: 96, baseType: !2603, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3939, file: !3898, line: 97, baseType: !3903, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3939, file: !3898, line: 98, baseType: !108, size: 64, offset: 192)
!3946 = !DIGlobalVariableExpression(var: !3947, expr: !DIExpression())
!3947 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype237", scope: !2, file: !3, line: 252, type: !3948, isLocal: true, isDefinition: true, align: 8)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 184, elements: !3949)
!3949 = !{!3950}
!3950 = !DISubrange(count: 23)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(name: "pnp_platform_devices", scope: !2, file: !3, line: 31, type: !126, isLocal: false, isDefinition: true)
!3953 = !DIGlobalVariableExpression(var: !3954, expr: !DIExpression())
!3954 = distinct !DIGlobalVariable(name: "pnp_debug", scope: !2, file: !3, line: 249, type: !126, isLocal: false, isDefinition: true)
!3955 = !DIGlobalVariableExpression(var: !3956, expr: !DIExpression())
!3956 = distinct !DIGlobalVariable(name: "pnp_protocols", scope: !2, file: !3, line: 22, type: !114, isLocal: true, isDefinition: true)
!3957 = !DIGlobalVariableExpression(var: !3958, expr: !DIExpression())
!3958 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 252, type: !3959, isLocal: true, isDefinition: true)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 80, elements: !3960)
!3960 = !{!3961}
!3961 = !DISubrange(count: 10)
!3962 = !{i32 7, !"Dwarf Version", i32 4}
!3963 = !{i32 2, !"Debug Info Version", i32 3}
!3964 = !{i32 1, !"wchar_size", i32 2}
!3965 = !{i32 1, !"Code Model", i32 2}
!3966 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3967 = distinct !DISubprogram(name: "pnp_alloc", scope: !3, file: !3, line: 34, type: !3968, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!108, !224}
!3970 = !DILocalVariable(name: "size", arg: 1, scope: !3967, file: !3, line: 34, type: !224)
!3971 = !DILocation(line: 34, column: 22, scope: !3967)
!3972 = !DILocalVariable(name: "result", scope: !3967, file: !3, line: 36, type: !108)
!3973 = !DILocation(line: 36, column: 8, scope: !3967)
!3974 = !DILocation(line: 38, column: 19, scope: !3967)
!3975 = !DILocation(line: 38, column: 11, scope: !3967)
!3976 = !DILocation(line: 38, column: 9, scope: !3967)
!3977 = !DILocation(line: 39, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 39, column: 6)
!3979 = !DILocation(line: 39, column: 6, scope: !3967)
!3980 = !DILocation(line: 40, column: 3, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 39, column: 15)
!3982 = !DILocation(line: 41, column: 3, scope: !3981)
!3983 = !DILocation(line: 43, column: 9, scope: !3967)
!3984 = !DILocation(line: 43, column: 2, scope: !3967)
!3985 = !DILocation(line: 44, column: 1, scope: !3967)
!3986 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !3987, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!108, !236, !106}
!3989 = !DILocalVariable(name: "s", arg: 1, scope: !3990, file: !94, line: 445, type: !853)
!3990 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !3991, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!108, !853, !106, !236}
!3993 = !DILocation(line: 445, column: 72, scope: !3990, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 552, column: 10, scope: !3995, inlinedAt: !3998)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !94, line: 540, column: 34)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !94, line: 540, column: 6)
!3997 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !3987, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!3998 = distinct !DILocation(line: 664, column: 9, scope: !3986)
!3999 = !DILocalVariable(name: "flags", arg: 2, scope: !3990, file: !94, line: 446, type: !106)
!4000 = !DILocation(line: 446, column: 9, scope: !3990, inlinedAt: !3994)
!4001 = !DILocalVariable(name: "size", arg: 3, scope: !3990, file: !94, line: 446, type: !236)
!4002 = !DILocation(line: 446, column: 23, scope: !3990, inlinedAt: !3994)
!4003 = !DILocalVariable(name: "ret", scope: !3990, file: !94, line: 448, type: !108)
!4004 = !DILocation(line: 448, column: 8, scope: !3990, inlinedAt: !3994)
!4005 = !DILocalVariable(name: "flags", arg: 1, scope: !4006, file: !94, line: 318, type: !106)
!4006 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4007, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!93, !106}
!4009 = !DILocation(line: 318, column: 67, scope: !4006, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 553, column: 20, scope: !3995, inlinedAt: !3998)
!4011 = !DILocalVariable(name: "size", arg: 1, scope: !4012, file: !94, line: 346, type: !236)
!4012 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4013, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!7, !236}
!4015 = !DILocation(line: 346, column: 58, scope: !4012, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 547, column: 11, scope: !3995, inlinedAt: !3998)
!4017 = !DILocalVariable(name: "size", arg: 1, scope: !4018, file: !94, line: 472, type: !236)
!4018 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4019, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!108, !236, !106, !7}
!4021 = !DILocation(line: 472, column: 28, scope: !4018, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 481, column: 9, scope: !4023, inlinedAt: !4024)
!4023 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !3987, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4024 = distinct !DILocation(line: 545, column: 11, scope: !4025, inlinedAt: !3998)
!4025 = distinct !DILexicalBlock(scope: !3995, file: !94, line: 544, column: 7)
!4026 = !DILocalVariable(name: "flags", arg: 2, scope: !4018, file: !94, line: 472, type: !106)
!4027 = !DILocation(line: 472, column: 40, scope: !4018, inlinedAt: !4022)
!4028 = !DILocalVariable(name: "order", arg: 3, scope: !4018, file: !94, line: 472, type: !7)
!4029 = !DILocation(line: 472, column: 60, scope: !4018, inlinedAt: !4022)
!4030 = !DILocalVariable(name: "size", arg: 1, scope: !4023, file: !94, line: 478, type: !236)
!4031 = !DILocation(line: 478, column: 51, scope: !4023, inlinedAt: !4024)
!4032 = !DILocalVariable(name: "flags", arg: 2, scope: !4023, file: !94, line: 478, type: !106)
!4033 = !DILocation(line: 478, column: 63, scope: !4023, inlinedAt: !4024)
!4034 = !DILocalVariable(name: "order", scope: !4023, file: !94, line: 480, type: !7)
!4035 = !DILocation(line: 480, column: 15, scope: !4023, inlinedAt: !4024)
!4036 = !DILocalVariable(name: "size", arg: 1, scope: !3997, file: !94, line: 538, type: !236)
!4037 = !DILocation(line: 538, column: 45, scope: !3997, inlinedAt: !3998)
!4038 = !DILocalVariable(name: "flags", arg: 2, scope: !3997, file: !94, line: 538, type: !106)
!4039 = !DILocation(line: 538, column: 57, scope: !3997, inlinedAt: !3998)
!4040 = !DILocalVariable(name: "index", scope: !3995, file: !94, line: 542, type: !7)
!4041 = !DILocation(line: 542, column: 16, scope: !3995, inlinedAt: !3998)
!4042 = !DILocalVariable(name: "size", arg: 1, scope: !3986, file: !94, line: 662, type: !236)
!4043 = !DILocation(line: 662, column: 36, scope: !3986)
!4044 = !DILocalVariable(name: "flags", arg: 2, scope: !3986, file: !94, line: 662, type: !106)
!4045 = !DILocation(line: 662, column: 48, scope: !3986)
!4046 = !DILocation(line: 664, column: 17, scope: !3986)
!4047 = !DILocation(line: 664, column: 23, scope: !3986)
!4048 = !DILocation(line: 664, column: 29, scope: !3986)
!4049 = !DILocation(line: 540, column: 27, scope: !3996, inlinedAt: !3998)
!4050 = !DILocation(line: 540, column: 6, scope: !3996, inlinedAt: !3998)
!4051 = !DILocation(line: 540, column: 6, scope: !3997, inlinedAt: !3998)
!4052 = !DILocation(line: 544, column: 7, scope: !4025, inlinedAt: !3998)
!4053 = !DILocation(line: 544, column: 12, scope: !4025, inlinedAt: !3998)
!4054 = !DILocation(line: 544, column: 7, scope: !3995, inlinedAt: !3998)
!4055 = !DILocation(line: 545, column: 25, scope: !4025, inlinedAt: !3998)
!4056 = !DILocation(line: 545, column: 31, scope: !4025, inlinedAt: !3998)
!4057 = !DILocation(line: 480, column: 33, scope: !4023, inlinedAt: !4024)
!4058 = !DILocation(line: 480, column: 23, scope: !4023, inlinedAt: !4024)
!4059 = !DILocation(line: 481, column: 29, scope: !4023, inlinedAt: !4024)
!4060 = !DILocation(line: 481, column: 35, scope: !4023, inlinedAt: !4024)
!4061 = !DILocation(line: 481, column: 42, scope: !4023, inlinedAt: !4024)
!4062 = !DILocation(line: 474, column: 23, scope: !4018, inlinedAt: !4022)
!4063 = !DILocation(line: 474, column: 29, scope: !4018, inlinedAt: !4022)
!4064 = !DILocation(line: 474, column: 36, scope: !4018, inlinedAt: !4022)
!4065 = !DILocation(line: 474, column: 9, scope: !4018, inlinedAt: !4022)
!4066 = !DILocation(line: 545, column: 4, scope: !4025, inlinedAt: !3998)
!4067 = !DILocation(line: 547, column: 25, scope: !3995, inlinedAt: !3998)
!4068 = !DILocation(line: 348, column: 7, scope: !4069, inlinedAt: !4016)
!4069 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 348, column: 6)
!4070 = !DILocation(line: 348, column: 6, scope: !4012, inlinedAt: !4016)
!4071 = !DILocation(line: 349, column: 3, scope: !4069, inlinedAt: !4016)
!4072 = !DILocation(line: 351, column: 6, scope: !4073, inlinedAt: !4016)
!4073 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 351, column: 6)
!4074 = !DILocation(line: 351, column: 11, scope: !4073, inlinedAt: !4016)
!4075 = !DILocation(line: 351, column: 6, scope: !4012, inlinedAt: !4016)
!4076 = !DILocation(line: 352, column: 3, scope: !4073, inlinedAt: !4016)
!4077 = !DILocation(line: 354, column: 32, scope: !4078, inlinedAt: !4016)
!4078 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 354, column: 6)
!4079 = !DILocation(line: 354, column: 37, scope: !4078, inlinedAt: !4016)
!4080 = !DILocation(line: 354, column: 42, scope: !4078, inlinedAt: !4016)
!4081 = !DILocation(line: 354, column: 45, scope: !4078, inlinedAt: !4016)
!4082 = !DILocation(line: 354, column: 50, scope: !4078, inlinedAt: !4016)
!4083 = !DILocation(line: 354, column: 6, scope: !4012, inlinedAt: !4016)
!4084 = !DILocation(line: 355, column: 3, scope: !4078, inlinedAt: !4016)
!4085 = !DILocation(line: 356, column: 32, scope: !4086, inlinedAt: !4016)
!4086 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 356, column: 6)
!4087 = !DILocation(line: 356, column: 37, scope: !4086, inlinedAt: !4016)
!4088 = !DILocation(line: 356, column: 43, scope: !4086, inlinedAt: !4016)
!4089 = !DILocation(line: 356, column: 46, scope: !4086, inlinedAt: !4016)
!4090 = !DILocation(line: 356, column: 51, scope: !4086, inlinedAt: !4016)
!4091 = !DILocation(line: 356, column: 6, scope: !4012, inlinedAt: !4016)
!4092 = !DILocation(line: 357, column: 3, scope: !4086, inlinedAt: !4016)
!4093 = !DILocation(line: 358, column: 6, scope: !4094, inlinedAt: !4016)
!4094 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 358, column: 6)
!4095 = !DILocation(line: 358, column: 11, scope: !4094, inlinedAt: !4016)
!4096 = !DILocation(line: 358, column: 6, scope: !4012, inlinedAt: !4016)
!4097 = !DILocation(line: 358, column: 26, scope: !4094, inlinedAt: !4016)
!4098 = !DILocation(line: 359, column: 6, scope: !4099, inlinedAt: !4016)
!4099 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 359, column: 6)
!4100 = !DILocation(line: 359, column: 11, scope: !4099, inlinedAt: !4016)
!4101 = !DILocation(line: 359, column: 6, scope: !4012, inlinedAt: !4016)
!4102 = !DILocation(line: 359, column: 26, scope: !4099, inlinedAt: !4016)
!4103 = !DILocation(line: 360, column: 6, scope: !4104, inlinedAt: !4016)
!4104 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 360, column: 6)
!4105 = !DILocation(line: 360, column: 11, scope: !4104, inlinedAt: !4016)
!4106 = !DILocation(line: 360, column: 6, scope: !4012, inlinedAt: !4016)
!4107 = !DILocation(line: 360, column: 26, scope: !4104, inlinedAt: !4016)
!4108 = !DILocation(line: 361, column: 6, scope: !4109, inlinedAt: !4016)
!4109 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 361, column: 6)
!4110 = !DILocation(line: 361, column: 11, scope: !4109, inlinedAt: !4016)
!4111 = !DILocation(line: 361, column: 6, scope: !4012, inlinedAt: !4016)
!4112 = !DILocation(line: 361, column: 26, scope: !4109, inlinedAt: !4016)
!4113 = !DILocation(line: 362, column: 6, scope: !4114, inlinedAt: !4016)
!4114 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 362, column: 6)
!4115 = !DILocation(line: 362, column: 11, scope: !4114, inlinedAt: !4016)
!4116 = !DILocation(line: 362, column: 6, scope: !4012, inlinedAt: !4016)
!4117 = !DILocation(line: 362, column: 26, scope: !4114, inlinedAt: !4016)
!4118 = !DILocation(line: 363, column: 6, scope: !4119, inlinedAt: !4016)
!4119 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 363, column: 6)
!4120 = !DILocation(line: 363, column: 11, scope: !4119, inlinedAt: !4016)
!4121 = !DILocation(line: 363, column: 6, scope: !4012, inlinedAt: !4016)
!4122 = !DILocation(line: 363, column: 26, scope: !4119, inlinedAt: !4016)
!4123 = !DILocation(line: 364, column: 6, scope: !4124, inlinedAt: !4016)
!4124 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 364, column: 6)
!4125 = !DILocation(line: 364, column: 11, scope: !4124, inlinedAt: !4016)
!4126 = !DILocation(line: 364, column: 6, scope: !4012, inlinedAt: !4016)
!4127 = !DILocation(line: 364, column: 26, scope: !4124, inlinedAt: !4016)
!4128 = !DILocation(line: 365, column: 6, scope: !4129, inlinedAt: !4016)
!4129 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 365, column: 6)
!4130 = !DILocation(line: 365, column: 11, scope: !4129, inlinedAt: !4016)
!4131 = !DILocation(line: 365, column: 6, scope: !4012, inlinedAt: !4016)
!4132 = !DILocation(line: 365, column: 26, scope: !4129, inlinedAt: !4016)
!4133 = !DILocation(line: 366, column: 6, scope: !4134, inlinedAt: !4016)
!4134 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 366, column: 6)
!4135 = !DILocation(line: 366, column: 11, scope: !4134, inlinedAt: !4016)
!4136 = !DILocation(line: 366, column: 6, scope: !4012, inlinedAt: !4016)
!4137 = !DILocation(line: 366, column: 26, scope: !4134, inlinedAt: !4016)
!4138 = !DILocation(line: 367, column: 6, scope: !4139, inlinedAt: !4016)
!4139 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 367, column: 6)
!4140 = !DILocation(line: 367, column: 11, scope: !4139, inlinedAt: !4016)
!4141 = !DILocation(line: 367, column: 6, scope: !4012, inlinedAt: !4016)
!4142 = !DILocation(line: 367, column: 26, scope: !4139, inlinedAt: !4016)
!4143 = !DILocation(line: 368, column: 6, scope: !4144, inlinedAt: !4016)
!4144 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 368, column: 6)
!4145 = !DILocation(line: 368, column: 11, scope: !4144, inlinedAt: !4016)
!4146 = !DILocation(line: 368, column: 6, scope: !4012, inlinedAt: !4016)
!4147 = !DILocation(line: 368, column: 26, scope: !4144, inlinedAt: !4016)
!4148 = !DILocation(line: 369, column: 6, scope: !4149, inlinedAt: !4016)
!4149 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 369, column: 6)
!4150 = !DILocation(line: 369, column: 11, scope: !4149, inlinedAt: !4016)
!4151 = !DILocation(line: 369, column: 6, scope: !4012, inlinedAt: !4016)
!4152 = !DILocation(line: 369, column: 26, scope: !4149, inlinedAt: !4016)
!4153 = !DILocation(line: 370, column: 6, scope: !4154, inlinedAt: !4016)
!4154 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 370, column: 6)
!4155 = !DILocation(line: 370, column: 11, scope: !4154, inlinedAt: !4016)
!4156 = !DILocation(line: 370, column: 6, scope: !4012, inlinedAt: !4016)
!4157 = !DILocation(line: 370, column: 26, scope: !4154, inlinedAt: !4016)
!4158 = !DILocation(line: 371, column: 6, scope: !4159, inlinedAt: !4016)
!4159 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 371, column: 6)
!4160 = !DILocation(line: 371, column: 11, scope: !4159, inlinedAt: !4016)
!4161 = !DILocation(line: 371, column: 6, scope: !4012, inlinedAt: !4016)
!4162 = !DILocation(line: 371, column: 26, scope: !4159, inlinedAt: !4016)
!4163 = !DILocation(line: 372, column: 6, scope: !4164, inlinedAt: !4016)
!4164 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 372, column: 6)
!4165 = !DILocation(line: 372, column: 11, scope: !4164, inlinedAt: !4016)
!4166 = !DILocation(line: 372, column: 6, scope: !4012, inlinedAt: !4016)
!4167 = !DILocation(line: 372, column: 26, scope: !4164, inlinedAt: !4016)
!4168 = !DILocation(line: 373, column: 6, scope: !4169, inlinedAt: !4016)
!4169 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 373, column: 6)
!4170 = !DILocation(line: 373, column: 11, scope: !4169, inlinedAt: !4016)
!4171 = !DILocation(line: 373, column: 6, scope: !4012, inlinedAt: !4016)
!4172 = !DILocation(line: 373, column: 26, scope: !4169, inlinedAt: !4016)
!4173 = !DILocation(line: 374, column: 6, scope: !4174, inlinedAt: !4016)
!4174 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 374, column: 6)
!4175 = !DILocation(line: 374, column: 11, scope: !4174, inlinedAt: !4016)
!4176 = !DILocation(line: 374, column: 6, scope: !4012, inlinedAt: !4016)
!4177 = !DILocation(line: 374, column: 26, scope: !4174, inlinedAt: !4016)
!4178 = !DILocation(line: 375, column: 6, scope: !4179, inlinedAt: !4016)
!4179 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 375, column: 6)
!4180 = !DILocation(line: 375, column: 11, scope: !4179, inlinedAt: !4016)
!4181 = !DILocation(line: 375, column: 6, scope: !4012, inlinedAt: !4016)
!4182 = !DILocation(line: 375, column: 27, scope: !4179, inlinedAt: !4016)
!4183 = !DILocation(line: 376, column: 6, scope: !4184, inlinedAt: !4016)
!4184 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 376, column: 6)
!4185 = !DILocation(line: 376, column: 11, scope: !4184, inlinedAt: !4016)
!4186 = !DILocation(line: 376, column: 6, scope: !4012, inlinedAt: !4016)
!4187 = !DILocation(line: 376, column: 32, scope: !4184, inlinedAt: !4016)
!4188 = !DILocation(line: 377, column: 6, scope: !4189, inlinedAt: !4016)
!4189 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 377, column: 6)
!4190 = !DILocation(line: 377, column: 11, scope: !4189, inlinedAt: !4016)
!4191 = !DILocation(line: 377, column: 6, scope: !4012, inlinedAt: !4016)
!4192 = !DILocation(line: 377, column: 32, scope: !4189, inlinedAt: !4016)
!4193 = !DILocation(line: 378, column: 6, scope: !4194, inlinedAt: !4016)
!4194 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 378, column: 6)
!4195 = !DILocation(line: 378, column: 11, scope: !4194, inlinedAt: !4016)
!4196 = !DILocation(line: 378, column: 6, scope: !4012, inlinedAt: !4016)
!4197 = !DILocation(line: 378, column: 32, scope: !4194, inlinedAt: !4016)
!4198 = !DILocation(line: 379, column: 6, scope: !4199, inlinedAt: !4016)
!4199 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 379, column: 6)
!4200 = !DILocation(line: 379, column: 11, scope: !4199, inlinedAt: !4016)
!4201 = !DILocation(line: 379, column: 6, scope: !4012, inlinedAt: !4016)
!4202 = !DILocation(line: 379, column: 33, scope: !4199, inlinedAt: !4016)
!4203 = !DILocation(line: 380, column: 6, scope: !4204, inlinedAt: !4016)
!4204 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 380, column: 6)
!4205 = !DILocation(line: 380, column: 11, scope: !4204, inlinedAt: !4016)
!4206 = !DILocation(line: 380, column: 6, scope: !4012, inlinedAt: !4016)
!4207 = !DILocation(line: 380, column: 33, scope: !4204, inlinedAt: !4016)
!4208 = !DILocation(line: 381, column: 6, scope: !4209, inlinedAt: !4016)
!4209 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 381, column: 6)
!4210 = !DILocation(line: 381, column: 11, scope: !4209, inlinedAt: !4016)
!4211 = !DILocation(line: 381, column: 6, scope: !4012, inlinedAt: !4016)
!4212 = !DILocation(line: 381, column: 33, scope: !4209, inlinedAt: !4016)
!4213 = !DILocation(line: 382, column: 2, scope: !4214, inlinedAt: !4016)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !94, line: 382, column: 2)
!4215 = distinct !DILexicalBlock(scope: !4012, file: !94, line: 382, column: 2)
!4216 = !{i32 -2143510811, i32 -2143510782, i32 -2143510736, i32 -2143510678, i32 -2143510624, i32 -2143510570, i32 -2143510515, i32 -2143510484}
!4217 = !DILocation(line: 382, column: 2, scope: !4218, inlinedAt: !4016)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !94, line: 382, column: 2)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !94, line: 382, column: 2)
!4220 = !{i32 -2143510041, i32 -2143510034, i32 -2143509980, i32 -2143509949, i32 -2143509919}
!4221 = !DILocation(line: 382, column: 2, scope: !4219, inlinedAt: !4016)
!4222 = !DILocation(line: 386, column: 1, scope: !4012, inlinedAt: !4016)
!4223 = !DILocation(line: 547, column: 9, scope: !3995, inlinedAt: !3998)
!4224 = !DILocation(line: 549, column: 8, scope: !4225, inlinedAt: !3998)
!4225 = distinct !DILexicalBlock(scope: !3995, file: !94, line: 549, column: 7)
!4226 = !DILocation(line: 549, column: 7, scope: !3995, inlinedAt: !3998)
!4227 = !DILocation(line: 550, column: 4, scope: !4225, inlinedAt: !3998)
!4228 = !DILocation(line: 553, column: 33, scope: !3995, inlinedAt: !3998)
!4229 = !DILocation(line: 325, column: 6, scope: !4230, inlinedAt: !4010)
!4230 = distinct !DILexicalBlock(scope: !4006, file: !94, line: 325, column: 6)
!4231 = !DILocation(line: 325, column: 6, scope: !4006, inlinedAt: !4010)
!4232 = !DILocation(line: 326, column: 3, scope: !4230, inlinedAt: !4010)
!4233 = !DILocation(line: 332, column: 9, scope: !4006, inlinedAt: !4010)
!4234 = !DILocation(line: 332, column: 15, scope: !4006, inlinedAt: !4010)
!4235 = !DILocation(line: 332, column: 2, scope: !4006, inlinedAt: !4010)
!4236 = !DILocation(line: 336, column: 1, scope: !4006, inlinedAt: !4010)
!4237 = !DILocation(line: 553, column: 5, scope: !3995, inlinedAt: !3998)
!4238 = !DILocation(line: 553, column: 41, scope: !3995, inlinedAt: !3998)
!4239 = !DILocation(line: 554, column: 5, scope: !3995, inlinedAt: !3998)
!4240 = !DILocation(line: 554, column: 12, scope: !3995, inlinedAt: !3998)
!4241 = !DILocation(line: 448, column: 31, scope: !3990, inlinedAt: !3994)
!4242 = !DILocation(line: 448, column: 34, scope: !3990, inlinedAt: !3994)
!4243 = !DILocation(line: 448, column: 14, scope: !3990, inlinedAt: !3994)
!4244 = !DILocation(line: 450, column: 22, scope: !3990, inlinedAt: !3994)
!4245 = !DILocation(line: 450, column: 25, scope: !3990, inlinedAt: !3994)
!4246 = !DILocation(line: 450, column: 30, scope: !3990, inlinedAt: !3994)
!4247 = !DILocation(line: 450, column: 36, scope: !3990, inlinedAt: !3994)
!4248 = !DILocation(line: 450, column: 8, scope: !3990, inlinedAt: !3994)
!4249 = !DILocation(line: 450, column: 6, scope: !3990, inlinedAt: !3994)
!4250 = !DILocation(line: 451, column: 9, scope: !3990, inlinedAt: !3994)
!4251 = !DILocation(line: 552, column: 3, scope: !3995, inlinedAt: !3998)
!4252 = !DILocation(line: 557, column: 19, scope: !3997, inlinedAt: !3998)
!4253 = !DILocation(line: 557, column: 25, scope: !3997, inlinedAt: !3998)
!4254 = !DILocation(line: 557, column: 9, scope: !3997, inlinedAt: !3998)
!4255 = !DILocation(line: 557, column: 2, scope: !3997, inlinedAt: !3998)
!4256 = !DILocation(line: 558, column: 1, scope: !3997, inlinedAt: !3998)
!4257 = !DILocation(line: 664, column: 2, scope: !3986)
!4258 = distinct !DISubprogram(name: "pnp_register_protocol", scope: !3, file: !3, line: 59, type: !4259, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!126, !109}
!4261 = !DILocalVariable(name: "protocol", arg: 1, scope: !4258, file: !3, line: 59, type: !109)
!4262 = !DILocation(line: 59, column: 48, scope: !4258)
!4263 = !DILocalVariable(name: "pos", scope: !4258, file: !3, line: 61, type: !117)
!4264 = !DILocation(line: 61, column: 20, scope: !4258)
!4265 = !DILocalVariable(name: "nodenum", scope: !4258, file: !3, line: 62, type: !126)
!4266 = !DILocation(line: 62, column: 6, scope: !4258)
!4267 = !DILocalVariable(name: "ret", scope: !4258, file: !3, line: 62, type: !126)
!4268 = !DILocation(line: 62, column: 15, scope: !4258)
!4269 = !DILocation(line: 64, column: 18, scope: !4258)
!4270 = !DILocation(line: 64, column: 28, scope: !4258)
!4271 = !DILocation(line: 64, column: 2, scope: !4258)
!4272 = !DILocation(line: 65, column: 18, scope: !4258)
!4273 = !DILocation(line: 65, column: 28, scope: !4258)
!4274 = !DILocation(line: 65, column: 2, scope: !4258)
!4275 = !DILocation(line: 66, column: 10, scope: !4258)
!4276 = !DILocation(line: 68, column: 2, scope: !4258)
!4277 = !DILocation(line: 71, column: 2, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 71, column: 2)
!4279 = !DILocation(line: 71, column: 2, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 71, column: 2)
!4281 = !DILocalVariable(name: "cur", scope: !4282, file: !3, line: 72, type: !109)
!4282 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 71, column: 37)
!4283 = !DILocation(line: 72, column: 24, scope: !4282)
!4284 = !DILocalVariable(name: "__mptr", scope: !4285, file: !3, line: 72, type: !108)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 72, column: 30)
!4286 = !DILocation(line: 72, column: 30, scope: !4285)
!4287 = !DILocation(line: 72, column: 30, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 72, column: 30)
!4289 = !DILocation(line: 73, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 73, column: 7)
!4291 = !DILocation(line: 73, column: 12, scope: !4290)
!4292 = !DILocation(line: 73, column: 22, scope: !4290)
!4293 = !DILocation(line: 73, column: 19, scope: !4290)
!4294 = !DILocation(line: 73, column: 7, scope: !4282)
!4295 = !DILocation(line: 74, column: 8, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 73, column: 31)
!4297 = !DILocation(line: 75, column: 11, scope: !4296)
!4298 = !DILocation(line: 76, column: 3, scope: !4296)
!4299 = !DILocation(line: 77, column: 2, scope: !4282)
!4300 = distinct !{!4300, !4277, !4301}
!4301 = !DILocation(line: 77, column: 2, scope: !4278)
!4302 = !DILocation(line: 79, column: 21, scope: !4258)
!4303 = !DILocation(line: 79, column: 2, scope: !4258)
!4304 = !DILocation(line: 79, column: 12, scope: !4258)
!4305 = !DILocation(line: 79, column: 19, scope: !4258)
!4306 = !DILocation(line: 80, column: 16, scope: !4258)
!4307 = !DILocation(line: 80, column: 26, scope: !4258)
!4308 = !DILocation(line: 80, column: 40, scope: !4258)
!4309 = !DILocation(line: 80, column: 2, scope: !4258)
!4310 = !DILocation(line: 82, column: 17, scope: !4258)
!4311 = !DILocation(line: 82, column: 27, scope: !4258)
!4312 = !DILocation(line: 82, column: 2, scope: !4258)
!4313 = !DILocation(line: 84, column: 2, scope: !4258)
!4314 = !DILocation(line: 86, column: 25, scope: !4258)
!4315 = !DILocation(line: 86, column: 35, scope: !4258)
!4316 = !DILocation(line: 86, column: 8, scope: !4258)
!4317 = !DILocation(line: 86, column: 6, scope: !4258)
!4318 = !DILocation(line: 87, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 87, column: 6)
!4320 = !DILocation(line: 87, column: 6, scope: !4258)
!4321 = !DILocation(line: 88, column: 23, scope: !4319)
!4322 = !DILocation(line: 88, column: 3, scope: !4319)
!4323 = !DILocation(line: 90, column: 9, scope: !4258)
!4324 = !DILocation(line: 90, column: 2, scope: !4258)
!4325 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4326, file: !4326, line: 33, type: !4327, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4326 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !117}
!4329 = !DILocalVariable(name: "list", arg: 1, scope: !4325, file: !4326, line: 33, type: !117)
!4330 = !DILocation(line: 33, column: 53, scope: !4325)
!4331 = !DILocation(line: 35, column: 2, scope: !4325)
!4332 = !DILocation(line: 35, column: 2, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4325, file: !4326, line: 35, column: 2)
!4334 = !DILocation(line: 35, column: 2, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4333, file: !4326, line: 35, column: 2)
!4336 = !DILocation(line: 35, column: 2, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4333, file: !4326, line: 35, column: 2)
!4338 = !DILocation(line: 36, column: 15, scope: !4325)
!4339 = !DILocation(line: 36, column: 2, scope: !4325)
!4340 = !DILocation(line: 36, column: 8, scope: !4325)
!4341 = !DILocation(line: 36, column: 13, scope: !4325)
!4342 = !DILocation(line: 37, column: 1, scope: !4325)
!4343 = distinct !DISubprogram(name: "list_add_tail", scope: !4326, file: !4326, line: 98, type: !4344, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !117, !117}
!4346 = !DILocalVariable(name: "new", arg: 1, scope: !4343, file: !4326, line: 98, type: !117)
!4347 = !DILocation(line: 98, column: 52, scope: !4343)
!4348 = !DILocalVariable(name: "head", arg: 2, scope: !4343, file: !4326, line: 98, type: !117)
!4349 = !DILocation(line: 98, column: 75, scope: !4343)
!4350 = !DILocation(line: 100, column: 13, scope: !4343)
!4351 = !DILocation(line: 100, column: 18, scope: !4343)
!4352 = !DILocation(line: 100, column: 24, scope: !4343)
!4353 = !DILocation(line: 100, column: 30, scope: !4343)
!4354 = !DILocation(line: 100, column: 2, scope: !4343)
!4355 = !DILocation(line: 101, column: 1, scope: !4343)
!4356 = distinct !DISubprogram(name: "pnp_remove_protocol", scope: !3, file: !3, line: 46, type: !4357, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !109}
!4359 = !DILocalVariable(name: "protocol", arg: 1, scope: !4356, file: !3, line: 46, type: !109)
!4360 = !DILocation(line: 46, column: 54, scope: !4356)
!4361 = !DILocation(line: 48, column: 2, scope: !4356)
!4362 = !DILocation(line: 49, column: 12, scope: !4356)
!4363 = !DILocation(line: 49, column: 22, scope: !4356)
!4364 = !DILocation(line: 49, column: 2, scope: !4356)
!4365 = !DILocation(line: 50, column: 2, scope: !4356)
!4366 = !DILocation(line: 51, column: 1, scope: !4356)
!4367 = distinct !DISubprogram(name: "pnp_unregister_protocol", scope: !3, file: !3, line: 97, type: !4357, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4368 = !DILocalVariable(name: "protocol", arg: 1, scope: !4367, file: !3, line: 97, type: !109)
!4369 = !DILocation(line: 97, column: 51, scope: !4367)
!4370 = !DILocation(line: 99, column: 22, scope: !4367)
!4371 = !DILocation(line: 99, column: 2, scope: !4367)
!4372 = !DILocation(line: 100, column: 21, scope: !4367)
!4373 = !DILocation(line: 100, column: 31, scope: !4367)
!4374 = !DILocation(line: 100, column: 2, scope: !4367)
!4375 = !DILocation(line: 101, column: 1, scope: !4367)
!4376 = distinct !DISubprogram(name: "pnp_free_resource", scope: !3, file: !3, line: 116, type: !4377, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !3868}
!4379 = !DILocalVariable(name: "pnp_res", arg: 1, scope: !4376, file: !3, line: 116, type: !3868)
!4380 = !DILocation(line: 116, column: 45, scope: !4376)
!4381 = !DILocation(line: 118, column: 12, scope: !4376)
!4382 = !DILocation(line: 118, column: 21, scope: !4376)
!4383 = !DILocation(line: 118, column: 2, scope: !4376)
!4384 = !DILocation(line: 119, column: 8, scope: !4376)
!4385 = !DILocation(line: 119, column: 2, scope: !4376)
!4386 = !DILocation(line: 120, column: 1, scope: !4376)
!4387 = distinct !DISubprogram(name: "list_del", scope: !4326, file: !4326, line: 144, type: !4327, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4388 = !DILocalVariable(name: "entry", arg: 1, scope: !4387, file: !4326, line: 144, type: !117)
!4389 = !DILocation(line: 144, column: 47, scope: !4387)
!4390 = !DILocation(line: 146, column: 19, scope: !4387)
!4391 = !DILocation(line: 146, column: 2, scope: !4387)
!4392 = !DILocation(line: 147, column: 2, scope: !4387)
!4393 = !DILocation(line: 147, column: 9, scope: !4387)
!4394 = !DILocation(line: 147, column: 14, scope: !4387)
!4395 = !DILocation(line: 148, column: 2, scope: !4387)
!4396 = !DILocation(line: 148, column: 9, scope: !4387)
!4397 = !DILocation(line: 148, column: 14, scope: !4387)
!4398 = !DILocation(line: 149, column: 1, scope: !4387)
!4399 = distinct !DISubprogram(name: "pnp_free_resources", scope: !3, file: !3, line: 122, type: !3794, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4400 = !DILocalVariable(name: "dev", arg: 1, scope: !4399, file: !3, line: 122, type: !127)
!4401 = !DILocation(line: 122, column: 41, scope: !4399)
!4402 = !DILocalVariable(name: "pnp_res", scope: !4399, file: !3, line: 124, type: !3868)
!4403 = !DILocation(line: 124, column: 23, scope: !4399)
!4404 = !DILocalVariable(name: "tmp", scope: !4399, file: !3, line: 124, type: !3868)
!4405 = !DILocation(line: 124, column: 33, scope: !4399)
!4406 = !DILocalVariable(name: "__mptr", scope: !4407, file: !3, line: 126, type: !108)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 126, column: 2)
!4408 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 126, column: 2)
!4409 = !DILocation(line: 126, column: 2, scope: !4407)
!4410 = !DILocation(line: 126, column: 2, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 126, column: 2)
!4412 = !DILocation(line: 126, column: 2, scope: !4408)
!4413 = !DILocalVariable(name: "__mptr", scope: !4414, file: !3, line: 126, type: !108)
!4414 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 126, column: 2)
!4415 = !DILocation(line: 126, column: 2, scope: !4414)
!4416 = !DILocation(line: 126, column: 2, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 126, column: 2)
!4418 = !DILocation(line: 126, column: 2, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 126, column: 2)
!4420 = !DILocation(line: 127, column: 21, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 126, column: 64)
!4422 = !DILocation(line: 127, column: 3, scope: !4421)
!4423 = !DILocation(line: 128, column: 2, scope: !4421)
!4424 = !DILocalVariable(name: "__mptr", scope: !4425, file: !3, line: 126, type: !108)
!4425 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 126, column: 2)
!4426 = !DILocation(line: 126, column: 2, scope: !4425)
!4427 = !DILocation(line: 126, column: 2, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 126, column: 2)
!4429 = distinct !{!4429, !4412, !4430}
!4430 = !DILocation(line: 128, column: 2, scope: !4408)
!4431 = !DILocation(line: 129, column: 1, scope: !4399)
!4432 = distinct !DISubprogram(name: "pnp_alloc_dev", scope: !3, file: !3, line: 141, type: !4433, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!127, !109, !126, !138}
!4435 = !DILocalVariable(name: "protocol", arg: 1, scope: !4432, file: !3, line: 141, type: !109)
!4436 = !DILocation(line: 141, column: 52, scope: !4432)
!4437 = !DILocalVariable(name: "id", arg: 2, scope: !4432, file: !3, line: 141, type: !126)
!4438 = !DILocation(line: 141, column: 66, scope: !4432)
!4439 = !DILocalVariable(name: "pnpid", arg: 3, scope: !4432, file: !3, line: 142, type: !138)
!4440 = !DILocation(line: 142, column: 22, scope: !4432)
!4441 = !DILocalVariable(name: "dev", scope: !4432, file: !3, line: 144, type: !127)
!4442 = !DILocation(line: 144, column: 18, scope: !4432)
!4443 = !DILocalVariable(name: "dev_id", scope: !4432, file: !3, line: 145, type: !3758)
!4444 = !DILocation(line: 145, column: 17, scope: !4432)
!4445 = !DILocation(line: 147, column: 8, scope: !4432)
!4446 = !DILocation(line: 147, column: 6, scope: !4432)
!4447 = !DILocation(line: 148, column: 7, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 148, column: 6)
!4449 = !DILocation(line: 148, column: 6, scope: !4432)
!4450 = !DILocation(line: 149, column: 3, scope: !4448)
!4451 = !DILocation(line: 151, column: 18, scope: !4432)
!4452 = !DILocation(line: 151, column: 23, scope: !4432)
!4453 = !DILocation(line: 151, column: 2, scope: !4432)
!4454 = !DILocation(line: 152, column: 18, scope: !4432)
!4455 = !DILocation(line: 152, column: 23, scope: !4432)
!4456 = !DILocation(line: 152, column: 2, scope: !4432)
!4457 = !DILocation(line: 153, column: 18, scope: !4432)
!4458 = !DILocation(line: 153, column: 2, scope: !4432)
!4459 = !DILocation(line: 153, column: 7, scope: !4432)
!4460 = !DILocation(line: 153, column: 16, scope: !4432)
!4461 = !DILocation(line: 154, column: 16, scope: !4432)
!4462 = !DILocation(line: 154, column: 2, scope: !4432)
!4463 = !DILocation(line: 154, column: 7, scope: !4432)
!4464 = !DILocation(line: 154, column: 14, scope: !4432)
!4465 = !DILocation(line: 155, column: 2, scope: !4432)
!4466 = !DILocation(line: 155, column: 7, scope: !4432)
!4467 = !DILocation(line: 155, column: 16, scope: !4432)
!4468 = !DILocation(line: 157, column: 21, scope: !4432)
!4469 = !DILocation(line: 157, column: 26, scope: !4432)
!4470 = !DILocation(line: 157, column: 36, scope: !4432)
!4471 = !DILocation(line: 157, column: 2, scope: !4432)
!4472 = !DILocation(line: 157, column: 7, scope: !4432)
!4473 = !DILocation(line: 157, column: 11, scope: !4432)
!4474 = !DILocation(line: 157, column: 18, scope: !4432)
!4475 = !DILocation(line: 158, column: 2, scope: !4432)
!4476 = !DILocation(line: 158, column: 7, scope: !4432)
!4477 = !DILocation(line: 158, column: 11, scope: !4432)
!4478 = !DILocation(line: 158, column: 15, scope: !4432)
!4479 = !DILocation(line: 159, column: 23, scope: !4432)
!4480 = !DILocation(line: 159, column: 28, scope: !4432)
!4481 = !DILocation(line: 159, column: 2, scope: !4432)
!4482 = !DILocation(line: 159, column: 7, scope: !4432)
!4483 = !DILocation(line: 159, column: 11, scope: !4432)
!4484 = !DILocation(line: 159, column: 20, scope: !4432)
!4485 = !DILocation(line: 160, column: 31, scope: !4432)
!4486 = !DILocation(line: 160, column: 36, scope: !4432)
!4487 = !DILocation(line: 160, column: 2, scope: !4432)
!4488 = !DILocation(line: 160, column: 7, scope: !4432)
!4489 = !DILocation(line: 160, column: 11, scope: !4432)
!4490 = !DILocation(line: 160, column: 29, scope: !4432)
!4491 = !DILocation(line: 161, column: 2, scope: !4432)
!4492 = !DILocation(line: 161, column: 7, scope: !4432)
!4493 = !DILocation(line: 161, column: 11, scope: !4432)
!4494 = !DILocation(line: 161, column: 19, scope: !4432)
!4495 = !DILocation(line: 163, column: 16, scope: !4432)
!4496 = !DILocation(line: 163, column: 21, scope: !4432)
!4497 = !DILocation(line: 163, column: 39, scope: !4432)
!4498 = !DILocation(line: 163, column: 44, scope: !4432)
!4499 = !DILocation(line: 163, column: 54, scope: !4432)
!4500 = !DILocation(line: 163, column: 62, scope: !4432)
!4501 = !DILocation(line: 163, column: 67, scope: !4432)
!4502 = !DILocation(line: 163, column: 2, scope: !4432)
!4503 = !DILocation(line: 165, column: 22, scope: !4432)
!4504 = !DILocation(line: 165, column: 27, scope: !4432)
!4505 = !DILocation(line: 165, column: 11, scope: !4432)
!4506 = !DILocation(line: 165, column: 9, scope: !4432)
!4507 = !DILocation(line: 166, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 166, column: 6)
!4509 = !DILocation(line: 166, column: 6, scope: !4432)
!4510 = !DILocation(line: 167, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 166, column: 15)
!4512 = !DILocation(line: 167, column: 3, scope: !4511)
!4513 = !DILocation(line: 168, column: 3, scope: !4511)
!4514 = !DILocation(line: 171, column: 9, scope: !4432)
!4515 = !DILocation(line: 171, column: 2, scope: !4432)
!4516 = !DILocation(line: 172, column: 1, scope: !4432)
!4517 = distinct !DISubprogram(name: "pnp_release_device", scope: !3, file: !3, line: 131, type: !3316, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4518 = !DILocalVariable(name: "dmdev", arg: 1, scope: !4517, file: !3, line: 131, type: !3293)
!4519 = !DILocation(line: 131, column: 47, scope: !4517)
!4520 = !DILocalVariable(name: "dev", scope: !4517, file: !3, line: 133, type: !127)
!4521 = !DILocation(line: 133, column: 18, scope: !4517)
!4522 = !DILocalVariable(name: "__mptr", scope: !4523, file: !3, line: 133, type: !108)
!4523 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 133, column: 24)
!4524 = !DILocation(line: 133, column: 24, scope: !4523)
!4525 = !DILocation(line: 133, column: 24, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 133, column: 24)
!4527 = !DILocation(line: 135, column: 15, scope: !4517)
!4528 = !DILocation(line: 135, column: 2, scope: !4517)
!4529 = !DILocation(line: 136, column: 21, scope: !4517)
!4530 = !DILocation(line: 136, column: 2, scope: !4517)
!4531 = !DILocation(line: 137, column: 19, scope: !4517)
!4532 = !DILocation(line: 137, column: 2, scope: !4517)
!4533 = !DILocation(line: 138, column: 8, scope: !4517)
!4534 = !DILocation(line: 138, column: 2, scope: !4517)
!4535 = !DILocation(line: 139, column: 1, scope: !4517)
!4536 = distinct !DISubprogram(name: "__pnp_add_device", scope: !3, file: !3, line: 182, type: !124, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4537 = !DILocalVariable(name: "dev", arg: 1, scope: !4536, file: !3, line: 182, type: !127)
!4538 = !DILocation(line: 182, column: 38, scope: !4536)
!4539 = !DILocalVariable(name: "ret", scope: !4536, file: !3, line: 184, type: !126)
!4540 = !DILocation(line: 184, column: 6, scope: !4536)
!4541 = !DILocation(line: 186, column: 19, scope: !4536)
!4542 = !DILocation(line: 186, column: 2, scope: !4536)
!4543 = !DILocation(line: 187, column: 2, scope: !4536)
!4544 = !DILocation(line: 187, column: 7, scope: !4536)
!4545 = !DILocation(line: 187, column: 14, scope: !4536)
!4546 = !DILocation(line: 189, column: 2, scope: !4536)
!4547 = !DILocation(line: 191, column: 17, scope: !4536)
!4548 = !DILocation(line: 191, column: 22, scope: !4536)
!4549 = !DILocation(line: 191, column: 2, scope: !4536)
!4550 = !DILocation(line: 192, column: 17, scope: !4536)
!4551 = !DILocation(line: 192, column: 22, scope: !4536)
!4552 = !DILocation(line: 192, column: 38, scope: !4536)
!4553 = !DILocation(line: 192, column: 43, scope: !4536)
!4554 = !DILocation(line: 192, column: 53, scope: !4536)
!4555 = !DILocation(line: 192, column: 2, scope: !4536)
!4556 = !DILocation(line: 194, column: 2, scope: !4536)
!4557 = !DILocation(line: 196, column: 25, scope: !4536)
!4558 = !DILocation(line: 196, column: 30, scope: !4536)
!4559 = !DILocation(line: 196, column: 8, scope: !4536)
!4560 = !DILocation(line: 196, column: 6, scope: !4536)
!4561 = !DILocation(line: 197, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 197, column: 6)
!4563 = !DILocation(line: 197, column: 6, scope: !4536)
!4564 = !DILocation(line: 198, column: 21, scope: !4562)
!4565 = !DILocation(line: 198, column: 3, scope: !4562)
!4566 = !DILocation(line: 199, column: 11, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 199, column: 11)
!4568 = !DILocation(line: 199, column: 16, scope: !4567)
!4569 = !DILocation(line: 199, column: 26, scope: !4567)
!4570 = !DILocation(line: 199, column: 11, scope: !4562)
!4571 = !DILocation(line: 200, column: 30, scope: !4567)
!4572 = !DILocation(line: 200, column: 35, scope: !4567)
!4573 = !DILocation(line: 201, column: 5, scope: !4567)
!4574 = !DILocation(line: 201, column: 10, scope: !4567)
!4575 = !DILocation(line: 201, column: 20, scope: !4567)
!4576 = !DILocation(line: 201, column: 31, scope: !4567)
!4577 = !DILocation(line: 200, column: 3, scope: !4567)
!4578 = !DILocation(line: 203, column: 9, scope: !4536)
!4579 = !DILocation(line: 203, column: 2, scope: !4536)
!4580 = distinct !DISubprogram(name: "pnp_delist_device", scope: !3, file: !3, line: 174, type: !3794, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4581 = !DILocalVariable(name: "dev", arg: 1, scope: !4580, file: !3, line: 174, type: !127)
!4582 = !DILocation(line: 174, column: 47, scope: !4580)
!4583 = !DILocation(line: 176, column: 2, scope: !4580)
!4584 = !DILocation(line: 177, column: 12, scope: !4580)
!4585 = !DILocation(line: 177, column: 17, scope: !4580)
!4586 = !DILocation(line: 177, column: 2, scope: !4580)
!4587 = !DILocation(line: 178, column: 12, scope: !4580)
!4588 = !DILocation(line: 178, column: 17, scope: !4580)
!4589 = !DILocation(line: 178, column: 2, scope: !4580)
!4590 = !DILocation(line: 179, column: 2, scope: !4580)
!4591 = !DILocation(line: 180, column: 1, scope: !4580)
!4592 = distinct !DISubprogram(name: "pnp_add_device", scope: !3, file: !3, line: 212, type: !124, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4593 = !DILocalVariable(name: "dev", arg: 1, scope: !4592, file: !3, line: 212, type: !127)
!4594 = !DILocation(line: 212, column: 36, scope: !4592)
!4595 = !DILocalVariable(name: "ret", scope: !4592, file: !3, line: 214, type: !126)
!4596 = !DILocation(line: 214, column: 6, scope: !4592)
!4597 = !DILocalVariable(name: "buf", scope: !4592, file: !3, line: 215, type: !3382)
!4598 = !DILocation(line: 215, column: 7, scope: !4592)
!4599 = !DILocalVariable(name: "len", scope: !4592, file: !3, line: 216, type: !126)
!4600 = !DILocation(line: 216, column: 6, scope: !4592)
!4601 = !DILocalVariable(name: "id", scope: !4592, file: !3, line: 217, type: !3758)
!4602 = !DILocation(line: 217, column: 17, scope: !4592)
!4603 = !DILocation(line: 219, column: 6, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 219, column: 6)
!4605 = !DILocation(line: 219, column: 11, scope: !4604)
!4606 = !DILocation(line: 219, column: 6, scope: !4592)
!4607 = !DILocation(line: 220, column: 3, scope: !4604)
!4608 = !DILocation(line: 222, column: 25, scope: !4592)
!4609 = !DILocation(line: 222, column: 8, scope: !4592)
!4610 = !DILocation(line: 222, column: 6, scope: !4592)
!4611 = !DILocation(line: 223, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 223, column: 6)
!4613 = !DILocation(line: 223, column: 6, scope: !4592)
!4614 = !DILocation(line: 224, column: 10, scope: !4612)
!4615 = !DILocation(line: 224, column: 3, scope: !4612)
!4616 = !DILocation(line: 226, column: 2, scope: !4592)
!4617 = !DILocation(line: 226, column: 9, scope: !4592)
!4618 = !DILocation(line: 227, column: 12, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 227, column: 2)
!4620 = !DILocation(line: 227, column: 17, scope: !4619)
!4621 = !DILocation(line: 227, column: 10, scope: !4619)
!4622 = !DILocation(line: 227, column: 7, scope: !4619)
!4623 = !DILocation(line: 227, column: 21, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 227, column: 2)
!4625 = !DILocation(line: 227, column: 2, scope: !4619)
!4626 = !DILocation(line: 228, column: 20, scope: !4624)
!4627 = !DILocation(line: 228, column: 26, scope: !4624)
!4628 = !DILocation(line: 228, column: 24, scope: !4624)
!4629 = !DILocation(line: 228, column: 45, scope: !4624)
!4630 = !DILocation(line: 228, column: 43, scope: !4624)
!4631 = !DILocation(line: 228, column: 57, scope: !4624)
!4632 = !DILocation(line: 228, column: 61, scope: !4624)
!4633 = !DILocation(line: 228, column: 10, scope: !4624)
!4634 = !DILocation(line: 228, column: 7, scope: !4624)
!4635 = !DILocation(line: 228, column: 3, scope: !4624)
!4636 = !DILocation(line: 227, column: 30, scope: !4624)
!4637 = !DILocation(line: 227, column: 34, scope: !4624)
!4638 = !DILocation(line: 227, column: 28, scope: !4624)
!4639 = !DILocation(line: 227, column: 2, scope: !4624)
!4640 = distinct !{!4640, !4625, !4641}
!4641 = !DILocation(line: 228, column: 63, scope: !4619)
!4642 = !DILocation(line: 230, column: 26, scope: !4592)
!4643 = !DILocation(line: 230, column: 31, scope: !4592)
!4644 = !DILocation(line: 231, column: 6, scope: !4592)
!4645 = !DILocation(line: 231, column: 11, scope: !4592)
!4646 = !DILocation(line: 231, column: 21, scope: !4592)
!4647 = !DILocation(line: 231, column: 27, scope: !4592)
!4648 = !DILocation(line: 232, column: 6, scope: !4592)
!4649 = !DILocation(line: 232, column: 11, scope: !4592)
!4650 = !DILocation(line: 230, column: 2, scope: !4592)
!4651 = !DILocation(line: 233, column: 2, scope: !4592)
!4652 = !DILocation(line: 234, column: 1, scope: !4592)
!4653 = distinct !DISubprogram(name: "__pnp_remove_device", scope: !3, file: !3, line: 236, type: !3794, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4654 = !DILocalVariable(name: "dev", arg: 1, scope: !4653, file: !3, line: 236, type: !127)
!4655 = !DILocation(line: 236, column: 42, scope: !4653)
!4656 = !DILocation(line: 238, column: 20, scope: !4653)
!4657 = !DILocation(line: 238, column: 2, scope: !4653)
!4658 = !DILocation(line: 239, column: 21, scope: !4653)
!4659 = !DILocation(line: 239, column: 26, scope: !4653)
!4660 = !DILocation(line: 239, column: 2, scope: !4653)
!4661 = !DILocation(line: 240, column: 1, scope: !4653)
!4662 = distinct !DISubprogram(name: "pnp_init", scope: !3, file: !3, line: 242, type: !4663, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!126}
!4665 = !DILocation(line: 244, column: 9, scope: !4662)
!4666 = !DILocation(line: 244, column: 2, scope: !4662)
!4667 = distinct !DISubprogram(name: "get_order", scope: !4668, file: !4668, line: 29, type: !4669, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4668 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!126, !239}
!4671 = !DILocalVariable(name: "x", arg: 1, scope: !4672, file: !4673, line: 366, type: !337)
!4672 = distinct !DISubprogram(name: "fls64", scope: !4673, file: !4673, line: 366, type: !4674, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4673 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!126, !337}
!4676 = !DILocation(line: 366, column: 40, scope: !4672, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 46, column: 9, scope: !4667)
!4678 = !DILocalVariable(name: "bitpos", scope: !4672, file: !4673, line: 368, type: !126)
!4679 = !DILocation(line: 368, column: 6, scope: !4672, inlinedAt: !4677)
!4680 = !DILocalVariable(name: "size", arg: 1, scope: !4667, file: !4668, line: 29, type: !239)
!4681 = !DILocation(line: 29, column: 63, scope: !4667)
!4682 = !DILocation(line: 31, column: 27, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4667, file: !4668, line: 31, column: 6)
!4684 = !DILocation(line: 31, column: 6, scope: !4683)
!4685 = !DILocation(line: 31, column: 6, scope: !4667)
!4686 = !DILocation(line: 32, column: 8, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !4668, line: 32, column: 7)
!4688 = distinct !DILexicalBlock(scope: !4683, file: !4668, line: 31, column: 34)
!4689 = !DILocation(line: 32, column: 7, scope: !4688)
!4690 = !DILocation(line: 33, column: 4, scope: !4687)
!4691 = !DILocation(line: 35, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !4668, line: 35, column: 7)
!4693 = !DILocation(line: 35, column: 12, scope: !4692)
!4694 = !DILocation(line: 35, column: 7, scope: !4688)
!4695 = !DILocation(line: 36, column: 4, scope: !4692)
!4696 = !DILocation(line: 38, column: 10, scope: !4688)
!4697 = !DILocation(line: 38, column: 28, scope: !4688)
!4698 = !DILocation(line: 38, column: 41, scope: !4688)
!4699 = !DILocation(line: 38, column: 3, scope: !4688)
!4700 = !DILocation(line: 41, column: 6, scope: !4667)
!4701 = !DILocation(line: 42, column: 7, scope: !4667)
!4702 = !DILocation(line: 46, column: 15, scope: !4667)
!4703 = !DILocation(line: 374, column: 2, scope: !4672, inlinedAt: !4677)
!4704 = !DILocation(line: 376, column: 14, scope: !4672, inlinedAt: !4677)
!4705 = !{i32 395742}
!4706 = !DILocation(line: 377, column: 9, scope: !4672, inlinedAt: !4677)
!4707 = !DILocation(line: 377, column: 16, scope: !4672, inlinedAt: !4677)
!4708 = !DILocation(line: 46, column: 2, scope: !4667)
!4709 = !DILocation(line: 48, column: 1, scope: !4667)
!4710 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4711, file: !4711, line: 30, type: !4712, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4711 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!126, !336}
!4714 = !DILocation(line: 366, column: 40, scope: !4672, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 32, column: 9, scope: !4710)
!4716 = !DILocation(line: 368, column: 6, scope: !4672, inlinedAt: !4715)
!4717 = !DILocalVariable(name: "n", arg: 1, scope: !4710, file: !4711, line: 30, type: !336)
!4718 = !DILocation(line: 30, column: 21, scope: !4710)
!4719 = !DILocation(line: 32, column: 15, scope: !4710)
!4720 = !DILocation(line: 374, column: 2, scope: !4672, inlinedAt: !4715)
!4721 = !DILocation(line: 376, column: 14, scope: !4672, inlinedAt: !4715)
!4722 = !DILocation(line: 377, column: 9, scope: !4672, inlinedAt: !4715)
!4723 = !DILocation(line: 377, column: 16, scope: !4672, inlinedAt: !4715)
!4724 = !DILocation(line: 32, column: 18, scope: !4710)
!4725 = !DILocation(line: 32, column: 2, scope: !4710)
!4726 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4727, file: !4727, line: 137, type: !4728, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4727 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!108, !853, !2047, !236, !106}
!4730 = !DILocalVariable(name: "s", arg: 1, scope: !4726, file: !4727, line: 137, type: !853)
!4731 = !DILocation(line: 137, column: 54, scope: !4726)
!4732 = !DILocalVariable(name: "object", arg: 2, scope: !4726, file: !4727, line: 137, type: !2047)
!4733 = !DILocation(line: 137, column: 69, scope: !4726)
!4734 = !DILocalVariable(name: "size", arg: 3, scope: !4726, file: !4727, line: 138, type: !236)
!4735 = !DILocation(line: 138, column: 12, scope: !4726)
!4736 = !DILocalVariable(name: "flags", arg: 4, scope: !4726, file: !4727, line: 138, type: !106)
!4737 = !DILocation(line: 138, column: 24, scope: !4726)
!4738 = !DILocation(line: 140, column: 17, scope: !4726)
!4739 = !DILocation(line: 140, column: 2, scope: !4726)
!4740 = distinct !DISubprogram(name: "__list_add", scope: !4326, file: !4326, line: 63, type: !4741, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{null, !117, !117, !117}
!4743 = !DILocalVariable(name: "new", arg: 1, scope: !4740, file: !4326, line: 63, type: !117)
!4744 = !DILocation(line: 63, column: 49, scope: !4740)
!4745 = !DILocalVariable(name: "prev", arg: 2, scope: !4740, file: !4326, line: 64, type: !117)
!4746 = !DILocation(line: 64, column: 28, scope: !4740)
!4747 = !DILocalVariable(name: "next", arg: 3, scope: !4740, file: !4326, line: 65, type: !117)
!4748 = !DILocation(line: 65, column: 28, scope: !4740)
!4749 = !DILocation(line: 67, column: 24, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4740, file: !4326, line: 67, column: 6)
!4751 = !DILocation(line: 67, column: 29, scope: !4750)
!4752 = !DILocation(line: 67, column: 35, scope: !4750)
!4753 = !DILocation(line: 67, column: 7, scope: !4750)
!4754 = !DILocation(line: 67, column: 6, scope: !4740)
!4755 = !DILocation(line: 68, column: 3, scope: !4750)
!4756 = !DILocation(line: 70, column: 15, scope: !4740)
!4757 = !DILocation(line: 70, column: 2, scope: !4740)
!4758 = !DILocation(line: 70, column: 8, scope: !4740)
!4759 = !DILocation(line: 70, column: 13, scope: !4740)
!4760 = !DILocation(line: 71, column: 14, scope: !4740)
!4761 = !DILocation(line: 71, column: 2, scope: !4740)
!4762 = !DILocation(line: 71, column: 7, scope: !4740)
!4763 = !DILocation(line: 71, column: 12, scope: !4740)
!4764 = !DILocation(line: 72, column: 14, scope: !4740)
!4765 = !DILocation(line: 72, column: 2, scope: !4740)
!4766 = !DILocation(line: 72, column: 7, scope: !4740)
!4767 = !DILocation(line: 72, column: 12, scope: !4740)
!4768 = !DILocation(line: 73, column: 2, scope: !4740)
!4769 = !DILocation(line: 73, column: 2, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4740, file: !4326, line: 73, column: 2)
!4771 = !DILocation(line: 73, column: 2, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !4326, line: 73, column: 2)
!4773 = !DILocation(line: 73, column: 2, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4770, file: !4326, line: 73, column: 2)
!4775 = !DILocation(line: 74, column: 1, scope: !4740)
!4776 = distinct !DISubprogram(name: "__list_add_valid", scope: !4326, file: !4326, line: 45, type: !4777, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!405, !117, !117, !117}
!4779 = !DILocalVariable(name: "new", arg: 1, scope: !4776, file: !4326, line: 45, type: !117)
!4780 = !DILocation(line: 45, column: 55, scope: !4776)
!4781 = !DILocalVariable(name: "prev", arg: 2, scope: !4776, file: !4326, line: 46, type: !117)
!4782 = !DILocation(line: 46, column: 23, scope: !4776)
!4783 = !DILocalVariable(name: "next", arg: 3, scope: !4776, file: !4326, line: 47, type: !117)
!4784 = !DILocation(line: 47, column: 23, scope: !4776)
!4785 = !DILocation(line: 49, column: 2, scope: !4776)
!4786 = distinct !DISubprogram(name: "__list_del_entry", scope: !4326, file: !4326, line: 130, type: !4327, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4787 = !DILocalVariable(name: "entry", arg: 1, scope: !4786, file: !4326, line: 130, type: !117)
!4788 = !DILocation(line: 130, column: 55, scope: !4786)
!4789 = !DILocation(line: 132, column: 30, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4786, file: !4326, line: 132, column: 6)
!4791 = !DILocation(line: 132, column: 7, scope: !4790)
!4792 = !DILocation(line: 132, column: 6, scope: !4786)
!4793 = !DILocation(line: 133, column: 3, scope: !4790)
!4794 = !DILocation(line: 135, column: 13, scope: !4786)
!4795 = !DILocation(line: 135, column: 20, scope: !4786)
!4796 = !DILocation(line: 135, column: 26, scope: !4786)
!4797 = !DILocation(line: 135, column: 33, scope: !4786)
!4798 = !DILocation(line: 135, column: 2, scope: !4786)
!4799 = !DILocation(line: 136, column: 1, scope: !4786)
!4800 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4326, file: !4326, line: 51, type: !4801, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!405, !117}
!4803 = !DILocalVariable(name: "entry", arg: 1, scope: !4800, file: !4326, line: 51, type: !117)
!4804 = !DILocation(line: 51, column: 61, scope: !4800)
!4805 = !DILocation(line: 53, column: 2, scope: !4800)
!4806 = distinct !DISubprogram(name: "__list_del", scope: !4326, file: !4326, line: 110, type: !4344, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4807 = !DILocalVariable(name: "prev", arg: 1, scope: !4806, file: !4326, line: 110, type: !117)
!4808 = !DILocation(line: 110, column: 50, scope: !4806)
!4809 = !DILocalVariable(name: "next", arg: 2, scope: !4806, file: !4326, line: 110, type: !117)
!4810 = !DILocation(line: 110, column: 75, scope: !4806)
!4811 = !DILocation(line: 112, column: 15, scope: !4806)
!4812 = !DILocation(line: 112, column: 2, scope: !4806)
!4813 = !DILocation(line: 112, column: 8, scope: !4806)
!4814 = !DILocation(line: 112, column: 13, scope: !4806)
!4815 = !DILocation(line: 113, column: 2, scope: !4806)
!4816 = !DILocation(line: 113, column: 2, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !4326, line: 113, column: 2)
!4818 = !DILocation(line: 113, column: 2, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4817, file: !4326, line: 113, column: 2)
!4820 = !DILocation(line: 113, column: 2, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4817, file: !4326, line: 113, column: 2)
!4822 = !DILocation(line: 114, column: 1, scope: !4806)
!4823 = distinct !DISubprogram(name: "pnp_free_ids", scope: !3, file: !3, line: 103, type: !3794, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !163)
!4824 = !DILocalVariable(name: "dev", arg: 1, scope: !4823, file: !3, line: 103, type: !127)
!4825 = !DILocation(line: 103, column: 42, scope: !4823)
!4826 = !DILocalVariable(name: "id", scope: !4823, file: !3, line: 105, type: !3758)
!4827 = !DILocation(line: 105, column: 17, scope: !4823)
!4828 = !DILocalVariable(name: "next", scope: !4823, file: !3, line: 106, type: !3758)
!4829 = !DILocation(line: 106, column: 17, scope: !4823)
!4830 = !DILocation(line: 108, column: 7, scope: !4823)
!4831 = !DILocation(line: 108, column: 12, scope: !4823)
!4832 = !DILocation(line: 108, column: 5, scope: !4823)
!4833 = !DILocation(line: 109, column: 2, scope: !4823)
!4834 = !DILocation(line: 109, column: 9, scope: !4823)
!4835 = !DILocation(line: 110, column: 10, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 109, column: 13)
!4837 = !DILocation(line: 110, column: 14, scope: !4836)
!4838 = !DILocation(line: 110, column: 8, scope: !4836)
!4839 = !DILocation(line: 111, column: 9, scope: !4836)
!4840 = !DILocation(line: 111, column: 3, scope: !4836)
!4841 = !DILocation(line: 112, column: 8, scope: !4836)
!4842 = !DILocation(line: 112, column: 6, scope: !4836)
!4843 = distinct !{!4843, !4833, !4844}
!4844 = !DILocation(line: 113, column: 2, scope: !4823)
!4845 = !DILocation(line: 114, column: 1, scope: !4823)
