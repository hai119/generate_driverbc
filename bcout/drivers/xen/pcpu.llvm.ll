; ModuleID = '../bcout/drivers/xen/pcpu.llvm.bc'
source_filename = "drivers/xen/pcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall3.init\22, \22a\22\09"
module asm "__initcall_xen_pcpu_init3:\09\09\09"
module asm ".long\09xen_pcpu_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kmem_cache = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.79, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.79 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.14, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.15, i8* }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.17, %union.anon.67, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.67 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.68, i32 }
%union.anon.68 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.61, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.31, [0 x i64] }
%struct.anon.31 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.32, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.32 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.38, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.39, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.40, %union.anon.44, %struct.key_restriction* }
%union.anon.38 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.39 = type { i64 }
%union.anon.40 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.41, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.41 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.44 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.60, i32, [12 x i8] }
%union.anon.60 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.61 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.62, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.65 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i64, i64 }
%union.anon.65 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.20 }
%union.anon.20 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.72 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.46 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.46 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.80 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.anon.82, %union.anon.83 }
%struct.anon.82 = type { i16, i16, i32 }
%union.anon.83 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.xen_platform_op = type { i32, i32, %union.anon }
%union.anon = type { %struct.xenpf_set_processor_pminfo, [16 x i8] }
%struct.xenpf_set_processor_pminfo = type { i32, i32, %union.anon.13 }
%union.anon.13 = type { %struct.xen_processor_performance }
%struct.xen_processor_performance = type { i32, i32, %struct.xen_pct_register, %struct.xen_pct_register, i32, %struct.xen_processor_px*, %struct.xen_psd_package, i32 }
%struct.xen_pct_register = type { i8, i16, i8, i8, i8, i8, i64 }
%struct.xen_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.xen_psd_package = type { i64, i64, i64, i64, i64 }
%struct.xenpf_pcpuinfo = type { i32, i32, i32, i32, i32 }
%struct.pcpu = type { %struct.list_head, %struct.device, i32, i32 }
%struct.xenpf_cpu_ol = type { i32 }

@xen_pcpu_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @xen_pcpu_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @xen_pcpu_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @xen_pcpu_work_fn }, align 8, !dbg !0
@__UNIQUE_ID___addressable_xen_pcpu_init236 = internal global i8* bitcast (i32 ()* @xen_pcpu_init to i8*), section ".discard.addressable", align 8, !dbg !4043
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@xen_pcpu_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xen_pcpu_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @xen_pcpu_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4045
@xen_pcpus = internal global %struct.list_head { %struct.list_head* @xen_pcpus, %struct.list_head* @xen_pcpus }, align 8, !dbg !4071
@.str = private unnamed_addr constant [38 x i8] c"\014xen_cpu: Failed to register pcpu%u\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@xen_pcpu_subsys = internal global %struct.bus_type { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !4047
@pcpu_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @pcpu_dev_group, %struct.attribute_group* null], align 16, !dbg !4049
@.str.2 = private unnamed_addr constant [8 x i8] c"xen_cpu\00", align 1
@pcpu_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @pcpu_dev_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @pcpu_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4052
@pcpu_dev_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_online, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4054
@dev_attr_online = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_online, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_online }, align 8, !dbg !4057
@.str.3 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"xen-pcpu\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\014xen_cpu: Failed to bind pcpu virq\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\014xen_cpu: Failed to register pcpu subsys\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\014xen_cpu: Failed to sync pcpu info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xen_pcpu_init236 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_pcpu_hotplug_sync() #0 !dbg !4079 {
entry:
  %call = call zeroext i1 @schedule_work(%struct.work_struct* @xen_pcpu_work) #11, !dbg !4080
  ret void, !dbg !4081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !4082 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4085, metadata !DIExpression()), !dbg !4086
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !4087
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4088
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !4089
  ret i1 %call, !dbg !4090
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_pcpu_id(i32 %acpi_id) #0 !dbg !4091 {
entry:
  %retval = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %cpu_id = alloca i32, align 4
  %max_id = alloca i32, align 4
  %op = alloca %struct.xen_platform_op, align 8
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata i32* %cpu_id, metadata !4096, metadata !DIExpression()), !dbg !4097
  store i32 0, i32* %cpu_id, align 4, !dbg !4097
  call void @llvm.dbg.declare(metadata i32* %max_id, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i32 0, i32* %max_id, align 4, !dbg !4099
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op* %op, metadata !4100, metadata !DIExpression()), !dbg !4431
  %cmd = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 0, !dbg !4432
  store i32 55, i32* %cmd, align 8, !dbg !4433
  br label %while.cond, !dbg !4434

while.cond:                                       ; preds = %if.end14, %if.then, %entry
  %0 = load i32, i32* %cpu_id, align 4, !dbg !4435
  %1 = load i32, i32* %max_id, align 4, !dbg !4436
  %cmp = icmp sle i32 %0, %1, !dbg !4437
  br i1 %cmp, label %while.body, label %while.end, !dbg !4434

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %cpu_id, align 4, !dbg !4438
  %u = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4440
  %pcpu_info = bitcast %union.anon* %u to %struct.xenpf_pcpuinfo*, !dbg !4441
  %xen_cpuid = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %pcpu_info, i32 0, i32 0, !dbg !4442
  store i32 %2, i32* %xen_cpuid, align 8, !dbg !4443
  %call = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #11, !dbg !4444
  %tobool = icmp ne i32 %call, 0, !dbg !4444
  br i1 %tobool, label %if.then, label %if.end, !dbg !4446

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %cpu_id, align 4, !dbg !4447
  %inc = add i32 %3, 1, !dbg !4447
  store i32 %inc, i32* %cpu_id, align 4, !dbg !4447
  br label %while.cond, !dbg !4449, !llvm.loop !4450

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* %acpi_id.addr, align 4, !dbg !4452
  %u1 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4454
  %pcpu_info2 = bitcast %union.anon* %u1 to %struct.xenpf_pcpuinfo*, !dbg !4455
  %acpi_id3 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %pcpu_info2, i32 0, i32 4, !dbg !4456
  %5 = load i32, i32* %acpi_id3, align 8, !dbg !4456
  %cmp4 = icmp eq i32 %4, %5, !dbg !4457
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4458

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %cpu_id, align 4, !dbg !4459
  store i32 %6, i32* %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

if.end6:                                          ; preds = %if.end
  %u7 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4461
  %pcpu_info8 = bitcast %union.anon* %u7 to %struct.xenpf_pcpuinfo*, !dbg !4463
  %max_present = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %pcpu_info8, i32 0, i32 1, !dbg !4464
  %7 = load i32, i32* %max_present, align 4, !dbg !4464
  %8 = load i32, i32* %max_id, align 4, !dbg !4465
  %cmp9 = icmp ugt i32 %7, %8, !dbg !4466
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !4467

if.then10:                                        ; preds = %if.end6
  %u11 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4468
  %pcpu_info12 = bitcast %union.anon* %u11 to %struct.xenpf_pcpuinfo*, !dbg !4469
  %max_present13 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %pcpu_info12, i32 0, i32 1, !dbg !4470
  %9 = load i32, i32* %max_present13, align 4, !dbg !4470
  store i32 %9, i32* %max_id, align 4, !dbg !4471
  br label %if.end14, !dbg !4472

if.end14:                                         ; preds = %if.then10, %if.end6
  %10 = load i32, i32* %cpu_id, align 4, !dbg !4473
  %inc15 = add i32 %10, 1, !dbg !4473
  store i32 %inc15, i32* %cpu_id, align 4, !dbg !4473
  br label %while.cond, !dbg !4434, !llvm.loop !4450

while.end:                                        ; preds = %while.cond
  store i32 -19, i32* %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

return:                                           ; preds = %while.end, %if.then5
  %11 = load i32, i32* %retval, align 4, !dbg !4475
  ret i32 %11, !dbg !4475
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #0 !dbg !4476 {
entry:
  %op.addr = alloca %struct.xen_platform_op*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.xen_platform_op* %op, %struct.xen_platform_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op** %op.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  %0 = load %struct.xen_platform_op*, %struct.xen_platform_op** %op.addr, align 8, !dbg !4483
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %0, i32 0, i32 1, !dbg !4484
  store i32 50331649, i32* %interface_version, align 4, !dbg !4485
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !4486, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !4489, metadata !DIExpression()), !dbg !4488
  %1 = load i64, i64* %__arg1, align 8, !dbg !4488
  store i64 %1, i64* %__arg1, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !4490, metadata !DIExpression()), !dbg !4488
  %2 = load i64, i64* %__arg2, align 8, !dbg !4488
  store i64 %2, i64* %__arg2, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !4491, metadata !DIExpression()), !dbg !4488
  %3 = load i64, i64* %__arg3, align 8, !dbg !4488
  store i64 %3, i64* %__arg3, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !4492, metadata !DIExpression()), !dbg !4488
  %4 = load i64, i64* %__arg4, align 8, !dbg !4488
  store i64 %4, i64* %__arg4, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !4493, metadata !DIExpression()), !dbg !4488
  %5 = load i64, i64* %__arg5, align 8, !dbg !4488
  store i64 %5, i64* %__arg5, align 8, !dbg !4488
  %6 = load %struct.xen_platform_op*, %struct.xen_platform_op** %op.addr, align 8, !dbg !4488
  %7 = ptrtoint %struct.xen_platform_op* %6 to i64, !dbg !4488
  store i64 %7, i64* %__arg1, align 8, !dbg !4488
  %8 = call i64 @llvm.read_register.i64(metadata !4073), !dbg !4488
  %9 = load i64, i64* %__arg1, align 8, !dbg !4488
  %10 = call { i64, i64, i64 } asm sideeffect "call hypercall_page+${3:c}", "={rax},={rsp},={rdi},i,1,2,~{memory},~{r8},~{r10},~{rdx},~{rsi},~{dirflag},~{fpsr},~{flags}"(i64 224, i64 %8, i64 %9) #10, !dbg !4488, !srcloc !4494
  %asmresult = extractvalue { i64, i64, i64 } %10, 0, !dbg !4488
  %asmresult1 = extractvalue { i64, i64, i64 } %10, 1, !dbg !4488
  %asmresult2 = extractvalue { i64, i64, i64 } %10, 2, !dbg !4488
  store i64 %asmresult, i64* %__res, align 8, !dbg !4488
  call void @llvm.write_register.i64(metadata !4073, i64 %asmresult1), !dbg !4488
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !4488
  %11 = load i64, i64* %__res, align 8, !dbg !4488
  %conv = trunc i64 %11 to i32, !dbg !4488
  store i32 %conv, i32* %tmp, align 4, !dbg !4488
  %12 = load i32, i32* %tmp, align 4, !dbg !4488
  ret i32 %12, !dbg !4495
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcpu_init() #2 section ".init.text" !dbg !4496 {
entry:
  %retval = alloca i32, align 4
  %irq = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4501, metadata !DIExpression()), !dbg !4502
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4503
  %cmp = icmp ne i32 %0, 0, !dbg !4503
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !4503

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @xen_start_flags, align 4, !dbg !4503
  %and = and i32 %1, 2, !dbg !4503
  %tobool = icmp ne i32 %and, 0, !dbg !4503
  br i1 %tobool, label %if.end, label %if.then, !dbg !4505

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4506
  br label %return, !dbg !4506

if.end:                                           ; preds = %land.lhs.true
  %call = call i32 @bind_virq_to_irqhandler(i32 9, i32 0, i32 (i32, i8*)* @xen_pcpu_interrupt, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* null) #11, !dbg !4507
  store i32 %call, i32* %irq, align 4, !dbg !4508
  %2 = load i32, i32* %irq, align 4, !dbg !4509
  %cmp1 = icmp slt i32 %2, 0, !dbg !4511
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4512

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !4513
  %3 = load i32, i32* %irq, align 4, !dbg !4515
  store i32 %3, i32* %retval, align 4, !dbg !4516
  br label %return, !dbg !4516

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @subsys_system_register(%struct.bus_type* @xen_pcpu_subsys, %struct.attribute_group** null) #11, !dbg !4517
  store i32 %call5, i32* %ret, align 4, !dbg !4518
  %4 = load i32, i32* %ret, align 4, !dbg !4519
  %tobool6 = icmp ne i32 %4, 0, !dbg !4519
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4521

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !4522
  br label %err1, !dbg !4524

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @xen_sync_pcpus() #11, !dbg !4525
  store i32 %call10, i32* %ret, align 4, !dbg !4526
  %5 = load i32, i32* %ret, align 4, !dbg !4527
  %tobool11 = icmp ne i32 %5, 0, !dbg !4527
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4529

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !4530
  br label %err2, !dbg !4532

if.end14:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !4533
  br label %return, !dbg !4533

err2:                                             ; preds = %if.then12
  call void @llvm.dbg.label(metadata !4534), !dbg !4535
  call void @bus_unregister(%struct.bus_type* @xen_pcpu_subsys) #11, !dbg !4536
  br label %err1, !dbg !4536

err1:                                             ; preds = %err2, %if.then7
  call void @llvm.dbg.label(metadata !4537), !dbg !4538
  %6 = load i32, i32* %irq, align 4, !dbg !4539
  call void @unbind_from_irqhandler(i32 %6, i8* null) #11, !dbg !4540
  %7 = load i32, i32* %ret, align 4, !dbg !4541
  store i32 %7, i32* %retval, align 4, !dbg !4542
  br label %return, !dbg !4542

return:                                           ; preds = %err1, %if.end14, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4543
  ret i32 %8, !dbg !4543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !4544 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4551
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4552
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !4553
  ret i1 %call, !dbg !4554
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_pcpu_work_fn(%struct.work_struct* %work) #0 !dbg !4555 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4556, metadata !DIExpression()), !dbg !4557
  %call = call i32 @xen_sync_pcpus() #11, !dbg !4558
  ret void, !dbg !4559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sync_pcpus() #0 !dbg !4560 {
entry:
  %cpu = alloca i32, align 4
  %max_cpu = alloca i32, align 4
  %err = alloca i32, align 4
  %pcpu = alloca %struct.pcpu*, align 8
  %tmp = alloca %struct.pcpu*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.pcpu*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.pcpu*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.pcpu*, align 8
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4561, metadata !DIExpression()), !dbg !4562
  store i32 0, i32* %cpu, align 4, !dbg !4562
  call void @llvm.dbg.declare(metadata i32* %max_cpu, metadata !4563, metadata !DIExpression()), !dbg !4564
  store i32 0, i32* %max_cpu, align 4, !dbg !4564
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4565, metadata !DIExpression()), !dbg !4566
  store i32 0, i32* %err, align 4, !dbg !4566
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata %struct.pcpu** %tmp, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @mutex_lock(%struct.mutex* @xen_pcpu_lock) #11, !dbg !4571
  br label %while.cond, !dbg !4572

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %err, align 4, !dbg !4573
  %tobool = icmp ne i32 %0, 0, !dbg !4573
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4574

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %cpu, align 4, !dbg !4575
  %2 = load i32, i32* %max_cpu, align 4, !dbg !4576
  %cmp = icmp ule i32 %1, %2, !dbg !4577
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !4578
  br i1 %3, label %while.body, label %while.end, !dbg !4572

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %cpu, align 4, !dbg !4579
  %call = call i32 @sync_pcpu(i32 %4, i32* %max_cpu) #11, !dbg !4581
  store i32 %call, i32* %err, align 4, !dbg !4582
  %5 = load i32, i32* %cpu, align 4, !dbg !4583
  %inc = add i32 %5, 1, !dbg !4583
  store i32 %inc, i32* %cpu, align 4, !dbg !4583
  br label %while.cond, !dbg !4572, !llvm.loop !4584

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %err, align 4, !dbg !4586
  %tobool1 = icmp ne i32 %6, 0, !dbg !4586
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4588

if.then:                                          ; preds = %while.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4589, metadata !DIExpression()), !dbg !4592
  %7 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xen_pcpus, i32 0, i32 0), align 8, !dbg !4592
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4592
  store i8* %8, i8** %__mptr, align 8, !dbg !4592
  br label %do.body, !dbg !4592

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4593

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4592
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !4592
  %10 = bitcast i8* %add.ptr to %struct.pcpu*, !dbg !4592
  store %struct.pcpu* %10, %struct.pcpu** %tmp2, align 8, !dbg !4593
  %11 = load %struct.pcpu*, %struct.pcpu** %tmp2, align 8, !dbg !4592
  store %struct.pcpu* %11, %struct.pcpu** %pcpu, align 8, !dbg !4595
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4596, metadata !DIExpression()), !dbg !4598
  %12 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4598
  %list = getelementptr inbounds %struct.pcpu, %struct.pcpu* %12, i32 0, i32 0, !dbg !4598
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4598
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4598
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4598
  store i8* %14, i8** %__mptr3, align 8, !dbg !4598
  br label %do.body4, !dbg !4598

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4599

do.end5:                                          ; preds = %do.body4
  %15 = load i8*, i8** %__mptr3, align 8, !dbg !4598
  %add.ptr7 = getelementptr i8, i8* %15, i64 0, !dbg !4598
  %16 = bitcast i8* %add.ptr7 to %struct.pcpu*, !dbg !4598
  store %struct.pcpu* %16, %struct.pcpu** %tmp6, align 8, !dbg !4599
  %17 = load %struct.pcpu*, %struct.pcpu** %tmp6, align 8, !dbg !4598
  store %struct.pcpu* %17, %struct.pcpu** %tmp, align 8, !dbg !4595
  br label %for.cond, !dbg !4595

for.cond:                                         ; preds = %do.end14, %do.end5
  %18 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4601
  %list8 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %18, i32 0, i32 0, !dbg !4601
  %cmp9 = icmp eq %struct.list_head* %list8, @xen_pcpus, !dbg !4601
  %lnot = xor i1 %cmp9, true, !dbg !4601
  br i1 %lnot, label %for.body, label %for.end, !dbg !4595

for.body:                                         ; preds = %for.cond
  %19 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4603
  call void @unregister_and_remove_pcpu(%struct.pcpu* %19) #11, !dbg !4604
  br label %for.inc, !dbg !4604

for.inc:                                          ; preds = %for.body
  %20 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !4601
  store %struct.pcpu* %20, %struct.pcpu** %pcpu, align 8, !dbg !4601
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !4605, metadata !DIExpression()), !dbg !4607
  %21 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !4607
  %list11 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %21, i32 0, i32 0, !dbg !4607
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %list11, i32 0, i32 0, !dbg !4607
  %22 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !4607
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !4607
  store i8* %23, i8** %__mptr10, align 8, !dbg !4607
  br label %do.body13, !dbg !4607

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !4608

do.end14:                                         ; preds = %do.body13
  %24 = load i8*, i8** %__mptr10, align 8, !dbg !4607
  %add.ptr16 = getelementptr i8, i8* %24, i64 0, !dbg !4607
  %25 = bitcast i8* %add.ptr16 to %struct.pcpu*, !dbg !4607
  store %struct.pcpu* %25, %struct.pcpu** %tmp15, align 8, !dbg !4608
  %26 = load %struct.pcpu*, %struct.pcpu** %tmp15, align 8, !dbg !4607
  store %struct.pcpu* %26, %struct.pcpu** %tmp, align 8, !dbg !4601
  br label %for.cond, !dbg !4601, !llvm.loop !4610

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !4611

if.end:                                           ; preds = %for.end, %while.end
  call void @mutex_unlock(%struct.mutex* @xen_pcpu_lock) #11, !dbg !4612
  %27 = load i32, i32* %err, align 4, !dbg !4613
  ret i32 %27, !dbg !4614
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sync_pcpu(i32 %cpu, i32* %max_cpu) #0 !dbg !4615 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %max_cpu.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %pcpu = alloca %struct.pcpu*, align 8
  %info = alloca %struct.xenpf_pcpuinfo*, align 8
  %op = alloca %struct.xen_platform_op, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i32* %max_cpu, i32** %max_cpu.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max_cpu.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !4624, metadata !DIExpression()), !dbg !4625
  store %struct.pcpu* null, %struct.pcpu** %pcpu, align 8, !dbg !4625
  call void @llvm.dbg.declare(metadata %struct.xenpf_pcpuinfo** %info, metadata !4626, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op* %op, metadata !4629, metadata !DIExpression()), !dbg !4630
  %0 = bitcast %struct.xen_platform_op* %op to i8*, !dbg !4630
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 136, i1 false), !dbg !4630
  %cmd = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 0, !dbg !4631
  store i32 55, i32* %cmd, align 8, !dbg !4631
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 1, !dbg !4631
  store i32 50331649, i32* %interface_version, align 4, !dbg !4631
  %u = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4631
  %pcpu_info = bitcast %union.anon* %u to %struct.xenpf_pcpuinfo*, !dbg !4632
  %xen_cpuid = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %pcpu_info, i32 0, i32 0, !dbg !4633
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !4634
  store i32 %1, i32* %xen_cpuid, align 8, !dbg !4633
  %call = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #11, !dbg !4635
  store i32 %call, i32* %ret, align 4, !dbg !4636
  %2 = load i32, i32* %ret, align 4, !dbg !4637
  %tobool = icmp ne i32 %2, 0, !dbg !4637
  br i1 %tobool, label %if.then, label %if.end, !dbg !4639

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4640
  store i32 %3, i32* %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

if.end:                                           ; preds = %entry
  %u1 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !4642
  %pcpu_info2 = bitcast %union.anon* %u1 to %struct.xenpf_pcpuinfo*, !dbg !4643
  store %struct.xenpf_pcpuinfo* %pcpu_info2, %struct.xenpf_pcpuinfo** %info, align 8, !dbg !4644
  %4 = load i32*, i32** %max_cpu.addr, align 8, !dbg !4645
  %tobool3 = icmp ne i32* %4, null, !dbg !4645
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4647

if.then4:                                         ; preds = %if.end
  %5 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info, align 8, !dbg !4648
  %max_present = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %5, i32 0, i32 1, !dbg !4649
  %6 = load i32, i32* %max_present, align 4, !dbg !4649
  %7 = load i32*, i32** %max_cpu.addr, align 8, !dbg !4650
  store i32 %6, i32* %7, align 4, !dbg !4651
  br label %if.end5, !dbg !4652

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %cpu.addr, align 4, !dbg !4653
  %call6 = call %struct.pcpu* @get_pcpu(i32 %8) #11, !dbg !4654
  store %struct.pcpu* %call6, %struct.pcpu** %pcpu, align 8, !dbg !4655
  %9 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info, align 8, !dbg !4656
  %flags = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %9, i32 0, i32 2, !dbg !4658
  %10 = load i32, i32* %flags, align 4, !dbg !4658
  %and = and i32 %10, 2, !dbg !4659
  %tobool7 = icmp ne i32 %and, 0, !dbg !4659
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4660

if.then8:                                         ; preds = %if.end5
  %11 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4661
  call void @unregister_and_remove_pcpu(%struct.pcpu* %11) #11, !dbg !4663
  store i32 0, i32* %retval, align 4, !dbg !4664
  br label %return, !dbg !4664

if.end9:                                          ; preds = %if.end5
  %12 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4665
  %tobool10 = icmp ne %struct.pcpu* %12, null, !dbg !4665
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !4667

if.then11:                                        ; preds = %if.end9
  %13 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info, align 8, !dbg !4668
  %call12 = call %struct.pcpu* @create_and_register_pcpu(%struct.xenpf_pcpuinfo* %13) #11, !dbg !4670
  store %struct.pcpu* %call12, %struct.pcpu** %pcpu, align 8, !dbg !4671
  %14 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4672
  %15 = bitcast %struct.pcpu* %14 to i8*, !dbg !4672
  %call13 = call zeroext i1 @IS_ERR_OR_NULL(i8* %15) #11, !dbg !4674
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4675

if.then14:                                        ; preds = %if.then11
  store i32 -19, i32* %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !4677

if.else:                                          ; preds = %if.end9
  %16 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info, align 8, !dbg !4678
  %17 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4679
  call void @pcpu_online_status(%struct.xenpf_pcpuinfo* %16, %struct.pcpu* %17) #11, !dbg !4680
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !4681
  br label %return, !dbg !4681

return:                                           ; preds = %if.end16, %if.then14, %if.then8, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4682
  ret i32 %18, !dbg !4682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unregister_and_remove_pcpu(%struct.pcpu* %pcpu) #0 !dbg !4683 {
entry:
  %pcpu.addr = alloca %struct.pcpu*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.pcpu* %pcpu, %struct.pcpu** %pcpu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4688, metadata !DIExpression()), !dbg !4689
  %0 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4690
  %tobool = icmp ne %struct.pcpu* %0, null, !dbg !4690
  br i1 %tobool, label %if.end, label %if.then, !dbg !4692

if.then:                                          ; preds = %entry
  br label %return, !dbg !4693

if.end:                                           ; preds = %entry
  %1 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4694
  %dev1 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %1, i32 0, i32 1, !dbg !4695
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4696
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4697
  call void @device_unregister(%struct.device* %2) #11, !dbg !4698
  br label %return, !dbg !4699

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4699
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pcpu* @get_pcpu(i32 %cpu_id) #0 !dbg !4700 {
entry:
  %retval = alloca %struct.pcpu*, align 8
  %cpu_id.addr = alloca i32, align 4
  %pcpu = alloca %struct.pcpu*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcpu*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.pcpu*, align 8
  store i32 %cpu_id, i32* %cpu_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu_id.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4707, metadata !DIExpression()), !dbg !4710
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xen_pcpus, i32 0, i32 0), align 8, !dbg !4710
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4710
  store i8* %1, i8** %__mptr, align 8, !dbg !4710
  br label %do.body, !dbg !4710

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4711

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4710
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4710
  %3 = bitcast i8* %add.ptr to %struct.pcpu*, !dbg !4710
  store %struct.pcpu* %3, %struct.pcpu** %tmp, align 8, !dbg !4711
  %4 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !4710
  store %struct.pcpu* %4, %struct.pcpu** %pcpu, align 8, !dbg !4713
  br label %for.cond, !dbg !4713

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4714
  %list = getelementptr inbounds %struct.pcpu, %struct.pcpu* %5, i32 0, i32 0, !dbg !4714
  %cmp = icmp eq %struct.list_head* %list, @xen_pcpus, !dbg !4714
  %lnot = xor i1 %cmp, true, !dbg !4714
  br i1 %lnot, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %6 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4716
  %cpu_id1 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 2, !dbg !4719
  %7 = load i32, i32* %cpu_id1, align 8, !dbg !4719
  %8 = load i32, i32* %cpu_id.addr, align 4, !dbg !4720
  %cmp2 = icmp eq i32 %7, %8, !dbg !4721
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4722

if.then:                                          ; preds = %for.body
  %9 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4723
  store %struct.pcpu* %9, %struct.pcpu** %retval, align 8, !dbg !4724
  br label %return, !dbg !4724

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4725

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4726, metadata !DIExpression()), !dbg !4728
  %10 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4728
  %list4 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %10, i32 0, i32 0, !dbg !4728
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list4, i32 0, i32 0, !dbg !4728
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4728
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4728
  store i8* %12, i8** %__mptr3, align 8, !dbg !4728
  br label %do.body5, !dbg !4728

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4729

do.end6:                                          ; preds = %do.body5
  %13 = load i8*, i8** %__mptr3, align 8, !dbg !4728
  %add.ptr8 = getelementptr i8, i8* %13, i64 0, !dbg !4728
  %14 = bitcast i8* %add.ptr8 to %struct.pcpu*, !dbg !4728
  store %struct.pcpu* %14, %struct.pcpu** %tmp7, align 8, !dbg !4729
  %15 = load %struct.pcpu*, %struct.pcpu** %tmp7, align 8, !dbg !4728
  store %struct.pcpu* %15, %struct.pcpu** %pcpu, align 8, !dbg !4714
  br label %for.cond, !dbg !4714, !llvm.loop !4731

for.end:                                          ; preds = %for.cond
  store %struct.pcpu* null, %struct.pcpu** %retval, align 8, !dbg !4733
  br label %return, !dbg !4733

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.pcpu*, %struct.pcpu** %retval, align 8, !dbg !4734
  ret %struct.pcpu* %16, !dbg !4734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pcpu* @create_and_register_pcpu(%struct.xenpf_pcpuinfo* %info) #0 !dbg !4735 {
entry:
  %retval = alloca %struct.pcpu*, align 8
  %info.addr = alloca %struct.xenpf_pcpuinfo*, align 8
  %pcpu = alloca %struct.pcpu*, align 8
  %err = alloca i32, align 4
  store %struct.xenpf_pcpuinfo* %info, %struct.xenpf_pcpuinfo** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenpf_pcpuinfo** %info.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4744
  %flags = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %0, i32 0, i32 2, !dbg !4746
  %1 = load i32, i32* %flags, align 4, !dbg !4746
  %and = and i32 %1, 2, !dbg !4747
  %tobool = icmp ne i32 %and, 0, !dbg !4747
  br i1 %tobool, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -19) #11, !dbg !4749
  %2 = bitcast i8* %call to %struct.pcpu*, !dbg !4749
  store %struct.pcpu* %2, %struct.pcpu** %retval, align 8, !dbg !4750
  br label %return, !dbg !4750

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 720, i32 3264) #11, !dbg !4751
  %3 = bitcast i8* %call1 to %struct.pcpu*, !dbg !4751
  store %struct.pcpu* %3, %struct.pcpu** %pcpu, align 8, !dbg !4752
  %4 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4753
  %tobool2 = icmp ne %struct.pcpu* %4, null, !dbg !4753
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4755

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -12) #11, !dbg !4756
  %5 = bitcast i8* %call4 to %struct.pcpu*, !dbg !4756
  store %struct.pcpu* %5, %struct.pcpu** %retval, align 8, !dbg !4757
  br label %return, !dbg !4757

if.end5:                                          ; preds = %if.end
  %6 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4758
  %list = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 0, !dbg !4759
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #11, !dbg !4760
  %7 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4761
  %xen_cpuid = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %7, i32 0, i32 0, !dbg !4762
  %8 = load i32, i32* %xen_cpuid, align 4, !dbg !4762
  %9 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4763
  %cpu_id = getelementptr inbounds %struct.pcpu, %struct.pcpu* %9, i32 0, i32 2, !dbg !4764
  store i32 %8, i32* %cpu_id, align 8, !dbg !4765
  %10 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4766
  %flags6 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %10, i32 0, i32 2, !dbg !4767
  %11 = load i32, i32* %flags6, align 4, !dbg !4767
  %12 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4768
  %flags7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %12, i32 0, i32 3, !dbg !4769
  store i32 %11, i32* %flags7, align 4, !dbg !4770
  %13 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4771
  %list8 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %13, i32 0, i32 0, !dbg !4772
  call void @list_add_tail(%struct.list_head* %list8, %struct.list_head* @xen_pcpus) #11, !dbg !4773
  %14 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4774
  %call9 = call i32 @register_pcpu(%struct.pcpu* %14) #11, !dbg !4775
  store i32 %call9, i32* %err, align 4, !dbg !4776
  %15 = load i32, i32* %err, align 4, !dbg !4777
  %tobool10 = icmp ne i32 %15, 0, !dbg !4777
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !4779

if.then11:                                        ; preds = %if.end5
  %16 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4780
  %xen_cpuid12 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %16, i32 0, i32 0, !dbg !4780
  %17 = load i32, i32* %xen_cpuid12, align 4, !dbg !4780
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17) #12, !dbg !4780
  %call14 = call i8* @ERR_PTR(i64 -2) #11, !dbg !4782
  %18 = bitcast i8* %call14 to %struct.pcpu*, !dbg !4782
  store %struct.pcpu* %18, %struct.pcpu** %retval, align 8, !dbg !4783
  br label %return, !dbg !4783

if.end15:                                         ; preds = %if.end5
  %19 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !4784
  store %struct.pcpu* %19, %struct.pcpu** %retval, align 8, !dbg !4785
  br label %return, !dbg !4785

return:                                           ; preds = %if.end15, %if.then11, %if.then3, %if.then
  %20 = load %struct.pcpu*, %struct.pcpu** %retval, align 8, !dbg !4786
  ret %struct.pcpu* %20, !dbg !4786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !4787 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4793
  %tobool = icmp ne i8* %0, null, !dbg !4793
  %lnot = xor i1 %tobool, true, !dbg !4793
  %lnot1 = xor i1 %lnot, true, !dbg !4793
  %lnot2 = xor i1 %lnot1, true, !dbg !4793
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4793
  %conv = sext i32 %lnot.ext to i64, !dbg !4793
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4793
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4794

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4795
  %2 = ptrtoint i8* %1 to i64, !dbg !4795
  %3 = inttoptr i64 %2 to i8*, !dbg !4795
  %4 = ptrtoint i8* %3 to i64, !dbg !4795
  %cmp = icmp uge i64 %4, -4095, !dbg !4795
  %lnot5 = xor i1 %cmp, true, !dbg !4795
  %lnot7 = xor i1 %lnot5, true, !dbg !4795
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4795
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4795
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !4794
  br label %lor.end, !dbg !4794

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !4796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pcpu_online_status(%struct.xenpf_pcpuinfo* %info, %struct.pcpu* %pcpu) #0 !dbg !4797 {
entry:
  %info.addr = alloca %struct.xenpf_pcpuinfo*, align 8
  %pcpu.addr = alloca %struct.pcpu*, align 8
  store %struct.xenpf_pcpuinfo* %info, %struct.xenpf_pcpuinfo** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenpf_pcpuinfo** %info.addr, metadata !4800, metadata !DIExpression()), !dbg !4801
  store %struct.pcpu* %pcpu, %struct.pcpu** %pcpu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  %0 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4804
  %flags = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %0, i32 0, i32 2, !dbg !4806
  %1 = load i32, i32* %flags, align 4, !dbg !4806
  %call = call zeroext i1 @xen_pcpu_online(i32 %1) #11, !dbg !4807
  br i1 %call, label %land.lhs.true, label %if.else, !dbg !4808

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4809
  %flags1 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %2, i32 0, i32 3, !dbg !4810
  %3 = load i32, i32* %flags1, align 4, !dbg !4810
  %call2 = call zeroext i1 @xen_pcpu_online(i32 %3) #11, !dbg !4811
  br i1 %call2, label %if.else, label %if.then, !dbg !4812

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4813
  %flags3 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %4, i32 0, i32 3, !dbg !4815
  %5 = load i32, i32* %flags3, align 4, !dbg !4816
  %or = or i32 %5, 1, !dbg !4816
  store i32 %or, i32* %flags3, align 4, !dbg !4816
  %6 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4817
  %dev = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 1, !dbg !4818
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4819
  %call4 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 4) #11, !dbg !4820
  br label %if.end15, !dbg !4821

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %info.addr, align 8, !dbg !4822
  %flags5 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %7, i32 0, i32 2, !dbg !4824
  %8 = load i32, i32* %flags5, align 4, !dbg !4824
  %call6 = call zeroext i1 @xen_pcpu_online(i32 %8) #11, !dbg !4825
  br i1 %call6, label %if.end, label %land.lhs.true7, !dbg !4826

land.lhs.true7:                                   ; preds = %if.else
  %9 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4827
  %flags8 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %9, i32 0, i32 3, !dbg !4828
  %10 = load i32, i32* %flags8, align 4, !dbg !4828
  %call9 = call zeroext i1 @xen_pcpu_online(i32 %10) #11, !dbg !4829
  br i1 %call9, label %if.then10, label %if.end, !dbg !4830

if.then10:                                        ; preds = %land.lhs.true7
  %11 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4831
  %flags11 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %11, i32 0, i32 3, !dbg !4833
  %12 = load i32, i32* %flags11, align 4, !dbg !4834
  %and = and i32 %12, -2, !dbg !4834
  store i32 %and, i32* %flags11, align 4, !dbg !4834
  %13 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !4835
  %dev12 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %13, i32 0, i32 1, !dbg !4836
  %kobj13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 0, !dbg !4837
  %call14 = call i32 @kobject_uevent(%struct.kobject* %kobj13, i32 5) #11, !dbg !4838
  br label %if.end, !dbg !4839

if.end:                                           ; preds = %if.then10, %land.lhs.true7, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  ret void, !dbg !4840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4841 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load i64, i64* %error.addr, align 8, !dbg !4846
  %1 = inttoptr i64 %0 to i8*, !dbg !4847
  ret i8* %1, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4849 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4852, metadata !DIExpression()), !dbg !4856
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4862, metadata !DIExpression()), !dbg !4863
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4864, metadata !DIExpression()), !dbg !4865
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4866, metadata !DIExpression()), !dbg !4867
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4868, metadata !DIExpression()), !dbg !4872
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4874, metadata !DIExpression()), !dbg !4878
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4880, metadata !DIExpression()), !dbg !4884
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4889, metadata !DIExpression()), !dbg !4890
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4891, metadata !DIExpression()), !dbg !4892
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4893, metadata !DIExpression()), !dbg !4894
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4895, metadata !DIExpression()), !dbg !4896
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4897, metadata !DIExpression()), !dbg !4898
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4899, metadata !DIExpression()), !dbg !4900
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4901, metadata !DIExpression()), !dbg !4902
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4903, metadata !DIExpression()), !dbg !4904
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load i64, i64* %size.addr, align 8, !dbg !4909
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4910
  %or = or i32 %1, 256, !dbg !4911
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4912
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4913
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4914

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4915
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4916
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4917

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4918
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4919
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4920
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4921
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4898
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4922
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4923
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4924
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4925
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4926
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4927
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !4928
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4928
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4928
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4928
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4928
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4929
  br label %kmalloc.exit, !dbg !4929

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4930
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4931
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4931
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4933

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4934
  br label %kmalloc_index.exit.i, !dbg !4934

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4935
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4937
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4938

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4939
  br label %kmalloc_index.exit.i, !dbg !4939

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4942
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4943

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4945
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4946

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4947
  br label %kmalloc_index.exit.i, !dbg !4947

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4948
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4950
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4951

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4952
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4953
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4954

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4955
  br label %kmalloc_index.exit.i, !dbg !4955

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4956
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4958
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4959

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4960
  br label %kmalloc_index.exit.i, !dbg !4960

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4961
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4963
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4964

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4965
  br label %kmalloc_index.exit.i, !dbg !4965

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4966
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4968
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4969

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4970
  br label %kmalloc_index.exit.i, !dbg !4970

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4971
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4973
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4974

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4975
  br label %kmalloc_index.exit.i, !dbg !4975

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4976
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4978
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4979

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4980
  br label %kmalloc_index.exit.i, !dbg !4980

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4981
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4983
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4984

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4988
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4989

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4993
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4994

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4995
  br label %kmalloc_index.exit.i, !dbg !4995

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4996
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4998
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4999

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5000
  br label %kmalloc_index.exit.i, !dbg !5000

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5001
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5003
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5004

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5005
  br label %kmalloc_index.exit.i, !dbg !5005

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5006
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5008
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5009

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5010
  br label %kmalloc_index.exit.i, !dbg !5010

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5011
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5013
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5014

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5015
  br label %kmalloc_index.exit.i, !dbg !5015

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5016
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5018
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5019

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5020
  br label %kmalloc_index.exit.i, !dbg !5020

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5021
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5023
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5024

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5025
  br label %kmalloc_index.exit.i, !dbg !5025

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5026
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5028
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5029

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5030
  br label %kmalloc_index.exit.i, !dbg !5030

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5031
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5033
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5034

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5035
  br label %kmalloc_index.exit.i, !dbg !5035

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5036
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5038
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5039

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5040
  br label %kmalloc_index.exit.i, !dbg !5040

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5041
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5043
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5044

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5048
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5049

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5050
  br label %kmalloc_index.exit.i, !dbg !5050

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5051
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5053
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5054

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5055
  br label %kmalloc_index.exit.i, !dbg !5055

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5056
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5058
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5059

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5060
  br label %kmalloc_index.exit.i, !dbg !5060

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5061
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5063
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5064

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5065
  br label %kmalloc_index.exit.i, !dbg !5065

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5066
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5068
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5069

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5070
  br label %kmalloc_index.exit.i, !dbg !5070

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5071
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5073
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5074

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5075
  br label %kmalloc_index.exit.i, !dbg !5075

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5076, !srcloc !5079
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #10, !dbg !5080, !srcloc !5083
  unreachable, !dbg !5084

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5085
  store i32 %45, i32* %index.i, align 4, !dbg !5086
  %46 = load i32, i32* %index.i, align 4, !dbg !5087
  %tobool.i = icmp ne i32 %46, 0, !dbg !5087
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5089

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5090
  br label %kmalloc.exit, !dbg !5090

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5091
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5092
  %and.i.i = and i32 %48, 17, !dbg !5092
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5092
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5092
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5092
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5092
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5094

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5095
  br label %kmalloc_type.exit.i, !dbg !5095

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5096
  %and2.i.i = and i32 %49, 1, !dbg !5097
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5096
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5096
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5096
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5098
  br label %kmalloc_type.exit.i, !dbg !5098

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5099
  %idxprom.i = zext i32 %51 to i64, !dbg !5100
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5100
  %52 = load i32, i32* %index.i, align 4, !dbg !5101
  %idxprom6.i = zext i32 %52 to i64, !dbg !5100
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5100
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5100
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5102
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5103
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5104
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5105
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !5106
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5106
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5106
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5106
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5106
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4867
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5107
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5108
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5109
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5110
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !5111
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5112
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5113
  store i8* %62, i8** %retval.i, align 8, !dbg !5114
  br label %kmalloc.exit, !dbg !5114

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5115
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5116
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !5117
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5117
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5117
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5117
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5117
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5118
  br label %kmalloc.exit, !dbg !5118

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5119
  ret i8* %65, !dbg !5120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5121 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  br label %do.body, !dbg !5127

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5128

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5130

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5128

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5132
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5132
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5132
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5132
  br label %do.end3, !dbg !5132

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5128

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5134
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5135
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5136
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5137
  ret void, !dbg !5138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5139 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5146
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5147
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5148
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5148
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5149
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !5150
  ret void, !dbg !5151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @register_pcpu(%struct.pcpu* %pcpu) #0 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %pcpu.addr = alloca %struct.pcpu*, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  store %struct.pcpu* %pcpu, %struct.pcpu** %pcpu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu.addr, metadata !5155, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5157, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5159, metadata !DIExpression()), !dbg !5160
  store i32 -22, i32* %err, align 4, !dbg !5160
  %0 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !5161
  %tobool = icmp ne %struct.pcpu* %0, null, !dbg !5161
  br i1 %tobool, label %if.end, label %if.then, !dbg !5163

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !5164
  store i32 %1, i32* %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end:                                           ; preds = %entry
  %2 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !5166
  %dev1 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %2, i32 0, i32 1, !dbg !5167
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5168
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5169
  %bus = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 5, !dbg !5170
  store %struct.bus_type* @xen_pcpu_subsys, %struct.bus_type** %bus, align 8, !dbg !5171
  %4 = load %struct.pcpu*, %struct.pcpu** %pcpu.addr, align 8, !dbg !5172
  %cpu_id = getelementptr inbounds %struct.pcpu, %struct.pcpu* %4, i32 0, i32 2, !dbg !5173
  %5 = load i32, i32* %cpu_id, align 8, !dbg !5173
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5174
  %id = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 26, !dbg !5175
  store i32 %5, i32* %id, align 4, !dbg !5176
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5177
  %release = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 31, !dbg !5178
  store void (%struct.device*)* @pcpu_release, void (%struct.device*)** %release, align 8, !dbg !5179
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5180
  %groups = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 30, !dbg !5181
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @pcpu_dev_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !5182
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5183
  %call = call i32 @device_register(%struct.device* %9) #11, !dbg !5184
  store i32 %call, i32* %err, align 4, !dbg !5185
  %10 = load i32, i32* %err, align 4, !dbg !5186
  %tobool2 = icmp ne i32 %10, 0, !dbg !5186
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5188

if.then3:                                         ; preds = %if.end
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5189
  call void @pcpu_release(%struct.device* %11) #11, !dbg !5191
  %12 = load i32, i32* %err, align 4, !dbg !5192
  store i32 %12, i32* %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5194
  br label %return, !dbg !5194

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5195
  ret i32 %13, !dbg !5195
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5196 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5200, metadata !DIExpression()), !dbg !5205
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5207, metadata !DIExpression()), !dbg !5208
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  %0 = load i64, i64* %size.addr, align 8, !dbg !5211
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5213
  br i1 %1, label %if.then, label %if.end447, !dbg !5214

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5215
  %tobool = icmp ne i64 %2, 0, !dbg !5215
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5218

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5220
  %cmp = icmp ult i64 %3, 4096, !dbg !5222
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5223

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub = sub i64 %4, 1, !dbg !5225
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5225
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5225

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub4 = sub i64 %6, 1, !dbg !5225
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5225
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5225

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub6 = sub i64 %8, 1, !dbg !5225
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5225
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5225

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5225

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub9 = sub i64 %9, 1, !dbg !5225
  %and = and i64 %sub9, -9223372036854775808, !dbg !5225
  %tobool10 = icmp ne i64 %and, 0, !dbg !5225
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5225

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5225

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub13 = sub i64 %10, 1, !dbg !5225
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5225
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5225
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5225

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5225

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub18 = sub i64 %11, 1, !dbg !5225
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5225
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5225
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5225

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5225

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub23 = sub i64 %12, 1, !dbg !5225
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5225
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5225
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5225

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5225

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub28 = sub i64 %13, 1, !dbg !5225
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5225
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5225
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5225

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5225

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub33 = sub i64 %14, 1, !dbg !5225
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5225
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5225
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5225

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5225

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub38 = sub i64 %15, 1, !dbg !5225
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5225
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5225
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5225

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5225

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub43 = sub i64 %16, 1, !dbg !5225
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5225
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5225
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5225

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5225

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub48 = sub i64 %17, 1, !dbg !5225
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5225
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5225
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5225

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5225

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub53 = sub i64 %18, 1, !dbg !5225
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5225
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5225
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5225

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5225

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub58 = sub i64 %19, 1, !dbg !5225
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5225
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5225
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5225

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5225

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub63 = sub i64 %20, 1, !dbg !5225
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5225
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5225
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5225

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5225

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub68 = sub i64 %21, 1, !dbg !5225
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5225
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5225
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5225

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5225

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub73 = sub i64 %22, 1, !dbg !5225
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5225
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5225
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5225

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5225

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub78 = sub i64 %23, 1, !dbg !5225
  %and79 = and i64 %sub78, 562949953421312, !dbg !5225
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5225
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5225

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5225

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub83 = sub i64 %24, 1, !dbg !5225
  %and84 = and i64 %sub83, 281474976710656, !dbg !5225
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5225
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5225

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5225

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub88 = sub i64 %25, 1, !dbg !5225
  %and89 = and i64 %sub88, 140737488355328, !dbg !5225
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5225
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5225

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5225

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub93 = sub i64 %26, 1, !dbg !5225
  %and94 = and i64 %sub93, 70368744177664, !dbg !5225
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5225
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5225

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5225

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub98 = sub i64 %27, 1, !dbg !5225
  %and99 = and i64 %sub98, 35184372088832, !dbg !5225
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5225
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5225

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5225

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub103 = sub i64 %28, 1, !dbg !5225
  %and104 = and i64 %sub103, 17592186044416, !dbg !5225
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5225
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5225

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5225

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub108 = sub i64 %29, 1, !dbg !5225
  %and109 = and i64 %sub108, 8796093022208, !dbg !5225
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5225
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5225

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5225

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub113 = sub i64 %30, 1, !dbg !5225
  %and114 = and i64 %sub113, 4398046511104, !dbg !5225
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5225
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5225

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5225

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub118 = sub i64 %31, 1, !dbg !5225
  %and119 = and i64 %sub118, 2199023255552, !dbg !5225
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5225
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5225

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5225

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub123 = sub i64 %32, 1, !dbg !5225
  %and124 = and i64 %sub123, 1099511627776, !dbg !5225
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5225
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5225

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5225

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub128 = sub i64 %33, 1, !dbg !5225
  %and129 = and i64 %sub128, 549755813888, !dbg !5225
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5225
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5225

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5225

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub133 = sub i64 %34, 1, !dbg !5225
  %and134 = and i64 %sub133, 274877906944, !dbg !5225
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5225
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5225

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5225

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub138 = sub i64 %35, 1, !dbg !5225
  %and139 = and i64 %sub138, 137438953472, !dbg !5225
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5225
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5225

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5225

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub143 = sub i64 %36, 1, !dbg !5225
  %and144 = and i64 %sub143, 68719476736, !dbg !5225
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5225
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5225

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5225

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub148 = sub i64 %37, 1, !dbg !5225
  %and149 = and i64 %sub148, 34359738368, !dbg !5225
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5225
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5225

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5225

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub153 = sub i64 %38, 1, !dbg !5225
  %and154 = and i64 %sub153, 17179869184, !dbg !5225
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5225
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5225

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5225

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub158 = sub i64 %39, 1, !dbg !5225
  %and159 = and i64 %sub158, 8589934592, !dbg !5225
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5225
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5225

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5225

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub163 = sub i64 %40, 1, !dbg !5225
  %and164 = and i64 %sub163, 4294967296, !dbg !5225
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5225
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5225

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5225

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub168 = sub i64 %41, 1, !dbg !5225
  %and169 = and i64 %sub168, 2147483648, !dbg !5225
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5225
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5225

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5225

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub173 = sub i64 %42, 1, !dbg !5225
  %and174 = and i64 %sub173, 1073741824, !dbg !5225
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5225
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5225

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5225

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub178 = sub i64 %43, 1, !dbg !5225
  %and179 = and i64 %sub178, 536870912, !dbg !5225
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5225
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5225

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5225

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub183 = sub i64 %44, 1, !dbg !5225
  %and184 = and i64 %sub183, 268435456, !dbg !5225
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5225
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5225

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5225

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub188 = sub i64 %45, 1, !dbg !5225
  %and189 = and i64 %sub188, 134217728, !dbg !5225
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5225
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5225

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5225

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub193 = sub i64 %46, 1, !dbg !5225
  %and194 = and i64 %sub193, 67108864, !dbg !5225
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5225
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5225

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5225

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub198 = sub i64 %47, 1, !dbg !5225
  %and199 = and i64 %sub198, 33554432, !dbg !5225
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5225
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5225

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5225

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub203 = sub i64 %48, 1, !dbg !5225
  %and204 = and i64 %sub203, 16777216, !dbg !5225
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5225
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5225

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5225

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub208 = sub i64 %49, 1, !dbg !5225
  %and209 = and i64 %sub208, 8388608, !dbg !5225
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5225
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5225

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5225

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub213 = sub i64 %50, 1, !dbg !5225
  %and214 = and i64 %sub213, 4194304, !dbg !5225
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5225
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5225

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5225

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub218 = sub i64 %51, 1, !dbg !5225
  %and219 = and i64 %sub218, 2097152, !dbg !5225
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5225
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5225

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5225

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub223 = sub i64 %52, 1, !dbg !5225
  %and224 = and i64 %sub223, 1048576, !dbg !5225
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5225
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5225

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5225

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub228 = sub i64 %53, 1, !dbg !5225
  %and229 = and i64 %sub228, 524288, !dbg !5225
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5225
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5225

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5225

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub233 = sub i64 %54, 1, !dbg !5225
  %and234 = and i64 %sub233, 262144, !dbg !5225
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5225
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5225

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5225

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub238 = sub i64 %55, 1, !dbg !5225
  %and239 = and i64 %sub238, 131072, !dbg !5225
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5225
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5225

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5225

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub243 = sub i64 %56, 1, !dbg !5225
  %and244 = and i64 %sub243, 65536, !dbg !5225
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5225
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5225

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5225

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub248 = sub i64 %57, 1, !dbg !5225
  %and249 = and i64 %sub248, 32768, !dbg !5225
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5225
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5225

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5225

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub253 = sub i64 %58, 1, !dbg !5225
  %and254 = and i64 %sub253, 16384, !dbg !5225
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5225
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5225

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5225

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub258 = sub i64 %59, 1, !dbg !5225
  %and259 = and i64 %sub258, 8192, !dbg !5225
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5225
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5225

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5225

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub263 = sub i64 %60, 1, !dbg !5225
  %and264 = and i64 %sub263, 4096, !dbg !5225
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5225
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5225

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5225

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub268 = sub i64 %61, 1, !dbg !5225
  %and269 = and i64 %sub268, 2048, !dbg !5225
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5225
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5225

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5225

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub273 = sub i64 %62, 1, !dbg !5225
  %and274 = and i64 %sub273, 1024, !dbg !5225
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5225
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5225

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5225

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub278 = sub i64 %63, 1, !dbg !5225
  %and279 = and i64 %sub278, 512, !dbg !5225
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5225
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5225

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5225

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub283 = sub i64 %64, 1, !dbg !5225
  %and284 = and i64 %sub283, 256, !dbg !5225
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5225
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5225

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5225

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub288 = sub i64 %65, 1, !dbg !5225
  %and289 = and i64 %sub288, 128, !dbg !5225
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5225
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5225

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5225

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub293 = sub i64 %66, 1, !dbg !5225
  %and294 = and i64 %sub293, 64, !dbg !5225
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5225
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5225

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5225

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub298 = sub i64 %67, 1, !dbg !5225
  %and299 = and i64 %sub298, 32, !dbg !5225
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5225
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5225

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5225

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub303 = sub i64 %68, 1, !dbg !5225
  %and304 = and i64 %sub303, 16, !dbg !5225
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5225
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5225

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5225

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub308 = sub i64 %69, 1, !dbg !5225
  %and309 = and i64 %sub308, 8, !dbg !5225
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5225
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5225

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5225

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub313 = sub i64 %70, 1, !dbg !5225
  %and314 = and i64 %sub313, 4, !dbg !5225
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5225
  %71 = zext i1 %tobool315 to i64, !dbg !5225
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5225
  br label %cond.end, !dbg !5225

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5225
  br label %cond.end317, !dbg !5225

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5225
  br label %cond.end319, !dbg !5225

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5225
  br label %cond.end321, !dbg !5225

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5225
  br label %cond.end323, !dbg !5225

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5225
  br label %cond.end325, !dbg !5225

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5225
  br label %cond.end327, !dbg !5225

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5225
  br label %cond.end329, !dbg !5225

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5225
  br label %cond.end331, !dbg !5225

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5225
  br label %cond.end333, !dbg !5225

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5225
  br label %cond.end335, !dbg !5225

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5225
  br label %cond.end337, !dbg !5225

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5225
  br label %cond.end339, !dbg !5225

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5225
  br label %cond.end341, !dbg !5225

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5225
  br label %cond.end343, !dbg !5225

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5225
  br label %cond.end345, !dbg !5225

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5225
  br label %cond.end347, !dbg !5225

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5225
  br label %cond.end349, !dbg !5225

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5225
  br label %cond.end351, !dbg !5225

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5225
  br label %cond.end353, !dbg !5225

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5225
  br label %cond.end355, !dbg !5225

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5225
  br label %cond.end357, !dbg !5225

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5225
  br label %cond.end359, !dbg !5225

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5225
  br label %cond.end361, !dbg !5225

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5225
  br label %cond.end363, !dbg !5225

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5225
  br label %cond.end365, !dbg !5225

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5225
  br label %cond.end367, !dbg !5225

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5225
  br label %cond.end369, !dbg !5225

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5225
  br label %cond.end371, !dbg !5225

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5225
  br label %cond.end373, !dbg !5225

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5225
  br label %cond.end375, !dbg !5225

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5225
  br label %cond.end377, !dbg !5225

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5225
  br label %cond.end379, !dbg !5225

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5225
  br label %cond.end381, !dbg !5225

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5225
  br label %cond.end383, !dbg !5225

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5225
  br label %cond.end385, !dbg !5225

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5225
  br label %cond.end387, !dbg !5225

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5225
  br label %cond.end389, !dbg !5225

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5225
  br label %cond.end391, !dbg !5225

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5225
  br label %cond.end393, !dbg !5225

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5225
  br label %cond.end395, !dbg !5225

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5225
  br label %cond.end397, !dbg !5225

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5225
  br label %cond.end399, !dbg !5225

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5225
  br label %cond.end401, !dbg !5225

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5225
  br label %cond.end403, !dbg !5225

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5225
  br label %cond.end405, !dbg !5225

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5225
  br label %cond.end407, !dbg !5225

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5225
  br label %cond.end409, !dbg !5225

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5225
  br label %cond.end411, !dbg !5225

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5225
  br label %cond.end413, !dbg !5225

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5225
  br label %cond.end415, !dbg !5225

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5225
  br label %cond.end417, !dbg !5225

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5225
  br label %cond.end419, !dbg !5225

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5225
  br label %cond.end421, !dbg !5225

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5225
  br label %cond.end423, !dbg !5225

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5225
  br label %cond.end425, !dbg !5225

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5225
  br label %cond.end427, !dbg !5225

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5225
  br label %cond.end429, !dbg !5225

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5225
  br label %cond.end431, !dbg !5225

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5225
  br label %cond.end433, !dbg !5225

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5225
  br label %cond.end435, !dbg !5225

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5225
  br label %cond.end437, !dbg !5225

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5225
  br label %cond.end440, !dbg !5225

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5225

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5225
  br label %cond.end444, !dbg !5225

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5225
  %sub443 = sub i64 %72, 1, !dbg !5225
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5225
  br label %cond.end444, !dbg !5225

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5225
  %sub446 = sub i32 %cond445, 12, !dbg !5226
  %add = add i32 %sub446, 1, !dbg !5227
  store i32 %add, i32* %retval, align 4, !dbg !5228
  br label %return, !dbg !5228

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5229
  %dec = add i64 %73, -1, !dbg !5229
  store i64 %dec, i64* %size.addr, align 8, !dbg !5229
  %74 = load i64, i64* %size.addr, align 8, !dbg !5230
  %shr = lshr i64 %74, 12, !dbg !5230
  store i64 %shr, i64* %size.addr, align 8, !dbg !5230
  %75 = load i64, i64* %size.addr, align 8, !dbg !5231
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5208
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5232
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5233
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5232, !srcloc !5234
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5232
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5235
  %add.i = add i32 %79, 1, !dbg !5236
  store i32 %add.i, i32* %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5238
  ret i32 %80, !dbg !5238
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5239 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5200, metadata !DIExpression()), !dbg !5243
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5207, metadata !DIExpression()), !dbg !5245
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load i64, i64* %n.addr, align 8, !dbg !5248
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5245
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5249
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5250
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5249, !srcloc !5234
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5249
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5251
  %add.i = add i32 %4, 1, !dbg !5252
  %sub = sub i32 %add.i, 1, !dbg !5253
  ret i32 %sub, !dbg !5254
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5255 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5267
  ret i8* %0, !dbg !5268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5269 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5278
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5280
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5281
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !5282
  br i1 %call, label %if.end, label %if.then, !dbg !5283

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5284

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5285
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5286
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5287
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5288
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5289
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5290
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5291
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5292
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5293
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5294
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5295
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5296
  br label %do.body, !dbg !5297

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5298

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5300

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5298

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5302
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5302
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5302
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5302
  br label %do.end7, !dbg !5302

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5298

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5305 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  ret i1 true, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pcpu_release(%struct.device* %dev) #0 !dbg !5315 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pcpu = alloca %struct.pcpu*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcpu*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !5318, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5320, metadata !DIExpression()), !dbg !5322
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5322
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5322
  store i8* %1, i8** %__mptr, align 8, !dbg !5322
  br label %do.body, !dbg !5322

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5323

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5322
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5322
  %3 = bitcast i8* %add.ptr to %struct.pcpu*, !dbg !5322
  store %struct.pcpu* %3, %struct.pcpu** %tmp, align 8, !dbg !5323
  %4 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !5322
  store %struct.pcpu* %4, %struct.pcpu** %pcpu, align 8, !dbg !5319
  %5 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !5325
  %list = getelementptr inbounds %struct.pcpu, %struct.pcpu* %5, i32 0, i32 0, !dbg !5326
  call void @list_del(%struct.list_head* %list) #11, !dbg !5327
  %6 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !5328
  %7 = bitcast %struct.pcpu* %6 to i8*, !dbg !5328
  call void @kfree(i8* %7) #11, !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5331 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5334
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !5335
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5336
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5337
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5338
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5339
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5340
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5341
  ret void, !dbg !5342
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5343 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5346
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !5348
  br i1 %call, label %if.end, label %if.then, !dbg !5349

if.then:                                          ; preds = %entry
  br label %return, !dbg !5350

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5351
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5352
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5352
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5353
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5354
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5354
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !5355
  br label %return, !dbg !5356

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5357 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  ret i1 true, !dbg !5362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5363 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5368
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5369
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5370
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5371
  br label %do.body, !dbg !5372

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5373

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5375

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5373

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5377
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5377
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5377
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5377
  br label %do.end5, !dbg !5377

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5373

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pcpu_dev_is_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %idx) #0 !dbg !5380 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %idx.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5389
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #11, !dbg !5390
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !5388
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5391
  %id = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 26, !dbg !5392
  %2 = load i32, i32* %id, align 4, !dbg !5392
  %tobool = icmp ne i32 %2, 0, !dbg !5391
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5391

cond.true:                                        ; preds = %entry
  %3 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5393
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %3, i32 0, i32 1, !dbg !5394
  %4 = load i16, i16* %mode, align 8, !dbg !5394
  %conv = zext i16 %4 to i32, !dbg !5393
  br label %cond.end, !dbg !5391

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !5391
  %conv1 = trunc i32 %cond to i16, !dbg !5391
  ret i16 %conv1, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !5396 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5401, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5403
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5403
  store i8* %1, i8** %__mptr, align 8, !dbg !5403
  br label %do.body, !dbg !5403

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5403
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5403
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !5403
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !5404
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !5403
  ret %struct.device* %4, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_online(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5407 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %cpu = alloca %struct.pcpu*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcpu*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata %struct.pcpu** %cpu, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5416, metadata !DIExpression()), !dbg !5418
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5418
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5418
  store i8* %1, i8** %__mptr, align 8, !dbg !5418
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5419

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5418
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5418
  %3 = bitcast i8* %add.ptr to %struct.pcpu*, !dbg !5418
  store %struct.pcpu* %3, %struct.pcpu** %tmp, align 8, !dbg !5419
  %4 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !5418
  store %struct.pcpu* %4, %struct.pcpu** %cpu, align 8, !dbg !5415
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5421
  %6 = load %struct.pcpu*, %struct.pcpu** %cpu, align 8, !dbg !5422
  %flags = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 3, !dbg !5423
  %7 = load i32, i32* %flags, align 4, !dbg !5423
  %and = and i32 %7, 1, !dbg !5424
  %tobool = icmp ne i32 %and, 0, !dbg !5425
  %lnot = xor i1 %tobool, true, !dbg !5425
  %lnot1 = xor i1 %lnot, true, !dbg !5426
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5426
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %lnot.ext) #11, !dbg !5427
  %conv = sext i32 %call to i64, !dbg !5427
  ret i64 %conv, !dbg !5428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @store_online(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 section ".ref.text" !dbg !5429 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %pcpu = alloca %struct.pcpu*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcpu*, align 8
  %val = alloca i64, align 8
  %ret = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  call void @llvm.dbg.declare(metadata %struct.pcpu** %pcpu, metadata !5438, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5440, metadata !DIExpression()), !dbg !5442
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5442
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5442
  store i8* %1, i8** %__mptr, align 8, !dbg !5442
  br label %do.body, !dbg !5442

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5443

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5442
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5442
  %3 = bitcast i8* %add.ptr to %struct.pcpu*, !dbg !5442
  store %struct.pcpu* %3, %struct.pcpu** %tmp, align 8, !dbg !5443
  %4 = load %struct.pcpu*, %struct.pcpu** %tmp, align 8, !dbg !5442
  store %struct.pcpu* %4, %struct.pcpu** %pcpu, align 8, !dbg !5439
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5445, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5447, metadata !DIExpression()), !dbg !5448
  %call = call zeroext i1 @capable(i32 21) #11, !dbg !5449
  br i1 %call, label %if.end, label %if.then, !dbg !5451

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !5452
  br label %return, !dbg !5452

if.end:                                           ; preds = %do.end
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5453
  %call1 = call i32 @kstrtoull(i8* %5, i32 0, i64* %val) #11, !dbg !5455
  %cmp = icmp slt i32 %call1, 0, !dbg !5456
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5457

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5458
  br label %return, !dbg !5458

if.end3:                                          ; preds = %if.end
  %6 = load i64, i64* %val, align 8, !dbg !5459
  switch i64 %6, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb5
  ], !dbg !5460

sw.bb:                                            ; preds = %if.end3
  %7 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !5461
  %cpu_id = getelementptr inbounds %struct.pcpu, %struct.pcpu* %7, i32 0, i32 2, !dbg !5463
  %8 = load i32, i32* %cpu_id, align 8, !dbg !5463
  %call4 = call i32 @xen_pcpu_down(i32 %8) #11, !dbg !5464
  %conv = sext i32 %call4 to i64, !dbg !5464
  store i64 %conv, i64* %ret, align 8, !dbg !5465
  br label %sw.epilog, !dbg !5466

sw.bb5:                                           ; preds = %if.end3
  %9 = load %struct.pcpu*, %struct.pcpu** %pcpu, align 8, !dbg !5467
  %cpu_id6 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %9, i32 0, i32 2, !dbg !5468
  %10 = load i32, i32* %cpu_id6, align 8, !dbg !5468
  %call7 = call i32 @xen_pcpu_up(i32 %10) #11, !dbg !5469
  %conv8 = sext i32 %call7 to i64, !dbg !5469
  store i64 %conv8, i64* %ret, align 8, !dbg !5470
  br label %sw.epilog, !dbg !5471

sw.default:                                       ; preds = %if.end3
  store i64 -22, i64* %ret, align 8, !dbg !5472
  br label %sw.epilog, !dbg !5473

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %11 = load i64, i64* %ret, align 8, !dbg !5474
  %cmp9 = icmp sge i64 %11, 0, !dbg !5476
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5477

if.then11:                                        ; preds = %sw.epilog
  %12 = load i64, i64* %count.addr, align 8, !dbg !5478
  store i64 %12, i64* %ret, align 8, !dbg !5479
  br label %if.end12, !dbg !5480

if.end12:                                         ; preds = %if.then11, %sw.epilog
  %13 = load i64, i64* %ret, align 8, !dbg !5481
  store i64 %13, i64* %retval, align 8, !dbg !5482
  br label %return, !dbg !5482

return:                                           ; preds = %if.end12, %if.then2, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !5483
  ret i64 %14, !dbg !5483
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcpu_down(i32 %cpu_id) #0 !dbg !5484 {
entry:
  %cpu_id.addr = alloca i32, align 4
  %op = alloca %struct.xen_platform_op, align 8
  store i32 %cpu_id, i32* %cpu_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu_id.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op* %op, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = bitcast %struct.xen_platform_op* %op to i8*, !dbg !5488
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 136, i1 false), !dbg !5488
  %cmd = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 0, !dbg !5489
  store i32 57, i32* %cmd, align 8, !dbg !5489
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 1, !dbg !5489
  store i32 50331649, i32* %interface_version, align 4, !dbg !5489
  %u = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !5489
  %cpu_ol = bitcast %union.anon* %u to %struct.xenpf_cpu_ol*, !dbg !5490
  %cpuid = getelementptr inbounds %struct.xenpf_cpu_ol, %struct.xenpf_cpu_ol* %cpu_ol, i32 0, i32 0, !dbg !5491
  %1 = load i32, i32* %cpu_id.addr, align 4, !dbg !5492
  store i32 %1, i32* %cpuid, align 8, !dbg !5491
  %call = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #11, !dbg !5493
  ret i32 %call, !dbg !5494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcpu_up(i32 %cpu_id) #0 !dbg !5495 {
entry:
  %cpu_id.addr = alloca i32, align 4
  %op = alloca %struct.xen_platform_op, align 8
  store i32 %cpu_id, i32* %cpu_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu_id.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op* %op, metadata !5498, metadata !DIExpression()), !dbg !5499
  %0 = bitcast %struct.xen_platform_op* %op to i8*, !dbg !5499
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 136, i1 false), !dbg !5499
  %cmd = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 0, !dbg !5500
  store i32 56, i32* %cmd, align 8, !dbg !5500
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 1, !dbg !5500
  store i32 50331649, i32* %interface_version, align 4, !dbg !5500
  %u = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !5500
  %cpu_ol = bitcast %union.anon* %u to %struct.xenpf_cpu_ol*, !dbg !5501
  %cpuid = getelementptr inbounds %struct.xenpf_cpu_ol, %struct.xenpf_cpu_ol* %cpu_ol, i32 0, i32 0, !dbg !5502
  %1 = load i32, i32* %cpu_id.addr, align 4, !dbg !5503
  store i32 %1, i32* %cpuid, align 8, !dbg !5502
  %call = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #11, !dbg !5504
  ret i32 %call, !dbg !5505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @xen_pcpu_online(i32 %flags) #0 !dbg !5506 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5511
  %and = and i32 %0, 1, !dbg !5512
  %tobool = icmp ne i32 %and, 0, !dbg !5513
  %lnot = xor i1 %tobool, true, !dbg !5513
  %lnot1 = xor i1 %lnot, true, !dbg !5514
  ret i1 %lnot1, !dbg !5515
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #3

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #3

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone
declare dso_local i32 @bind_virq_to_irqhandler(i32, i32, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_pcpu_interrupt(i32 %irq, i8* %dev_id) #0 !dbg !5516 {
entry:
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  %call = call zeroext i1 @schedule_work(%struct.work_struct* @xen_pcpu_work) #11, !dbg !5521
  ret i32 1, !dbg !5522
}

; Function Attrs: noredzone
declare dso_local i32 @subsys_system_register(%struct.bus_type*, %struct.attribute_group**) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #3

; Function Attrs: noredzone
declare dso_local void @unbind_from_irqhandler(i32, i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4073}
!llvm.module.flags = !{!4074, !4075, !4076, !4077}
!llvm.ident = !{!4078}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_pcpu_work", scope: !2, file: !3, line: 340, type: !1857, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, globals: !4042, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/pcpu.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !38, !46, !51, !57, !63, !72, !80, !86, !92, !99, !107, !113, !127, !134, !142, !148, !155, !160, !171}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 64, elements: !8)
!6 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!9 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!10 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!11 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!12 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!13 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!14 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!15 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!18 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!19 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!20 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!21 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!22 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!23 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!24 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!25 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!26 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!27 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!28 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!29 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!30 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!32 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!33 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!34 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!35 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!36 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!37 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !39, line: 15, baseType: !40, size: 32, elements: !41)
!39 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !47, line: 65, baseType: !40, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !52, line: 16, baseType: !40, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !58, line: 54, baseType: !40, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !64, line: 296, baseType: !40, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!70 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !73, line: 9, baseType: !40, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !81, line: 26, baseType: !40, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !87, line: 44, baseType: !40, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !93, line: 343, baseType: !40, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !100, line: 524, baseType: !40, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105, !106}
!102 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !100, line: 502, baseType: !40, size: 32, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !114, line: 76, baseType: !40, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!116 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!120 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!121 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!122 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!123 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!124 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!125 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!126 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !128, line: 478, baseType: !40, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !135, line: 1084, baseType: !40, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141}
!137 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!141 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !143, line: 11, baseType: !40, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !149, line: 305, baseType: !40, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 10, baseType: !40, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !161, line: 53, baseType: !40, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170}
!163 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!166 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!167 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!168 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!169 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!170 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !172, line: 5, baseType: !40, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!177 = !{!178, !179, !722, !4040, !3211, !299, !234}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcpu", file: !3, line: 57, size: 5760, elements: !181)
!181 = !{!182, !189, !4038, !4039}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !3, line: 58, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !184, line: 178, size: 128, elements: !185)
!184 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !184, line: 179, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !183, file: !184, line: 179, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !180, file: !3, line: 59, baseType: !190, size: 5568, offset: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !93, line: 461, size: 5568, elements: !191)
!191 = !{!192, !3210, !3212, !3215, !3216, !3267, !3358, !3359, !3360, !3361, !3362, !3371, !3476, !3489, !3965, !3966, !3970, !3972, !3973, !3974, !3978, !3984, !3985, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !4026, !4027, !4028, !4031, !4034, !4035, !4036, !4037}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !93, line: 462, baseType: !193, size: 512)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !161, line: 64, size: 512, elements: !194)
!194 = !{!195, !199, !200, !202, !263, !3061, !3200, !3205, !3206, !3207, !3208, !3209}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !161, line: 65, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !193, file: !161, line: 66, baseType: !183, size: 128, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !161, line: 67, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !193, file: !161, line: 68, baseType: !203, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !161, line: 192, size: 704, elements: !205)
!205 = !{!206, !207, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !204, file: !161, line: 193, baseType: !183, size: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !204, file: !161, line: 194, baseType: !208, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !209, line: 83, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !209, line: 71, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !209, line: 72, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !209, line: 72, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !213, file: !209, line: 73, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !209, line: 20, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !216, file: !209, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !220, line: 25, baseType: !221)
!220 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 25, elements: !222)
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !204, file: !161, line: 195, baseType: !193, size: 512, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !204, file: !161, line: 196, baseType: !225, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !161, line: 156, size: 192, elements: !228)
!228 = !{!229, !235, !240}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !227, file: !161, line: 157, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !203, !201}
!234 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !161, line: 158, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!196, !203, !201}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !227, file: !161, line: 159, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!234, !203, !201, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !161, line: 148, size: 20736, elements: !247)
!247 = !{!248, !253, !257, !258, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !246, file: !161, line: 149, baseType: !249, size: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !246, file: !161, line: 150, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !246, file: !161, line: 151, baseType: !234, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !161, line: 152, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !246, file: !161, line: 153, baseType: !234, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !193, file: !161, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !161, line: 138, size: 448, elements: !266)
!266 = !{!267, !271, !300, !302, !3023, !3051, !3055}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !161, line: 139, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !201}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !161, line: 140, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 230, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !292}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !274, file: !275, line: 231, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !201, !285, !250}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !184, line: 60, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !7)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !275, line: 30, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !275, line: 31, baseType: !196, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !286, file: !275, line: 32, baseType: !290, size: 16, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !184, line: 19, baseType: !291)
!291 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 232, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!281, !201, !285, !196, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 55, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !299)
!299 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !265, file: !161, line: 141, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !161, line: 142, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !307)
!307 = !{!308, !309, !313, !3020, !3021}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !275, line: 85, baseType: !196, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !306, file: !275, line: 86, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!290, !201, !285, !234}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !306, file: !275, line: 88, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!290, !201, !317, !234}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 168, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !3015, !3016}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !318, file: !275, line: 169, baseType: !286, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !275, line: 170, baseType: !296, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !318, file: !275, line: 171, baseType: !178, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !318, file: !275, line: 172, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!281, !327, !201, !317, !250, !506, !296}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 916, size: 1856, align: 32, elements: !329)
!329 = !{!330, !348, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2998, !2999, !3008, !3009, !3010, !3011, !3012, !3013, !3014}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !328, file: !64, line: 920, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !64, line: 917, size: 128, elements: !332)
!332 = !{!333, !339}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !331, file: !64, line: 918, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !335, line: 58, size: 64, elements: !336)
!335 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !335, line: 59, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !331, file: !64, line: 919, baseType: !340, size: 128, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !184, line: 216, size: 128, align: 64, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !184, line: 217, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !340, file: !184, line: 218, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !343}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !328, file: !64, line: 921, baseType: !349, size: 128, offset: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !350, line: 8, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !349, file: !350, line: 9, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !355, line: 18, flags: DIFlagFwdDecl)
!355 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !349, file: !350, line: 10, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !355, line: 89, size: 1536, elements: !359)
!359 = !{!360, !361, !371, !379, !380, !403, !2948, !2950, !2962, !2963, !2964, !2965, !2966, !2972, !2973, !2974}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !358, file: !355, line: 91, baseType: !40, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !358, file: !355, line: 92, baseType: !362, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !363, line: 277, baseType: !364)
!363 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !363, line: 277, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !364, file: !363, line: 277, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !363, line: 70, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !363, line: 65, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !368, file: !363, line: 66, baseType: !40, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !355, line: 93, baseType: !372, size: 128, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !373, line: 38, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !373, line: 39, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !372, file: !373, line: 39, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !358, file: !355, line: 94, baseType: !357, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !358, file: !355, line: 95, baseType: !381, size: 128, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !355, line: 47, size: 128, elements: !382)
!382 = !{!383, !399}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !355, line: 48, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !355, line: 48, size: 64, elements: !385)
!385 = !{!386, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !355, line: 49, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !355, line: 49, size: 64, elements: !388)
!388 = !{!389, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !355, line: 50, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !391, line: 21, baseType: !392)
!391 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !393, line: 27, baseType: !40)
!393 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !387, file: !355, line: 50, baseType: !390, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !384, file: !355, line: 52, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !391, line: 23, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !393, line: 31, baseType: !398)
!398 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !355, line: 54, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !358, file: !355, line: 96, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 610, size: 4224, elements: !406)
!406 = !{!407, !408, !409, !417, !424, !425, !573, !2659, !2660, !2661, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2924, !2932, !2933, !2934, !2944, !2945, !2946, !2947}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !405, file: !64, line: 611, baseType: !290, size: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !405, file: !64, line: 612, baseType: !291, size: 16, offset: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !405, file: !64, line: 613, baseType: !410, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !411, line: 23, baseType: !412)
!411 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 21, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !411, line: 22, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 32, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !40)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !405, file: !64, line: 614, baseType: !418, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !411, line: 28, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 26, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !411, line: 27, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 33, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !40)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !405, file: !64, line: 615, baseType: !40, size: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !405, file: !64, line: 622, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1864, size: 1536, align: 512, elements: !429)
!429 = !{!430, !434, !447, !451, !457, !461, !467, !471, !475, !479, !483, !484, !490, !494, !520, !549, !553, !559, !564, !568, !569}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !428, file: !64, line: 1865, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!357, !404, !357, !40}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !428, file: !64, line: 1866, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!196, !357, !404, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !440, line: 10, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !439, file: !440, line: 11, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !178}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !439, file: !440, line: 12, baseType: !178, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !428, file: !64, line: 1867, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!234, !404, !234}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !428, file: !64, line: 1868, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !404, !234}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 581, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !428, file: !64, line: 1870, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!234, !357, !250, !234}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !428, file: !64, line: 1872, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!234, !404, !357, !290, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !184, line: 30, baseType: !466)
!466 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !428, file: !64, line: 1873, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!234, !357, !404, !357}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !428, file: !64, line: 1874, baseType: !472, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!234, !404, !357}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !428, file: !64, line: 1875, baseType: !476, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!234, !404, !357, !196}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !428, file: !64, line: 1876, baseType: !480, size: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!234, !404, !357, !290}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !428, file: !64, line: 1877, baseType: !472, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !428, file: !64, line: 1878, baseType: !485, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!234, !404, !357, !290, !488}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !184, line: 16, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !184, line: 13, baseType: !390)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !428, file: !64, line: 1879, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!234, !404, !357, !404, !357, !40}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !428, file: !64, line: 1881, baseType: !495, size: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!234, !357, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 219, size: 640, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !509, !517, !518, !519}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !499, file: !64, line: 220, baseType: !40, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !499, file: !64, line: 221, baseType: !290, size: 16, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !499, file: !64, line: 222, baseType: !410, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !499, file: !64, line: 223, baseType: !418, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !499, file: !64, line: 224, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !184, line: 46, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !508)
!508 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !499, file: !64, line: 225, baseType: !510, size: 128, offset: 192)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !511, line: 13, size: 128, elements: !512)
!511 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!512 = !{!513, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !510, file: !511, line: 14, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !511, line: 8, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !393, line: 30, baseType: !508)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !510, file: !511, line: 15, baseType: !7, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !499, file: !64, line: 226, baseType: !510, size: 128, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !499, file: !64, line: 227, baseType: !510, size: 128, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !499, file: !64, line: 234, baseType: !327, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !428, file: !64, line: 1882, baseType: !521, size: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!234, !524, !526, !390, !40}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !528, line: 22, size: 1152, elements: !529)
!528 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!529 = !{!530, !531, !532, !533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !527, file: !528, line: 23, baseType: !390, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !527, file: !528, line: 24, baseType: !290, size: 16, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !527, file: !528, line: 25, baseType: !40, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !527, file: !528, line: 26, baseType: !534, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !184, line: 104, baseType: !390)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !527, file: !528, line: 27, baseType: !396, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !527, file: !528, line: 28, baseType: !396, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !527, file: !528, line: 37, baseType: !396, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !527, file: !528, line: 38, baseType: !488, size: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !527, file: !528, line: 39, baseType: !488, size: 32, offset: 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !527, file: !528, line: 40, baseType: !410, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !527, file: !528, line: 41, baseType: !418, size: 32, offset: 416)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !528, line: 42, baseType: !506, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !527, file: !528, line: 43, baseType: !510, size: 128, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !527, file: !528, line: 44, baseType: !510, size: 128, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !527, file: !528, line: 45, baseType: !510, size: 128, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !527, file: !528, line: 46, baseType: !510, size: 128, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !527, file: !528, line: 47, baseType: !396, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !527, file: !528, line: 48, baseType: !396, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !428, file: !64, line: 1883, baseType: !550, size: 64, offset: 960)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!281, !357, !250, !296}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !428, file: !64, line: 1884, baseType: !554, size: 64, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!234, !404, !557, !396, !396}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !428, file: !64, line: 1886, baseType: !560, size: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!234, !404, !563, !234}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !428, file: !64, line: 1887, baseType: !565, size: 64, offset: 1152)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!234, !404, !357, !327, !40, !290}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !428, file: !64, line: 1890, baseType: !480, size: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !428, file: !64, line: 1891, baseType: !570, size: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!234, !404, !455, !234}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !405, file: !64, line: 623, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1416, size: 9472, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !632, !2266, !2348, !2431, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2447, !2451, !2452, !2455, !2456, !2459, !2460, !2461, !2502, !2529, !2530, !2531, !2532, !2533, !2534, !2537, !2539, !2546, !2547, !2549, !2550, !2551, !2610, !2611, !2626, !2627, !2628, !2629, !2630, !2633, !2634, !2635, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !575, file: !64, line: 1417, baseType: !183, size: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !575, file: !64, line: 1418, baseType: !488, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !575, file: !64, line: 1419, baseType: !402, size: 8, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !575, file: !64, line: 1420, baseType: !299, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !575, file: !64, line: 1421, baseType: !506, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !575, file: !64, line: 1422, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2228, size: 576, elements: !585)
!585 = !{!586, !587, !588, !595, !599, !603, !607, !611, !612, !622, !625, !626, !627, !629, !630, !631}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !64, line: 2229, baseType: !196, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !584, file: !64, line: 2230, baseType: !234, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !584, file: !64, line: 2238, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!234, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !594, line: 28, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !584, file: !64, line: 2239, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 70, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !584, file: !64, line: 2240, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!357, !583, !234, !196, !178}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !584, file: !64, line: 2242, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !574}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !64, line: 2243, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !610, line: 76, flags: DIFlagFwdDecl)
!610 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !64, line: 2244, baseType: !583, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !584, file: !64, line: 2245, baseType: !613, size: 64, offset: 512)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !184, line: 182, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !613, file: !184, line: 183, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !184, line: 186, size: 128, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !184, line: 187, baseType: !616, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !617, file: !184, line: 187, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !584, file: !64, line: 2247, baseType: !623, offset: 576)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !624, line: 187, elements: !222)
!624 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !584, file: !64, line: 2248, baseType: !623, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !584, file: !64, line: 2249, baseType: !623, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !584, file: !64, line: 2250, baseType: !628, offset: 576)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, elements: !251)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !584, file: !64, line: 2252, baseType: !623, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !584, file: !64, line: 2253, baseType: !623, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !584, file: !64, line: 2254, baseType: !623, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !575, file: !64, line: 1423, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 1935, size: 1472, elements: !636)
!636 = !{!637, !641, !645, !646, !650, !656, !660, !661, !662, !666, !670, !671, !672, !673, !679, !684, !685, !692, !693, !694, !695, !2250, !2265}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !635, file: !64, line: 1936, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!404, !574}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !635, file: !64, line: 1937, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !404}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !635, file: !64, line: 1938, baseType: !642, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !635, file: !64, line: 1940, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !404, !234}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !635, file: !64, line: 1941, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!234, !404, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 289, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !635, file: !64, line: 1942, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!234, !404}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !635, file: !64, line: 1943, baseType: !642, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !635, file: !64, line: 1944, baseType: !604, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !635, file: !64, line: 1945, baseType: !663, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!234, !574, !234}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !635, file: !64, line: 1946, baseType: !667, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!234, !574}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !635, file: !64, line: 1947, baseType: !667, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !635, file: !64, line: 1948, baseType: !667, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !635, file: !64, line: 1949, baseType: !667, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !635, file: !64, line: 1950, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!234, !357, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 57, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !635, file: !64, line: 1951, baseType: !680, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!234, !574, !683, !250}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !635, file: !64, line: 1952, baseType: !604, size: 64, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !635, file: !64, line: 1954, baseType: !686, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!234, !689, !357}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !691, line: 539, flags: DIFlagFwdDecl)
!691 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !635, file: !64, line: 1955, baseType: !686, size: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !635, file: !64, line: 1956, baseType: !686, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !635, file: !64, line: 1957, baseType: !686, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !635, file: !64, line: 1963, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!234, !574, !699, !722}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !701, line: 68, size: 512, align: 128, elements: !702)
!701 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !{!703, !704, !2242, !2249}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !701, line: 69, baseType: !299, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 77, baseType: !705, size: 320, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 77, size: 320, elements: !706)
!706 = !{!707, !895, !900, !928, !936, !942, !2234, !2241}
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 78, baseType: !708, size: 320)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 78, size: 320, elements: !709)
!709 = !{!710, !711, !893, !894}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !708, file: !701, line: 84, baseType: !183, size: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !708, file: !701, line: 86, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 451, size: 1216, align: 64, elements: !714)
!714 = !{!715, !716, !724, !725, !730, !745, !761, !762, !763, !764, !886, !887, !890, !891, !892}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !713, file: !64, line: 452, baseType: !404, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !713, file: !64, line: 453, baseType: !717, size: 128, offset: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !718, line: 292, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !721, !723}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !717, file: !718, line: 293, baseType: !208)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !717, file: !718, line: 295, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !184, line: 148, baseType: !40)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !717, file: !718, line: 296, baseType: !178, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !713, file: !64, line: 454, baseType: !722, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !713, file: !64, line: 455, baseType: !726, size: 32, offset: 224)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !184, line: 168, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 166, size: 32, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !727, file: !184, line: 167, baseType: !234, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !713, file: !64, line: 460, baseType: !731, size: 128, offset: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !732, line: 125, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !744}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !731, file: !732, line: 126, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !732, line: 31, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !735, file: !732, line: 32, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !732, line: 24, size: 192, align: 64, elements: !740)
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !739, file: !732, line: 25, baseType: !299, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !739, file: !732, line: 26, baseType: !738, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !739, file: !732, line: 27, baseType: !738, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !731, file: !732, line: 127, baseType: !738, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !713, file: !64, line: 461, baseType: !746, size: 256, offset: 384)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !747, line: 35, size: 256, elements: !748)
!747 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !757, !758, !760}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !746, file: !747, line: 36, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !751, line: 13, baseType: !752)
!751 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !184, line: 175, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 173, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !753, file: !184, line: 174, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !391, line: 22, baseType: !515)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !746, file: !747, line: 42, baseType: !750, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !746, file: !747, line: 46, baseType: !759, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 29, baseType: !216)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !746, file: !747, line: 47, baseType: !183, size: 128, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !713, file: !64, line: 462, baseType: !299, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !713, file: !64, line: 463, baseType: !299, size: 64, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !713, file: !64, line: 464, baseType: !299, size: 64, offset: 768)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !713, file: !64, line: 465, baseType: !765, size: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 367, size: 1408, elements: !768)
!768 = !{!769, !773, !777, !781, !785, !789, !795, !801, !805, !810, !814, !818, !822, !850, !854, !860, !861, !862, !866, !871, !875, !882}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !767, file: !64, line: 368, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!234, !699, !654}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !767, file: !64, line: 369, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!234, !327, !699}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !767, file: !64, line: 372, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!234, !712, !654}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !767, file: !64, line: 375, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!234, !699}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !767, file: !64, line: 381, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!234, !327, !712, !187, !40}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !767, file: !64, line: 383, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 290, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !767, file: !64, line: 385, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!234, !327, !712, !506, !40, !40, !799, !800}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !767, file: !64, line: 388, baseType: !802, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!234, !327, !712, !506, !40, !40, !699, !178}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !767, file: !64, line: 393, baseType: !806, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!809, !712, !809}
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !184, line: 125, baseType: !396)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !767, file: !64, line: 394, baseType: !811, size: 64, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !699, !40, !40}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !767, file: !64, line: 395, baseType: !815, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!234, !699, !722}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !767, file: !64, line: 396, baseType: !819, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !699}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !767, file: !64, line: 397, baseType: !823, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!281, !826, !848}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 320, size: 384, elements: !828)
!828 = !{!829, !830, !831, !835, !836, !837, !840, !841}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !827, file: !64, line: 321, baseType: !327, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !827, file: !64, line: 326, baseType: !506, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !827, file: !64, line: 327, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !826, !7, !7}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !827, file: !64, line: 328, baseType: !178, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !827, file: !64, line: 329, baseType: !234, size: 32, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !827, file: !64, line: 330, baseType: !838, size: 16, offset: 288)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !391, line: 19, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !393, line: 24, baseType: !291)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !827, file: !64, line: 331, baseType: !838, size: 16, offset: 304)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !827, file: !64, line: 332, baseType: !842, size: 64, offset: 320)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !64, line: 332, size: 64, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !842, file: !64, line: 333, baseType: !40, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !842, file: !64, line: 334, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 334, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 64, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !767, file: !64, line: 402, baseType: !851, size: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!234, !712, !699, !699, !38}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !767, file: !64, line: 404, baseType: !855, size: 64, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!465, !699, !858}
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !859, line: 305, baseType: !40)
!859 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !767, file: !64, line: 405, baseType: !819, size: 64, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !767, file: !64, line: 406, baseType: !782, size: 64, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !767, file: !64, line: 407, baseType: !863, size: 64, offset: 1088)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!234, !699, !299, !299}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !767, file: !64, line: 409, baseType: !867, size: 64, offset: 1152)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !699, !870, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !767, file: !64, line: 410, baseType: !872, size: 64, offset: 1216)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!234, !712, !699}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !767, file: !64, line: 413, baseType: !876, size: 64, offset: 1280)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!234, !879, !327, !881}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 61, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !767, file: !64, line: 415, baseType: !883, size: 64, offset: 1344)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !327}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !64, line: 466, baseType: !299, size: 64, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !713, file: !64, line: 467, baseType: !888, size: 32, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !889, line: 8, baseType: !390)
!889 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !713, file: !64, line: 468, baseType: !208, offset: 992)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !713, file: !64, line: 469, baseType: !183, size: 128, offset: 1024)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !713, file: !64, line: 470, baseType: !178, size: 64, offset: 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !708, file: !701, line: 87, baseType: !299, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !708, file: !701, line: 94, baseType: !299, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 96, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 96, size: 64, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !896, file: !701, line: 101, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !184, line: 143, baseType: !396)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 103, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 103, size: 320, elements: !902)
!902 = !{!903, !913, !916, !917}
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !701, line: 104, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !701, line: 104, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !904, file: !701, line: 105, baseType: !183, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !701, line: 106, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !701, line: 106, size: 128, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !701, line: 107, baseType: !699, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !908, file: !701, line: 109, baseType: !234, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !908, file: !701, line: 110, baseType: !234, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !901, file: !701, line: 117, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !701, line: 117, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !901, file: !701, line: 119, baseType: !178, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !701, line: 120, baseType: !918, size: 64, offset: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !701, line: 120, size: 64, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !918, file: !701, line: 121, baseType: !178, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !918, file: !701, line: 122, baseType: !299, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !701, line: 123, baseType: !923, size: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !701, line: 123, size: 32, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !923, file: !701, line: 124, baseType: !40, size: 16, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !923, file: !701, line: 125, baseType: !40, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !923, file: !701, line: 126, baseType: !40, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 130, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 130, size: 192, elements: !930)
!930 = !{!931, !932, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !929, file: !701, line: 131, baseType: !299, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !929, file: !701, line: 134, baseType: !402, size: 8, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !929, file: !701, line: 135, baseType: !402, size: 8, offset: 72)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !929, file: !701, line: 136, baseType: !726, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !929, file: !701, line: 137, baseType: !40, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 139, baseType: !937, size: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 139, size: 256, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !937, file: !701, line: 140, baseType: !299, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !937, file: !701, line: 141, baseType: !726, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !937, file: !701, line: 143, baseType: !183, size: 128, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 145, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 145, size: 256, elements: !944)
!944 = !{!945, !946, !948, !949, !2233}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !943, file: !701, line: 146, baseType: !299, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !943, file: !701, line: 147, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !691, line: 509, baseType: !699)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !943, file: !701, line: 148, baseType: !299, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !701, line: 149, baseType: !950, size: 64, offset: 192)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !701, line: 149, size: 64, elements: !951)
!951 = !{!952, !2232}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !950, file: !701, line: 150, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !701, line: 388, size: 7296, elements: !955)
!955 = !{!956, !2228}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !701, line: 389, baseType: !957, size: 7296)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !701, line: 389, size: 7296, elements: !958)
!958 = !{!959, !997, !998, !999, !1003, !1004, !1005, !1006, !1007, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1048, !1056, !1059, !1105, !1106, !2212, !2213, !2216, !2217, !2218, !2221, !2222, !2223, !2226, !2227}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !957, file: !701, line: 390, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !701, line: 305, size: 1472, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !977, !978, !983, !984, !987, !991, !992, !993, !994, !995}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !961, file: !701, line: 308, baseType: !299, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !961, file: !701, line: 309, baseType: !299, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !961, file: !701, line: 313, baseType: !960, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !961, file: !701, line: 313, baseType: !960, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !961, file: !701, line: 315, baseType: !739, size: 192, align: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !961, file: !701, line: 323, baseType: !299, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !961, file: !701, line: 327, baseType: !953, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !961, file: !701, line: 333, baseType: !971, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !691, line: 284, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !691, line: 284, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !972, file: !691, line: 284, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !976, line: 19, baseType: !299)
!976 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !961, file: !701, line: 334, baseType: !299, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !961, file: !701, line: 343, baseType: !979, size: 256, offset: 704)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !701, line: 340, size: 256, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !979, file: !701, line: 341, baseType: !739, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !979, file: !701, line: 342, baseType: !299, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !961, file: !701, line: 351, baseType: !183, size: 128, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !961, file: !701, line: 353, baseType: !985, size: 64, offset: 1088)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !701, line: 353, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !961, file: !701, line: 356, baseType: !988, size: 64, offset: 1152)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !701, line: 356, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !961, file: !701, line: 359, baseType: !299, size: 64, offset: 1216)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !961, file: !701, line: 361, baseType: !327, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !961, file: !701, line: 362, baseType: !178, size: 64, offset: 1344)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !961, file: !701, line: 365, baseType: !750, size: 64, offset: 1408)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !961, file: !701, line: 373, baseType: !996, offset: 1472)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !701, line: 296, elements: !222)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !957, file: !701, line: 391, baseType: !735, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !957, file: !701, line: 392, baseType: !396, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !957, file: !701, line: 394, baseType: !1000, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!299, !327, !299, !299, !299, !299}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !957, file: !701, line: 398, baseType: !299, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !957, file: !701, line: 399, baseType: !299, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !957, file: !701, line: 405, baseType: !299, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !957, file: !701, line: 406, baseType: !299, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !957, file: !701, line: 407, baseType: !1008, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !691, line: 286, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 286, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1010, file: !691, line: 286, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !976, line: 18, baseType: !299)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !957, file: !701, line: 416, baseType: !726, size: 32, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !957, file: !701, line: 428, baseType: !726, size: 32, offset: 608)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !957, file: !701, line: 437, baseType: !726, size: 32, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !957, file: !701, line: 447, baseType: !726, size: 32, offset: 672)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !957, file: !701, line: 450, baseType: !750, size: 64, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !957, file: !701, line: 452, baseType: !234, size: 32, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !957, file: !701, line: 454, baseType: !208, offset: 800)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !957, file: !701, line: 457, baseType: !746, size: 256, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !957, file: !701, line: 459, baseType: !183, size: 128, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !957, file: !701, line: 466, baseType: !299, size: 64, offset: 1216)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !957, file: !701, line: 467, baseType: !299, size: 64, offset: 1280)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !957, file: !701, line: 469, baseType: !299, size: 64, offset: 1344)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !957, file: !701, line: 470, baseType: !299, size: 64, offset: 1408)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !957, file: !701, line: 471, baseType: !752, size: 64, offset: 1472)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !957, file: !701, line: 472, baseType: !299, size: 64, offset: 1536)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !957, file: !701, line: 473, baseType: !299, size: 64, offset: 1600)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !957, file: !701, line: 474, baseType: !299, size: 64, offset: 1664)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !957, file: !701, line: 475, baseType: !299, size: 64, offset: 1728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !957, file: !701, line: 477, baseType: !208, offset: 1792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !957, file: !701, line: 478, baseType: !299, size: 64, offset: 1792)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !957, file: !701, line: 478, baseType: !299, size: 64, offset: 1856)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !957, file: !701, line: 478, baseType: !299, size: 64, offset: 1920)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !957, file: !701, line: 478, baseType: !299, size: 64, offset: 1984)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !957, file: !701, line: 479, baseType: !299, size: 64, offset: 2048)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !957, file: !701, line: 479, baseType: !299, size: 64, offset: 2112)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !957, file: !701, line: 479, baseType: !299, size: 64, offset: 2176)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !957, file: !701, line: 480, baseType: !299, size: 64, offset: 2240)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !957, file: !701, line: 480, baseType: !299, size: 64, offset: 2304)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !957, file: !701, line: 480, baseType: !299, size: 64, offset: 2368)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !957, file: !701, line: 480, baseType: !299, size: 64, offset: 2432)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !957, file: !701, line: 482, baseType: !1045, size: 2816, offset: 2496)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 2816, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 44)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !957, file: !701, line: 488, baseType: !1049, size: 256, offset: 5312)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1050, line: 60, size: 256, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1049, file: !1050, line: 61, baseType: !1053, size: 256)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 256, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 4)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !957, file: !701, line: 490, baseType: !1057, size: 64, offset: 5568)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !701, line: 490, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !957, file: !701, line: 493, baseType: !1060, size: 896, offset: 5632)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1061, line: 53, baseType: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1061, line: 13, size: 896, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1070, !1071, !1078, !1079, !1099, !1100, !1101}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1062, file: !1061, line: 18, baseType: !396, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1062, file: !1061, line: 28, baseType: !752, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1062, file: !1061, line: 31, baseType: !746, size: 256, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1062, file: !1061, line: 32, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1061, line: 32, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1062, file: !1061, line: 37, baseType: !291, size: 16, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1062, file: !1061, line: 40, baseType: !1072, size: 192, offset: 512)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1073, line: 53, size: 192, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1072, file: !1073, line: 54, baseType: !750, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1072, file: !1073, line: 55, baseType: !208, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1072, file: !1073, line: 59, baseType: !183, size: 128, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1062, file: !1061, line: 41, baseType: !178, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1062, file: !1061, line: 42, baseType: !1080, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1083, line: 13, size: 896, elements: !1084)
!1083 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1082, file: !1083, line: 14, baseType: !178, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1082, file: !1083, line: 15, baseType: !299, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1082, file: !1083, line: 17, baseType: !299, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1082, file: !1083, line: 17, baseType: !299, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1082, file: !1083, line: 19, baseType: !7, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1082, file: !1083, line: 21, baseType: !7, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1082, file: !1083, line: 22, baseType: !7, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1082, file: !1083, line: 23, baseType: !7, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1082, file: !1083, line: 24, baseType: !7, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1082, file: !1083, line: 25, baseType: !7, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1082, file: !1083, line: 26, baseType: !7, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1082, file: !1083, line: 27, baseType: !7, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1082, file: !1083, line: 28, baseType: !7, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1082, file: !1083, line: 29, baseType: !7, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1062, file: !1061, line: 44, baseType: !726, size: 32, offset: 832)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1062, file: !1061, line: 50, baseType: !838, size: 16, offset: 864)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1062, file: !1061, line: 51, baseType: !1102, size: 16, offset: 880)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !391, line: 18, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !393, line: 23, baseType: !1104)
!1104 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !701, line: 495, baseType: !299, size: 64, offset: 6528)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !957, file: !701, line: 497, baseType: !1107, size: 64, offset: 6592)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !701, line: 381, size: 384, elements: !1109)
!1109 = !{!1110, !1111, !2211}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1108, file: !701, line: 382, baseType: !726, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1108, file: !701, line: 383, baseType: !1112, size: 128, offset: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !701, line: 376, size: 128, elements: !1113)
!1113 = !{!1114, !2209}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1112, file: !701, line: 377, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1117, line: 640, size: 48640, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1125, !1127, !1128, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1145, !1163, !1174, !1259, !1260, !1261, !1272, !1273, !1275, !1276, !1277, !1278, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1357, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1395, !1397, !1398, !1399, !1411, !1412, !1413, !1414, !1415, !1416, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1440, !1445, !1629, !1630, !1631, !1632, !1636, !1639, !1642, !1645, !1648, !1651, !1752, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1798, !1799, !1800, !1801, !1802, !1807, !1808, !1809, !1812, !1813, !1816, !1819, !1822, !1825, !1867, !1870, !1871, !1950, !1951, !1954, !1955, !1958, !1959, !1960, !1964, !1965, !1966, !1979, !1980, !1981, !1991, !1996, !1999, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1116, file: !1117, line: 646, baseType: !1120, size: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1121, line: 56, size: 128, elements: !1122)
!1121 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !1121, line: 57, baseType: !299, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1120, file: !1121, line: 58, baseType: !390, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1116, file: !1117, line: 649, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1116, file: !1117, line: 657, baseType: !178, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1116, file: !1117, line: 658, baseType: !1129, size: 32, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1130, line: 113, baseType: !1131)
!1130 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1130, line: 111, size: 32, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1131, file: !1130, line: 112, baseType: !726, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 660, baseType: !40, size: 32, offset: 288)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1116, file: !1117, line: 661, baseType: !40, size: 32, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1116, file: !1117, line: 684, baseType: !234, size: 32, offset: 352)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1116, file: !1117, line: 686, baseType: !234, size: 32, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1116, file: !1117, line: 687, baseType: !234, size: 32, offset: 416)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1116, file: !1117, line: 688, baseType: !234, size: 32, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1116, file: !1117, line: 689, baseType: !40, size: 32, offset: 480)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1116, file: !1117, line: 691, baseType: !1142, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1117, line: 691, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1116, file: !1117, line: 692, baseType: !1146, size: 832, offset: 576)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1117, line: 451, size: 832, elements: !1147)
!1147 = !{!1148, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1146, file: !1117, line: 453, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1117, line: 325, size: 128, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1149, file: !1117, line: 326, baseType: !299, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1149, file: !1117, line: 327, baseType: !390, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1146, file: !1117, line: 454, baseType: !739, size: 192, align: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1146, file: !1117, line: 455, baseType: !183, size: 128, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1146, file: !1117, line: 456, baseType: !40, size: 32, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1146, file: !1117, line: 458, baseType: !396, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1146, file: !1117, line: 459, baseType: !396, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1146, file: !1117, line: 460, baseType: !396, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1146, file: !1117, line: 461, baseType: !396, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1146, file: !1117, line: 463, baseType: !396, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1146, file: !1117, line: 465, baseType: !1162, offset: 832)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1117, line: 415, elements: !222)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1116, file: !1117, line: 693, baseType: !1164, size: 384, offset: 1408)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1117, line: 489, size: 384, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1164, file: !1117, line: 490, baseType: !183, size: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1164, file: !1117, line: 491, baseType: !299, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1164, file: !1117, line: 492, baseType: !299, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1164, file: !1117, line: 493, baseType: !40, size: 32, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1164, file: !1117, line: 494, baseType: !291, size: 16, offset: 288)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1164, file: !1117, line: 495, baseType: !291, size: 16, offset: 304)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1164, file: !1117, line: 497, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1116, file: !1117, line: 697, baseType: !1175, size: 1792, offset: 1792)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1117, line: 507, size: 1792, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1256, !1257}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1175, file: !1117, line: 508, baseType: !739, size: 192, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1175, file: !1117, line: 515, baseType: !396, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1175, file: !1117, line: 516, baseType: !396, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1175, file: !1117, line: 517, baseType: !396, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1175, file: !1117, line: 518, baseType: !396, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1175, file: !1117, line: 519, baseType: !396, size: 64, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1175, file: !1117, line: 526, baseType: !756, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1175, file: !1117, line: 527, baseType: !396, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !1117, line: 528, baseType: !40, size: 32, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1175, file: !1117, line: 554, baseType: !40, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1175, file: !1117, line: 555, baseType: !40, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1175, file: !1117, line: 556, baseType: !40, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1175, file: !1117, line: 557, baseType: !40, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1175, file: !1117, line: 563, baseType: !1191, size: 512, offset: 704)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !47, line: 118, size: 512, elements: !1192)
!1192 = !{!1193, !1201, !1202, !1207, !1250, !1253, !1254, !1255}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1191, file: !47, line: 119, baseType: !1194, size: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1195, line: 9, size: 256, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1194, file: !1195, line: 10, baseType: !739, size: 192, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1194, file: !1195, line: 11, baseType: !1199, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1200, line: 29, baseType: !756)
!1200 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1191, file: !47, line: 120, baseType: !1199, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1191, file: !47, line: 121, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!46, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1191, file: !47, line: 122, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !47, line: 159, size: 512, align: 512, elements: !1210)
!1210 = !{!1211, !1231, !1232, !1235, !1240, !1241, !1245, !1249}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1209, file: !47, line: 160, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !47, line: 214, size: 4608, align: 512, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1213, file: !47, line: 215, baseType: !759)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1213, file: !47, line: 216, baseType: !40, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1213, file: !47, line: 217, baseType: !40, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1213, file: !47, line: 218, baseType: !40, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1213, file: !47, line: 219, baseType: !40, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1213, file: !47, line: 220, baseType: !40, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1213, file: !47, line: 221, baseType: !40, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1213, file: !47, line: 222, baseType: !40, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1213, file: !47, line: 233, baseType: !1199, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1213, file: !47, line: 234, baseType: !1206, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1213, file: !47, line: 235, baseType: !1199, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1213, file: !47, line: 236, baseType: !1206, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1213, file: !47, line: 237, baseType: !1228, size: 4096, offset: 512)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 4096, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 8)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1209, file: !47, line: 161, baseType: !40, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1209, file: !47, line: 162, baseType: !1233, size: 32, offset: 96)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !184, line: 27, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !234)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1209, file: !47, line: 163, baseType: !1236, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !363, line: 276, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !363, line: 276, size: 32, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1237, file: !363, line: 276, baseType: !367, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1209, file: !47, line: 164, baseType: !1206, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1209, file: !47, line: 165, baseType: !1242, size: 128, offset: 256)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1195, line: 14, size: 128, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1242, file: !1195, line: 15, baseType: !731, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1209, file: !47, line: 166, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1199}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1209, file: !47, line: 167, baseType: !1199, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1191, file: !47, line: 123, baseType: !1251, size: 8, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !391, line: 17, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !393, line: 21, baseType: !402)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1191, file: !47, line: 124, baseType: !1251, size: 8, offset: 456)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1191, file: !47, line: 125, baseType: !1251, size: 8, offset: 464)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1191, file: !47, line: 126, baseType: !1251, size: 8, offset: 472)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1175, file: !1117, line: 572, baseType: !1191, size: 512, offset: 1216)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1175, file: !1117, line: 580, baseType: !1258, size: 64, offset: 1728)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1116, file: !1117, line: 721, baseType: !40, size: 32, offset: 3584)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1116, file: !1117, line: 722, baseType: !234, size: 32, offset: 3616)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1116, file: !1117, line: 723, baseType: !1262, size: 64, offset: 3648)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1265, line: 17, baseType: !1266)
!1265 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1265, line: 17, size: 64, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1266, file: !1265, line: 17, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 1)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1116, file: !1117, line: 724, baseType: !1264, size: 64, offset: 3712)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1116, file: !1117, line: 749, baseType: !1274, offset: 3776)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1117, line: 290, elements: !222)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1116, file: !1117, line: 751, baseType: !183, size: 128, offset: 3776)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1116, file: !1117, line: 757, baseType: !953, size: 64, offset: 3904)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1116, file: !1117, line: 758, baseType: !953, size: 64, offset: 3968)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1116, file: !1117, line: 761, baseType: !1279, size: 320, offset: 4032)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1050, line: 34, size: 320, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1279, file: !1050, line: 35, baseType: !396, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1279, file: !1050, line: 36, baseType: !1283, size: 256, offset: 64)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 256, elements: !1054)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1116, file: !1117, line: 766, baseType: !234, size: 32, offset: 4352)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1116, file: !1117, line: 767, baseType: !234, size: 32, offset: 4384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1116, file: !1117, line: 768, baseType: !234, size: 32, offset: 4416)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1116, file: !1117, line: 770, baseType: !234, size: 32, offset: 4448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1116, file: !1117, line: 772, baseType: !299, size: 64, offset: 4480)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1116, file: !1117, line: 775, baseType: !40, size: 32, offset: 4544)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1116, file: !1117, line: 778, baseType: !40, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1116, file: !1117, line: 779, baseType: !40, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1116, file: !1117, line: 780, baseType: !40, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1116, file: !1117, line: 803, baseType: !40, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1116, file: !1117, line: 806, baseType: !40, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1116, file: !1117, line: 807, baseType: !40, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1116, file: !1117, line: 809, baseType: !40, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1116, file: !1117, line: 815, baseType: !40, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1116, file: !1117, line: 831, baseType: !299, size: 64, offset: 4672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1116, file: !1117, line: 833, baseType: !1300, size: 384, offset: 4736)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !52, line: 25, size: 384, elements: !1301)
!1301 = !{!1302, !1307}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1300, file: !52, line: 26, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!7, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !52, line: 27, baseType: !1308, size: 320, offset: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !52, line: 27, size: 320, elements: !1309)
!1309 = !{!1310, !1320, !1347}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1308, file: !52, line: 36, baseType: !1311, size: 320)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !52, line: 29, size: 320, elements: !1312)
!1312 = !{!1313, !1315, !1316, !1317, !1318, !1319}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1311, file: !52, line: 30, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1311, file: !52, line: 31, baseType: !390, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !52, line: 32, baseType: !390, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1311, file: !52, line: 33, baseType: !390, size: 32, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1311, file: !52, line: 34, baseType: !396, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1311, file: !52, line: 35, baseType: !1314, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1308, file: !52, line: 46, baseType: !1321, size: 192)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !52, line: 38, size: 192, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1346}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1321, file: !52, line: 39, baseType: !1233, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1321, file: !52, line: 40, baseType: !51, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !52, line: 41, baseType: !1326, size: 64, offset: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1321, file: !52, line: 41, size: 64, elements: !1327)
!1327 = !{!1328, !1336}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1326, file: !52, line: 42, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1331, line: 7, size: 128, elements: !1332)
!1331 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1330, file: !1331, line: 8, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !508)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1330, file: !1331, line: 9, baseType: !508, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1326, file: !52, line: 43, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1339, line: 7, size: 64, elements: !1340)
!1339 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1345}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1338, file: !1339, line: 8, baseType: !1342, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1339, line: 5, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !391, line: 20, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !393, line: 26, baseType: !234)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1338, file: !1339, line: 9, baseType: !1343, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1321, file: !52, line: 45, baseType: !396, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1308, file: !52, line: 54, baseType: !1348, size: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !52, line: 48, size: 256, elements: !1349)
!1349 = !{!1350, !1353, !1354, !1355, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1348, file: !52, line: 49, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !52, line: 14, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1348, file: !52, line: 50, baseType: !234, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1348, file: !52, line: 51, baseType: !234, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1348, file: !52, line: 52, baseType: !299, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1348, file: !52, line: 53, baseType: !299, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1116, file: !1117, line: 835, baseType: !1358, size: 32, offset: 5120)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 22, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !234)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1116, file: !1117, line: 836, baseType: !1358, size: 32, offset: 5152)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1116, file: !1117, line: 840, baseType: !299, size: 64, offset: 5184)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1116, file: !1117, line: 849, baseType: !1115, size: 64, offset: 5248)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1116, file: !1117, line: 852, baseType: !1115, size: 64, offset: 5312)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1116, file: !1117, line: 857, baseType: !183, size: 128, offset: 5376)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1116, file: !1117, line: 858, baseType: !183, size: 128, offset: 5504)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1116, file: !1117, line: 859, baseType: !1115, size: 64, offset: 5632)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1116, file: !1117, line: 867, baseType: !183, size: 128, offset: 5696)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1116, file: !1117, line: 868, baseType: !183, size: 128, offset: 5824)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1116, file: !1117, line: 871, baseType: !1370, size: 64, offset: 5952)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !73, line: 59, size: 768, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1378, !1379, !1386, !1387}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1371, file: !73, line: 61, baseType: !1129, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1371, file: !73, line: 62, baseType: !40, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1371, file: !73, line: 63, baseType: !208, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1371, file: !73, line: 65, baseType: !1377, size: 256, offset: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 256, elements: !1054)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1371, file: !73, line: 66, baseType: !613, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1371, file: !73, line: 68, baseType: !1380, size: 128, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1381, line: 40, baseType: !1382)
!1381 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1381, line: 36, size: 128, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !1381, line: 37, baseType: !208)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1382, file: !1381, line: 38, baseType: !183, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1371, file: !73, line: 69, baseType: !340, size: 128, align: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1371, file: !73, line: 70, baseType: !1388, size: 128, offset: 640)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 128, elements: !1270)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !73, line: 54, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1389, file: !73, line: 55, baseType: !234, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1389, file: !73, line: 56, baseType: !1393, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !73, line: 56, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1116, file: !1117, line: 872, baseType: !1396, size: 512, offset: 6016)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 512, elements: !1054)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1116, file: !1117, line: 873, baseType: !183, size: 128, offset: 6528)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1116, file: !1117, line: 874, baseType: !183, size: 128, offset: 6656)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1116, file: !1117, line: 876, baseType: !1400, size: 64, offset: 6784)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1402, line: 26, size: 192, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1401, file: !1402, line: 27, baseType: !40, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1401, file: !1402, line: 28, baseType: !1406, size: 128, offset: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1407, line: 43, size: 128, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !1407, line: 44, baseType: !759)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1406, file: !1407, line: 45, baseType: !183, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1116, file: !1117, line: 879, baseType: !683, size: 64, offset: 6848)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1116, file: !1117, line: 882, baseType: !683, size: 64, offset: 6912)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1116, file: !1117, line: 884, baseType: !396, size: 64, offset: 6976)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1116, file: !1117, line: 885, baseType: !396, size: 64, offset: 7040)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1116, file: !1117, line: 890, baseType: !396, size: 64, offset: 7104)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1116, file: !1117, line: 891, baseType: !1417, size: 128, offset: 7168)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1117, line: 242, size: 128, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1417, file: !1117, line: 244, baseType: !396, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1417, file: !1117, line: 245, baseType: !396, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1417, file: !1117, line: 246, baseType: !759, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1116, file: !1117, line: 900, baseType: !299, size: 64, offset: 7296)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1116, file: !1117, line: 901, baseType: !299, size: 64, offset: 7360)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1116, file: !1117, line: 904, baseType: !396, size: 64, offset: 7424)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1116, file: !1117, line: 907, baseType: !396, size: 64, offset: 7488)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1116, file: !1117, line: 910, baseType: !299, size: 64, offset: 7552)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1116, file: !1117, line: 911, baseType: !299, size: 64, offset: 7616)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1116, file: !1117, line: 914, baseType: !1429, size: 640, offset: 7680)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1430, line: 123, size: 640, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !{!1432, !1438, !1439}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1429, file: !1430, line: 124, baseType: !1433, size: 576)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 576, elements: !251)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1430, line: 108, size: 192, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1434, file: !1430, line: 109, baseType: !396, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1434, file: !1430, line: 110, baseType: !1242, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1429, file: !1430, line: 125, baseType: !40, size: 32, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1429, file: !1430, line: 126, baseType: !40, size: 32, offset: 608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1116, file: !1117, line: 917, baseType: !1441, size: 192, offset: 8320)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1430, line: 134, size: 192, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1441, file: !1430, line: 135, baseType: !340, size: 128, align: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1441, file: !1430, line: 136, baseType: !40, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1116, file: !1117, line: 923, baseType: !1446, size: 64, offset: 8512)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1449, line: 111, size: 1280, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1470, !1471, !1472, !1473, !1474, !1475, !1582, !1583, !1584, !1585, !1611, !1614, !1624}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1448, file: !1449, line: 112, baseType: !726, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1448, file: !1449, line: 120, baseType: !410, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1448, file: !1449, line: 121, baseType: !418, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1448, file: !1449, line: 122, baseType: !410, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1448, file: !1449, line: 123, baseType: !418, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1448, file: !1449, line: 124, baseType: !410, size: 32, offset: 160)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1448, file: !1449, line: 125, baseType: !418, size: 32, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1448, file: !1449, line: 126, baseType: !410, size: 32, offset: 224)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1448, file: !1449, line: 127, baseType: !418, size: 32, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1448, file: !1449, line: 128, baseType: !40, size: 32, offset: 288)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1448, file: !1449, line: 129, baseType: !1462, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1463, line: 26, baseType: !1464)
!1463 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1463, line: 24, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1464, file: !1463, line: 25, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DISubrange(count: 2)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1448, file: !1449, line: 130, baseType: !1462, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1448, file: !1449, line: 131, baseType: !1462, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1448, file: !1449, line: 132, baseType: !1462, size: 64, offset: 512)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1448, file: !1449, line: 133, baseType: !1462, size: 64, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1448, file: !1449, line: 135, baseType: !402, size: 8, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1448, file: !1449, line: 137, baseType: !1476, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1478, line: 189, size: 1664, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481, !1484, !1489, !1490, !1493, !1494, !1499, !1500, !1501, !1502, !1504, !1505, !1506, !1507, !1508, !1546, !1567}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1477, file: !1478, line: 190, baseType: !1129, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1477, file: !1478, line: 191, baseType: !1482, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1478, line: 28, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !184, line: 98, baseType: !1343)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 192, baseType: !1485, size: 192, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 192, size: 192, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1485, file: !1478, line: 193, baseType: !183, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1485, file: !1478, line: 194, baseType: !739, size: 192, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1477, file: !1478, line: 199, baseType: !746, size: 256, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1477, file: !1478, line: 200, baseType: !1491, size: 64, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1478, line: 200, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1477, file: !1478, line: 201, baseType: !178, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 202, baseType: !1495, size: 64, offset: 640)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 202, size: 64, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1495, file: !1478, line: 203, baseType: !514, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1495, file: !1478, line: 204, baseType: !514, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1477, file: !1478, line: 206, baseType: !514, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1477, file: !1478, line: 207, baseType: !410, size: 32, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1477, file: !1478, line: 208, baseType: !418, size: 32, offset: 800)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1477, file: !1478, line: 209, baseType: !1503, size: 32, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1478, line: 31, baseType: !534)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1477, file: !1478, line: 210, baseType: !291, size: 16, offset: 864)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1477, file: !1478, line: 211, baseType: !291, size: 16, offset: 880)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1477, file: !1478, line: 215, baseType: !1104, size: 16, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1478, line: 222, baseType: !299, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 239, baseType: !1509, size: 320, offset: 1024)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 239, size: 320, elements: !1510)
!1510 = !{!1511, !1538}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1509, file: !1478, line: 240, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1478, line: 108, size: 320, elements: !1513)
!1513 = !{!1514, !1515, !1527, !1530, !1537}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1512, file: !1478, line: 110, baseType: !299, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1478, line: 111, baseType: !1516, size: 64, offset: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1478, line: 111, size: 64, elements: !1517)
!1517 = !{!1518, !1526}
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1478, line: 112, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1478, line: 112, size: 64, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1519, file: !1478, line: 114, baseType: !838, size: 16)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1519, file: !1478, line: 115, baseType: !1523, size: 48, offset: 16)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 48, elements: !1524)
!1524 = !{!1525}
!1525 = !DISubrange(count: 6)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1516, file: !1478, line: 121, baseType: !299, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !1478, line: 123, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1478, line: 96, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1512, file: !1478, line: 124, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1478, line: 102, size: 192, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1532, file: !1478, line: 103, baseType: !340, size: 128, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1532, file: !1478, line: 104, baseType: !1129, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1532, file: !1478, line: 105, baseType: !465, size: 8, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1512, file: !1478, line: 125, baseType: !196, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1478, line: 241, baseType: !1539, size: 320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1478, line: 241, size: 320, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1539, file: !1478, line: 242, baseType: !299, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1539, file: !1478, line: 243, baseType: !299, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1539, file: !1478, line: 244, baseType: !1528, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1539, file: !1478, line: 245, baseType: !1531, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1539, file: !1478, line: 246, baseType: !250, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1478, line: 254, baseType: !1547, size: 256, offset: 1344)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1478, line: 254, size: 256, elements: !1548)
!1548 = !{!1549, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1547, file: !1478, line: 255, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1478, line: 128, size: 256, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1550, file: !1478, line: 129, baseType: !178, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1550, file: !1478, line: 130, baseType: !1554, size: 256)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !1054)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1478, line: 256, baseType: !1556, size: 256)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !1478, line: 256, size: 256, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1556, file: !1478, line: 258, baseType: !183, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1556, file: !1478, line: 259, baseType: !1560, size: 128, offset: 128)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1561, line: 22, size: 128, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1566}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1560, file: !1561, line: 23, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1561, line: 23, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1560, file: !1561, line: 24, baseType: !299, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1477, file: !1478, line: 274, baseType: !1568, size: 64, offset: 1600)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1478, line: 170, size: 192, elements: !1570)
!1570 = !{!1571, !1580, !1581}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1569, file: !1478, line: 171, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1478, line: 165, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!234, !1476, !1576, !1578, !1476}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1569, file: !1478, line: 172, baseType: !1476, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1569, file: !1478, line: 173, baseType: !1528, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1448, file: !1449, line: 138, baseType: !1476, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1448, file: !1449, line: 139, baseType: !1476, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1448, file: !1449, line: 140, baseType: !1476, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1448, file: !1449, line: 145, baseType: !1586, size: 64, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1588, line: 13, size: 896, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1587, file: !1588, line: 14, baseType: !1129, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1587, file: !1588, line: 15, baseType: !726, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1587, file: !1588, line: 16, baseType: !726, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1587, file: !1588, line: 21, baseType: !750, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1587, file: !1588, line: 27, baseType: !299, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1587, file: !1588, line: 28, baseType: !299, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1587, file: !1588, line: 29, baseType: !750, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1587, file: !1588, line: 32, baseType: !617, size: 128, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1587, file: !1588, line: 33, baseType: !410, size: 32, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1587, file: !1588, line: 37, baseType: !750, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1587, file: !1588, line: 44, baseType: !1601, size: 256, offset: 640)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1602, line: 15, size: 256, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1601, file: !1602, line: 16, baseType: !759)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1601, file: !1602, line: 18, baseType: !234, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1601, file: !1602, line: 19, baseType: !234, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1601, file: !1602, line: 20, baseType: !234, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1601, file: !1602, line: 21, baseType: !234, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1601, file: !1602, line: 22, baseType: !299, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !1602, line: 23, baseType: !299, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1448, file: !1449, line: 146, baseType: !1612, size: 64, offset: 1024)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !411, line: 18, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1448, file: !1449, line: 147, baseType: !1615, size: 64, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1449, line: 25, size: 64, elements: !1617)
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1616, file: !1449, line: 26, baseType: !726, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1616, file: !1449, line: 27, baseType: !234, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1616, file: !1449, line: 28, baseType: !1621, offset: 64)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 0)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 149, baseType: !1625, size: 128, offset: 1152)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1449, line: 149, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1625, file: !1449, line: 150, baseType: !234, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1625, file: !1449, line: 151, baseType: !340, size: 128, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1116, file: !1117, line: 926, baseType: !1446, size: 64, offset: 8576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1116, file: !1117, line: 929, baseType: !1446, size: 64, offset: 8640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1116, file: !1117, line: 933, baseType: !1476, size: 64, offset: 8704)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1116, file: !1117, line: 943, baseType: !1633, size: 128, offset: 8768)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 16)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1116, file: !1117, line: 945, baseType: !1637, size: 64, offset: 8896)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1117, line: 49, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1116, file: !1117, line: 956, baseType: !1640, size: 64, offset: 8960)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1117, line: 45, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1116, file: !1117, line: 959, baseType: !1643, size: 64, offset: 9024)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1117, line: 959, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1116, file: !1117, line: 962, baseType: !1646, size: 64, offset: 9088)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1117, line: 66, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1116, file: !1117, line: 966, baseType: !1649, size: 64, offset: 9152)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1117, line: 50, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1116, file: !1117, line: 969, baseType: !1652, size: 64, offset: 9216)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1654, line: 82, size: 7296, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1691, !1700, !1701, !1703, !1704, !1705, !1708, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1738, !1739, !1746, !1747, !1748, !1749, !1750, !1751}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1653, file: !1654, line: 83, baseType: !1129, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1653, file: !1654, line: 84, baseType: !726, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1653, file: !1654, line: 85, baseType: !234, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1653, file: !1654, line: 86, baseType: !183, size: 128, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1653, file: !1654, line: 88, baseType: !1380, size: 128, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1653, file: !1654, line: 91, baseType: !1115, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1653, file: !1654, line: 94, baseType: !1663, size: 192, offset: 448)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1664, line: 30, size: 192, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1663, file: !1664, line: 31, baseType: !183, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1663, file: !1664, line: 32, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1669, line: 25, baseType: !1670)
!1669 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1669, line: 23, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1670, file: !1669, line: 24, baseType: !1269, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1653, file: !1654, line: 97, baseType: !613, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1653, file: !1654, line: 100, baseType: !234, size: 32, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1653, file: !1654, line: 106, baseType: !234, size: 32, offset: 736)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1653, file: !1654, line: 107, baseType: !1115, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1653, file: !1654, line: 110, baseType: !234, size: 32, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !1654, line: 111, baseType: !40, size: 32, offset: 864)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1653, file: !1654, line: 122, baseType: !40, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1653, file: !1654, line: 123, baseType: !40, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1653, file: !1654, line: 128, baseType: !234, size: 32, offset: 928)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1653, file: !1654, line: 129, baseType: !183, size: 128, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1653, file: !1654, line: 132, baseType: !1191, size: 512, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1653, file: !1654, line: 133, baseType: !1199, size: 64, offset: 1600)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1653, file: !1654, line: 140, baseType: !1686, size: 256, offset: 1664)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1687, size: 256, elements: !1468)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1654, line: 38, size: 128, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1687, file: !1654, line: 39, baseType: !396, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1687, file: !1654, line: 40, baseType: !396, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1653, file: !1654, line: 146, baseType: !1692, size: 192, offset: 1920)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1654, line: 66, size: 192, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1692, file: !1654, line: 67, baseType: !1695, size: 192)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1654, line: 47, size: 192, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1695, file: !1654, line: 48, baseType: !752, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1695, file: !1654, line: 49, baseType: !752, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1695, file: !1654, line: 50, baseType: !752, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1653, file: !1654, line: 150, baseType: !1429, size: 640, offset: 2112)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1653, file: !1654, line: 153, baseType: !1702, size: 256, offset: 2752)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 256, elements: !1054)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1653, file: !1654, line: 159, baseType: !1370, size: 64, offset: 3008)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1653, file: !1654, line: 162, baseType: !234, size: 32, offset: 3072)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1653, file: !1654, line: 164, baseType: !1706, size: 64, offset: 3136)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1654, line: 164, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1653, file: !1654, line: 175, baseType: !1709, size: 32, offset: 3200)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !363, line: 805, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 798, size: 32, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1710, file: !363, line: 803, baseType: !362, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1710, file: !363, line: 804, baseType: !208, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1653, file: !1654, line: 176, baseType: !396, size: 64, offset: 3264)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1653, file: !1654, line: 176, baseType: !396, size: 64, offset: 3328)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1653, file: !1654, line: 176, baseType: !396, size: 64, offset: 3392)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1653, file: !1654, line: 176, baseType: !396, size: 64, offset: 3456)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1653, file: !1654, line: 177, baseType: !396, size: 64, offset: 3520)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1653, file: !1654, line: 178, baseType: !396, size: 64, offset: 3584)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1653, file: !1654, line: 179, baseType: !1417, size: 128, offset: 3648)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1653, file: !1654, line: 180, baseType: !299, size: 64, offset: 3776)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1653, file: !1654, line: 180, baseType: !299, size: 64, offset: 3840)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1653, file: !1654, line: 180, baseType: !299, size: 64, offset: 3904)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1653, file: !1654, line: 180, baseType: !299, size: 64, offset: 3968)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1653, file: !1654, line: 181, baseType: !299, size: 64, offset: 4032)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1653, file: !1654, line: 181, baseType: !299, size: 64, offset: 4096)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1653, file: !1654, line: 181, baseType: !299, size: 64, offset: 4160)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1653, file: !1654, line: 181, baseType: !299, size: 64, offset: 4224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1653, file: !1654, line: 182, baseType: !299, size: 64, offset: 4288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1653, file: !1654, line: 182, baseType: !299, size: 64, offset: 4352)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1653, file: !1654, line: 182, baseType: !299, size: 64, offset: 4416)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1653, file: !1654, line: 182, baseType: !299, size: 64, offset: 4480)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1653, file: !1654, line: 183, baseType: !299, size: 64, offset: 4544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1653, file: !1654, line: 183, baseType: !299, size: 64, offset: 4608)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1653, file: !1654, line: 184, baseType: !1736, offset: 4672)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1737, line: 12, elements: !222)
!1737 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1653, file: !1654, line: 192, baseType: !398, size: 64, offset: 4672)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1653, file: !1654, line: 203, baseType: !1740, size: 2048, offset: 4736)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1741, size: 2048, elements: !1634)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1742, line: 43, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1741, file: !1742, line: 44, baseType: !298, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1741, file: !1742, line: 45, baseType: !298, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1653, file: !1654, line: 220, baseType: !465, size: 8, offset: 6784)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1653, file: !1654, line: 221, baseType: !1104, size: 16, offset: 6800)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1653, file: !1654, line: 222, baseType: !1104, size: 16, offset: 6816)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1653, file: !1654, line: 224, baseType: !953, size: 64, offset: 6848)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1653, file: !1654, line: 227, baseType: !1072, size: 192, offset: 6912)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1653, file: !1654, line: 233, baseType: !1072, size: 192, offset: 7104)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1116, file: !1117, line: 970, baseType: !1753, size: 64, offset: 9280)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1654, line: 20, size: 16576, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1754, file: !1654, line: 21, baseType: !208)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1754, file: !1654, line: 22, baseType: !1129, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1754, file: !1654, line: 23, baseType: !1380, size: 128, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1754, file: !1654, line: 24, baseType: !1760, size: 16384, offset: 192)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 16384, elements: !255)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1664, line: 49, size: 256, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1761, file: !1664, line: 50, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1664, line: 35, size: 256, elements: !1765)
!1765 = !{!1766, !1773, !1774, !1780}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1764, file: !1664, line: 37, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1768, line: 19, baseType: !1769)
!1768 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1768, line: 18, baseType: !1771)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !234}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1764, file: !1664, line: 38, baseType: !299, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1764, file: !1664, line: 44, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1768, line: 22, baseType: !1776)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1768, line: 21, baseType: !1778)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1764, file: !1664, line: 46, baseType: !1668, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1116, file: !1117, line: 971, baseType: !1668, size: 64, offset: 9344)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1116, file: !1117, line: 972, baseType: !1668, size: 64, offset: 9408)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1116, file: !1117, line: 974, baseType: !1668, size: 64, offset: 9472)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1116, file: !1117, line: 975, baseType: !1663, size: 192, offset: 9536)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1116, file: !1117, line: 976, baseType: !299, size: 64, offset: 9728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1116, file: !1117, line: 977, baseType: !296, size: 64, offset: 9792)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1116, file: !1117, line: 978, baseType: !40, size: 32, offset: 9856)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1116, file: !1117, line: 980, baseType: !343, size: 64, offset: 9920)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1116, file: !1117, line: 989, baseType: !1790, size: 128, offset: 9984)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1791, line: 35, size: 128, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1790, file: !1791, line: 36, baseType: !234, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1790, file: !1791, line: 37, baseType: !726, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1790, file: !1791, line: 38, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1791, line: 23, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1116, file: !1117, line: 992, baseType: !396, size: 64, offset: 10112)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1116, file: !1117, line: 993, baseType: !396, size: 64, offset: 10176)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1116, file: !1117, line: 996, baseType: !208, offset: 10240)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1116, file: !1117, line: 999, baseType: !759, offset: 10240)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1116, file: !1117, line: 1001, baseType: !1803, size: 64, offset: 10240)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1117, line: 636, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1803, file: !1117, line: 637, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1116, file: !1117, line: 1005, baseType: !731, size: 128, offset: 10304)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1116, file: !1117, line: 1007, baseType: !1115, size: 64, offset: 10432)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1116, file: !1117, line: 1009, baseType: !1810, size: 64, offset: 10496)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1117, line: 1009, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1116, file: !1117, line: 1043, baseType: !178, size: 64, offset: 10560)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1116, file: !1117, line: 1046, baseType: !1814, size: 64, offset: 10624)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1117, line: 41, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1116, file: !1117, line: 1050, baseType: !1817, size: 64, offset: 10688)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1117, line: 42, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1116, file: !1117, line: 1054, baseType: !1820, size: 64, offset: 10752)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1117, line: 55, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1116, file: !1117, line: 1056, baseType: !1823, size: 64, offset: 10816)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1117, line: 40, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1116, file: !1117, line: 1058, baseType: !1826, size: 64, offset: 10880)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1828, line: 99, size: 704, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1855, !1856}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1827, file: !1828, line: 100, baseType: !750, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1827, file: !1828, line: 101, baseType: !726, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1827, file: !1828, line: 102, baseType: !726, size: 32, offset: 96)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1827, file: !1828, line: 105, baseType: !208, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1827, file: !1828, line: 107, baseType: !291, size: 16, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1827, file: !1828, line: 109, baseType: !717, size: 128, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1827, file: !1828, line: 110, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1828, line: 73, size: 448, elements: !1839)
!1839 = !{!1840, !1843, !1844, !1849, !1854}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1838, file: !1828, line: 74, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1828, line: 74, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1838, file: !1828, line: 75, baseType: !1826, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1828, line: 83, baseType: !1845, size: 128, offset: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1828, line: 83, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1845, file: !1828, line: 84, baseType: !183, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1845, file: !1828, line: 85, baseType: !914, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1828, line: 87, baseType: !1850, size: 128, offset: 256)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1828, line: 87, size: 128, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1850, file: !1828, line: 88, baseType: !617, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1850, file: !1828, line: 89, baseType: !340, size: 128, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !1828, line: 92, baseType: !40, size: 32, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1827, file: !1828, line: 111, baseType: !613, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1827, file: !1828, line: 113, baseType: !1857, size: 256, offset: 448)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !6, line: 102, size: 256, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1857, file: !6, line: 103, baseType: !750, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1857, file: !6, line: 104, baseType: !183, size: 128, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1857, file: !6, line: 105, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !6, line: 21, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1116, file: !1117, line: 1061, baseType: !1868, size: 64, offset: 10944)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1117, line: 43, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1116, file: !1117, line: 1064, baseType: !299, size: 64, offset: 11008)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1116, file: !1117, line: 1065, baseType: !1872, size: 64, offset: 11072)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1664, line: 14, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1664, line: 12, size: 384, elements: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1664, line: 13, baseType: !1877, size: 384)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !1664, line: 13, size: 384, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1877, file: !1664, line: 13, baseType: !234, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1877, file: !1664, line: 13, baseType: !234, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1877, file: !1664, line: 13, baseType: !234, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1877, file: !1664, line: 13, baseType: !1883, size: 256, offset: 128)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1884, line: 32, size: 256, elements: !1885)
!1884 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1891, !1904, !1910, !1919, !1939, !1944}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1883, file: !1884, line: 37, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 34, size: 64, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1887, file: !1884, line: 35, baseType: !1359, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1887, file: !1884, line: 36, baseType: !416, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1883, file: !1884, line: 45, baseType: !1892, size: 192)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 40, size: 192, elements: !1893)
!1893 = !{!1894, !1896, !1897, !1903}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1892, file: !1884, line: 41, baseType: !1895, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !234)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1892, file: !1884, line: 42, baseType: !234, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1892, file: !1884, line: 43, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1884, line: 11, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1884, line: 8, size: 64, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1899, file: !1884, line: 9, baseType: !234, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1899, file: !1884, line: 10, baseType: !178, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1892, file: !1884, line: 44, baseType: !234, size: 32, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1883, file: !1884, line: 52, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 48, size: 128, elements: !1906)
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1905, file: !1884, line: 49, baseType: !1359, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1905, file: !1884, line: 50, baseType: !416, size: 32, offset: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1905, file: !1884, line: 51, baseType: !1898, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1883, file: !1884, line: 61, baseType: !1911, size: 256)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 55, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1918}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1911, file: !1884, line: 56, baseType: !1359, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1911, file: !1884, line: 57, baseType: !416, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1911, file: !1884, line: 58, baseType: !234, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1911, file: !1884, line: 59, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !284)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1911, file: !1884, line: 60, baseType: !1917, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1883, file: !1884, line: 95, baseType: !1920, size: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 64, size: 256, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1920, file: !1884, line: 65, baseType: !178, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1884, line: 77, baseType: !1924, size: 192, offset: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1884, line: 77, size: 192, elements: !1925)
!1925 = !{!1926, !1927, !1934}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1924, file: !1884, line: 82, baseType: !1104, size: 16)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1924, file: !1884, line: 88, baseType: !1928, size: 192)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !1884, line: 84, size: 192, elements: !1929)
!1929 = !{!1930, !1932, !1933}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1928, file: !1884, line: 85, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !1229)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1928, file: !1884, line: 86, baseType: !178, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1928, file: !1884, line: 87, baseType: !178, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1924, file: !1884, line: 93, baseType: !1935, size: 96)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !1884, line: 90, size: 96, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1935, file: !1884, line: 91, baseType: !1931, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1935, file: !1884, line: 92, baseType: !392, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1883, file: !1884, line: 101, baseType: !1940, size: 128)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 98, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1940, file: !1884, line: 99, baseType: !7, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1940, file: !1884, line: 100, baseType: !234, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1883, file: !1884, line: 108, baseType: !1945, size: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1884, line: 104, size: 128, elements: !1946)
!1946 = !{!1947, !1948, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1945, file: !1884, line: 105, baseType: !178, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1945, file: !1884, line: 106, baseType: !234, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1945, file: !1884, line: 107, baseType: !40, size: 32, offset: 96)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1116, file: !1117, line: 1067, baseType: !1736, offset: 11136)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1116, file: !1117, line: 1099, baseType: !1952, size: 64, offset: 11136)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1117, line: 56, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1116, file: !1117, line: 1103, baseType: !183, size: 128, offset: 11200)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1116, file: !1117, line: 1104, baseType: !1956, size: 64, offset: 11328)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1117, line: 46, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1116, file: !1117, line: 1105, baseType: !1072, size: 192, offset: 11392)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1116, file: !1117, line: 1106, baseType: !40, size: 32, offset: 11584)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1116, file: !1117, line: 1109, baseType: !1961, size: 128, offset: 11648)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1962, size: 128, elements: !1468)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1117, line: 51, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1116, file: !1117, line: 1110, baseType: !1072, size: 192, offset: 11776)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1116, file: !1117, line: 1111, baseType: !183, size: 128, offset: 11968)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1116, file: !1117, line: 1173, baseType: !1967, size: 64, offset: 12096)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1969, line: 62, size: 256, align: 256, elements: !1970)
!1969 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !{!1971, !1972, !1973, !1978}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1968, file: !1969, line: 75, baseType: !392, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1968, file: !1969, line: 90, baseType: !392, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1968, file: !1969, line: 124, baseType: !1974, size: 64, offset: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1968, file: !1969, line: 109, size: 64, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1974, file: !1969, line: 110, baseType: !397, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1974, file: !1969, line: 112, baseType: !397, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1968, file: !1969, line: 144, baseType: !392, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1116, file: !1117, line: 1174, baseType: !390, size: 32, offset: 12160)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1116, file: !1117, line: 1179, baseType: !299, size: 64, offset: 12224)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1116, file: !1117, line: 1182, baseType: !1982, size: 128, offset: 12288)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1050, line: 76, size: 128, elements: !1983)
!1983 = !{!1984, !1989, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1982, file: !1050, line: 85, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1986, line: 7, size: 64, elements: !1987)
!1986 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1985, file: !1986, line: 12, baseType: !1266, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1982, file: !1050, line: 88, baseType: !465, size: 8, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1982, file: !1050, line: 95, baseType: !465, size: 8, offset: 72)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1117, line: 1184, baseType: !1992, size: 128, offset: 12416)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !1117, line: 1184, size: 128, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1992, file: !1117, line: 1185, baseType: !1129, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1992, file: !1117, line: 1186, baseType: !340, size: 128, align: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1116, file: !1117, line: 1190, baseType: !1997, size: 64, offset: 12544)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1117, line: 53, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1116, file: !1117, line: 1192, baseType: !2000, size: 128, offset: 12608)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1050, line: 64, size: 128, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2000, file: !1050, line: 65, baseType: !699, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2000, file: !1050, line: 67, baseType: !392, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2000, file: !1050, line: 68, baseType: !392, size: 32, offset: 96)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1116, file: !1117, line: 1206, baseType: !234, size: 32, offset: 12736)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1116, file: !1117, line: 1207, baseType: !234, size: 32, offset: 12768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1116, file: !1117, line: 1209, baseType: !299, size: 64, offset: 12800)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1116, file: !1117, line: 1219, baseType: !396, size: 64, offset: 12864)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1116, file: !1117, line: 1220, baseType: !396, size: 64, offset: 12928)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1116, file: !1117, line: 1317, baseType: !234, size: 32, offset: 12992)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1116, file: !1117, line: 1319, baseType: !1115, size: 64, offset: 13056)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1116, file: !1117, line: 1322, baseType: !2013, size: 64, offset: 13120)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2015, line: 56, size: 512, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2014, file: !2015, line: 57, baseType: !2013, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2014, file: !2015, line: 58, baseType: !178, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2014, file: !2015, line: 59, baseType: !299, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2014, file: !2015, line: 60, baseType: !299, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2014, file: !2015, line: 61, baseType: !799, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2014, file: !2015, line: 62, baseType: !40, size: 32, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2014, file: !2015, line: 63, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !184, line: 153, baseType: !396)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2014, file: !2015, line: 64, baseType: !2026, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1116, file: !1117, line: 1326, baseType: !1129, size: 32, offset: 13184)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1116, file: !1117, line: 1342, baseType: !178, size: 64, offset: 13248)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1116, file: !1117, line: 1343, baseType: !397, size: 64, offset: 13312)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1116, file: !1117, line: 1344, baseType: !396, size: 64, offset: 13376)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1116, file: !1117, line: 1345, baseType: !397, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1116, file: !1117, line: 1346, baseType: !397, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1116, file: !1117, line: 1347, baseType: !397, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1116, file: !1117, line: 1348, baseType: !340, size: 128, align: 64, offset: 13504)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1116, file: !1117, line: 1358, baseType: !2037, size: 34816, offset: 13824)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2038, line: 485, size: 34816, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2069, !2070, !2071, !2072, !2073, !2074, !2077, !2078, !2079}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2037, file: !2038, line: 487, baseType: !2041, size: 192)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 192, elements: !251)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2043, line: 16, size: 64, elements: !2044)
!2043 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2042, file: !2043, line: 17, baseType: !838, size: 16)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2042, file: !2043, line: 18, baseType: !838, size: 16, offset: 16)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2042, file: !2043, line: 19, baseType: !838, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2042, file: !2043, line: 19, baseType: !838, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2042, file: !2043, line: 19, baseType: !838, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2042, file: !2043, line: 19, baseType: !838, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2042, file: !2043, line: 19, baseType: !838, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2042, file: !2043, line: 20, baseType: !838, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2042, file: !2043, line: 20, baseType: !838, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2042, file: !2043, line: 20, baseType: !838, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2042, file: !2043, line: 20, baseType: !838, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2042, file: !2043, line: 20, baseType: !838, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2042, file: !2043, line: 20, baseType: !838, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2037, file: !2038, line: 491, baseType: !299, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2037, file: !2038, line: 495, baseType: !291, size: 16, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2037, file: !2038, line: 496, baseType: !291, size: 16, offset: 272)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2037, file: !2038, line: 497, baseType: !291, size: 16, offset: 288)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2037, file: !2038, line: 498, baseType: !291, size: 16, offset: 304)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2037, file: !2038, line: 502, baseType: !299, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2037, file: !2038, line: 503, baseType: !299, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2037, file: !2038, line: 514, baseType: !2066, size: 256, offset: 448)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2067, size: 256, elements: !1054)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2038, line: 483, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2037, file: !2038, line: 516, baseType: !299, size: 64, offset: 704)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2037, file: !2038, line: 518, baseType: !299, size: 64, offset: 768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2037, file: !2038, line: 520, baseType: !299, size: 64, offset: 832)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2037, file: !2038, line: 521, baseType: !299, size: 64, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2037, file: !2038, line: 522, baseType: !299, size: 64, offset: 960)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2037, file: !2038, line: 528, baseType: !2075, size: 64, offset: 1024)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2038, line: 10, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2037, file: !2038, line: 535, baseType: !299, size: 64, offset: 1088)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2037, file: !2038, line: 537, baseType: !40, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2037, file: !2038, line: 540, baseType: !2080, size: 33280, offset: 1536)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2081, line: 317, size: 33280, elements: !2082)
!2081 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2080, file: !2081, line: 330, baseType: !40, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2080, file: !2081, line: 337, baseType: !299, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2080, file: !2081, line: 348, baseType: !2086, size: 32768, offset: 512)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2081, line: 304, size: 32768, elements: !2087)
!2087 = !{!2088, !2103, !2142, !2192, !2205}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2086, file: !2081, line: 305, baseType: !2089, size: 896)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2081, line: 12, size: 896, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2102}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2089, file: !2081, line: 13, baseType: !390, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2089, file: !2081, line: 14, baseType: !390, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2089, file: !2081, line: 15, baseType: !390, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2089, file: !2081, line: 16, baseType: !390, size: 32, offset: 96)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2089, file: !2081, line: 17, baseType: !390, size: 32, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2089, file: !2081, line: 18, baseType: !390, size: 32, offset: 160)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2089, file: !2081, line: 19, baseType: !390, size: 32, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2089, file: !2081, line: 22, baseType: !2099, size: 640, offset: 224)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 640, elements: !2100)
!2100 = !{!2101}
!2101 = !DISubrange(count: 20)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2089, file: !2081, line: 25, baseType: !390, size: 32, offset: 864)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2086, file: !2081, line: 306, baseType: !2104, size: 4096, align: 128)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2081, line: 34, size: 4096, align: 128, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2125, !2126, !2127, !2131, !2133, !2137}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2104, file: !2081, line: 35, baseType: !838, size: 16)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2104, file: !2081, line: 36, baseType: !838, size: 16, offset: 16)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2104, file: !2081, line: 37, baseType: !838, size: 16, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2104, file: !2081, line: 38, baseType: !838, size: 16, offset: 48)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !2081, line: 39, baseType: !2111, size: 128, offset: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !2081, line: 39, size: 128, elements: !2112)
!2112 = !{!2113, !2118}
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !2081, line: 40, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !2081, line: 40, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2114, file: !2081, line: 41, baseType: !396, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2114, file: !2081, line: 42, baseType: !396, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !2081, line: 44, baseType: !2119, size: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !2081, line: 44, size: 128, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2119, file: !2081, line: 45, baseType: !390, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2119, file: !2081, line: 46, baseType: !390, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2119, file: !2081, line: 47, baseType: !390, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2119, file: !2081, line: 48, baseType: !390, size: 32, offset: 96)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2104, file: !2081, line: 51, baseType: !390, size: 32, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2104, file: !2081, line: 52, baseType: !390, size: 32, offset: 224)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2104, file: !2081, line: 55, baseType: !2128, size: 1024, offset: 256)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !2129)
!2129 = !{!2130}
!2130 = !DISubrange(count: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2104, file: !2081, line: 58, baseType: !2132, size: 2048, offset: 1280)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !255)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2104, file: !2081, line: 60, baseType: !2134, size: 384, offset: 3328)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !2135)
!2135 = !{!2136}
!2136 = !DISubrange(count: 12)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !2081, line: 62, baseType: !2138, size: 384, offset: 3712)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !2081, line: 62, size: 384, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2138, file: !2081, line: 63, baseType: !2134, size: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2138, file: !2081, line: 64, baseType: !2134, size: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2086, file: !2081, line: 307, baseType: !2143, size: 1088)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2081, line: 79, size: 1088, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2191}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2143, file: !2081, line: 80, baseType: !390, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2143, file: !2081, line: 81, baseType: !390, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2143, file: !2081, line: 82, baseType: !390, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2143, file: !2081, line: 83, baseType: !390, size: 32, offset: 96)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2143, file: !2081, line: 84, baseType: !390, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2143, file: !2081, line: 85, baseType: !390, size: 32, offset: 160)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2143, file: !2081, line: 86, baseType: !390, size: 32, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2143, file: !2081, line: 88, baseType: !2099, size: 640, offset: 224)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2143, file: !2081, line: 89, baseType: !1251, size: 8, offset: 864)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2143, file: !2081, line: 90, baseType: !1251, size: 8, offset: 872)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2143, file: !2081, line: 91, baseType: !1251, size: 8, offset: 880)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2143, file: !2081, line: 92, baseType: !1251, size: 8, offset: 888)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2143, file: !2081, line: 93, baseType: !1251, size: 8, offset: 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2143, file: !2081, line: 94, baseType: !1251, size: 8, offset: 904)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2143, file: !2081, line: 95, baseType: !2160, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2162, line: 11, size: 128, elements: !2163)
!2162 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2161, file: !2162, line: 12, baseType: !7, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2161, file: !2162, line: 13, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2168, line: 56, size: 1344, elements: !2169)
!2168 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2167, file: !2168, line: 61, baseType: !299, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2167, file: !2168, line: 62, baseType: !299, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2167, file: !2168, line: 63, baseType: !299, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2167, file: !2168, line: 64, baseType: !299, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2167, file: !2168, line: 65, baseType: !299, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2167, file: !2168, line: 66, baseType: !299, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2167, file: !2168, line: 68, baseType: !299, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2167, file: !2168, line: 69, baseType: !299, size: 64, offset: 448)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2167, file: !2168, line: 70, baseType: !299, size: 64, offset: 512)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2167, file: !2168, line: 71, baseType: !299, size: 64, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2167, file: !2168, line: 72, baseType: !299, size: 64, offset: 640)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2167, file: !2168, line: 73, baseType: !299, size: 64, offset: 704)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2167, file: !2168, line: 74, baseType: !299, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2167, file: !2168, line: 75, baseType: !299, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2167, file: !2168, line: 76, baseType: !299, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2167, file: !2168, line: 81, baseType: !299, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2167, file: !2168, line: 83, baseType: !299, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2167, file: !2168, line: 84, baseType: !299, size: 64, offset: 1088)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2167, file: !2168, line: 85, baseType: !299, size: 64, offset: 1152)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2167, file: !2168, line: 86, baseType: !299, size: 64, offset: 1216)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2167, file: !2168, line: 87, baseType: !299, size: 64, offset: 1280)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2143, file: !2081, line: 96, baseType: !390, size: 32, offset: 1024)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2086, file: !2081, line: 308, baseType: !2193, size: 4608, align: 512)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2081, line: 289, size: 4608, align: 512, elements: !2194)
!2194 = !{!2195, !2196, !2203}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2193, file: !2081, line: 290, baseType: !2104, size: 4096, align: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2193, file: !2081, line: 291, baseType: !2197, size: 512, offset: 4096)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2081, line: 268, size: 512, elements: !2198)
!2198 = !{!2199, !2200, !2201}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2197, file: !2081, line: 269, baseType: !396, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2197, file: !2081, line: 270, baseType: !396, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2197, file: !2081, line: 271, baseType: !2202, size: 384, offset: 128)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 384, elements: !1524)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2193, file: !2081, line: 292, baseType: !2204, offset: 4608)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, elements: !1622)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2086, file: !2081, line: 309, baseType: !2206, size: 32768)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 32768, elements: !2207)
!2207 = !{!2208}
!2208 = !DISubrange(count: 4096)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1112, file: !701, line: 378, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1108, file: !701, line: 384, baseType: !1401, size: 192, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !957, file: !701, line: 500, baseType: !208, offset: 6656)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !957, file: !701, line: 501, baseType: !2214, size: 64, offset: 6656)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !701, line: 387, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !957, file: !701, line: 516, baseType: !1612, size: 64, offset: 6720)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !957, file: !701, line: 519, baseType: !327, size: 64, offset: 6784)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !957, file: !701, line: 521, baseType: !2219, size: 64, offset: 6848)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !701, line: 521, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !957, file: !701, line: 545, baseType: !726, size: 32, offset: 6912)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !957, file: !701, line: 548, baseType: !465, size: 8, offset: 6944)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !957, file: !701, line: 550, baseType: !2224, offset: 6952)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2225, line: 142, elements: !222)
!2225 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !957, file: !701, line: 554, baseType: !1857, size: 256, offset: 6976)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !957, file: !701, line: 557, baseType: !390, size: 32, offset: 7232)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !954, file: !701, line: 565, baseType: !2229, offset: 7296)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !2230)
!2230 = !{!2231}
!2231 = !DISubrange(count: -1)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !950, file: !701, line: 151, baseType: !726, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !943, file: !701, line: 156, baseType: !208, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !701, line: 159, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !701, line: 159, size: 128, elements: !2236)
!2236 = !{!2237, !2240}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2235, file: !701, line: 161, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !701, line: 161, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2235, file: !701, line: 162, baseType: !178, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !705, file: !701, line: 176, baseType: !340, size: 128, align: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 179, baseType: !2243, size: 32, offset: 384)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 179, size: 32, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2243, file: !701, line: 184, baseType: !726, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2243, file: !701, line: 192, baseType: !40, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2243, file: !701, line: 194, baseType: !40, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2243, file: !701, line: 195, baseType: !234, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !700, file: !701, line: 199, baseType: !726, size: 32, offset: 416)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !635, file: !64, line: 1964, baseType: !2251, size: 64, offset: 1344)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!7, !574, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2256, line: 12, size: 256, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2257 = !{!2258, !2259, !2260, !2261, !2262}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2255, file: !2256, line: 13, baseType: !722, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2255, file: !2256, line: 16, baseType: !234, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2255, file: !2256, line: 23, baseType: !299, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2255, file: !2256, line: 30, baseType: !299, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2255, file: !2256, line: 33, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !701, line: 27, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !635, file: !64, line: 1966, baseType: !2251, size: 64, offset: 1408)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !575, file: !64, line: 1424, baseType: !2267, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !58, line: 322, size: 704, elements: !2270)
!2270 = !{!2271, !2317, !2321, !2325, !2326, !2327, !2328, !2329, !2334, !2339, !2343}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2269, file: !58, line: 323, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!234, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !58, line: 294, size: 1600, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2302, !2303, !2304}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2276, file: !58, line: 295, baseType: !617, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2276, file: !58, line: 296, baseType: !183, size: 128, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2276, file: !58, line: 297, baseType: !183, size: 128, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2276, file: !58, line: 298, baseType: !183, size: 128, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2276, file: !58, line: 299, baseType: !1072, size: 192, offset: 512)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2276, file: !58, line: 300, baseType: !208, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2276, file: !58, line: 301, baseType: !726, size: 32, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2276, file: !58, line: 302, baseType: !574, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2276, file: !58, line: 303, baseType: !2287, size: 64, offset: 832)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !58, line: 68, size: 64, elements: !2288)
!2288 = !{!2289, !2301}
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !58, line: 69, baseType: !2290, size: 32)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2287, file: !58, line: 69, size: 32, elements: !2291)
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2290, file: !58, line: 70, baseType: !410, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2290, file: !58, line: 71, baseType: !418, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2290, file: !58, line: 72, baseType: !2295, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2296, line: 24, baseType: !2297)
!2296 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2296, line: 22, size: 32, elements: !2298)
!2298 = !{!2299}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2297, file: !2296, line: 23, baseType: !2300, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2296, line: 20, baseType: !416)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2287, file: !58, line: 74, baseType: !57, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2276, file: !58, line: 304, baseType: !506, size: 64, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2276, file: !58, line: 305, baseType: !299, size: 64, offset: 960)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2276, file: !58, line: 306, baseType: !2305, size: 576, offset: 1024)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !58, line: 205, size: 576, elements: !2306)
!2306 = !{!2307, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2305, file: !58, line: 206, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !58, line: 66, baseType: !508)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2305, file: !58, line: 207, baseType: !2308, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2305, file: !58, line: 208, baseType: !2308, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2305, file: !58, line: 209, baseType: !2308, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2305, file: !58, line: 210, baseType: !2308, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2305, file: !58, line: 211, baseType: !2308, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2305, file: !58, line: 212, baseType: !2308, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2305, file: !58, line: 213, baseType: !514, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2305, file: !58, line: 214, baseType: !514, size: 64, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2269, file: !58, line: 324, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!2275, !574, !234}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2269, file: !58, line: 325, baseType: !2322, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !2275}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2269, file: !58, line: 326, baseType: !2272, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2269, file: !58, line: 327, baseType: !2272, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2269, file: !58, line: 328, baseType: !2272, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2269, file: !58, line: 329, baseType: !663, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2269, file: !58, line: 332, baseType: !2330, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!2333, !404}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2269, file: !58, line: 333, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!234, !404, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2269, file: !58, line: 335, baseType: !2340, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!234, !404, !2333}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2269, file: !58, line: 337, baseType: !2344, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!234, !574, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !575, file: !64, line: 1425, baseType: !2349, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !58, line: 428, size: 704, elements: !2352)
!2352 = !{!2353, !2357, !2358, !2362, !2363, !2364, !2379, !2402, !2406, !2407, !2430}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2351, file: !58, line: 429, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!234, !574, !234, !234, !524}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2351, file: !58, line: 430, baseType: !663, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2351, file: !58, line: 431, baseType: !2359, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!234, !574, !40}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2351, file: !58, line: 432, baseType: !2359, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2351, file: !58, line: 433, baseType: !663, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2351, file: !58, line: 434, baseType: !2365, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!234, !574, !234, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !58, line: 415, size: 256, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2369, file: !58, line: 416, baseType: !234, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2369, file: !58, line: 417, baseType: !40, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2369, file: !58, line: 418, baseType: !40, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2369, file: !58, line: 420, baseType: !40, size: 32, offset: 96)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2369, file: !58, line: 421, baseType: !40, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2369, file: !58, line: 422, baseType: !40, size: 32, offset: 160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2369, file: !58, line: 423, baseType: !40, size: 32, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2369, file: !58, line: 424, baseType: !40, size: 32, offset: 224)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2351, file: !58, line: 435, baseType: !2380, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!234, !574, !2287, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !58, line: 343, size: 960, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2384, file: !58, line: 344, baseType: !234, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2384, file: !58, line: 345, baseType: !396, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2384, file: !58, line: 346, baseType: !396, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2384, file: !58, line: 347, baseType: !396, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2384, file: !58, line: 348, baseType: !396, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2384, file: !58, line: 349, baseType: !396, size: 64, offset: 320)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2384, file: !58, line: 350, baseType: !396, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2384, file: !58, line: 351, baseType: !756, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2384, file: !58, line: 353, baseType: !756, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2384, file: !58, line: 354, baseType: !234, size: 32, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2384, file: !58, line: 355, baseType: !234, size: 32, offset: 608)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2384, file: !58, line: 356, baseType: !396, size: 64, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2384, file: !58, line: 357, baseType: !396, size: 64, offset: 704)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2384, file: !58, line: 358, baseType: !396, size: 64, offset: 768)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2384, file: !58, line: 359, baseType: !756, size: 64, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2384, file: !58, line: 360, baseType: !234, size: 32, offset: 896)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2351, file: !58, line: 436, baseType: !2403, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!234, !574, !2347, !2383}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2351, file: !58, line: 438, baseType: !2380, size: 64, offset: 512)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2351, file: !58, line: 439, baseType: !2408, size: 64, offset: 576)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!234, !574, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !58, line: 409, size: 1408, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2412, file: !58, line: 410, baseType: !40, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2412, file: !58, line: 411, baseType: !2416, size: 1344, offset: 64)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 1344, elements: !251)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !58, line: 395, size: 448, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2429}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !58, line: 396, baseType: !40, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2417, file: !58, line: 397, baseType: !40, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2417, file: !58, line: 399, baseType: !40, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2417, file: !58, line: 400, baseType: !40, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2417, file: !58, line: 401, baseType: !40, size: 32, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2417, file: !58, line: 402, baseType: !40, size: 32, offset: 160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2417, file: !58, line: 403, baseType: !40, size: 32, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2417, file: !58, line: 404, baseType: !398, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2417, file: !58, line: 405, baseType: !2428, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !184, line: 126, baseType: !396)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2417, file: !58, line: 406, baseType: !2428, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2351, file: !58, line: 440, baseType: !2359, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !575, file: !64, line: 1426, baseType: !2432, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 49, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !575, file: !64, line: 1427, baseType: !299, size: 64, offset: 640)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !575, file: !64, line: 1428, baseType: !299, size: 64, offset: 704)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !575, file: !64, line: 1429, baseType: !299, size: 64, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !575, file: !64, line: 1430, baseType: !357, size: 64, offset: 832)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !575, file: !64, line: 1431, baseType: !746, size: 256, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !575, file: !64, line: 1432, baseType: !234, size: 32, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !575, file: !64, line: 1433, baseType: !726, size: 32, offset: 1184)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !575, file: !64, line: 1437, baseType: !2443, size: 64, offset: 1216)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1437, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !575, file: !64, line: 1449, baseType: !2448, size: 64, offset: 1280)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !373, line: 34, size: 64, elements: !2449)
!2449 = !{!2450}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2448, file: !373, line: 35, baseType: !376, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !575, file: !64, line: 1450, baseType: !183, size: 128, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !575, file: !64, line: 1451, baseType: !2453, size: 64, offset: 1472)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 699, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !575, file: !64, line: 1452, baseType: !1823, size: 64, offset: 1536)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !575, file: !64, line: 1453, baseType: !2457, size: 64, offset: 1600)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1453, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !575, file: !64, line: 1454, baseType: !617, size: 128, offset: 1664)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !575, file: !64, line: 1455, baseType: !40, size: 32, offset: 1792)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !575, file: !64, line: 1456, baseType: !2462, size: 2432, offset: 1856)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !58, line: 518, size: 2432, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2468, !2500}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2462, file: !58, line: 519, baseType: !40, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2462, file: !58, line: 520, baseType: !746, size: 256, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2462, file: !58, line: 521, baseType: !2467, size: 192, offset: 320)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 192, elements: !251)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2462, file: !58, line: 522, baseType: !2469, size: 1728, offset: 512)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, size: 1728, elements: !251)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !58, line: 222, size: 576, elements: !2471)
!2471 = !{!2472, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2470, file: !58, line: 223, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !58, line: 443, size: 256, elements: !2475)
!2475 = !{!2476, !2477, !2490, !2491}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2474, file: !58, line: 444, baseType: !234, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2474, file: !58, line: 445, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !58, line: 310, size: 512, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2480, file: !58, line: 311, baseType: !663, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2480, file: !58, line: 312, baseType: !663, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2480, file: !58, line: 313, baseType: !663, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2480, file: !58, line: 314, baseType: !663, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2480, file: !58, line: 315, baseType: !2272, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2480, file: !58, line: 316, baseType: !2272, size: 64, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2480, file: !58, line: 317, baseType: !2272, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2480, file: !58, line: 318, baseType: !2344, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2474, file: !58, line: 446, baseType: !608, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2474, file: !58, line: 447, baseType: !2473, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2470, file: !58, line: 224, baseType: !234, size: 32, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2470, file: !58, line: 226, baseType: !183, size: 128, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2470, file: !58, line: 227, baseType: !299, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2470, file: !58, line: 228, baseType: !40, size: 32, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2470, file: !58, line: 229, baseType: !40, size: 32, offset: 352)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2470, file: !58, line: 230, baseType: !2308, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2470, file: !58, line: 231, baseType: !2308, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2470, file: !58, line: 232, baseType: !178, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2462, file: !58, line: 523, baseType: !2501, size: 192, offset: 2240)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 192, elements: !251)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !575, file: !64, line: 1458, baseType: !2503, size: 2112, offset: 4288)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1410, size: 2112, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2503, file: !64, line: 1411, baseType: !234, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2503, file: !64, line: 1412, baseType: !1380, size: 128, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2503, file: !64, line: 1413, baseType: !2508, size: 1920, offset: 192)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 1920, elements: !251)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2510, line: 12, size: 640, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !{!2512, !2520, !2522, !2527, !2528}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2509, file: !2510, line: 13, baseType: !2513, size: 320)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2514, line: 17, size: 320, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2513, file: !2514, line: 18, baseType: !234, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2513, file: !2514, line: 19, baseType: !234, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2513, file: !2514, line: 20, baseType: !1380, size: 128, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2513, file: !2514, line: 22, baseType: !340, size: 128, align: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2509, file: !2510, line: 14, baseType: !2521, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2509, file: !2510, line: 15, baseType: !2523, size: 64, offset: 384)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2524, line: 16, size: 64, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2525 = !{!2526}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2523, file: !2524, line: 17, baseType: !1115, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2509, file: !2510, line: 16, baseType: !1380, size: 128, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2509, file: !2510, line: 17, baseType: !726, size: 32, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !575, file: !64, line: 1465, baseType: !178, size: 64, offset: 6400)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !575, file: !64, line: 1468, baseType: !390, size: 32, offset: 6464)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !575, file: !64, line: 1470, baseType: !514, size: 64, offset: 6528)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !575, file: !64, line: 1471, baseType: !514, size: 64, offset: 6592)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !575, file: !64, line: 1473, baseType: !392, size: 32, offset: 6656)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !575, file: !64, line: 1474, baseType: !2535, size: 64, offset: 6720)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 603, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !575, file: !64, line: 1477, baseType: !2538, size: 256, offset: 6784)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !2129)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !575, file: !64, line: 1478, baseType: !2540, size: 128, offset: 7040)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2541, line: 18, baseType: !2542)
!2541 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2541, line: 16, size: 128, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2542, file: !2541, line: 17, baseType: !2545, size: 128)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 128, elements: !1634)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !575, file: !64, line: 1480, baseType: !40, size: 32, offset: 7168)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !575, file: !64, line: 1481, baseType: !2548, size: 32, offset: 7200)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !184, line: 150, baseType: !40)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !575, file: !64, line: 1487, baseType: !1072, size: 192, offset: 7232)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !575, file: !64, line: 1493, baseType: !196, size: 64, offset: 7424)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !575, file: !64, line: 1495, baseType: !2552, size: 64, offset: 7488)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !355, line: 135, size: 1024, align: 512, elements: !2555)
!2555 = !{!2556, !2560, !2561, !2568, !2574, !2578, !2582, !2586, !2587, !2591, !2595, !2600, !2604}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2554, file: !355, line: 136, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!234, !357, !40}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2554, file: !355, line: 137, baseType: !2557, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2554, file: !355, line: 138, baseType: !2562, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!234, !2565, !2567}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2554, file: !355, line: 139, baseType: !2569, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!234, !2565, !40, !196, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2554, file: !355, line: 141, baseType: !2575, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!234, !2565}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2554, file: !355, line: 142, baseType: !2579, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!234, !357}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2554, file: !355, line: 143, baseType: !2583, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !357}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2554, file: !355, line: 144, baseType: !2583, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2554, file: !355, line: 145, baseType: !2588, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !357, !404}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2554, file: !355, line: 146, baseType: !2592, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!250, !357, !250, !234}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2554, file: !355, line: 147, baseType: !2596, size: 64, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!353, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2554, file: !355, line: 148, baseType: !2601, size: 64, offset: 704)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!234, !524, !465}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2554, file: !355, line: 149, baseType: !2605, size: 64, offset: 768)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!357, !357, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !575, file: !64, line: 1500, baseType: !234, size: 32, offset: 7552)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !575, file: !64, line: 1502, baseType: !2612, size: 448, offset: 7616)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2256, line: 60, size: 448, elements: !2613)
!2613 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2612, file: !2256, line: 61, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!299, !2618, !2254}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2612, file: !2256, line: 63, baseType: !2615, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2612, file: !2256, line: 66, baseType: !7, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2612, file: !2256, line: 67, baseType: !234, size: 32, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2612, file: !2256, line: 68, baseType: !40, size: 32, offset: 224)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2612, file: !2256, line: 71, baseType: !183, size: 128, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2612, file: !2256, line: 77, baseType: !2625, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !575, file: !64, line: 1505, baseType: !750, size: 64, offset: 8064)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !575, file: !64, line: 1508, baseType: !750, size: 64, offset: 8128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !575, file: !64, line: 1511, baseType: !234, size: 32, offset: 8192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !575, file: !64, line: 1514, baseType: !888, size: 32, offset: 8224)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !575, file: !64, line: 1517, baseType: !2631, size: 64, offset: 8256)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !6, line: 18, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !575, file: !64, line: 1518, baseType: !613, size: 64, offset: 8320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !575, file: !64, line: 1525, baseType: !1612, size: 64, offset: 8384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !575, file: !64, line: 1532, baseType: !2636, size: 64, offset: 8448)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2637, line: 52, size: 64, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2636, file: !2637, line: 53, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2637, line: 40, size: 256, elements: !2642)
!2642 = !{!2643, !2644, !2649}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2641, file: !2637, line: 42, baseType: !208)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2641, file: !2637, line: 44, baseType: !2645, size: 192)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2637, line: 28, size: 192, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2645, file: !2637, line: 29, baseType: !183, size: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2645, file: !2637, line: 31, baseType: !7, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2641, file: !2637, line: 49, baseType: !7, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !575, file: !64, line: 1533, baseType: !2636, size: 64, offset: 8512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !575, file: !64, line: 1534, baseType: !340, size: 128, align: 64, offset: 8576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !575, file: !64, line: 1535, baseType: !1857, size: 256, offset: 8704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !575, file: !64, line: 1537, baseType: !1072, size: 192, offset: 8960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !575, file: !64, line: 1542, baseType: !234, size: 32, offset: 9152)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !575, file: !64, line: 1545, baseType: !208, offset: 9184)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !575, file: !64, line: 1546, baseType: !183, size: 128, offset: 9216)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !575, file: !64, line: 1548, baseType: !208, offset: 9344)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !575, file: !64, line: 1549, baseType: !183, size: 128, offset: 9344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !405, file: !64, line: 624, baseType: !712, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !405, file: !64, line: 631, baseType: !299, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !64, line: 639, baseType: !2662, size: 32, offset: 384)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !64, line: 639, size: 32, elements: !2663)
!2663 = !{!2664, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2662, file: !64, line: 640, baseType: !2665, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2662, file: !64, line: 641, baseType: !40, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !405, file: !64, line: 643, baseType: !488, size: 32, offset: 416)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !405, file: !64, line: 644, baseType: !506, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !405, file: !64, line: 645, baseType: !510, size: 128, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !405, file: !64, line: 646, baseType: !510, size: 128, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !405, file: !64, line: 647, baseType: !510, size: 128, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !405, file: !64, line: 648, baseType: !208, offset: 896)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !405, file: !64, line: 649, baseType: !291, size: 16, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !405, file: !64, line: 650, baseType: !1251, size: 8, offset: 912)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !405, file: !64, line: 651, baseType: !1251, size: 8, offset: 920)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !405, file: !64, line: 652, baseType: !2428, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !405, file: !64, line: 659, baseType: !299, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !405, file: !64, line: 660, baseType: !746, size: 256, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !405, file: !64, line: 662, baseType: !299, size: 64, offset: 1344)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !405, file: !64, line: 663, baseType: !299, size: 64, offset: 1408)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !405, file: !64, line: 665, baseType: !617, size: 128, offset: 1472)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !405, file: !64, line: 666, baseType: !183, size: 128, offset: 1600)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !405, file: !64, line: 675, baseType: !183, size: 128, offset: 1728)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !405, file: !64, line: 676, baseType: !183, size: 128, offset: 1856)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !405, file: !64, line: 677, baseType: !183, size: 128, offset: 1984)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !64, line: 678, baseType: !2687, size: 128, offset: 2112)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !64, line: 678, size: 128, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2687, file: !64, line: 679, baseType: !613, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2687, file: !64, line: 680, baseType: !340, size: 128, align: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !405, file: !64, line: 682, baseType: !752, size: 64, offset: 2240)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !405, file: !64, line: 683, baseType: !752, size: 64, offset: 2304)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !405, file: !64, line: 684, baseType: !726, size: 32, offset: 2368)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !405, file: !64, line: 685, baseType: !726, size: 32, offset: 2400)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !405, file: !64, line: 686, baseType: !726, size: 32, offset: 2432)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !405, file: !64, line: 688, baseType: !726, size: 32, offset: 2464)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !64, line: 690, baseType: !2698, size: 64, offset: 2496)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !64, line: 690, size: 64, elements: !2699)
!2699 = !{!2700, !2923}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2698, file: !64, line: 691, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1822, size: 2048, elements: !2704)
!2704 = !{!2705, !2706, !2710, !2715, !2719, !2720, !2721, !2725, !2738, !2739, !2747, !2751, !2752, !2756, !2757, !2761, !2766, !2767, !2771, !2775, !2883, !2887, !2888, !2892, !2893, !2897, !2901, !2906, !2910, !2914, !2918, !2922}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2703, file: !64, line: 1823, baseType: !608, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2703, file: !64, line: 1824, baseType: !2707, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!506, !327, !506, !234}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2703, file: !64, line: 1825, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!281, !327, !250, !296, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2703, file: !64, line: 1826, baseType: !2716, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!281, !327, !196, !296, !2714}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2703, file: !64, line: 1827, baseType: !823, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2703, file: !64, line: 1828, baseType: !823, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2703, file: !64, line: 1829, baseType: !2722, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!234, !826, !465}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2703, file: !64, line: 1830, baseType: !2726, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!234, !327, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1776, size: 128, elements: !2731)
!2731 = !{!2732, !2737}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2730, file: !64, line: 1777, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1773, baseType: !2734)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!234, !2729, !196, !234, !506, !396, !40}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2730, file: !64, line: 1778, baseType: !506, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2703, file: !64, line: 1831, baseType: !2726, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2703, file: !64, line: 1832, baseType: !2740, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2743, !327, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2744, line: 52, baseType: !40)
!2744 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !594, line: 27, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2703, file: !64, line: 1833, baseType: !2748, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!7, !327, !40, !299}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2703, file: !64, line: 1834, baseType: !2748, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2703, file: !64, line: 1835, baseType: !2753, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!234, !327, !960}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2703, file: !64, line: 1836, baseType: !299, size: 64, offset: 832)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2703, file: !64, line: 1837, baseType: !2758, size: 64, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!234, !404, !327}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2703, file: !64, line: 1838, baseType: !2762, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!234, !327, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1007, baseType: !178)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2703, file: !64, line: 1839, baseType: !2758, size: 64, offset: 1024)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2703, file: !64, line: 1840, baseType: !2768, size: 64, offset: 1088)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!234, !327, !506, !506, !234}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2703, file: !64, line: 1841, baseType: !2772, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!234, !234, !327, !234}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2703, file: !64, line: 1842, baseType: !2776, size: 64, offset: 1216)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!234, !327, !234, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1062, size: 1664, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2813, !2814, !2815, !2828, !2859}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2780, file: !64, line: 1063, baseType: !2779, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2780, file: !64, line: 1064, baseType: !183, size: 128, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2780, file: !64, line: 1065, baseType: !617, size: 128, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2780, file: !64, line: 1066, baseType: !183, size: 128, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2780, file: !64, line: 1069, baseType: !183, size: 128, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2780, file: !64, line: 1072, baseType: !2765, size: 64, offset: 576)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2780, file: !64, line: 1073, baseType: !40, size: 32, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2780, file: !64, line: 1074, baseType: !402, size: 8, offset: 672)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2780, file: !64, line: 1075, baseType: !40, size: 32, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2780, file: !64, line: 1076, baseType: !234, size: 32, offset: 736)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2780, file: !64, line: 1077, baseType: !1380, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2780, file: !64, line: 1078, baseType: !327, size: 64, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2780, file: !64, line: 1079, baseType: !506, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2780, file: !64, line: 1080, baseType: !506, size: 64, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2780, file: !64, line: 1082, baseType: !2797, size: 64, offset: 1088)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !64, line: 1314, size: 320, elements: !2799)
!2799 = !{!2800, !2808, !2809, !2810, !2811, !2812}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2798, file: !64, line: 1315, baseType: !2801)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2802, line: 20, baseType: !2803)
!2802 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2802, line: 11, elements: !2804)
!2804 = !{!2805}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2803, file: !2802, line: 12, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !220, line: 33, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 31, elements: !222)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2798, file: !64, line: 1316, baseType: !234, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2798, file: !64, line: 1317, baseType: !234, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2798, file: !64, line: 1318, baseType: !2797, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2798, file: !64, line: 1319, baseType: !327, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2798, file: !64, line: 1320, baseType: !340, size: 128, align: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2780, file: !64, line: 1084, baseType: !299, size: 64, offset: 1152)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2780, file: !64, line: 1085, baseType: !299, size: 64, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2780, file: !64, line: 1087, baseType: !2816, size: 64, offset: 1280)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !64, line: 1011, size: 128, elements: !2819)
!2819 = !{!2820, !2824}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2818, file: !64, line: 1012, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2779, !2779}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2818, file: !64, line: 1013, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2779}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2780, file: !64, line: 1088, baseType: !2829, size: 64, offset: 1344)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2831)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !64, line: 1016, size: 512, elements: !2832)
!2832 = !{!2833, !2837, !2841, !2842, !2846, !2850, !2854, !2858}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2831, file: !64, line: 1017, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!2765, !2765}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2831, file: !64, line: 1018, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2765}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2831, file: !64, line: 1019, baseType: !2825, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2831, file: !64, line: 1020, baseType: !2843, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!234, !2779, !234}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2831, file: !64, line: 1021, baseType: !2847, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!465, !2779}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2831, file: !64, line: 1022, baseType: !2851, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!234, !2779, !234, !187}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2831, file: !64, line: 1023, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2779, !800}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2831, file: !64, line: 1024, baseType: !2847, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2780, file: !64, line: 1097, baseType: !2860, size: 256, offset: 1408)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2780, file: !64, line: 1089, size: 256, elements: !2861)
!2861 = !{!2862, !2871, !2877}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2860, file: !64, line: 1090, baseType: !2863, size: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2864, line: 10, size: 256, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866, !2867, !2870}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2863, file: !2864, line: 11, baseType: !390, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2863, file: !2864, line: 12, baseType: !2868, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2864, line: 5, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2863, file: !2864, line: 13, baseType: !183, size: 128, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2860, file: !64, line: 1091, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2864, line: 17, size: 64, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !2864, line: 18, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2864, line: 16, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2860, file: !64, line: 1096, baseType: !2878, size: 192)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !64, line: 1092, size: 192, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2878, file: !64, line: 1093, baseType: !183, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2878, file: !64, line: 1094, baseType: !234, size: 32, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2878, file: !64, line: 1095, baseType: !40, size: 32, offset: 160)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2703, file: !64, line: 1843, baseType: !2884, size: 64, offset: 1280)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!281, !327, !699, !234, !296, !2714, !234}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2703, file: !64, line: 1844, baseType: !1000, size: 64, offset: 1344)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2703, file: !64, line: 1845, baseType: !2889, size: 64, offset: 1408)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!234, !234}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2703, file: !64, line: 1846, baseType: !2776, size: 64, offset: 1472)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2703, file: !64, line: 1847, baseType: !2894, size: 64, offset: 1536)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!281, !1997, !327, !2714, !296, !40}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2703, file: !64, line: 1848, baseType: !2898, size: 64, offset: 1600)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!281, !327, !2714, !1997, !296, !40}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2703, file: !64, line: 1849, baseType: !2902, size: 64, offset: 1664)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!234, !327, !7, !2905, !800}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2703, file: !64, line: 1850, baseType: !2907, size: 64, offset: 1728)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!7, !327, !234, !506, !506}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2703, file: !64, line: 1852, baseType: !2911, size: 64, offset: 1792)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !689, !327}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2703, file: !64, line: 1856, baseType: !2915, size: 64, offset: 1856)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!281, !327, !506, !327, !506, !296, !40}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2703, file: !64, line: 1858, baseType: !2919, size: 64, offset: 1920)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!506, !327, !506, !327, !506, !506, !40}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2703, file: !64, line: 1861, baseType: !2768, size: 64, offset: 1984)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2698, file: !64, line: 692, baseType: !642, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !405, file: !64, line: 694, baseType: !2925, size: 64, offset: 2560)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 1100, size: 384, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2926, file: !64, line: 1101, baseType: !208)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2926, file: !64, line: 1102, baseType: !183, size: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2926, file: !64, line: 1103, baseType: !183, size: 128, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2926, file: !64, line: 1104, baseType: !183, size: 128, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !405, file: !64, line: 695, baseType: !713, size: 1216, align: 64, offset: 2624)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !405, file: !64, line: 696, baseType: !183, size: 128, offset: 3840)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !64, line: 697, baseType: !2935, size: 64, offset: 3968)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !64, line: 697, size: 64, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2935, file: !64, line: 698, baseType: !1997, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2935, file: !64, line: 699, baseType: !2453, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2935, file: !64, line: 700, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 700, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2935, file: !64, line: 701, baseType: !250, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2935, file: !64, line: 702, baseType: !40, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !405, file: !64, line: 705, baseType: !392, size: 32, offset: 4032)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !405, file: !64, line: 708, baseType: !392, size: 32, offset: 4064)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !405, file: !64, line: 709, baseType: !2535, size: 64, offset: 4096)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !405, file: !64, line: 720, baseType: !178, size: 64, offset: 4160)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !358, file: !355, line: 98, baseType: !2949, size: 256, offset: 448)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !2129)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !358, file: !355, line: 101, baseType: !2951, size: 32, offset: 704)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2952, line: 25, size: 32, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2951, file: !2952, line: 26, baseType: !2955, size: 32)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2951, file: !2952, line: 26, size: 32, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2955, file: !2952, line: 30, baseType: !2958, size: 32)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2952, line: 30, size: 32, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !2952, line: 31, baseType: !208)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2958, file: !2952, line: 32, baseType: !234, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !358, file: !355, line: 102, baseType: !2552, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !358, file: !355, line: 103, baseType: !574, size: 64, offset: 832)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !358, file: !355, line: 104, baseType: !299, size: 64, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !358, file: !355, line: 105, baseType: !178, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !355, line: 107, baseType: !2967, size: 128, offset: 1024)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 107, size: 128, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2967, file: !355, line: 108, baseType: !183, size: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2967, file: !355, line: 109, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !358, file: !355, line: 111, baseType: !183, size: 128, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !358, file: !355, line: 112, baseType: !183, size: 128, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !358, file: !355, line: 120, baseType: !2975, size: 128, offset: 1408)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 116, size: 128, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2975, file: !355, line: 117, baseType: !617, size: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2975, file: !355, line: 118, baseType: !372, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2975, file: !355, line: 119, baseType: !340, size: 128, align: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !328, file: !64, line: 922, baseType: !404, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !328, file: !64, line: 923, baseType: !2701, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !328, file: !64, line: 929, baseType: !208, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !328, file: !64, line: 930, baseType: !63, size: 32, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !328, file: !64, line: 931, baseType: !750, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !328, file: !64, line: 932, baseType: !40, size: 32, offset: 512)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !328, file: !64, line: 933, baseType: !2548, size: 32, offset: 544)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !328, file: !64, line: 934, baseType: !1072, size: 192, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !328, file: !64, line: 935, baseType: !506, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !328, file: !64, line: 936, baseType: !2990, size: 192, offset: 832)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 885, size: 192, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2990, file: !64, line: 886, baseType: !2801)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2990, file: !64, line: 887, baseType: !1370, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2990, file: !64, line: 888, baseType: !72, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2990, file: !64, line: 889, baseType: !410, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2990, file: !64, line: 889, baseType: !410, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2990, file: !64, line: 890, baseType: !234, size: 32, offset: 160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !328, file: !64, line: 937, baseType: !1446, size: 64, offset: 1024)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !328, file: !64, line: 938, baseType: !3000, size: 256, offset: 1088)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 896, size: 256, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3000, file: !64, line: 897, baseType: !299, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3000, file: !64, line: 898, baseType: !40, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3000, file: !64, line: 899, baseType: !40, size: 32, offset: 96)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3000, file: !64, line: 902, baseType: !40, size: 32, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3000, file: !64, line: 903, baseType: !40, size: 32, offset: 160)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3000, file: !64, line: 904, baseType: !506, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !328, file: !64, line: 940, baseType: !396, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !328, file: !64, line: 945, baseType: !178, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !328, file: !64, line: 949, baseType: !183, size: 128, offset: 1472)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !328, file: !64, line: 950, baseType: !183, size: 128, offset: 1600)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !328, file: !64, line: 952, baseType: !712, size: 64, offset: 1728)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !328, file: !64, line: 953, baseType: !888, size: 32, offset: 1792)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !328, file: !64, line: 954, baseType: !888, size: 32, offset: 1824)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !318, file: !275, line: 174, baseType: !324, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !318, file: !275, line: 176, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!234, !327, !201, !317, !960}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !306, file: !275, line: 90, baseType: !301, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !306, file: !275, line: 91, baseType: !3022, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !161, line: 143, baseType: !3024, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3027, !201}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !81, line: 39, size: 384, elements: !3030)
!3030 = !{!3031, !3032, !3036, !3040, !3046, !3050}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3029, file: !81, line: 40, baseType: !80, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3029, file: !81, line: 41, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!465}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3029, file: !81, line: 42, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!178}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3029, file: !81, line: 43, baseType: !3041, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!2026, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !81, line: 19, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3029, file: !81, line: 44, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!2026}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3029, file: !81, line: 45, baseType: !443, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !161, line: 144, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!2026, !201}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !161, line: 145, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !201, !3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !193, file: !161, line: 70, baseType: !3062, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !594, line: 123, size: 1024, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3193, !3194, !3195, !3196, !3197}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3063, file: !594, line: 124, baseType: !726, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3063, file: !594, line: 125, baseType: !726, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3063, file: !594, line: 135, baseType: !3062, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3063, file: !594, line: 136, baseType: !196, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3063, file: !594, line: 138, baseType: !739, size: 192, align: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3063, file: !594, line: 140, baseType: !2026, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3063, file: !594, line: 141, baseType: !40, size: 32, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !594, line: 142, baseType: !3073, size: 256, offset: 512)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3063, file: !594, line: 142, size: 256, elements: !3074)
!3074 = !{!3075, !3121, !3125}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3073, file: !594, line: 143, baseType: !3076, size: 192)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !594, line: 91, size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3076, file: !594, line: 92, baseType: !299, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3076, file: !594, line: 94, baseType: !735, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3076, file: !594, line: 100, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !594, line: 180, size: 704, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3093, !3094, !3095, !3119, !3120}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3082, file: !594, line: 182, baseType: !3062, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3082, file: !594, line: 183, baseType: !40, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3082, file: !594, line: 186, baseType: !3087, size: 192, offset: 128)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3088, line: 19, size: 192, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3087, file: !3088, line: 20, baseType: !717, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3087, file: !3088, line: 21, baseType: !40, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3087, file: !3088, line: 22, baseType: !40, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3082, file: !594, line: 187, baseType: !390, size: 32, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3082, file: !594, line: 188, baseType: !390, size: 32, offset: 352)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3082, file: !594, line: 189, baseType: !3096, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !594, line: 168, size: 320, elements: !3098)
!3098 = !{!3099, !3103, !3107, !3111, !3115}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3097, file: !594, line: 169, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!234, !689, !3081}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3097, file: !594, line: 171, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!234, !3062, !196, !290}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3097, file: !594, line: 173, baseType: !3108, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!234, !3062}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3097, file: !594, line: 174, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!234, !3062, !3062, !196}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3097, file: !594, line: 176, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!234, !689, !3062, !3081}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3082, file: !594, line: 192, baseType: !183, size: 128, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3082, file: !594, line: 194, baseType: !1380, size: 128, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3073, file: !594, line: 144, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !594, line: 103, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3122, file: !594, line: 104, baseType: !3062, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3073, file: !594, line: 145, baseType: !3126, size: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !594, line: 107, size: 256, elements: !3127)
!3127 = !{!3128, !3188, !3191, !3192}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3126, file: !594, line: 108, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !594, line: 217, size: 768, elements: !3132)
!3132 = !{!3133, !3153, !3157, !3161, !3165, !3169, !3173, !3177, !3178, !3179, !3180, !3184}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3131, file: !594, line: 222, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!234, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !594, line: 197, size: 1088, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3138, file: !594, line: 199, baseType: !3062, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3138, file: !594, line: 200, baseType: !327, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3138, file: !594, line: 201, baseType: !689, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3138, file: !594, line: 202, baseType: !178, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3138, file: !594, line: 205, baseType: !1072, size: 192, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3138, file: !594, line: 206, baseType: !1072, size: 192, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3138, file: !594, line: 207, baseType: !234, size: 32, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3138, file: !594, line: 208, baseType: !183, size: 128, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3138, file: !594, line: 209, baseType: !250, size: 64, offset: 832)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3138, file: !594, line: 211, baseType: !296, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3138, file: !594, line: 212, baseType: !465, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3138, file: !594, line: 213, baseType: !465, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3138, file: !594, line: 214, baseType: !988, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3131, file: !594, line: 223, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3137}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3131, file: !594, line: 236, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!234, !689, !178}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3131, file: !594, line: 238, baseType: !3162, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!178, !689, !2714}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3131, file: !594, line: 239, baseType: !3166, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!178, !689, !178, !2714}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3131, file: !594, line: 240, baseType: !3170, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !689, !178}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3131, file: !594, line: 242, baseType: !3174, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!281, !3137, !250, !296, !506}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3131, file: !594, line: 252, baseType: !296, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3131, file: !594, line: 259, baseType: !465, size: 8, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3131, file: !594, line: 260, baseType: !3174, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3131, file: !594, line: 263, baseType: !3181, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!2743, !3137, !2745}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3131, file: !594, line: 266, baseType: !3185, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!234, !3137, !960}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3126, file: !594, line: 109, baseType: !3189, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !594, line: 31, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3126, file: !594, line: 110, baseType: !506, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3126, file: !594, line: 111, baseType: !3062, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3063, file: !594, line: 148, baseType: !178, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3063, file: !594, line: 154, baseType: !396, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3063, file: !594, line: 156, baseType: !291, size: 16, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3063, file: !594, line: 157, baseType: !290, size: 16, offset: 912)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3063, file: !594, line: 158, baseType: !3198, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !594, line: 32, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !193, file: !161, line: 71, baseType: !3201, size: 32, offset: 448)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3202, line: 19, size: 32, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3201, file: !3202, line: 20, baseType: !1129, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !193, file: !161, line: 75, baseType: !40, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !193, file: !161, line: 76, baseType: !40, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !193, file: !161, line: 77, baseType: !40, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !193, file: !161, line: 78, baseType: !40, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !193, file: !161, line: 79, baseType: !40, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !93, line: 463, baseType: !3211, size: 64, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !190, file: !93, line: 465, baseType: !3213, size: 64, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !93, line: 36, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !190, file: !93, line: 467, baseType: !196, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !93, line: 468, baseType: !3217, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !93, line: 87, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3227, !3232, !3236}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3219, file: !93, line: 88, baseType: !196, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3219, file: !93, line: 89, baseType: !303, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3219, file: !93, line: 90, baseType: !3224, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!234, !3211, !245}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3219, file: !93, line: 91, baseType: !3228, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!250, !3211, !3231, !3059, !3060}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3219, file: !93, line: 93, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !3211}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3219, file: !93, line: 95, baseType: !3237, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !100, line: 278, size: 1472, elements: !3240)
!3240 = !{!3241, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3239, file: !100, line: 279, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!234, !3211}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3239, file: !100, line: 280, baseType: !3233, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3239, file: !100, line: 281, baseType: !3242, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3239, file: !100, line: 282, baseType: !3242, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3239, file: !100, line: 283, baseType: !3242, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3239, file: !100, line: 284, baseType: !3242, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3239, file: !100, line: 285, baseType: !3242, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3239, file: !100, line: 286, baseType: !3242, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3239, file: !100, line: 287, baseType: !3242, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3239, file: !100, line: 288, baseType: !3242, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3239, file: !100, line: 289, baseType: !3242, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3239, file: !100, line: 290, baseType: !3242, size: 64, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3239, file: !100, line: 291, baseType: !3242, size: 64, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3239, file: !100, line: 292, baseType: !3242, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3239, file: !100, line: 293, baseType: !3242, size: 64, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3239, file: !100, line: 294, baseType: !3242, size: 64, offset: 960)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3239, file: !100, line: 295, baseType: !3242, size: 64, offset: 1024)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3239, file: !100, line: 296, baseType: !3242, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3239, file: !100, line: 297, baseType: !3242, size: 64, offset: 1152)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3239, file: !100, line: 298, baseType: !3242, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3239, file: !100, line: 299, baseType: !3242, size: 64, offset: 1280)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3239, file: !100, line: 300, baseType: !3242, size: 64, offset: 1344)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3239, file: !100, line: 301, baseType: !3242, size: 64, offset: 1408)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !190, file: !93, line: 470, baseType: !3268, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3270, line: 82, size: 1408, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3353, !3356, !3357}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3269, file: !3270, line: 83, baseType: !196, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3269, file: !3270, line: 84, baseType: !196, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3269, file: !3270, line: 85, baseType: !3211, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3269, file: !3270, line: 86, baseType: !303, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3269, file: !3270, line: 87, baseType: !303, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3269, file: !3270, line: 88, baseType: !303, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3269, file: !3270, line: 90, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!234, !3211, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !87, line: 95, size: 1152, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3304, !3317, !3318, !3319, !3320, !3321, !3329, !3330, !3331, !3332, !3333, !3334}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3283, file: !87, line: 96, baseType: !196, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3283, file: !87, line: 97, baseType: !3268, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3283, file: !87, line: 99, baseType: !608, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3283, file: !87, line: 100, baseType: !196, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3283, file: !87, line: 102, baseType: !465, size: 8, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3283, file: !87, line: 103, baseType: !86, size: 32, offset: 288)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3283, file: !87, line: 105, baseType: !3292, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3295, line: 262, size: 1600, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !{!3297, !3298, !3299, !3303}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3294, file: !3295, line: 263, baseType: !2538, size: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !3295, line: 264, baseType: !2538, size: 256, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3294, file: !3295, line: 265, baseType: !3300, size: 1024, offset: 512)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1024, elements: !3301)
!3301 = !{!3302}
!3302 = !DISubrange(count: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3294, file: !3295, line: 266, baseType: !2026, size: 64, offset: 1536)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3283, file: !87, line: 106, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3295, line: 210, size: 256, elements: !3308)
!3308 = !{!3309, !3313, !3315, !3316}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3307, file: !3295, line: 211, baseType: !3310, size: 72)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 72, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 9)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3307, file: !3295, line: 212, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3295, line: 14, baseType: !299)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3307, file: !3295, line: 213, baseType: !392, size: 32, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3307, file: !3295, line: 214, baseType: !392, size: 32, offset: 224)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3283, file: !87, line: 108, baseType: !3242, size: 64, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3283, file: !87, line: 109, baseType: !3233, size: 64, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3283, file: !87, line: 110, baseType: !3242, size: 64, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3283, file: !87, line: 111, baseType: !3233, size: 64, offset: 640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3283, file: !87, line: 112, baseType: !3322, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!234, !3211, !3325}
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !100, line: 52, baseType: !3326)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !100, line: 50, size: 32, elements: !3327)
!3327 = !{!3328}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3326, file: !100, line: 51, baseType: !234, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3283, file: !87, line: 113, baseType: !3242, size: 64, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3283, file: !87, line: 114, baseType: !303, size: 64, offset: 832)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3283, file: !87, line: 115, baseType: !303, size: 64, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3283, file: !87, line: 117, baseType: !3237, size: 64, offset: 960)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3283, file: !87, line: 118, baseType: !3233, size: 64, offset: 1024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3283, file: !87, line: 120, baseType: !3335, size: 64, offset: 1088)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !87, line: 120, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3269, file: !3270, line: 91, baseType: !3224, size: 64, offset: 448)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3269, file: !3270, line: 92, baseType: !3242, size: 64, offset: 512)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3269, file: !3270, line: 93, baseType: !3233, size: 64, offset: 576)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3269, file: !3270, line: 94, baseType: !3242, size: 64, offset: 640)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3269, file: !3270, line: 95, baseType: !3233, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3269, file: !3270, line: 97, baseType: !3242, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3269, file: !3270, line: 98, baseType: !3242, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3269, file: !3270, line: 100, baseType: !3322, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3269, file: !3270, line: 101, baseType: !3242, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3269, file: !3270, line: 103, baseType: !3242, size: 64, offset: 1024)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3269, file: !3270, line: 105, baseType: !3242, size: 64, offset: 1088)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3269, file: !3270, line: 107, baseType: !3237, size: 64, offset: 1152)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3269, file: !3270, line: 109, baseType: !3350, size: 64, offset: 1216)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3352)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3270, line: 109, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3269, file: !3270, line: 111, baseType: !3354, size: 64, offset: 1280)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3270, line: 111, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3269, file: !3270, line: 112, baseType: !623, offset: 1344)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3269, file: !3270, line: 114, baseType: !465, size: 8, offset: 1344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !190, file: !93, line: 471, baseType: !3282, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !190, file: !93, line: 473, baseType: !178, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !190, file: !93, line: 475, baseType: !178, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !190, file: !93, line: 480, baseType: !1072, size: 192, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !190, file: !93, line: 484, baseType: !3363, size: 576, offset: 1216)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !93, line: 361, size: 576, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3363, file: !93, line: 362, baseType: !183, size: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3363, file: !93, line: 363, baseType: !183, size: 128, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3363, file: !93, line: 364, baseType: !183, size: 128, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3363, file: !93, line: 365, baseType: !183, size: 128, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3363, file: !93, line: 366, baseType: !465, size: 8, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3363, file: !93, line: 367, baseType: !92, size: 32, offset: 544)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !190, file: !93, line: 485, baseType: !3372, size: 2304, offset: 1792)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !100, line: 565, size: 2304, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3469, !3473}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3372, file: !100, line: 566, baseType: !3325, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3372, file: !100, line: 567, baseType: !40, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3372, file: !100, line: 568, baseType: !40, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3372, file: !100, line: 569, baseType: !465, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3372, file: !100, line: 570, baseType: !465, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3372, file: !100, line: 571, baseType: !465, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3372, file: !100, line: 572, baseType: !465, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3372, file: !100, line: 573, baseType: !465, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3372, file: !100, line: 574, baseType: !465, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3372, file: !100, line: 575, baseType: !465, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3372, file: !100, line: 576, baseType: !465, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3372, file: !100, line: 577, baseType: !390, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3372, file: !100, line: 578, baseType: !208, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3372, file: !100, line: 580, baseType: !183, size: 128, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3372, file: !100, line: 581, baseType: !1401, size: 192, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3372, file: !100, line: 582, baseType: !3390, size: 64, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3392, line: 43, size: 1472, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3401, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3391, file: !3392, line: 44, baseType: !196, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3391, file: !3392, line: 45, baseType: !234, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3391, file: !3392, line: 46, baseType: !183, size: 128, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3391, file: !3392, line: 47, baseType: !208, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3391, file: !3392, line: 48, baseType: !3399, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !100, line: 533, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3391, file: !3392, line: 49, baseType: !3402, size: 320, offset: 320)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3403, line: 11, size: 320, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405, !3406, !3407, !3412}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3402, file: !3403, line: 16, baseType: !617, size: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3402, file: !3403, line: 17, baseType: !299, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3402, file: !3403, line: 18, baseType: !3408, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3402, file: !3403, line: 19, baseType: !390, size: 32, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3391, file: !3392, line: 50, baseType: !299, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3391, file: !3392, line: 51, baseType: !1199, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3391, file: !3392, line: 52, baseType: !1199, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3391, file: !3392, line: 53, baseType: !1199, size: 64, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3391, file: !3392, line: 54, baseType: !1199, size: 64, offset: 896)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3391, file: !3392, line: 55, baseType: !1199, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3391, file: !3392, line: 56, baseType: !299, size: 64, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3391, file: !3392, line: 57, baseType: !299, size: 64, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3391, file: !3392, line: 58, baseType: !299, size: 64, offset: 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3391, file: !3392, line: 59, baseType: !299, size: 64, offset: 1216)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3391, file: !3392, line: 60, baseType: !299, size: 64, offset: 1280)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3391, file: !3392, line: 61, baseType: !3211, size: 64, offset: 1344)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3391, file: !3392, line: 62, baseType: !465, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3391, file: !3392, line: 63, baseType: !465, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3372, file: !100, line: 583, baseType: !465, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3372, file: !100, line: 584, baseType: !465, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3372, file: !100, line: 585, baseType: !465, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3372, file: !100, line: 586, baseType: !40, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3372, file: !100, line: 587, baseType: !40, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3372, file: !100, line: 592, baseType: !1191, size: 512, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3372, file: !100, line: 593, baseType: !396, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3372, file: !100, line: 594, baseType: !1857, size: 256, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3372, file: !100, line: 595, baseType: !1380, size: 128, offset: 1408)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3372, file: !100, line: 596, baseType: !3399, size: 64, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3372, file: !100, line: 597, baseType: !726, size: 32, offset: 1600)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3372, file: !100, line: 598, baseType: !726, size: 32, offset: 1632)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3372, file: !100, line: 599, baseType: !40, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3372, file: !100, line: 600, baseType: !40, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3372, file: !100, line: 601, baseType: !40, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3372, file: !100, line: 602, baseType: !40, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3372, file: !100, line: 603, baseType: !40, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3372, file: !100, line: 604, baseType: !465, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3372, file: !100, line: 605, baseType: !40, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3372, file: !100, line: 606, baseType: !40, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3372, file: !100, line: 607, baseType: !40, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3372, file: !100, line: 608, baseType: !40, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3372, file: !100, line: 609, baseType: !40, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3372, file: !100, line: 610, baseType: !40, size: 32, offset: 1696)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3372, file: !100, line: 611, baseType: !99, size: 32, offset: 1728)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3372, file: !100, line: 612, baseType: !107, size: 32, offset: 1760)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3372, file: !100, line: 613, baseType: !234, size: 32, offset: 1792)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3372, file: !100, line: 614, baseType: !234, size: 32, offset: 1824)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3372, file: !100, line: 615, baseType: !396, size: 64, offset: 1856)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3372, file: !100, line: 616, baseType: !396, size: 64, offset: 1920)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3372, file: !100, line: 617, baseType: !396, size: 64, offset: 1984)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3372, file: !100, line: 618, baseType: !396, size: 64, offset: 2048)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3372, file: !100, line: 620, baseType: !3460, size: 64, offset: 2112)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !100, line: 536, size: 256, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3461, file: !100, line: 537, baseType: !208)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3461, file: !100, line: 538, baseType: !40, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3461, file: !100, line: 540, baseType: !183, size: 128, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3461, file: !100, line: 543, baseType: !3467, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !100, line: 534, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3372, file: !100, line: 621, baseType: !3470, size: 64, offset: 2176)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3211, !1343}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3372, file: !100, line: 622, baseType: !3474, size: 64, offset: 2240)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !100, line: 622, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !190, file: !93, line: 486, baseType: !3477, size: 64, offset: 4096)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !100, line: 642, size: 1792, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3486, !3487, !3488}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3478, file: !100, line: 643, baseType: !3239, size: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3478, file: !100, line: 644, baseType: !3242, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3478, file: !100, line: 645, baseType: !3483, size: 64, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3211, !465}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3478, file: !100, line: 646, baseType: !3242, size: 64, offset: 1600)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3478, file: !100, line: 647, baseType: !3233, size: 64, offset: 1664)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3478, file: !100, line: 648, baseType: !3233, size: 64, offset: 1728)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !190, file: !93, line: 493, baseType: !3490, size: 64, offset: 4160)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !114, line: 162, size: 1088, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3826, !3827, !3828, !3829, !3830, !3831, !3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3491, file: !114, line: 163, baseType: !183, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !114, line: 164, baseType: !196, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3491, file: !114, line: 165, baseType: !3496, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !114, line: 105, size: 640, elements: !3499)
!3499 = !{!3500, !3618, !3629, !3634, !3638, !3645, !3649, !3653, !3818, !3822}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3498, file: !114, line: 106, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!234, !3490, !3504, !113}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3506, line: 51, size: 1344, elements: !3507)
!3506 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3507 = !{!3508, !3509, !3511, !3512, !3602, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3505, file: !3506, line: 52, baseType: !196, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3505, file: !3506, line: 53, baseType: !3510, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3506, line: 28, baseType: !390)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3505, file: !3506, line: 54, baseType: !196, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3505, file: !3506, line: 55, baseType: !3513, size: 192, offset: 192)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3514, line: 17, size: 192, elements: !3515)
!3514 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3515 = !{!3516, !3518, !3601}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3513, file: !3514, line: 18, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3513, file: !3514, line: 19, baseType: !3519, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3514, line: 110, size: 1152, elements: !3522)
!3522 = !{!3523, !3527, !3531, !3537, !3543, !3547, !3551, !3556, !3560, !3561, !3565, !3569, !3573, !3584, !3585, !3586, !3587, !3597}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3521, file: !3514, line: 111, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!3517, !3517}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3521, file: !3514, line: 112, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3517}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3521, file: !3514, line: 113, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!465, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3521, file: !3514, line: 114, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!2026, !3535, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3521, file: !3514, line: 116, baseType: !3544, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!465, !3535, !196}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3521, file: !3514, line: 118, baseType: !3548, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!234, !3535, !196, !40, !178, !296}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3521, file: !3514, line: 123, baseType: !3552, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!234, !3535, !196, !3555, !296}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3521, file: !3514, line: 126, baseType: !3557, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!196, !3535}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3521, file: !3514, line: 127, baseType: !3557, size: 64, offset: 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3521, file: !3514, line: 128, baseType: !3562, size: 64, offset: 576)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!3517, !3535}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3521, file: !3514, line: 130, baseType: !3566, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!3517, !3535, !3517}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3521, file: !3514, line: 133, baseType: !3570, size: 64, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!3517, !3535, !196}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3521, file: !3514, line: 135, baseType: !3574, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!234, !3535, !196, !196, !40, !40, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3514, line: 43, size: 640, elements: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3578, file: !3514, line: 44, baseType: !3517, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3578, file: !3514, line: 45, baseType: !40, size: 32, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3578, file: !3514, line: 46, baseType: !3583, size: 512, offset: 128)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 512, elements: !1229)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3521, file: !3514, line: 140, baseType: !3566, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3521, file: !3514, line: 143, baseType: !3562, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3521, file: !3514, line: 145, baseType: !3524, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3521, file: !3514, line: 146, baseType: !3588, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!234, !3535, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3514, line: 29, size: 128, elements: !3593)
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3592, file: !3514, line: 30, baseType: !40, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3592, file: !3514, line: 31, baseType: !40, size: 32, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3592, file: !3514, line: 32, baseType: !3535, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3521, file: !3514, line: 148, baseType: !3598, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!234, !3535, !3211}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3513, file: !3514, line: 20, baseType: !3211, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3505, file: !3506, line: 57, baseType: !3603, size: 64, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3506, line: 31, size: 704, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3604, file: !3506, line: 32, baseType: !250, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3604, file: !3506, line: 33, baseType: !234, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3604, file: !3506, line: 34, baseType: !178, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3604, file: !3506, line: 35, baseType: !3603, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3604, file: !3506, line: 43, baseType: !318, size: 448, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3505, file: !3506, line: 58, baseType: !3603, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3505, file: !3506, line: 59, baseType: !3504, size: 64, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3505, file: !3506, line: 60, baseType: !3504, size: 64, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3505, file: !3506, line: 61, baseType: !3504, size: 64, offset: 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3505, file: !3506, line: 63, baseType: !193, size: 512, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3505, file: !3506, line: 65, baseType: !299, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3505, file: !3506, line: 66, baseType: !178, size: 64, offset: 1280)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3498, file: !114, line: 108, baseType: !3619, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!234, !3490, !3622, !113}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !114, line: 63, size: 640, elements: !3624)
!3624 = !{!3625, !3626, !3627}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3623, file: !114, line: 64, baseType: !3517, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3623, file: !114, line: 65, baseType: !234, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3623, file: !114, line: 66, baseType: !3628, size: 512, offset: 96)
!3628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !1634)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3498, file: !114, line: 110, baseType: !3630, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!234, !3490, !40, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !184, line: 164, baseType: !299)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3498, file: !114, line: 111, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3490, !40}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3498, file: !114, line: 112, baseType: !3639, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!234, !3490, !3504, !3642, !40, !3644, !2521}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3498, file: !114, line: 117, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!234, !3490, !40, !40, !178}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3498, file: !114, line: 119, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3490, !40, !40}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3498, file: !114, line: 121, baseType: !3654, size: 64, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!234, !3490, !3657, !465}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !135, line: 175, size: 448, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3736, !3815, !3816, !3817}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3658, file: !135, line: 176, baseType: !390, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3658, file: !135, line: 177, baseType: !40, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3658, file: !135, line: 178, baseType: !299, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3658, file: !135, line: 179, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !135, line: 145, size: 256, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3733}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3665, file: !135, line: 146, baseType: !40, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3665, file: !135, line: 150, baseType: !178, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3665, file: !135, line: 151, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3672, line: 85, size: 768, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3684, !3690, !3694, !3695}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3671, file: !3672, line: 87, baseType: !183, size: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3671, file: !3672, line: 88, baseType: !40, size: 32, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3671, file: !3672, line: 89, baseType: !40, size: 32, offset: 160)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3671, file: !3672, line: 90, baseType: !3211, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3671, file: !3672, line: 91, baseType: !3679, size: 96, offset: 256)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3672, line: 8, size: 96, elements: !3680)
!3680 = !{!3681, !3682, !3683}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3679, file: !3672, line: 9, baseType: !390, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3679, file: !3672, line: 10, baseType: !390, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3679, file: !3672, line: 11, baseType: !390, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3671, file: !3672, line: 92, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !128, line: 308, size: 128, elements: !3687)
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3686, file: !128, line: 309, baseType: !1266, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3686, file: !128, line: 310, baseType: !40, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3671, file: !3672, line: 97, baseType: !3691, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3670, !178}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3671, file: !3672, line: 98, baseType: !178, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !3672, line: 100, baseType: !3696, size: 192, offset: 576)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3671, file: !3672, line: 100, size: 192, elements: !3697)
!3697 = !{!3698, !3718, !3725, !3729}
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !3672, line: 102, baseType: !3699, size: 192)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3696, file: !3672, line: 102, size: 192, elements: !3700)
!3700 = !{!3701, !3702, !3713}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3699, file: !3672, line: 103, baseType: !390, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3699, file: !3672, line: 113, baseType: !3703, size: 64, offset: 32)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3699, file: !3672, line: 104, size: 64, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3703, file: !3672, line: 105, baseType: !1251, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3703, file: !3672, line: 106, baseType: !1251, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3703, file: !3672, line: 107, baseType: !1251, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3703, file: !3672, line: 108, baseType: !1251, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3703, file: !3672, line: 109, baseType: !1251, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3703, file: !3672, line: 110, baseType: !1251, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3703, file: !3672, line: 111, baseType: !838, size: 16, offset: 16)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3703, file: !3672, line: 112, baseType: !40, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !3672, line: 114, baseType: !3714, size: 64, offset: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !3672, line: 114, size: 64, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3714, file: !3672, line: 115, baseType: !1251, size: 8)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3714, file: !3672, line: 116, baseType: !178, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3696, file: !3672, line: 127, baseType: !3719, size: 128)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3672, line: 37, size: 128, elements: !3720)
!3720 = !{!3721, !3724}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3719, file: !3672, line: 38, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3672, line: 19, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3719, file: !3672, line: 39, baseType: !838, size: 16, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3696, file: !3672, line: 128, baseType: !3726, size: 16)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3672, line: 46, size: 16, elements: !3727)
!3727 = !{!3728}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3726, file: !3672, line: 47, baseType: !838, size: 16)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3696, file: !3672, line: 129, baseType: !3730, size: 16)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3672, line: 54, size: 16, elements: !3731)
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3730, file: !3672, line: 55, baseType: !838, size: 16)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3665, file: !135, line: 152, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1265, line: 756, baseType: !3735)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 64, elements: !1270)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3658, file: !135, line: 180, baseType: !3737, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !135, line: 503, size: 2304, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3746, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3763, !3767, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3784, !3785, !3786, !3791, !3792, !3796, !3800, !3804, !3808, !3812, !3813, !3814}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3738, file: !135, line: 504, baseType: !3211, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3738, file: !135, line: 505, baseType: !196, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3738, file: !135, line: 506, baseType: !3743, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!40, !3657}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3738, file: !135, line: 507, baseType: !3747, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3657}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3738, file: !135, line: 508, baseType: !3747, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3738, file: !135, line: 509, baseType: !3747, size: 64, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3738, file: !135, line: 511, baseType: !3747, size: 64, offset: 384)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3738, file: !135, line: 512, baseType: !3747, size: 64, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3738, file: !135, line: 513, baseType: !3747, size: 64, offset: 512)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3738, file: !135, line: 514, baseType: !3747, size: 64, offset: 576)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3738, file: !135, line: 515, baseType: !3747, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3738, file: !135, line: 517, baseType: !3758, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!234, !3657, !3761, !465}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3738, file: !135, line: 518, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!234, !3657}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3738, file: !135, line: 519, baseType: !3768, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!234, !3657, !40}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3738, file: !135, line: 520, baseType: !3768, size: 64, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3738, file: !135, line: 522, baseType: !3747, size: 64, offset: 960)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3738, file: !135, line: 523, baseType: !3747, size: 64, offset: 1024)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3738, file: !135, line: 525, baseType: !3747, size: 64, offset: 1088)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3738, file: !135, line: 526, baseType: !3747, size: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3738, file: !135, line: 528, baseType: !3747, size: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3738, file: !135, line: 529, baseType: !3747, size: 64, offset: 1280)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3738, file: !135, line: 530, baseType: !3747, size: 64, offset: 1344)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3738, file: !135, line: 532, baseType: !3747, size: 64, offset: 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3738, file: !135, line: 534, baseType: !3781, size: 64, offset: 1472)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3657, !689}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3738, file: !135, line: 535, baseType: !3764, size: 64, offset: 1536)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3738, file: !135, line: 536, baseType: !3747, size: 64, offset: 1600)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3738, file: !135, line: 538, baseType: !3787, size: 64, offset: 1664)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3657, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3738, file: !135, line: 539, baseType: !3787, size: 64, offset: 1728)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3738, file: !135, line: 541, baseType: !3793, size: 64, offset: 1792)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!234, !3657, !127, !870}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3738, file: !135, line: 542, baseType: !3797, size: 64, offset: 1856)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!234, !3657, !127, !465}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3738, file: !135, line: 544, baseType: !3801, size: 64, offset: 1920)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!234, !3657, !178}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3738, file: !135, line: 546, baseType: !3805, size: 64, offset: 1984)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3657, !40}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3738, file: !135, line: 547, baseType: !3809, size: 64, offset: 2048)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !3657, !3761}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3738, file: !135, line: 549, baseType: !3764, size: 64, offset: 2112)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3738, file: !135, line: 550, baseType: !3747, size: 64, offset: 2176)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3738, file: !135, line: 552, baseType: !299, size: 64, offset: 2240)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3658, file: !135, line: 181, baseType: !3490, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3658, file: !135, line: 183, baseType: !3657, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3658, file: !135, line: 185, baseType: !178, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3498, file: !114, line: 122, baseType: !3819, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3490, !3657}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3498, file: !114, line: 123, baseType: !3823, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!234, !3490, !3622, !3644, !2521}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3491, file: !114, line: 166, baseType: !178, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3491, file: !114, line: 167, baseType: !40, size: 32, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3491, file: !114, line: 168, baseType: !40, size: 32, offset: 352)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3491, file: !114, line: 171, baseType: !3517, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3491, file: !114, line: 172, baseType: !113, size: 32, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3491, file: !114, line: 173, baseType: !3832, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !135, line: 1101, size: 192, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3833, file: !135, line: 1102, baseType: !40, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3833, file: !135, line: 1103, baseType: !40, size: 32, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3833, file: !135, line: 1104, baseType: !40, size: 32, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3833, file: !135, line: 1105, baseType: !40, size: 32, offset: 96)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3833, file: !135, line: 1106, baseType: !134, size: 32, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3833, file: !135, line: 1107, baseType: !3841, offset: 192)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3842, elements: !2230)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !135, line: 1051, size: 960, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3851, !3855, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3843, file: !135, line: 1052, baseType: !759)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3843, file: !135, line: 1053, baseType: !178, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3843, file: !135, line: 1054, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!390, !178}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3843, file: !135, line: 1055, baseType: !3852, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !390, !178}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3843, file: !135, line: 1056, baseType: !3856, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3842}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3843, file: !135, line: 1057, baseType: !3856, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3843, file: !135, line: 1058, baseType: !40, size: 32, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3843, file: !135, line: 1059, baseType: !40, size: 32, offset: 352)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3843, file: !135, line: 1060, baseType: !390, size: 32, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3843, file: !135, line: 1061, baseType: !390, size: 32, offset: 416)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3843, file: !135, line: 1062, baseType: !390, size: 32, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3843, file: !135, line: 1063, baseType: !390, size: 32, offset: 480)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3843, file: !135, line: 1064, baseType: !390, size: 32, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3843, file: !135, line: 1065, baseType: !40, size: 32, offset: 544)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3843, file: !135, line: 1066, baseType: !178, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3843, file: !135, line: 1067, baseType: !299, size: 64, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3843, file: !135, line: 1068, baseType: !299, size: 64, offset: 704)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3843, file: !135, line: 1069, baseType: !3490, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3843, file: !135, line: 1070, baseType: !183, size: 128, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3843, file: !135, line: 1071, baseType: !3874, offset: 960)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3875, elements: !2230)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !135, line: 1009, size: 2944, elements: !3876)
!3876 = !{!3877, !3878, !3888, !3954, !3955, !3956}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3875, file: !135, line: 1010, baseType: !3738, size: 2304)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3875, file: !135, line: 1011, baseType: !3879, size: 448, offset: 2304)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !135, line: 986, size: 448, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3879, file: !135, line: 987, baseType: !299, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3879, file: !135, line: 988, baseType: !299, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3879, file: !135, line: 989, baseType: !299, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3879, file: !135, line: 990, baseType: !299, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3879, file: !135, line: 991, baseType: !299, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3879, file: !135, line: 992, baseType: !299, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3879, file: !135, line: 993, baseType: !299, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3875, file: !135, line: 1012, baseType: !3889, size: 64, offset: 2752)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3890, line: 12, baseType: !3891)
!3890 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !3896, line: 55, size: 2880, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !3895, file: !3896, line: 56, baseType: !3665, size: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !3895, file: !3896, line: 57, baseType: !3658, size: 448, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !3895, file: !3896, line: 58, baseType: !2521, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !3895, file: !3896, line: 59, baseType: !3889, size: 64, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3895, file: !3896, line: 60, baseType: !3903, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !128, line: 110, size: 768, elements: !3905)
!3905 = !{!3906, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3904, file: !128, line: 111, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !128, line: 92, baseType: !3908)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3911, !234, !178}
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !143, line: 17, baseType: !142)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !3904, file: !128, line: 112, baseType: !178, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !3904, file: !128, line: 113, baseType: !178, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3904, file: !128, line: 114, baseType: !3903, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !3904, file: !128, line: 115, baseType: !3907, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3904, file: !128, line: 116, baseType: !1115, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3904, file: !128, line: 117, baseType: !3903, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3904, file: !128, line: 118, baseType: !40, size: 32, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3904, file: !128, line: 119, baseType: !40, size: 32, offset: 480)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !3904, file: !128, line: 120, baseType: !299, size: 64, offset: 512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !3904, file: !128, line: 121, baseType: !299, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3904, file: !128, line: 122, baseType: !196, size: 64, offset: 640)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3904, file: !128, line: 123, baseType: !3924, size: 64, offset: 704)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !128, line: 123, flags: DIFlagFwdDecl)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !3895, file: !3896, line: 61, baseType: !40, size: 32, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !3895, file: !3896, line: 62, baseType: !40, size: 32, offset: 928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3895, file: !3896, line: 63, baseType: !40, size: 32, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !3895, file: !3896, line: 64, baseType: !40, size: 32, offset: 992)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !3895, file: !3896, line: 65, baseType: !40, size: 32, offset: 1024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3895, file: !3896, line: 66, baseType: !40, size: 32, offset: 1056)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !3895, file: !3896, line: 67, baseType: !299, size: 64, offset: 1088)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !3895, file: !3896, line: 68, baseType: !40, size: 32, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !3895, file: !3896, line: 69, baseType: !726, size: 32, offset: 1184)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !3895, file: !3896, line: 70, baseType: !234, size: 32, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !3896, line: 71, baseType: !759, offset: 1248)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !3895, file: !3896, line: 72, baseType: !3938, size: 64, offset: 1280)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !3895, file: !3896, line: 73, baseType: !3761, size: 64, offset: 1344)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !3895, file: !3896, line: 81, baseType: !299, size: 64, offset: 1408)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !3895, file: !3896, line: 82, baseType: !726, size: 32, offset: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !3895, file: !3896, line: 83, baseType: !1380, size: 128, offset: 1536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !3895, file: !3896, line: 85, baseType: !40, size: 32, offset: 1664)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !3895, file: !3896, line: 86, baseType: !40, size: 32, offset: 1696)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !3895, file: !3896, line: 87, baseType: !40, size: 32, offset: 1728)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !3895, file: !3896, line: 88, baseType: !40, size: 32, offset: 1760)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3895, file: !3896, line: 91, baseType: !3924, size: 64, offset: 1792)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3895, file: !3896, line: 98, baseType: !340, size: 128, align: 64, offset: 1856)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3895, file: !3896, line: 99, baseType: !193, size: 512, offset: 1984)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !3895, file: !3896, line: 101, baseType: !1072, size: 192, offset: 2496)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !3895, file: !3896, line: 102, baseType: !234, size: 32, offset: 2688)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3895, file: !3896, line: 103, baseType: !608, size: 64, offset: 2752)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3895, file: !3896, line: 104, baseType: !196, size: 64, offset: 2816)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3875, file: !135, line: 1013, baseType: !390, size: 32, offset: 2816)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3875, file: !135, line: 1014, baseType: !390, size: 32, offset: 2848)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3875, file: !135, line: 1015, baseType: !1314, size: 64, offset: 2880)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3491, file: !114, line: 175, baseType: !3490, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3491, file: !114, line: 182, baseType: !3633, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3491, file: !114, line: 183, baseType: !40, size: 32, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3491, file: !114, line: 184, baseType: !40, size: 32, offset: 736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3491, file: !114, line: 185, baseType: !717, size: 128, offset: 768)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3491, file: !114, line: 186, baseType: !1072, size: 192, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3491, file: !114, line: 187, baseType: !3964, offset: 1088)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !2230)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !190, file: !93, line: 499, baseType: !183, size: 128, offset: 4224)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !190, file: !93, line: 502, baseType: !3967, size: 64, offset: 4352)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3969)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !93, line: 502, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !190, file: !93, line: 504, baseType: !3971, size: 64, offset: 4416)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !190, file: !93, line: 505, baseType: !396, size: 64, offset: 4480)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !190, file: !93, line: 510, baseType: !396, size: 64, offset: 4544)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !190, file: !93, line: 511, baseType: !3975, size: 64, offset: 4608)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !93, line: 511, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !190, file: !93, line: 513, baseType: !3979, size: 64, offset: 4672)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !93, line: 288, size: 128, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3980, file: !93, line: 293, baseType: !40, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3980, file: !93, line: 294, baseType: !299, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !190, file: !93, line: 515, baseType: !183, size: 128, offset: 4736)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !190, file: !93, line: 526, baseType: !3986, offset: 4864)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3987, line: 5, elements: !222)
!3987 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !190, file: !93, line: 528, baseType: !3504, size: 64, offset: 4864)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !190, file: !93, line: 529, baseType: !3517, size: 64, offset: 4928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !190, file: !93, line: 534, baseType: !488, size: 32, offset: 4992)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !190, file: !93, line: 535, baseType: !390, size: 32, offset: 5024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !190, file: !93, line: 537, baseType: !208, offset: 5056)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !190, file: !93, line: 538, baseType: !183, size: 128, offset: 5056)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !190, file: !93, line: 540, baseType: !3995, size: 64, offset: 5184)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3997, line: 54, size: 960, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005, !4009, !4013, !4014, !4015, !4016, !4020, !4024, !4025}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3996, file: !3997, line: 55, baseType: !196, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3996, file: !3997, line: 56, baseType: !608, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3996, file: !3997, line: 58, baseType: !303, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3996, file: !3997, line: 59, baseType: !303, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3996, file: !3997, line: 60, baseType: !201, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3996, file: !3997, line: 62, baseType: !3224, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3996, file: !3997, line: 63, baseType: !4006, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!250, !3211, !3231}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3996, file: !3997, line: 65, baseType: !4010, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3995}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3996, file: !3997, line: 66, baseType: !3233, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3996, file: !3997, line: 68, baseType: !3242, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3996, file: !3997, line: 70, baseType: !3027, size: 64, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3996, file: !3997, line: 71, baseType: !4017, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!2026, !3211}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3996, file: !3997, line: 73, baseType: !4021, size: 64, offset: 768)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3211, !3059, !3060}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3996, file: !3997, line: 75, baseType: !3237, size: 64, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3996, file: !3997, line: 77, baseType: !3354, size: 64, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !190, file: !93, line: 541, baseType: !303, size: 64, offset: 5248)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !190, file: !93, line: 543, baseType: !3233, size: 64, offset: 5312)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !190, file: !93, line: 544, baseType: !4029, size: 64, offset: 5376)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !93, line: 45, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !190, file: !93, line: 545, baseType: !4032, size: 64, offset: 5440)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !93, line: 47, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !190, file: !93, line: 547, baseType: !465, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !190, file: !93, line: 548, baseType: !465, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !190, file: !93, line: 549, baseType: !465, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !190, file: !93, line: 550, baseType: !465, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !180, file: !3, line: 60, baseType: !534, size: 32, offset: 5696)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !3, line: 61, baseType: !534, size: 32, offset: 5728)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!4042 = !{!4043, !0, !4045, !4047, !4049, !4052, !4054, !4057, !4071}
!4043 = !DIGlobalVariableExpression(var: !4044, expr: !DIExpression())
!4044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xen_pcpu_init236", scope: !2, file: !3, line: 418, type: !178, isLocal: true, isDefinition: true)
!4045 = !DIGlobalVariableExpression(var: !4046, expr: !DIExpression())
!4046 = distinct !DIGlobalVariable(name: "xen_pcpu_lock", scope: !2, file: !3, line: 69, type: !1072, isLocal: true, isDefinition: true)
!4047 = !DIGlobalVariableExpression(var: !4048, expr: !DIExpression())
!4048 = distinct !DIGlobalVariable(name: "xen_pcpu_subsys", scope: !2, file: !3, line: 64, type: !3269, isLocal: true, isDefinition: true)
!4049 = !DIGlobalVariableExpression(var: !4050, expr: !DIExpression())
!4050 = distinct !DIGlobalVariable(name: "pcpu_dev_groups", scope: !2, file: !3, line: 157, type: !4051, isLocal: true, isDefinition: true)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !1468)
!4052 = !DIGlobalVariableExpression(var: !4053, expr: !DIExpression())
!4053 = distinct !DIGlobalVariable(name: "pcpu_dev_group", scope: !2, file: !3, line: 152, type: !305, isLocal: true, isDefinition: true)
!4054 = !DIGlobalVariableExpression(var: !4055, expr: !DIExpression())
!4055 = distinct !DIGlobalVariable(name: "pcpu_dev_attrs", scope: !2, file: !3, line: 135, type: !4056, isLocal: true, isDefinition: true)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !1468)
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "dev_attr_online", scope: !2, file: !3, line: 133, type: !4059, isLocal: true, isDefinition: true)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !93, line: 99, size: 256, elements: !4060)
!4060 = !{!4061, !4062, !4067}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4059, file: !93, line: 100, baseType: !286, size: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4059, file: !93, line: 101, baseType: !4063, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!281, !3211, !4066, !250}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4059, file: !93, line: 103, baseType: !4068, size: 64, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!281, !3211, !4066, !196, !296}
!4071 = !DIGlobalVariableExpression(var: !4072, expr: !DIExpression())
!4072 = distinct !DIGlobalVariable(name: "xen_pcpus", scope: !2, file: !3, line: 71, type: !183, isLocal: true, isDefinition: true)
!4073 = !{!"rsp"}
!4074 = !{i32 7, !"Dwarf Version", i32 4}
!4075 = !{i32 2, !"Debug Info Version", i32 3}
!4076 = !{i32 1, !"wchar_size", i32 2}
!4077 = !{i32 1, !"Code Model", i32 2}
!4078 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4079 = distinct !DISubprogram(name: "xen_pcpu_hotplug_sync", scope: !3, file: !3, line: 349, type: !1778, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4080 = !DILocation(line: 351, column: 2, scope: !4079)
!4081 = !DILocation(line: 352, column: 1, scope: !4079)
!4082 = distinct !DISubprogram(name: "schedule_work", scope: !6, file: !6, line: 566, type: !4083, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!465, !1866}
!4085 = !DILocalVariable(name: "work", arg: 1, scope: !4082, file: !6, line: 566, type: !1866)
!4086 = !DILocation(line: 566, column: 54, scope: !4082)
!4087 = !DILocation(line: 568, column: 20, scope: !4082)
!4088 = !DILocation(line: 568, column: 31, scope: !4082)
!4089 = !DILocation(line: 568, column: 9, scope: !4082)
!4090 = !DILocation(line: 568, column: 2, scope: !4082)
!4091 = distinct !DISubprogram(name: "xen_pcpu_id", scope: !3, file: !3, line: 359, type: !4092, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!234, !534}
!4094 = !DILocalVariable(name: "acpi_id", arg: 1, scope: !4091, file: !3, line: 359, type: !534)
!4095 = !DILocation(line: 359, column: 26, scope: !4091)
!4096 = !DILocalVariable(name: "cpu_id", scope: !4091, file: !3, line: 361, type: !234)
!4097 = !DILocation(line: 361, column: 6, scope: !4091)
!4098 = !DILocalVariable(name: "max_id", scope: !4091, file: !3, line: 361, type: !234)
!4099 = !DILocation(line: 361, column: 18, scope: !4091)
!4100 = !DILocalVariable(name: "op", scope: !4091, file: !3, line: 362, type: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_platform_op", file: !4102, line: 503, size: 1088, elements: !4103)
!4102 = !DIFile(filename: "./include/xen/interface/platform.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !{!4104, !4105, !4106}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4101, file: !4102, line: 504, baseType: !534, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "interface_version", scope: !4101, file: !4102, line: 505, baseType: !534, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4101, file: !4102, line: 527, baseType: !4107, size: 1024, offset: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4101, file: !4102, line: 506, size: 1024, elements: !4108)
!4108 = !{!4109, !4116, !4123, !4133, !4138, !4145, !4151, !4155, !4229, !4283, !4290, !4296, !4305, !4390, !4398, !4402, !4408, !4415, !4420, !4429}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "settime32", scope: !4107, file: !4102, line: 507, baseType: !4110, size: 128)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_settime32", file: !4102, line: 39, size: 128, elements: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "secs", scope: !4110, file: !4102, line: 41, baseType: !534, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "nsecs", scope: !4110, file: !4102, line: 42, baseType: !534, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !4110, file: !4102, line: 43, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !184, line: 107, baseType: !396)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !4107, file: !4102, line: 508, baseType: !4117, size: 192)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_settime64", file: !4102, line: 47, size: 192, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "secs", scope: !4117, file: !4102, line: 49, baseType: !4115, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "nsecs", scope: !4117, file: !4102, line: 50, baseType: !534, size: 32, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mbz", scope: !4117, file: !4102, line: 51, baseType: !534, size: 32, offset: 96)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !4117, file: !4102, line: 52, baseType: !4115, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "add_memtype", scope: !4107, file: !4102, line: 509, baseType: !4124, size: 256)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_add_memtype", file: !4102, line: 64, size: 256, elements: !4125)
!4125 = !{!4126, !4129, !4130, !4131, !4132}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mfn", scope: !4124, file: !4102, line: 66, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_pfn_t", file: !4128, line: 79, baseType: !299)
!4128 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_mfns", scope: !4124, file: !4102, line: 67, baseType: !4115, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4124, file: !4102, line: 68, baseType: !534, size: 32, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4124, file: !4102, line: 70, baseType: !534, size: 32, offset: 160)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4124, file: !4102, line: 71, baseType: !534, size: 32, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "del_memtype", scope: !4107, file: !4102, line: 510, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_del_memtype", file: !4102, line: 83, size: 64, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4134, file: !4102, line: 85, baseType: !534, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4134, file: !4102, line: 86, baseType: !534, size: 32, offset: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "read_memtype", scope: !4107, file: !4102, line: 511, baseType: !4139, size: 256)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_read_memtype", file: !4102, line: 92, size: 256, elements: !4140)
!4140 = !{!4141, !4142, !4143, !4144}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4139, file: !4102, line: 94, baseType: !534, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mfn", scope: !4139, file: !4102, line: 96, baseType: !4127, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_mfns", scope: !4139, file: !4102, line: 97, baseType: !4115, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4139, file: !4102, line: 98, baseType: !534, size: 32, offset: 192)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4107, file: !4102, line: 512, baseType: !4146, size: 128)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_microcode_update", file: !4102, line: 103, size: 128, elements: !4147)
!4147 = !{!4148, !4150}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4146, file: !4102, line: 105, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_void", file: !4128, line: 91, baseType: !178)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4146, file: !4102, line: 106, baseType: !534, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "platform_quirk", scope: !4107, file: !4102, line: 513, baseType: !4152, size: 32)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_platform_quirk", file: !4102, line: 114, size: 32, elements: !4153)
!4153 = !{!4154}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_id", scope: !4152, file: !4102, line: 116, baseType: !534, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "efi_runtime_call", scope: !4107, file: !4102, line: 514, baseType: !4156, size: 448)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_runtime_call", file: !4102, line: 133, size: 448, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4162}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4156, file: !4102, line: 134, baseType: !534, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4156, file: !4102, line: 140, baseType: !534, size: 32, offset: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4156, file: !4102, line: 141, baseType: !4161, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_ulong_t", file: !4128, line: 81, baseType: !299)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4156, file: !4102, line: 210, baseType: !4163, size: 320, offset: 128)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4156, file: !4102, line: 142, size: 320, elements: !4164)
!4164 = !{!4165, !4185, !4186, !4187, !4188, !4202, !4203, !4209, !4216, !4223}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !4163, file: !4102, line: 158, baseType: !4166, size: 192)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 144, size: 192, elements: !4167)
!4167 = !{!4168, !4183, !4184}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4166, file: !4102, line: 155, baseType: !4169, size: 128)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_time", file: !4102, line: 145, size: 128, elements: !4170)
!4170 = !{!4171, !4173, !4175, !4176, !4177, !4178, !4179, !4180, !4182}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4169, file: !4102, line: 146, baseType: !4172, size: 16)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !184, line: 103, baseType: !838)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !4169, file: !4102, line: 147, baseType: !4174, size: 8, offset: 16)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !184, line: 102, baseType: !1251)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !4169, file: !4102, line: 148, baseType: !4174, size: 8, offset: 24)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !4169, file: !4102, line: 149, baseType: !4174, size: 8, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4169, file: !4102, line: 150, baseType: !4174, size: 8, offset: 40)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4169, file: !4102, line: 151, baseType: !4174, size: 8, offset: 48)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4169, file: !4102, line: 152, baseType: !534, size: 32, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !4169, file: !4102, line: 153, baseType: !4181, size: 16, offset: 96)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !184, line: 96, baseType: !1102)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !4169, file: !4102, line: 154, baseType: !4174, size: 8, offset: 112)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4166, file: !4102, line: 156, baseType: !534, size: 32, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !4166, file: !4102, line: 157, baseType: !534, size: 32, offset: 160)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !4163, file: !4102, line: 160, baseType: !4169, size: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !4163, file: !4102, line: 164, baseType: !4169, size: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !4163, file: !4102, line: 168, baseType: !4169, size: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !4163, file: !4102, line: 183, baseType: !4189, size: 320)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 173, size: 320, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4189, file: !4102, line: 174, baseType: !4149, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4189, file: !4102, line: 175, baseType: !4161, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4189, file: !4102, line: 176, baseType: !4149, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_guid", scope: !4189, file: !4102, line: 182, baseType: !4195, size: 128, offset: 192)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_guid", file: !4102, line: 177, size: 128, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "data1", scope: !4195, file: !4102, line: 178, baseType: !534, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "data2", scope: !4195, file: !4102, line: 179, baseType: !4172, size: 16, offset: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "data3", scope: !4195, file: !4102, line: 180, baseType: !4172, size: 16, offset: 48)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "data4", scope: !4195, file: !4102, line: 181, baseType: !4201, size: 64, offset: 64)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4174, size: 64, elements: !1229)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !4163, file: !4102, line: 183, baseType: !4189, size: 320)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable_name", scope: !4163, file: !4102, line: 189, baseType: !4204, size: 256)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 185, size: 256, elements: !4205)
!4205 = !{!4206, !4207, !4208}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4204, file: !4102, line: 186, baseType: !4161, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4204, file: !4102, line: 187, baseType: !4149, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_guid", scope: !4204, file: !4102, line: 188, baseType: !4195, size: 128, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !4163, file: !4102, line: 196, baseType: !4210, size: 256)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 191, size: 256, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4215}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4210, file: !4102, line: 192, baseType: !534, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "max_store_size", scope: !4210, file: !4102, line: 193, baseType: !4115, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "remain_store_size", scope: !4210, file: !4102, line: 194, baseType: !4115, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !4210, file: !4102, line: 195, baseType: !4115, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_capabilities", scope: !4163, file: !4102, line: 203, baseType: !4217, size: 256)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 198, size: 256, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_header_array", scope: !4217, file: !4102, line: 199, baseType: !4149, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_count", scope: !4217, file: !4102, line: 200, baseType: !4161, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "max_capsule_size", scope: !4217, file: !4102, line: 201, baseType: !4115, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "reset_type", scope: !4217, file: !4102, line: 202, baseType: !534, size: 32, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !4163, file: !4102, line: 209, baseType: !4224, size: 192)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !4102, line: 205, size: 192, elements: !4225)
!4225 = !{!4226, !4227, !4228}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_header_array", scope: !4224, file: !4102, line: 206, baseType: !4149, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_count", scope: !4224, file: !4102, line: 207, baseType: !4161, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !4224, file: !4102, line: 208, baseType: !4115, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_info", scope: !4107, file: !4102, line: 515, baseType: !4230, size: 320)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_firmware_info", file: !4102, line: 227, size: 320, elements: !4231)
!4231 = !{!4232, !4233, !4234}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4230, file: !4102, line: 229, baseType: !534, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4230, file: !4102, line: 230, baseType: !534, size: 32, offset: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4230, file: !4102, line: 279, baseType: !4235, size: 256, offset: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4102, line: 232, size: 256, elements: !4236)
!4236 = !{!4237, !4247, !4252, !4260, !4282}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "disk_info", scope: !4235, file: !4102, line: 245, baseType: !4238, size: 128)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4235, file: !4102, line: 233, size: 128, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243, !4244, !4245, !4246}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4238, file: !4102, line: 235, baseType: !4174, size: 8)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4238, file: !4102, line: 236, baseType: !4174, size: 8, offset: 8)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !4238, file: !4102, line: 237, baseType: !4172, size: 16, offset: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !4238, file: !4102, line: 239, baseType: !4172, size: 16, offset: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !4238, file: !4102, line: 240, baseType: !4174, size: 8, offset: 48)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !4238, file: !4102, line: 241, baseType: !4174, size: 8, offset: 56)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "edd_params", scope: !4238, file: !4102, line: 244, baseType: !4149, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "disk_mbr_signature", scope: !4235, file: !4102, line: 249, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4235, file: !4102, line: 246, size: 64, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4248, file: !4102, line: 247, baseType: !4174, size: 8)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "mbr_signature", scope: !4248, file: !4102, line: 248, baseType: !534, size: 32, offset: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "vbeddc_info", scope: !4235, file: !4102, line: 256, baseType: !4253, size: 128)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4235, file: !4102, line: 250, size: 128, elements: !4254)
!4254 = !{!4255, !4256, !4257}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4253, file: !4102, line: 252, baseType: !4174, size: 8)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "edid_transfer_time", scope: !4253, file: !4102, line: 253, baseType: !4174, size: 8, offset: 8)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !4253, file: !4102, line: 255, baseType: !4258, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uchar", file: !4128, line: 87, baseType: !4259)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !4235, file: !4102, line: 276, baseType: !4261, size: 256)
!4261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "xenpf_efi_info", file: !4102, line: 258, size: 256, elements: !4262)
!4262 = !{!4263, !4264, !4269, !4275}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4261, file: !4102, line: 259, baseType: !534, size: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !4261, file: !4102, line: 263, baseType: !4265, size: 128)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4261, file: !4102, line: 260, size: 128, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4265, file: !4102, line: 261, baseType: !4115, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !4265, file: !4102, line: 262, baseType: !534, size: 32, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4261, file: !4102, line: 269, baseType: !4270, size: 128)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4261, file: !4102, line: 264, size: 128, elements: !4271)
!4271 = !{!4272, !4273, !4274}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4270, file: !4102, line: 265, baseType: !534, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !4270, file: !4102, line: 266, baseType: !534, size: 32, offset: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4270, file: !4102, line: 267, baseType: !4149, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !4261, file: !4102, line: 275, baseType: !4276, size: 256)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4261, file: !4102, line: 270, size: 256, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4276, file: !4102, line: 271, baseType: !4115, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4276, file: !4102, line: 272, baseType: !4115, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4276, file: !4102, line: 273, baseType: !4115, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4276, file: !4102, line: 274, baseType: !534, size: 32, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_shift_flags", scope: !4235, file: !4102, line: 278, baseType: !4174, size: 8)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "enter_acpi_sleep", scope: !4107, file: !4102, line: 516, baseType: !4284, size: 96)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_enter_acpi_sleep", file: !4102, line: 284, size: 96, elements: !4285)
!4285 = !{!4286, !4287, !4288, !4289}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "val_a", scope: !4284, file: !4102, line: 286, baseType: !4172, size: 16)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "val_b", scope: !4284, file: !4102, line: 287, baseType: !4172, size: 16, offset: 16)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4284, file: !4102, line: 288, baseType: !534, size: 32, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4284, file: !4102, line: 290, baseType: !534, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "change_freq", scope: !4107, file: !4102, line: 517, baseType: !4291, size: 128)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_change_freq", file: !4102, line: 295, size: 128, elements: !4292)
!4292 = !{!4293, !4294, !4295}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4291, file: !4102, line: 297, baseType: !534, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4291, file: !4102, line: 298, baseType: !534, size: 32, offset: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4291, file: !4102, line: 299, baseType: !4115, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "getidletime", scope: !4107, file: !4102, line: 518, baseType: !4297, size: 256)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_getidletime", file: !4102, line: 312, size: 256, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4304}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "cpumap_bitmap", scope: !4297, file: !4102, line: 315, baseType: !4258, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cpumap_nr_cpus", scope: !4297, file: !4102, line: 318, baseType: !534, size: 32, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "idletime", scope: !4297, file: !4102, line: 320, baseType: !4302, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uint64_t", file: !4128, line: 92, baseType: !4303)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !4297, file: !4102, line: 323, baseType: !4115, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "set_pminfo", scope: !4107, file: !4102, line: 519, baseType: !4306, size: 896)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_set_processor_pminfo", file: !4102, line: 424, size: 896, elements: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4306, file: !4102, line: 426, baseType: !534, size: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4306, file: !4102, line: 427, baseType: !534, size: 32, offset: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4306, file: !4102, line: 428, baseType: !4311, size: 832, offset: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4306, file: !4102, line: 428, size: 832, elements: !4312)
!4312 = !{!4313, !4350, !4387}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4311, file: !4102, line: 429, baseType: !4314, size: 128)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_power", file: !4102, line: 378, size: 128, elements: !4315)
!4315 = !{!4316, !4317, !4325}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4314, file: !4102, line: 379, baseType: !534, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4314, file: !4102, line: 380, baseType: !4318, size: 32, offset: 32)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_flags", file: !4102, line: 370, size: 32, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !4318, file: !4102, line: 371, baseType: !534, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !4318, file: !4102, line: 372, baseType: !534, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !4318, file: !4102, line: 373, baseType: !534, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !4318, file: !4102, line: 374, baseType: !534, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !4318, file: !4102, line: 375, baseType: !534, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4314, file: !4102, line: 381, baseType: !4326, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_cx", file: !4102, line: 368, baseType: !4327)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_cx", file: !4102, line: 360, size: 384, elements: !4329)
!4329 = !{!4330, !4338, !4339, !4340, !4341, !4342}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4328, file: !4102, line: 361, baseType: !4331, size: 192)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_power_register", file: !4102, line: 345, size: 192, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4337}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !4331, file: !4102, line: 346, baseType: !534, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !4331, file: !4102, line: 347, baseType: !534, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !4331, file: !4102, line: 348, baseType: !534, size: 32, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !4331, file: !4102, line: 349, baseType: !534, size: 32, offset: 96)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4331, file: !4102, line: 350, baseType: !4115, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4328, file: !4102, line: 362, baseType: !4174, size: 8, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4328, file: !4102, line: 363, baseType: !534, size: 32, offset: 224)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4328, file: !4102, line: 364, baseType: !534, size: 32, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dpcnt", scope: !4328, file: !4102, line: 365, baseType: !534, size: 32, offset: 288)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !4328, file: !4102, line: 366, baseType: !4343, size: 64, offset: 320)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_csd", file: !4102, line: 358, baseType: !4344)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_csd", file: !4102, line: 353, size: 96, elements: !4346)
!4346 = !{!4347, !4348, !4349}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4345, file: !4102, line: 354, baseType: !534, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !4345, file: !4102, line: 355, baseType: !534, size: 32, offset: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4345, file: !4102, line: 356, baseType: !534, size: 32, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "perf", scope: !4311, file: !4102, line: 430, baseType: !4351, size: 832)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_performance", file: !4102, line: 412, size: 832, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4365, !4366, !4367, !4378, !4386}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4351, file: !4102, line: 413, baseType: !534, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !4351, file: !4102, line: 414, baseType: !534, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !4351, file: !4102, line: 415, baseType: !4356, size: 128, offset: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pct_register", file: !4102, line: 384, size: 128, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4356, file: !4102, line: 385, baseType: !4174, size: 8)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4356, file: !4102, line: 386, baseType: !4172, size: 16, offset: 16)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !4356, file: !4102, line: 387, baseType: !4174, size: 8, offset: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !4356, file: !4102, line: 388, baseType: !4174, size: 8, offset: 40)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !4356, file: !4102, line: 389, baseType: !4174, size: 8, offset: 48)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4356, file: !4102, line: 390, baseType: !4174, size: 8, offset: 56)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4356, file: !4102, line: 391, baseType: !4115, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !4351, file: !4102, line: 416, baseType: !4356, size: 128, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4351, file: !4102, line: 417, baseType: !534, size: 32, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4351, file: !4102, line: 418, baseType: !4368, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_px", file: !4102, line: 402, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_px", file: !4102, line: 394, size: 384, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !4370, file: !4102, line: 395, baseType: !4115, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4370, file: !4102, line: 396, baseType: !4115, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !4370, file: !4102, line: 397, baseType: !4115, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !4370, file: !4102, line: 398, baseType: !4115, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !4370, file: !4102, line: 399, baseType: !4115, size: 64, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4370, file: !4102, line: 400, baseType: !4115, size: 64, offset: 320)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !4351, file: !4102, line: 419, baseType: !4379, size: 320, offset: 448)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_psd_package", file: !4102, line: 404, size: 320, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !4379, file: !4102, line: 405, baseType: !4115, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4379, file: !4102, line: 406, baseType: !4115, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4379, file: !4102, line: 407, baseType: !4115, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !4379, file: !4102, line: 408, baseType: !4115, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !4379, file: !4102, line: 409, baseType: !4115, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !4351, file: !4102, line: 420, baseType: !534, size: 32, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pdc", scope: !4311, file: !4102, line: 431, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uint32_t", file: !4128, line: 93, baseType: !4389)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_info", scope: !4107, file: !4102, line: 520, baseType: !4391, size: 160)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_pcpuinfo", file: !4102, line: 437, size: 160, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "xen_cpuid", scope: !4391, file: !4102, line: 439, baseType: !534, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "max_present", scope: !4391, file: !4102, line: 442, baseType: !534, size: 32, offset: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4391, file: !4102, line: 446, baseType: !534, size: 32, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !4391, file: !4102, line: 447, baseType: !534, size: 32, offset: 96)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !4391, file: !4102, line: 448, baseType: !534, size: 32, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_ol", scope: !4107, file: !4102, line: 521, baseType: !4399, size: 32)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_cpu_ol", file: !4102, line: 454, size: 32, elements: !4400)
!4400 = !{!4401}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !4399, file: !4102, line: 455, baseType: !534, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_add", scope: !4107, file: !4102, line: 522, baseType: !4403, size: 96)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_cpu_hotadd", file: !4102, line: 460, size: 96, elements: !4404)
!4404 = !{!4405, !4406, !4407}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !4403, file: !4102, line: 461, baseType: !534, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !4403, file: !4102, line: 462, baseType: !534, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "pxm", scope: !4403, file: !4102, line: 463, baseType: !534, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mem_add", scope: !4107, file: !4102, line: 523, baseType: !4409, size: 192)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_mem_hotadd", file: !4102, line: 467, size: 192, elements: !4410)
!4410 = !{!4411, !4412, !4413, !4414}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "spfn", scope: !4409, file: !4102, line: 468, baseType: !4115, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "epfn", scope: !4409, file: !4102, line: 469, baseType: !4115, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pxm", scope: !4409, file: !4102, line: 470, baseType: !534, size: 32, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4409, file: !4102, line: 471, baseType: !534, size: 32, offset: 160)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "core_parking", scope: !4107, file: !4102, line: 524, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_core_parking", file: !4102, line: 475, size: 64, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4416, file: !4102, line: 479, baseType: !534, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "idle_nums", scope: !4416, file: !4102, line: 482, baseType: !534, size: 32, offset: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "symdata", scope: !4107, file: !4102, line: 525, baseType: !4421, size: 256)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_symdata", file: !4102, line: 487, size: 256, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4427, !4428}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !4421, file: !4102, line: 489, baseType: !534, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "symnum", scope: !4421, file: !4102, line: 492, baseType: !534, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4421, file: !4102, line: 497, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_char", file: !4128, line: 89, baseType: !250)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4421, file: !4102, line: 498, baseType: !4115, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4421, file: !4102, line: 499, baseType: !198, size: 8, offset: 192)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4107, file: !4102, line: 526, baseType: !4430, size: 1024)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4174, size: 1024, elements: !3301)
!4431 = !DILocation(line: 362, column: 25, scope: !4091)
!4432 = !DILocation(line: 364, column: 5, scope: !4091)
!4433 = !DILocation(line: 364, column: 9, scope: !4091)
!4434 = !DILocation(line: 365, column: 2, scope: !4091)
!4435 = !DILocation(line: 365, column: 9, scope: !4091)
!4436 = !DILocation(line: 365, column: 19, scope: !4091)
!4437 = !DILocation(line: 365, column: 16, scope: !4091)
!4438 = !DILocation(line: 366, column: 30, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 365, column: 27)
!4440 = !DILocation(line: 366, column: 6, scope: !4439)
!4441 = !DILocation(line: 366, column: 8, scope: !4439)
!4442 = !DILocation(line: 366, column: 18, scope: !4439)
!4443 = !DILocation(line: 366, column: 28, scope: !4439)
!4444 = !DILocation(line: 367, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 367, column: 7)
!4446 = !DILocation(line: 367, column: 7, scope: !4439)
!4447 = !DILocation(line: 368, column: 10, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 367, column: 36)
!4449 = !DILocation(line: 369, column: 4, scope: !4448)
!4450 = distinct !{!4450, !4434, !4451}
!4451 = !DILocation(line: 377, column: 2, scope: !4091)
!4452 = !DILocation(line: 372, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 372, column: 7)
!4454 = !DILocation(line: 372, column: 21, scope: !4453)
!4455 = !DILocation(line: 372, column: 23, scope: !4453)
!4456 = !DILocation(line: 372, column: 33, scope: !4453)
!4457 = !DILocation(line: 372, column: 15, scope: !4453)
!4458 = !DILocation(line: 372, column: 7, scope: !4439)
!4459 = !DILocation(line: 373, column: 11, scope: !4453)
!4460 = !DILocation(line: 373, column: 4, scope: !4453)
!4461 = !DILocation(line: 374, column: 10, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 374, column: 7)
!4463 = !DILocation(line: 374, column: 12, scope: !4462)
!4464 = !DILocation(line: 374, column: 22, scope: !4462)
!4465 = !DILocation(line: 374, column: 36, scope: !4462)
!4466 = !DILocation(line: 374, column: 34, scope: !4462)
!4467 = !DILocation(line: 374, column: 7, scope: !4439)
!4468 = !DILocation(line: 375, column: 16, scope: !4462)
!4469 = !DILocation(line: 375, column: 18, scope: !4462)
!4470 = !DILocation(line: 375, column: 28, scope: !4462)
!4471 = !DILocation(line: 375, column: 11, scope: !4462)
!4472 = !DILocation(line: 375, column: 4, scope: !4462)
!4473 = !DILocation(line: 376, column: 9, scope: !4439)
!4474 = !DILocation(line: 379, column: 2, scope: !4091)
!4475 = !DILocation(line: 380, column: 1, scope: !4091)
!4476 = distinct !DISubprogram(name: "HYPERVISOR_platform_op", scope: !4477, file: !4477, line: 305, type: !4478, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4477 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!234, !4480}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4481 = !DILocalVariable(name: "op", arg: 1, scope: !4476, file: !4477, line: 305, type: !4480)
!4482 = !DILocation(line: 305, column: 48, scope: !4476)
!4483 = !DILocation(line: 307, column: 2, scope: !4476)
!4484 = !DILocation(line: 307, column: 6, scope: !4476)
!4485 = !DILocation(line: 307, column: 24, scope: !4476)
!4486 = !DILocalVariable(name: "__res", scope: !4487, file: !4477, line: 308, type: !299)
!4487 = distinct !DILexicalBlock(scope: !4476, file: !4477, line: 308, column: 9)
!4488 = !DILocation(line: 308, column: 9, scope: !4487)
!4489 = !DILocalVariable(name: "__arg1", scope: !4487, file: !4477, line: 308, type: !299)
!4490 = !DILocalVariable(name: "__arg2", scope: !4487, file: !4477, line: 308, type: !299)
!4491 = !DILocalVariable(name: "__arg3", scope: !4487, file: !4477, line: 308, type: !299)
!4492 = !DILocalVariable(name: "__arg4", scope: !4487, file: !4477, line: 308, type: !299)
!4493 = !DILocalVariable(name: "__arg5", scope: !4487, file: !4477, line: 308, type: !299)
!4494 = !{i32 -2141285797}
!4495 = !DILocation(line: 308, column: 2, scope: !4476)
!4496 = distinct !DISubprogram(name: "xen_pcpu_init", scope: !3, file: !3, line: 383, type: !4497, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!234}
!4499 = !DILocalVariable(name: "irq", scope: !4496, file: !3, line: 385, type: !234)
!4500 = !DILocation(line: 385, column: 6, scope: !4496)
!4501 = !DILocalVariable(name: "ret", scope: !4496, file: !3, line: 385, type: !234)
!4502 = !DILocation(line: 385, column: 11, scope: !4496)
!4503 = !DILocation(line: 387, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 387, column: 6)
!4505 = !DILocation(line: 387, column: 6, scope: !4496)
!4506 = !DILocation(line: 388, column: 3, scope: !4504)
!4507 = !DILocation(line: 390, column: 8, scope: !4496)
!4508 = !DILocation(line: 390, column: 6, scope: !4496)
!4509 = !DILocation(line: 393, column: 6, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 393, column: 6)
!4511 = !DILocation(line: 393, column: 10, scope: !4510)
!4512 = !DILocation(line: 393, column: 6, scope: !4496)
!4513 = !DILocation(line: 394, column: 3, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 393, column: 15)
!4515 = !DILocation(line: 395, column: 10, scope: !4514)
!4516 = !DILocation(line: 395, column: 3, scope: !4514)
!4517 = !DILocation(line: 398, column: 8, scope: !4496)
!4518 = !DILocation(line: 398, column: 6, scope: !4496)
!4519 = !DILocation(line: 399, column: 6, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 399, column: 6)
!4521 = !DILocation(line: 399, column: 6, scope: !4496)
!4522 = !DILocation(line: 400, column: 3, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 399, column: 11)
!4524 = !DILocation(line: 401, column: 3, scope: !4523)
!4525 = !DILocation(line: 404, column: 8, scope: !4496)
!4526 = !DILocation(line: 404, column: 6, scope: !4496)
!4527 = !DILocation(line: 405, column: 6, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 405, column: 6)
!4529 = !DILocation(line: 405, column: 6, scope: !4496)
!4530 = !DILocation(line: 406, column: 3, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 405, column: 11)
!4532 = !DILocation(line: 407, column: 3, scope: !4531)
!4533 = !DILocation(line: 410, column: 2, scope: !4496)
!4534 = !DILabel(scope: !4496, name: "err2", file: !3, line: 412)
!4535 = !DILocation(line: 412, column: 1, scope: !4496)
!4536 = !DILocation(line: 413, column: 2, scope: !4496)
!4537 = !DILabel(scope: !4496, name: "err1", file: !3, line: 414)
!4538 = !DILocation(line: 414, column: 1, scope: !4496)
!4539 = !DILocation(line: 415, column: 25, scope: !4496)
!4540 = !DILocation(line: 415, column: 2, scope: !4496)
!4541 = !DILocation(line: 416, column: 9, scope: !4496)
!4542 = !DILocation(line: 416, column: 2, scope: !4496)
!4543 = !DILocation(line: 417, column: 1, scope: !4496)
!4544 = distinct !DISubprogram(name: "queue_work", scope: !6, file: !6, line: 504, type: !4545, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!465, !2631, !1866}
!4547 = !DILocalVariable(name: "wq", arg: 1, scope: !4544, file: !6, line: 504, type: !2631)
!4548 = !DILocation(line: 504, column: 56, scope: !4544)
!4549 = !DILocalVariable(name: "work", arg: 2, scope: !4544, file: !6, line: 505, type: !1866)
!4550 = !DILocation(line: 505, column: 30, scope: !4544)
!4551 = !DILocation(line: 507, column: 41, scope: !4544)
!4552 = !DILocation(line: 507, column: 45, scope: !4544)
!4553 = !DILocation(line: 507, column: 9, scope: !4544)
!4554 = !DILocation(line: 507, column: 2, scope: !4544)
!4555 = distinct !DISubprogram(name: "xen_pcpu_work_fn", scope: !3, file: !3, line: 336, type: !1864, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4556 = !DILocalVariable(name: "work", arg: 1, scope: !4555, file: !3, line: 336, type: !1866)
!4557 = !DILocation(line: 336, column: 50, scope: !4555)
!4558 = !DILocation(line: 338, column: 2, scope: !4555)
!4559 = !DILocation(line: 339, column: 1, scope: !4555)
!4560 = distinct !DISubprogram(name: "xen_sync_pcpus", scope: !3, file: !3, line: 311, type: !4497, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4561 = !DILocalVariable(name: "cpu", scope: !4560, file: !3, line: 316, type: !534)
!4562 = !DILocation(line: 316, column: 11, scope: !4560)
!4563 = !DILocalVariable(name: "max_cpu", scope: !4560, file: !3, line: 316, type: !534)
!4564 = !DILocation(line: 316, column: 20, scope: !4560)
!4565 = !DILocalVariable(name: "err", scope: !4560, file: !3, line: 317, type: !234)
!4566 = !DILocation(line: 317, column: 6, scope: !4560)
!4567 = !DILocalVariable(name: "pcpu", scope: !4560, file: !3, line: 318, type: !179)
!4568 = !DILocation(line: 318, column: 15, scope: !4560)
!4569 = !DILocalVariable(name: "tmp", scope: !4560, file: !3, line: 318, type: !179)
!4570 = !DILocation(line: 318, column: 22, scope: !4560)
!4571 = !DILocation(line: 320, column: 2, scope: !4560)
!4572 = !DILocation(line: 322, column: 2, scope: !4560)
!4573 = !DILocation(line: 322, column: 10, scope: !4560)
!4574 = !DILocation(line: 322, column: 14, scope: !4560)
!4575 = !DILocation(line: 322, column: 18, scope: !4560)
!4576 = !DILocation(line: 322, column: 25, scope: !4560)
!4577 = !DILocation(line: 322, column: 22, scope: !4560)
!4578 = !DILocation(line: 0, scope: !4560)
!4579 = !DILocation(line: 323, column: 19, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 322, column: 35)
!4581 = !DILocation(line: 323, column: 9, scope: !4580)
!4582 = !DILocation(line: 323, column: 7, scope: !4580)
!4583 = !DILocation(line: 324, column: 6, scope: !4580)
!4584 = distinct !{!4584, !4572, !4585}
!4585 = !DILocation(line: 325, column: 2, scope: !4560)
!4586 = !DILocation(line: 327, column: 6, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 327, column: 6)
!4588 = !DILocation(line: 327, column: 6, scope: !4560)
!4589 = !DILocalVariable(name: "__mptr", scope: !4590, file: !3, line: 328, type: !178)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 328, column: 3)
!4591 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 328, column: 3)
!4592 = !DILocation(line: 328, column: 3, scope: !4590)
!4593 = !DILocation(line: 328, column: 3, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 328, column: 3)
!4595 = !DILocation(line: 328, column: 3, scope: !4591)
!4596 = !DILocalVariable(name: "__mptr", scope: !4597, file: !3, line: 328, type: !178)
!4597 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 328, column: 3)
!4598 = !DILocation(line: 328, column: 3, scope: !4597)
!4599 = !DILocation(line: 328, column: 3, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 328, column: 3)
!4601 = !DILocation(line: 328, column: 3, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 328, column: 3)
!4603 = !DILocation(line: 329, column: 31, scope: !4602)
!4604 = !DILocation(line: 329, column: 4, scope: !4602)
!4605 = !DILocalVariable(name: "__mptr", scope: !4606, file: !3, line: 328, type: !178)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 328, column: 3)
!4607 = !DILocation(line: 328, column: 3, scope: !4606)
!4608 = !DILocation(line: 328, column: 3, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 328, column: 3)
!4610 = distinct !{!4610, !4595, !4611}
!4611 = !DILocation(line: 329, column: 35, scope: !4591)
!4612 = !DILocation(line: 331, column: 2, scope: !4560)
!4613 = !DILocation(line: 333, column: 9, scope: !4560)
!4614 = !DILocation(line: 333, column: 2, scope: !4560)
!4615 = distinct !DISubprogram(name: "sync_pcpu", scope: !3, file: !3, line: 269, type: !4616, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!234, !534, !4389}
!4618 = !DILocalVariable(name: "cpu", arg: 1, scope: !4615, file: !3, line: 269, type: !534)
!4619 = !DILocation(line: 269, column: 31, scope: !4615)
!4620 = !DILocalVariable(name: "max_cpu", arg: 2, scope: !4615, file: !3, line: 269, type: !4389)
!4621 = !DILocation(line: 269, column: 46, scope: !4615)
!4622 = !DILocalVariable(name: "ret", scope: !4615, file: !3, line: 271, type: !234)
!4623 = !DILocation(line: 271, column: 6, scope: !4615)
!4624 = !DILocalVariable(name: "pcpu", scope: !4615, file: !3, line: 272, type: !179)
!4625 = !DILocation(line: 272, column: 15, scope: !4615)
!4626 = !DILocalVariable(name: "info", scope: !4615, file: !3, line: 273, type: !4627)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4628 = !DILocation(line: 273, column: 25, scope: !4615)
!4629 = !DILocalVariable(name: "op", scope: !4615, file: !3, line: 274, type: !4101)
!4630 = !DILocation(line: 274, column: 25, scope: !4615)
!4631 = !DILocation(line: 274, column: 30, scope: !4615)
!4632 = !DILocation(line: 277, column: 5, scope: !4615)
!4633 = !DILocation(line: 277, column: 15, scope: !4615)
!4634 = !DILocation(line: 277, column: 28, scope: !4615)
!4635 = !DILocation(line: 280, column: 8, scope: !4615)
!4636 = !DILocation(line: 280, column: 6, scope: !4615)
!4637 = !DILocation(line: 281, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 281, column: 6)
!4639 = !DILocation(line: 281, column: 6, scope: !4615)
!4640 = !DILocation(line: 282, column: 10, scope: !4638)
!4641 = !DILocation(line: 282, column: 3, scope: !4638)
!4642 = !DILocation(line: 284, column: 13, scope: !4615)
!4643 = !DILocation(line: 284, column: 15, scope: !4615)
!4644 = !DILocation(line: 284, column: 7, scope: !4615)
!4645 = !DILocation(line: 285, column: 6, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 285, column: 6)
!4647 = !DILocation(line: 285, column: 6, scope: !4615)
!4648 = !DILocation(line: 286, column: 14, scope: !4646)
!4649 = !DILocation(line: 286, column: 20, scope: !4646)
!4650 = !DILocation(line: 286, column: 4, scope: !4646)
!4651 = !DILocation(line: 286, column: 12, scope: !4646)
!4652 = !DILocation(line: 286, column: 3, scope: !4646)
!4653 = !DILocation(line: 288, column: 18, scope: !4615)
!4654 = !DILocation(line: 288, column: 9, scope: !4615)
!4655 = !DILocation(line: 288, column: 7, scope: !4615)
!4656 = !DILocation(line: 293, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 293, column: 6)
!4658 = !DILocation(line: 293, column: 12, scope: !4657)
!4659 = !DILocation(line: 293, column: 18, scope: !4657)
!4660 = !DILocation(line: 293, column: 6, scope: !4615)
!4661 = !DILocation(line: 294, column: 30, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 293, column: 44)
!4663 = !DILocation(line: 294, column: 3, scope: !4662)
!4664 = !DILocation(line: 295, column: 3, scope: !4662)
!4665 = !DILocation(line: 298, column: 7, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 298, column: 6)
!4667 = !DILocation(line: 298, column: 6, scope: !4615)
!4668 = !DILocation(line: 299, column: 35, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 298, column: 13)
!4670 = !DILocation(line: 299, column: 10, scope: !4669)
!4671 = !DILocation(line: 299, column: 8, scope: !4669)
!4672 = !DILocation(line: 300, column: 22, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 300, column: 7)
!4674 = !DILocation(line: 300, column: 7, scope: !4673)
!4675 = !DILocation(line: 300, column: 7, scope: !4669)
!4676 = !DILocation(line: 301, column: 4, scope: !4673)
!4677 = !DILocation(line: 302, column: 2, scope: !4669)
!4678 = !DILocation(line: 303, column: 22, scope: !4666)
!4679 = !DILocation(line: 303, column: 28, scope: !4666)
!4680 = !DILocation(line: 303, column: 3, scope: !4666)
!4681 = !DILocation(line: 305, column: 2, scope: !4615)
!4682 = !DILocation(line: 306, column: 1, scope: !4615)
!4683 = distinct !DISubprogram(name: "unregister_and_remove_pcpu", scope: !3, file: !3, line: 203, type: !4684, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{null, !179}
!4686 = !DILocalVariable(name: "pcpu", arg: 1, scope: !4683, file: !3, line: 203, type: !179)
!4687 = !DILocation(line: 203, column: 53, scope: !4683)
!4688 = !DILocalVariable(name: "dev", scope: !4683, file: !3, line: 205, type: !3211)
!4689 = !DILocation(line: 205, column: 17, scope: !4683)
!4690 = !DILocation(line: 207, column: 7, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 207, column: 6)
!4692 = !DILocation(line: 207, column: 6, scope: !4683)
!4693 = !DILocation(line: 208, column: 3, scope: !4691)
!4694 = !DILocation(line: 210, column: 9, scope: !4683)
!4695 = !DILocation(line: 210, column: 15, scope: !4683)
!4696 = !DILocation(line: 210, column: 6, scope: !4683)
!4697 = !DILocation(line: 212, column: 20, scope: !4683)
!4698 = !DILocation(line: 212, column: 2, scope: !4683)
!4699 = !DILocation(line: 213, column: 1, scope: !4683)
!4700 = distinct !DISubprogram(name: "get_pcpu", scope: !3, file: !3, line: 183, type: !4701, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!179, !534}
!4703 = !DILocalVariable(name: "cpu_id", arg: 1, scope: !4700, file: !3, line: 183, type: !534)
!4704 = !DILocation(line: 183, column: 39, scope: !4700)
!4705 = !DILocalVariable(name: "pcpu", scope: !4700, file: !3, line: 185, type: !179)
!4706 = !DILocation(line: 185, column: 15, scope: !4700)
!4707 = !DILocalVariable(name: "__mptr", scope: !4708, file: !3, line: 187, type: !178)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 187, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 187, column: 2)
!4710 = !DILocation(line: 187, column: 2, scope: !4708)
!4711 = !DILocation(line: 187, column: 2, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 187, column: 2)
!4713 = !DILocation(line: 187, column: 2, scope: !4709)
!4714 = !DILocation(line: 187, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 187, column: 2)
!4716 = !DILocation(line: 188, column: 7, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 188, column: 7)
!4718 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 187, column: 46)
!4719 = !DILocation(line: 188, column: 13, scope: !4717)
!4720 = !DILocation(line: 188, column: 23, scope: !4717)
!4721 = !DILocation(line: 188, column: 20, scope: !4717)
!4722 = !DILocation(line: 188, column: 7, scope: !4718)
!4723 = !DILocation(line: 189, column: 11, scope: !4717)
!4724 = !DILocation(line: 189, column: 4, scope: !4717)
!4725 = !DILocation(line: 190, column: 2, scope: !4718)
!4726 = !DILocalVariable(name: "__mptr", scope: !4727, file: !3, line: 187, type: !178)
!4727 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 187, column: 2)
!4728 = !DILocation(line: 187, column: 2, scope: !4727)
!4729 = !DILocation(line: 187, column: 2, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 187, column: 2)
!4731 = distinct !{!4731, !4713, !4732}
!4732 = !DILocation(line: 190, column: 2, scope: !4709)
!4733 = !DILocation(line: 192, column: 2, scope: !4700)
!4734 = !DILocation(line: 193, column: 1, scope: !4700)
!4735 = distinct !DISubprogram(name: "create_and_register_pcpu", scope: !3, file: !3, line: 238, type: !4736, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!179, !4627}
!4738 = !DILocalVariable(name: "info", arg: 1, scope: !4735, file: !3, line: 238, type: !4627)
!4739 = !DILocation(line: 238, column: 69, scope: !4735)
!4740 = !DILocalVariable(name: "pcpu", scope: !4735, file: !3, line: 240, type: !179)
!4741 = !DILocation(line: 240, column: 15, scope: !4735)
!4742 = !DILocalVariable(name: "err", scope: !4735, file: !3, line: 241, type: !234)
!4743 = !DILocation(line: 241, column: 6, scope: !4735)
!4744 = !DILocation(line: 243, column: 6, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 243, column: 6)
!4746 = !DILocation(line: 243, column: 12, scope: !4745)
!4747 = !DILocation(line: 243, column: 18, scope: !4745)
!4748 = !DILocation(line: 243, column: 6, scope: !4735)
!4749 = !DILocation(line: 244, column: 10, scope: !4745)
!4750 = !DILocation(line: 244, column: 3, scope: !4745)
!4751 = !DILocation(line: 246, column: 9, scope: !4735)
!4752 = !DILocation(line: 246, column: 7, scope: !4735)
!4753 = !DILocation(line: 247, column: 7, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 247, column: 6)
!4755 = !DILocation(line: 247, column: 6, scope: !4735)
!4756 = !DILocation(line: 248, column: 10, scope: !4754)
!4757 = !DILocation(line: 248, column: 3, scope: !4754)
!4758 = !DILocation(line: 250, column: 18, scope: !4735)
!4759 = !DILocation(line: 250, column: 24, scope: !4735)
!4760 = !DILocation(line: 250, column: 2, scope: !4735)
!4761 = !DILocation(line: 251, column: 17, scope: !4735)
!4762 = !DILocation(line: 251, column: 23, scope: !4735)
!4763 = !DILocation(line: 251, column: 2, scope: !4735)
!4764 = !DILocation(line: 251, column: 8, scope: !4735)
!4765 = !DILocation(line: 251, column: 15, scope: !4735)
!4766 = !DILocation(line: 252, column: 16, scope: !4735)
!4767 = !DILocation(line: 252, column: 22, scope: !4735)
!4768 = !DILocation(line: 252, column: 2, scope: !4735)
!4769 = !DILocation(line: 252, column: 8, scope: !4735)
!4770 = !DILocation(line: 252, column: 14, scope: !4735)
!4771 = !DILocation(line: 255, column: 17, scope: !4735)
!4772 = !DILocation(line: 255, column: 23, scope: !4735)
!4773 = !DILocation(line: 255, column: 2, scope: !4735)
!4774 = !DILocation(line: 257, column: 22, scope: !4735)
!4775 = !DILocation(line: 257, column: 8, scope: !4735)
!4776 = !DILocation(line: 257, column: 6, scope: !4735)
!4777 = !DILocation(line: 258, column: 6, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 258, column: 6)
!4779 = !DILocation(line: 258, column: 6, scope: !4735)
!4780 = !DILocation(line: 259, column: 3, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 258, column: 11)
!4782 = !DILocation(line: 260, column: 10, scope: !4781)
!4783 = !DILocation(line: 260, column: 3, scope: !4781)
!4784 = !DILocation(line: 263, column: 9, scope: !4735)
!4785 = !DILocation(line: 263, column: 2, scope: !4735)
!4786 = !DILocation(line: 264, column: 1, scope: !4735)
!4787 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4788, file: !4788, line: 39, type: !4789, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4788 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!465, !2026}
!4791 = !DILocalVariable(name: "ptr", arg: 1, scope: !4787, file: !4788, line: 39, type: !2026)
!4792 = !DILocation(line: 39, column: 68, scope: !4787)
!4793 = !DILocation(line: 41, column: 9, scope: !4787)
!4794 = !DILocation(line: 41, column: 24, scope: !4787)
!4795 = !DILocation(line: 41, column: 27, scope: !4787)
!4796 = !DILocation(line: 41, column: 2, scope: !4787)
!4797 = distinct !DISubprogram(name: "pcpu_online_status", scope: !3, file: !3, line: 167, type: !4798, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{null, !4627, !179}
!4800 = !DILocalVariable(name: "info", arg: 1, scope: !4797, file: !3, line: 167, type: !4627)
!4801 = !DILocation(line: 167, column: 55, scope: !4797)
!4802 = !DILocalVariable(name: "pcpu", arg: 2, scope: !4797, file: !3, line: 168, type: !179)
!4803 = !DILocation(line: 168, column: 24, scope: !4797)
!4804 = !DILocation(line: 170, column: 22, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 170, column: 6)
!4806 = !DILocation(line: 170, column: 28, scope: !4805)
!4807 = !DILocation(line: 170, column: 6, scope: !4805)
!4808 = !DILocation(line: 170, column: 35, scope: !4805)
!4809 = !DILocation(line: 171, column: 22, scope: !4805)
!4810 = !DILocation(line: 171, column: 28, scope: !4805)
!4811 = !DILocation(line: 171, column: 6, scope: !4805)
!4812 = !DILocation(line: 170, column: 6, scope: !4797)
!4813 = !DILocation(line: 173, column: 3, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 171, column: 36)
!4815 = !DILocation(line: 173, column: 9, scope: !4814)
!4816 = !DILocation(line: 173, column: 15, scope: !4814)
!4817 = !DILocation(line: 174, column: 19, scope: !4814)
!4818 = !DILocation(line: 174, column: 25, scope: !4814)
!4819 = !DILocation(line: 174, column: 29, scope: !4814)
!4820 = !DILocation(line: 174, column: 3, scope: !4814)
!4821 = !DILocation(line: 175, column: 2, scope: !4814)
!4822 = !DILocation(line: 175, column: 30, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 175, column: 13)
!4824 = !DILocation(line: 175, column: 36, scope: !4823)
!4825 = !DILocation(line: 175, column: 14, scope: !4823)
!4826 = !DILocation(line: 175, column: 43, scope: !4823)
!4827 = !DILocation(line: 176, column: 23, scope: !4823)
!4828 = !DILocation(line: 176, column: 29, scope: !4823)
!4829 = !DILocation(line: 176, column: 7, scope: !4823)
!4830 = !DILocation(line: 175, column: 13, scope: !4805)
!4831 = !DILocation(line: 178, column: 3, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 176, column: 37)
!4833 = !DILocation(line: 178, column: 9, scope: !4832)
!4834 = !DILocation(line: 178, column: 15, scope: !4832)
!4835 = !DILocation(line: 179, column: 19, scope: !4832)
!4836 = !DILocation(line: 179, column: 25, scope: !4832)
!4837 = !DILocation(line: 179, column: 29, scope: !4832)
!4838 = !DILocation(line: 179, column: 3, scope: !4832)
!4839 = !DILocation(line: 180, column: 2, scope: !4832)
!4840 = !DILocation(line: 181, column: 1, scope: !4797)
!4841 = distinct !DISubprogram(name: "ERR_PTR", scope: !4788, file: !4788, line: 24, type: !4842, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!178, !7}
!4844 = !DILocalVariable(name: "error", arg: 1, scope: !4841, file: !4788, line: 24, type: !7)
!4845 = !DILocation(line: 24, column: 48, scope: !4841)
!4846 = !DILocation(line: 26, column: 18, scope: !4841)
!4847 = !DILocation(line: 26, column: 9, scope: !4841)
!4848 = !DILocation(line: 26, column: 2, scope: !4841)
!4849 = distinct !DISubprogram(name: "kzalloc", scope: !149, file: !149, line: 662, type: !4850, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!178, !296, !722}
!4852 = !DILocalVariable(name: "s", arg: 1, scope: !4853, file: !149, line: 445, type: !914)
!4853 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !149, file: !149, line: 445, type: !4854, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!178, !914, !722, !296}
!4856 = !DILocation(line: 445, column: 72, scope: !4853, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 552, column: 10, scope: !4858, inlinedAt: !4861)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !149, line: 540, column: 34)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !149, line: 540, column: 6)
!4860 = distinct !DISubprogram(name: "kmalloc", scope: !149, file: !149, line: 538, type: !4850, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4861 = distinct !DILocation(line: 664, column: 9, scope: !4849)
!4862 = !DILocalVariable(name: "flags", arg: 2, scope: !4853, file: !149, line: 446, type: !722)
!4863 = !DILocation(line: 446, column: 9, scope: !4853, inlinedAt: !4857)
!4864 = !DILocalVariable(name: "size", arg: 3, scope: !4853, file: !149, line: 446, type: !296)
!4865 = !DILocation(line: 446, column: 23, scope: !4853, inlinedAt: !4857)
!4866 = !DILocalVariable(name: "ret", scope: !4853, file: !149, line: 448, type: !178)
!4867 = !DILocation(line: 448, column: 8, scope: !4853, inlinedAt: !4857)
!4868 = !DILocalVariable(name: "flags", arg: 1, scope: !4869, file: !149, line: 318, type: !722)
!4869 = distinct !DISubprogram(name: "kmalloc_type", scope: !149, file: !149, line: 318, type: !4870, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!148, !722}
!4872 = !DILocation(line: 318, column: 67, scope: !4869, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 553, column: 20, scope: !4858, inlinedAt: !4861)
!4874 = !DILocalVariable(name: "size", arg: 1, scope: !4875, file: !149, line: 346, type: !296)
!4875 = distinct !DISubprogram(name: "kmalloc_index", scope: !149, file: !149, line: 346, type: !4876, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!40, !296}
!4878 = !DILocation(line: 346, column: 58, scope: !4875, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 547, column: 11, scope: !4858, inlinedAt: !4861)
!4880 = !DILocalVariable(name: "size", arg: 1, scope: !4881, file: !149, line: 472, type: !296)
!4881 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !149, file: !149, line: 472, type: !4882, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!178, !296, !722, !40}
!4884 = !DILocation(line: 472, column: 28, scope: !4881, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 481, column: 9, scope: !4886, inlinedAt: !4887)
!4886 = distinct !DISubprogram(name: "kmalloc_large", scope: !149, file: !149, line: 478, type: !4850, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!4887 = distinct !DILocation(line: 545, column: 11, scope: !4888, inlinedAt: !4861)
!4888 = distinct !DILexicalBlock(scope: !4858, file: !149, line: 544, column: 7)
!4889 = !DILocalVariable(name: "flags", arg: 2, scope: !4881, file: !149, line: 472, type: !722)
!4890 = !DILocation(line: 472, column: 40, scope: !4881, inlinedAt: !4885)
!4891 = !DILocalVariable(name: "order", arg: 3, scope: !4881, file: !149, line: 472, type: !40)
!4892 = !DILocation(line: 472, column: 60, scope: !4881, inlinedAt: !4885)
!4893 = !DILocalVariable(name: "size", arg: 1, scope: !4886, file: !149, line: 478, type: !296)
!4894 = !DILocation(line: 478, column: 51, scope: !4886, inlinedAt: !4887)
!4895 = !DILocalVariable(name: "flags", arg: 2, scope: !4886, file: !149, line: 478, type: !722)
!4896 = !DILocation(line: 478, column: 63, scope: !4886, inlinedAt: !4887)
!4897 = !DILocalVariable(name: "order", scope: !4886, file: !149, line: 480, type: !40)
!4898 = !DILocation(line: 480, column: 15, scope: !4886, inlinedAt: !4887)
!4899 = !DILocalVariable(name: "size", arg: 1, scope: !4860, file: !149, line: 538, type: !296)
!4900 = !DILocation(line: 538, column: 45, scope: !4860, inlinedAt: !4861)
!4901 = !DILocalVariable(name: "flags", arg: 2, scope: !4860, file: !149, line: 538, type: !722)
!4902 = !DILocation(line: 538, column: 57, scope: !4860, inlinedAt: !4861)
!4903 = !DILocalVariable(name: "index", scope: !4858, file: !149, line: 542, type: !40)
!4904 = !DILocation(line: 542, column: 16, scope: !4858, inlinedAt: !4861)
!4905 = !DILocalVariable(name: "size", arg: 1, scope: !4849, file: !149, line: 662, type: !296)
!4906 = !DILocation(line: 662, column: 36, scope: !4849)
!4907 = !DILocalVariable(name: "flags", arg: 2, scope: !4849, file: !149, line: 662, type: !722)
!4908 = !DILocation(line: 662, column: 48, scope: !4849)
!4909 = !DILocation(line: 664, column: 17, scope: !4849)
!4910 = !DILocation(line: 664, column: 23, scope: !4849)
!4911 = !DILocation(line: 664, column: 29, scope: !4849)
!4912 = !DILocation(line: 540, column: 27, scope: !4859, inlinedAt: !4861)
!4913 = !DILocation(line: 540, column: 6, scope: !4859, inlinedAt: !4861)
!4914 = !DILocation(line: 540, column: 6, scope: !4860, inlinedAt: !4861)
!4915 = !DILocation(line: 544, column: 7, scope: !4888, inlinedAt: !4861)
!4916 = !DILocation(line: 544, column: 12, scope: !4888, inlinedAt: !4861)
!4917 = !DILocation(line: 544, column: 7, scope: !4858, inlinedAt: !4861)
!4918 = !DILocation(line: 545, column: 25, scope: !4888, inlinedAt: !4861)
!4919 = !DILocation(line: 545, column: 31, scope: !4888, inlinedAt: !4861)
!4920 = !DILocation(line: 480, column: 33, scope: !4886, inlinedAt: !4887)
!4921 = !DILocation(line: 480, column: 23, scope: !4886, inlinedAt: !4887)
!4922 = !DILocation(line: 481, column: 29, scope: !4886, inlinedAt: !4887)
!4923 = !DILocation(line: 481, column: 35, scope: !4886, inlinedAt: !4887)
!4924 = !DILocation(line: 481, column: 42, scope: !4886, inlinedAt: !4887)
!4925 = !DILocation(line: 474, column: 23, scope: !4881, inlinedAt: !4885)
!4926 = !DILocation(line: 474, column: 29, scope: !4881, inlinedAt: !4885)
!4927 = !DILocation(line: 474, column: 36, scope: !4881, inlinedAt: !4885)
!4928 = !DILocation(line: 474, column: 9, scope: !4881, inlinedAt: !4885)
!4929 = !DILocation(line: 545, column: 4, scope: !4888, inlinedAt: !4861)
!4930 = !DILocation(line: 547, column: 25, scope: !4858, inlinedAt: !4861)
!4931 = !DILocation(line: 348, column: 7, scope: !4932, inlinedAt: !4879)
!4932 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 348, column: 6)
!4933 = !DILocation(line: 348, column: 6, scope: !4875, inlinedAt: !4879)
!4934 = !DILocation(line: 349, column: 3, scope: !4932, inlinedAt: !4879)
!4935 = !DILocation(line: 351, column: 6, scope: !4936, inlinedAt: !4879)
!4936 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 351, column: 6)
!4937 = !DILocation(line: 351, column: 11, scope: !4936, inlinedAt: !4879)
!4938 = !DILocation(line: 351, column: 6, scope: !4875, inlinedAt: !4879)
!4939 = !DILocation(line: 352, column: 3, scope: !4936, inlinedAt: !4879)
!4940 = !DILocation(line: 354, column: 32, scope: !4941, inlinedAt: !4879)
!4941 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 354, column: 6)
!4942 = !DILocation(line: 354, column: 37, scope: !4941, inlinedAt: !4879)
!4943 = !DILocation(line: 354, column: 42, scope: !4941, inlinedAt: !4879)
!4944 = !DILocation(line: 354, column: 45, scope: !4941, inlinedAt: !4879)
!4945 = !DILocation(line: 354, column: 50, scope: !4941, inlinedAt: !4879)
!4946 = !DILocation(line: 354, column: 6, scope: !4875, inlinedAt: !4879)
!4947 = !DILocation(line: 355, column: 3, scope: !4941, inlinedAt: !4879)
!4948 = !DILocation(line: 356, column: 32, scope: !4949, inlinedAt: !4879)
!4949 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 356, column: 6)
!4950 = !DILocation(line: 356, column: 37, scope: !4949, inlinedAt: !4879)
!4951 = !DILocation(line: 356, column: 43, scope: !4949, inlinedAt: !4879)
!4952 = !DILocation(line: 356, column: 46, scope: !4949, inlinedAt: !4879)
!4953 = !DILocation(line: 356, column: 51, scope: !4949, inlinedAt: !4879)
!4954 = !DILocation(line: 356, column: 6, scope: !4875, inlinedAt: !4879)
!4955 = !DILocation(line: 357, column: 3, scope: !4949, inlinedAt: !4879)
!4956 = !DILocation(line: 358, column: 6, scope: !4957, inlinedAt: !4879)
!4957 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 358, column: 6)
!4958 = !DILocation(line: 358, column: 11, scope: !4957, inlinedAt: !4879)
!4959 = !DILocation(line: 358, column: 6, scope: !4875, inlinedAt: !4879)
!4960 = !DILocation(line: 358, column: 26, scope: !4957, inlinedAt: !4879)
!4961 = !DILocation(line: 359, column: 6, scope: !4962, inlinedAt: !4879)
!4962 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 359, column: 6)
!4963 = !DILocation(line: 359, column: 11, scope: !4962, inlinedAt: !4879)
!4964 = !DILocation(line: 359, column: 6, scope: !4875, inlinedAt: !4879)
!4965 = !DILocation(line: 359, column: 26, scope: !4962, inlinedAt: !4879)
!4966 = !DILocation(line: 360, column: 6, scope: !4967, inlinedAt: !4879)
!4967 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 360, column: 6)
!4968 = !DILocation(line: 360, column: 11, scope: !4967, inlinedAt: !4879)
!4969 = !DILocation(line: 360, column: 6, scope: !4875, inlinedAt: !4879)
!4970 = !DILocation(line: 360, column: 26, scope: !4967, inlinedAt: !4879)
!4971 = !DILocation(line: 361, column: 6, scope: !4972, inlinedAt: !4879)
!4972 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 361, column: 6)
!4973 = !DILocation(line: 361, column: 11, scope: !4972, inlinedAt: !4879)
!4974 = !DILocation(line: 361, column: 6, scope: !4875, inlinedAt: !4879)
!4975 = !DILocation(line: 361, column: 26, scope: !4972, inlinedAt: !4879)
!4976 = !DILocation(line: 362, column: 6, scope: !4977, inlinedAt: !4879)
!4977 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 362, column: 6)
!4978 = !DILocation(line: 362, column: 11, scope: !4977, inlinedAt: !4879)
!4979 = !DILocation(line: 362, column: 6, scope: !4875, inlinedAt: !4879)
!4980 = !DILocation(line: 362, column: 26, scope: !4977, inlinedAt: !4879)
!4981 = !DILocation(line: 363, column: 6, scope: !4982, inlinedAt: !4879)
!4982 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 363, column: 6)
!4983 = !DILocation(line: 363, column: 11, scope: !4982, inlinedAt: !4879)
!4984 = !DILocation(line: 363, column: 6, scope: !4875, inlinedAt: !4879)
!4985 = !DILocation(line: 363, column: 26, scope: !4982, inlinedAt: !4879)
!4986 = !DILocation(line: 364, column: 6, scope: !4987, inlinedAt: !4879)
!4987 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 364, column: 6)
!4988 = !DILocation(line: 364, column: 11, scope: !4987, inlinedAt: !4879)
!4989 = !DILocation(line: 364, column: 6, scope: !4875, inlinedAt: !4879)
!4990 = !DILocation(line: 364, column: 26, scope: !4987, inlinedAt: !4879)
!4991 = !DILocation(line: 365, column: 6, scope: !4992, inlinedAt: !4879)
!4992 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 365, column: 6)
!4993 = !DILocation(line: 365, column: 11, scope: !4992, inlinedAt: !4879)
!4994 = !DILocation(line: 365, column: 6, scope: !4875, inlinedAt: !4879)
!4995 = !DILocation(line: 365, column: 26, scope: !4992, inlinedAt: !4879)
!4996 = !DILocation(line: 366, column: 6, scope: !4997, inlinedAt: !4879)
!4997 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 366, column: 6)
!4998 = !DILocation(line: 366, column: 11, scope: !4997, inlinedAt: !4879)
!4999 = !DILocation(line: 366, column: 6, scope: !4875, inlinedAt: !4879)
!5000 = !DILocation(line: 366, column: 26, scope: !4997, inlinedAt: !4879)
!5001 = !DILocation(line: 367, column: 6, scope: !5002, inlinedAt: !4879)
!5002 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 367, column: 6)
!5003 = !DILocation(line: 367, column: 11, scope: !5002, inlinedAt: !4879)
!5004 = !DILocation(line: 367, column: 6, scope: !4875, inlinedAt: !4879)
!5005 = !DILocation(line: 367, column: 26, scope: !5002, inlinedAt: !4879)
!5006 = !DILocation(line: 368, column: 6, scope: !5007, inlinedAt: !4879)
!5007 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 368, column: 6)
!5008 = !DILocation(line: 368, column: 11, scope: !5007, inlinedAt: !4879)
!5009 = !DILocation(line: 368, column: 6, scope: !4875, inlinedAt: !4879)
!5010 = !DILocation(line: 368, column: 26, scope: !5007, inlinedAt: !4879)
!5011 = !DILocation(line: 369, column: 6, scope: !5012, inlinedAt: !4879)
!5012 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 369, column: 6)
!5013 = !DILocation(line: 369, column: 11, scope: !5012, inlinedAt: !4879)
!5014 = !DILocation(line: 369, column: 6, scope: !4875, inlinedAt: !4879)
!5015 = !DILocation(line: 369, column: 26, scope: !5012, inlinedAt: !4879)
!5016 = !DILocation(line: 370, column: 6, scope: !5017, inlinedAt: !4879)
!5017 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 370, column: 6)
!5018 = !DILocation(line: 370, column: 11, scope: !5017, inlinedAt: !4879)
!5019 = !DILocation(line: 370, column: 6, scope: !4875, inlinedAt: !4879)
!5020 = !DILocation(line: 370, column: 26, scope: !5017, inlinedAt: !4879)
!5021 = !DILocation(line: 371, column: 6, scope: !5022, inlinedAt: !4879)
!5022 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 371, column: 6)
!5023 = !DILocation(line: 371, column: 11, scope: !5022, inlinedAt: !4879)
!5024 = !DILocation(line: 371, column: 6, scope: !4875, inlinedAt: !4879)
!5025 = !DILocation(line: 371, column: 26, scope: !5022, inlinedAt: !4879)
!5026 = !DILocation(line: 372, column: 6, scope: !5027, inlinedAt: !4879)
!5027 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 372, column: 6)
!5028 = !DILocation(line: 372, column: 11, scope: !5027, inlinedAt: !4879)
!5029 = !DILocation(line: 372, column: 6, scope: !4875, inlinedAt: !4879)
!5030 = !DILocation(line: 372, column: 26, scope: !5027, inlinedAt: !4879)
!5031 = !DILocation(line: 373, column: 6, scope: !5032, inlinedAt: !4879)
!5032 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 373, column: 6)
!5033 = !DILocation(line: 373, column: 11, scope: !5032, inlinedAt: !4879)
!5034 = !DILocation(line: 373, column: 6, scope: !4875, inlinedAt: !4879)
!5035 = !DILocation(line: 373, column: 26, scope: !5032, inlinedAt: !4879)
!5036 = !DILocation(line: 374, column: 6, scope: !5037, inlinedAt: !4879)
!5037 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 374, column: 6)
!5038 = !DILocation(line: 374, column: 11, scope: !5037, inlinedAt: !4879)
!5039 = !DILocation(line: 374, column: 6, scope: !4875, inlinedAt: !4879)
!5040 = !DILocation(line: 374, column: 26, scope: !5037, inlinedAt: !4879)
!5041 = !DILocation(line: 375, column: 6, scope: !5042, inlinedAt: !4879)
!5042 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 375, column: 6)
!5043 = !DILocation(line: 375, column: 11, scope: !5042, inlinedAt: !4879)
!5044 = !DILocation(line: 375, column: 6, scope: !4875, inlinedAt: !4879)
!5045 = !DILocation(line: 375, column: 27, scope: !5042, inlinedAt: !4879)
!5046 = !DILocation(line: 376, column: 6, scope: !5047, inlinedAt: !4879)
!5047 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 376, column: 6)
!5048 = !DILocation(line: 376, column: 11, scope: !5047, inlinedAt: !4879)
!5049 = !DILocation(line: 376, column: 6, scope: !4875, inlinedAt: !4879)
!5050 = !DILocation(line: 376, column: 32, scope: !5047, inlinedAt: !4879)
!5051 = !DILocation(line: 377, column: 6, scope: !5052, inlinedAt: !4879)
!5052 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 377, column: 6)
!5053 = !DILocation(line: 377, column: 11, scope: !5052, inlinedAt: !4879)
!5054 = !DILocation(line: 377, column: 6, scope: !4875, inlinedAt: !4879)
!5055 = !DILocation(line: 377, column: 32, scope: !5052, inlinedAt: !4879)
!5056 = !DILocation(line: 378, column: 6, scope: !5057, inlinedAt: !4879)
!5057 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 378, column: 6)
!5058 = !DILocation(line: 378, column: 11, scope: !5057, inlinedAt: !4879)
!5059 = !DILocation(line: 378, column: 6, scope: !4875, inlinedAt: !4879)
!5060 = !DILocation(line: 378, column: 32, scope: !5057, inlinedAt: !4879)
!5061 = !DILocation(line: 379, column: 6, scope: !5062, inlinedAt: !4879)
!5062 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 379, column: 6)
!5063 = !DILocation(line: 379, column: 11, scope: !5062, inlinedAt: !4879)
!5064 = !DILocation(line: 379, column: 6, scope: !4875, inlinedAt: !4879)
!5065 = !DILocation(line: 379, column: 33, scope: !5062, inlinedAt: !4879)
!5066 = !DILocation(line: 380, column: 6, scope: !5067, inlinedAt: !4879)
!5067 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 380, column: 6)
!5068 = !DILocation(line: 380, column: 11, scope: !5067, inlinedAt: !4879)
!5069 = !DILocation(line: 380, column: 6, scope: !4875, inlinedAt: !4879)
!5070 = !DILocation(line: 380, column: 33, scope: !5067, inlinedAt: !4879)
!5071 = !DILocation(line: 381, column: 6, scope: !5072, inlinedAt: !4879)
!5072 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 381, column: 6)
!5073 = !DILocation(line: 381, column: 11, scope: !5072, inlinedAt: !4879)
!5074 = !DILocation(line: 381, column: 6, scope: !4875, inlinedAt: !4879)
!5075 = !DILocation(line: 381, column: 33, scope: !5072, inlinedAt: !4879)
!5076 = !DILocation(line: 382, column: 2, scope: !5077, inlinedAt: !4879)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !149, line: 382, column: 2)
!5078 = distinct !DILexicalBlock(scope: !4875, file: !149, line: 382, column: 2)
!5079 = !{i32 -2143337986, i32 -2143337957, i32 -2143337911, i32 -2143337853, i32 -2143337799, i32 -2143337745, i32 -2143337690, i32 -2143337659}
!5080 = !DILocation(line: 382, column: 2, scope: !5081, inlinedAt: !4879)
!5081 = distinct !DILexicalBlock(scope: !5082, file: !149, line: 382, column: 2)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !149, line: 382, column: 2)
!5083 = !{i32 -2143337216, i32 -2143337209, i32 -2143337155, i32 -2143337124, i32 -2143337094}
!5084 = !DILocation(line: 382, column: 2, scope: !5082, inlinedAt: !4879)
!5085 = !DILocation(line: 386, column: 1, scope: !4875, inlinedAt: !4879)
!5086 = !DILocation(line: 547, column: 9, scope: !4858, inlinedAt: !4861)
!5087 = !DILocation(line: 549, column: 8, scope: !5088, inlinedAt: !4861)
!5088 = distinct !DILexicalBlock(scope: !4858, file: !149, line: 549, column: 7)
!5089 = !DILocation(line: 549, column: 7, scope: !4858, inlinedAt: !4861)
!5090 = !DILocation(line: 550, column: 4, scope: !5088, inlinedAt: !4861)
!5091 = !DILocation(line: 553, column: 33, scope: !4858, inlinedAt: !4861)
!5092 = !DILocation(line: 325, column: 6, scope: !5093, inlinedAt: !4873)
!5093 = distinct !DILexicalBlock(scope: !4869, file: !149, line: 325, column: 6)
!5094 = !DILocation(line: 325, column: 6, scope: !4869, inlinedAt: !4873)
!5095 = !DILocation(line: 326, column: 3, scope: !5093, inlinedAt: !4873)
!5096 = !DILocation(line: 332, column: 9, scope: !4869, inlinedAt: !4873)
!5097 = !DILocation(line: 332, column: 15, scope: !4869, inlinedAt: !4873)
!5098 = !DILocation(line: 332, column: 2, scope: !4869, inlinedAt: !4873)
!5099 = !DILocation(line: 336, column: 1, scope: !4869, inlinedAt: !4873)
!5100 = !DILocation(line: 553, column: 5, scope: !4858, inlinedAt: !4861)
!5101 = !DILocation(line: 553, column: 41, scope: !4858, inlinedAt: !4861)
!5102 = !DILocation(line: 554, column: 5, scope: !4858, inlinedAt: !4861)
!5103 = !DILocation(line: 554, column: 12, scope: !4858, inlinedAt: !4861)
!5104 = !DILocation(line: 448, column: 31, scope: !4853, inlinedAt: !4857)
!5105 = !DILocation(line: 448, column: 34, scope: !4853, inlinedAt: !4857)
!5106 = !DILocation(line: 448, column: 14, scope: !4853, inlinedAt: !4857)
!5107 = !DILocation(line: 450, column: 22, scope: !4853, inlinedAt: !4857)
!5108 = !DILocation(line: 450, column: 25, scope: !4853, inlinedAt: !4857)
!5109 = !DILocation(line: 450, column: 30, scope: !4853, inlinedAt: !4857)
!5110 = !DILocation(line: 450, column: 36, scope: !4853, inlinedAt: !4857)
!5111 = !DILocation(line: 450, column: 8, scope: !4853, inlinedAt: !4857)
!5112 = !DILocation(line: 450, column: 6, scope: !4853, inlinedAt: !4857)
!5113 = !DILocation(line: 451, column: 9, scope: !4853, inlinedAt: !4857)
!5114 = !DILocation(line: 552, column: 3, scope: !4858, inlinedAt: !4861)
!5115 = !DILocation(line: 557, column: 19, scope: !4860, inlinedAt: !4861)
!5116 = !DILocation(line: 557, column: 25, scope: !4860, inlinedAt: !4861)
!5117 = !DILocation(line: 557, column: 9, scope: !4860, inlinedAt: !4861)
!5118 = !DILocation(line: 557, column: 2, scope: !4860, inlinedAt: !4861)
!5119 = !DILocation(line: 558, column: 1, scope: !4860, inlinedAt: !4861)
!5120 = !DILocation(line: 664, column: 2, scope: !4849)
!5121 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5122, file: !5122, line: 33, type: !5123, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5122 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5123 = !DISubroutineType(types: !5124)
!5124 = !{null, !187}
!5125 = !DILocalVariable(name: "list", arg: 1, scope: !5121, file: !5122, line: 33, type: !187)
!5126 = !DILocation(line: 33, column: 53, scope: !5121)
!5127 = !DILocation(line: 35, column: 2, scope: !5121)
!5128 = !DILocation(line: 35, column: 2, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5121, file: !5122, line: 35, column: 2)
!5130 = !DILocation(line: 35, column: 2, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5129, file: !5122, line: 35, column: 2)
!5132 = !DILocation(line: 35, column: 2, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5129, file: !5122, line: 35, column: 2)
!5134 = !DILocation(line: 36, column: 15, scope: !5121)
!5135 = !DILocation(line: 36, column: 2, scope: !5121)
!5136 = !DILocation(line: 36, column: 8, scope: !5121)
!5137 = !DILocation(line: 36, column: 13, scope: !5121)
!5138 = !DILocation(line: 37, column: 1, scope: !5121)
!5139 = distinct !DISubprogram(name: "list_add_tail", scope: !5122, file: !5122, line: 98, type: !5140, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{null, !187, !187}
!5142 = !DILocalVariable(name: "new", arg: 1, scope: !5139, file: !5122, line: 98, type: !187)
!5143 = !DILocation(line: 98, column: 52, scope: !5139)
!5144 = !DILocalVariable(name: "head", arg: 2, scope: !5139, file: !5122, line: 98, type: !187)
!5145 = !DILocation(line: 98, column: 75, scope: !5139)
!5146 = !DILocation(line: 100, column: 13, scope: !5139)
!5147 = !DILocation(line: 100, column: 18, scope: !5139)
!5148 = !DILocation(line: 100, column: 24, scope: !5139)
!5149 = !DILocation(line: 100, column: 30, scope: !5139)
!5150 = !DILocation(line: 100, column: 2, scope: !5139)
!5151 = !DILocation(line: 101, column: 1, scope: !5139)
!5152 = distinct !DISubprogram(name: "register_pcpu", scope: !3, file: !3, line: 215, type: !5153, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!234, !179}
!5155 = !DILocalVariable(name: "pcpu", arg: 1, scope: !5152, file: !3, line: 215, type: !179)
!5156 = !DILocation(line: 215, column: 39, scope: !5152)
!5157 = !DILocalVariable(name: "dev", scope: !5152, file: !3, line: 217, type: !3211)
!5158 = !DILocation(line: 217, column: 17, scope: !5152)
!5159 = !DILocalVariable(name: "err", scope: !5152, file: !3, line: 218, type: !234)
!5160 = !DILocation(line: 218, column: 6, scope: !5152)
!5161 = !DILocation(line: 220, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 220, column: 6)
!5163 = !DILocation(line: 220, column: 6, scope: !5152)
!5164 = !DILocation(line: 221, column: 10, scope: !5162)
!5165 = !DILocation(line: 221, column: 3, scope: !5162)
!5166 = !DILocation(line: 223, column: 9, scope: !5152)
!5167 = !DILocation(line: 223, column: 15, scope: !5152)
!5168 = !DILocation(line: 223, column: 6, scope: !5152)
!5169 = !DILocation(line: 224, column: 2, scope: !5152)
!5170 = !DILocation(line: 224, column: 7, scope: !5152)
!5171 = !DILocation(line: 224, column: 11, scope: !5152)
!5172 = !DILocation(line: 225, column: 12, scope: !5152)
!5173 = !DILocation(line: 225, column: 18, scope: !5152)
!5174 = !DILocation(line: 225, column: 2, scope: !5152)
!5175 = !DILocation(line: 225, column: 7, scope: !5152)
!5176 = !DILocation(line: 225, column: 10, scope: !5152)
!5177 = !DILocation(line: 226, column: 2, scope: !5152)
!5178 = !DILocation(line: 226, column: 7, scope: !5152)
!5179 = !DILocation(line: 226, column: 15, scope: !5152)
!5180 = !DILocation(line: 227, column: 2, scope: !5152)
!5181 = !DILocation(line: 227, column: 7, scope: !5152)
!5182 = !DILocation(line: 227, column: 14, scope: !5152)
!5183 = !DILocation(line: 229, column: 24, scope: !5152)
!5184 = !DILocation(line: 229, column: 8, scope: !5152)
!5185 = !DILocation(line: 229, column: 6, scope: !5152)
!5186 = !DILocation(line: 230, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 230, column: 6)
!5188 = !DILocation(line: 230, column: 6, scope: !5152)
!5189 = !DILocation(line: 231, column: 16, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 230, column: 11)
!5191 = !DILocation(line: 231, column: 3, scope: !5190)
!5192 = !DILocation(line: 232, column: 10, scope: !5190)
!5193 = !DILocation(line: 232, column: 3, scope: !5190)
!5194 = !DILocation(line: 235, column: 2, scope: !5152)
!5195 = !DILocation(line: 236, column: 1, scope: !5152)
!5196 = distinct !DISubprogram(name: "get_order", scope: !5197, file: !5197, line: 29, type: !5198, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5197 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!234, !299}
!5200 = !DILocalVariable(name: "x", arg: 1, scope: !5201, file: !5202, line: 366, type: !397)
!5201 = distinct !DISubprogram(name: "fls64", scope: !5202, file: !5202, line: 366, type: !5203, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5202 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!234, !397}
!5205 = !DILocation(line: 366, column: 40, scope: !5201, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 46, column: 9, scope: !5196)
!5207 = !DILocalVariable(name: "bitpos", scope: !5201, file: !5202, line: 368, type: !234)
!5208 = !DILocation(line: 368, column: 6, scope: !5201, inlinedAt: !5206)
!5209 = !DILocalVariable(name: "size", arg: 1, scope: !5196, file: !5197, line: 29, type: !299)
!5210 = !DILocation(line: 29, column: 63, scope: !5196)
!5211 = !DILocation(line: 31, column: 27, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5196, file: !5197, line: 31, column: 6)
!5213 = !DILocation(line: 31, column: 6, scope: !5212)
!5214 = !DILocation(line: 31, column: 6, scope: !5196)
!5215 = !DILocation(line: 32, column: 8, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !5197, line: 32, column: 7)
!5217 = distinct !DILexicalBlock(scope: !5212, file: !5197, line: 31, column: 34)
!5218 = !DILocation(line: 32, column: 7, scope: !5217)
!5219 = !DILocation(line: 33, column: 4, scope: !5216)
!5220 = !DILocation(line: 35, column: 7, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5217, file: !5197, line: 35, column: 7)
!5222 = !DILocation(line: 35, column: 12, scope: !5221)
!5223 = !DILocation(line: 35, column: 7, scope: !5217)
!5224 = !DILocation(line: 36, column: 4, scope: !5221)
!5225 = !DILocation(line: 38, column: 10, scope: !5217)
!5226 = !DILocation(line: 38, column: 28, scope: !5217)
!5227 = !DILocation(line: 38, column: 41, scope: !5217)
!5228 = !DILocation(line: 38, column: 3, scope: !5217)
!5229 = !DILocation(line: 41, column: 6, scope: !5196)
!5230 = !DILocation(line: 42, column: 7, scope: !5196)
!5231 = !DILocation(line: 46, column: 15, scope: !5196)
!5232 = !DILocation(line: 374, column: 2, scope: !5201, inlinedAt: !5206)
!5233 = !DILocation(line: 376, column: 14, scope: !5201, inlinedAt: !5206)
!5234 = !{i32 272696}
!5235 = !DILocation(line: 377, column: 9, scope: !5201, inlinedAt: !5206)
!5236 = !DILocation(line: 377, column: 16, scope: !5201, inlinedAt: !5206)
!5237 = !DILocation(line: 46, column: 2, scope: !5196)
!5238 = !DILocation(line: 48, column: 1, scope: !5196)
!5239 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5240, file: !5240, line: 30, type: !5241, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5240 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!234, !396}
!5243 = !DILocation(line: 366, column: 40, scope: !5201, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 32, column: 9, scope: !5239)
!5245 = !DILocation(line: 368, column: 6, scope: !5201, inlinedAt: !5244)
!5246 = !DILocalVariable(name: "n", arg: 1, scope: !5239, file: !5240, line: 30, type: !396)
!5247 = !DILocation(line: 30, column: 21, scope: !5239)
!5248 = !DILocation(line: 32, column: 15, scope: !5239)
!5249 = !DILocation(line: 374, column: 2, scope: !5201, inlinedAt: !5244)
!5250 = !DILocation(line: 376, column: 14, scope: !5201, inlinedAt: !5244)
!5251 = !DILocation(line: 377, column: 9, scope: !5201, inlinedAt: !5244)
!5252 = !DILocation(line: 377, column: 16, scope: !5201, inlinedAt: !5244)
!5253 = !DILocation(line: 32, column: 18, scope: !5239)
!5254 = !DILocation(line: 32, column: 2, scope: !5239)
!5255 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5256, file: !5256, line: 137, type: !5257, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5256 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!178, !914, !2026, !296, !722}
!5259 = !DILocalVariable(name: "s", arg: 1, scope: !5255, file: !5256, line: 137, type: !914)
!5260 = !DILocation(line: 137, column: 54, scope: !5255)
!5261 = !DILocalVariable(name: "object", arg: 2, scope: !5255, file: !5256, line: 137, type: !2026)
!5262 = !DILocation(line: 137, column: 69, scope: !5255)
!5263 = !DILocalVariable(name: "size", arg: 3, scope: !5255, file: !5256, line: 138, type: !296)
!5264 = !DILocation(line: 138, column: 12, scope: !5255)
!5265 = !DILocalVariable(name: "flags", arg: 4, scope: !5255, file: !5256, line: 138, type: !722)
!5266 = !DILocation(line: 138, column: 24, scope: !5255)
!5267 = !DILocation(line: 140, column: 17, scope: !5255)
!5268 = !DILocation(line: 140, column: 2, scope: !5255)
!5269 = distinct !DISubprogram(name: "__list_add", scope: !5122, file: !5122, line: 63, type: !5270, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !187, !187, !187}
!5272 = !DILocalVariable(name: "new", arg: 1, scope: !5269, file: !5122, line: 63, type: !187)
!5273 = !DILocation(line: 63, column: 49, scope: !5269)
!5274 = !DILocalVariable(name: "prev", arg: 2, scope: !5269, file: !5122, line: 64, type: !187)
!5275 = !DILocation(line: 64, column: 28, scope: !5269)
!5276 = !DILocalVariable(name: "next", arg: 3, scope: !5269, file: !5122, line: 65, type: !187)
!5277 = !DILocation(line: 65, column: 28, scope: !5269)
!5278 = !DILocation(line: 67, column: 24, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5269, file: !5122, line: 67, column: 6)
!5280 = !DILocation(line: 67, column: 29, scope: !5279)
!5281 = !DILocation(line: 67, column: 35, scope: !5279)
!5282 = !DILocation(line: 67, column: 7, scope: !5279)
!5283 = !DILocation(line: 67, column: 6, scope: !5269)
!5284 = !DILocation(line: 68, column: 3, scope: !5279)
!5285 = !DILocation(line: 70, column: 15, scope: !5269)
!5286 = !DILocation(line: 70, column: 2, scope: !5269)
!5287 = !DILocation(line: 70, column: 8, scope: !5269)
!5288 = !DILocation(line: 70, column: 13, scope: !5269)
!5289 = !DILocation(line: 71, column: 14, scope: !5269)
!5290 = !DILocation(line: 71, column: 2, scope: !5269)
!5291 = !DILocation(line: 71, column: 7, scope: !5269)
!5292 = !DILocation(line: 71, column: 12, scope: !5269)
!5293 = !DILocation(line: 72, column: 14, scope: !5269)
!5294 = !DILocation(line: 72, column: 2, scope: !5269)
!5295 = !DILocation(line: 72, column: 7, scope: !5269)
!5296 = !DILocation(line: 72, column: 12, scope: !5269)
!5297 = !DILocation(line: 73, column: 2, scope: !5269)
!5298 = !DILocation(line: 73, column: 2, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5269, file: !5122, line: 73, column: 2)
!5300 = !DILocation(line: 73, column: 2, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5299, file: !5122, line: 73, column: 2)
!5302 = !DILocation(line: 73, column: 2, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5299, file: !5122, line: 73, column: 2)
!5304 = !DILocation(line: 74, column: 1, scope: !5269)
!5305 = distinct !DISubprogram(name: "__list_add_valid", scope: !5122, file: !5122, line: 45, type: !5306, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!465, !187, !187, !187}
!5308 = !DILocalVariable(name: "new", arg: 1, scope: !5305, file: !5122, line: 45, type: !187)
!5309 = !DILocation(line: 45, column: 55, scope: !5305)
!5310 = !DILocalVariable(name: "prev", arg: 2, scope: !5305, file: !5122, line: 46, type: !187)
!5311 = !DILocation(line: 46, column: 23, scope: !5305)
!5312 = !DILocalVariable(name: "next", arg: 3, scope: !5305, file: !5122, line: 47, type: !187)
!5313 = !DILocation(line: 47, column: 23, scope: !5305)
!5314 = !DILocation(line: 49, column: 2, scope: !5305)
!5315 = distinct !DISubprogram(name: "pcpu_release", scope: !3, file: !3, line: 195, type: !3234, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5316 = !DILocalVariable(name: "dev", arg: 1, scope: !5315, file: !3, line: 195, type: !3211)
!5317 = !DILocation(line: 195, column: 41, scope: !5315)
!5318 = !DILocalVariable(name: "pcpu", scope: !5315, file: !3, line: 197, type: !179)
!5319 = !DILocation(line: 197, column: 15, scope: !5315)
!5320 = !DILocalVariable(name: "__mptr", scope: !5321, file: !3, line: 197, type: !178)
!5321 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 197, column: 22)
!5322 = !DILocation(line: 197, column: 22, scope: !5321)
!5323 = !DILocation(line: 197, column: 22, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 197, column: 22)
!5325 = !DILocation(line: 199, column: 12, scope: !5315)
!5326 = !DILocation(line: 199, column: 18, scope: !5315)
!5327 = !DILocation(line: 199, column: 2, scope: !5315)
!5328 = !DILocation(line: 200, column: 8, scope: !5315)
!5329 = !DILocation(line: 200, column: 2, scope: !5315)
!5330 = !DILocation(line: 201, column: 1, scope: !5315)
!5331 = distinct !DISubprogram(name: "list_del", scope: !5122, file: !5122, line: 144, type: !5123, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5332 = !DILocalVariable(name: "entry", arg: 1, scope: !5331, file: !5122, line: 144, type: !187)
!5333 = !DILocation(line: 144, column: 47, scope: !5331)
!5334 = !DILocation(line: 146, column: 19, scope: !5331)
!5335 = !DILocation(line: 146, column: 2, scope: !5331)
!5336 = !DILocation(line: 147, column: 2, scope: !5331)
!5337 = !DILocation(line: 147, column: 9, scope: !5331)
!5338 = !DILocation(line: 147, column: 14, scope: !5331)
!5339 = !DILocation(line: 148, column: 2, scope: !5331)
!5340 = !DILocation(line: 148, column: 9, scope: !5331)
!5341 = !DILocation(line: 148, column: 14, scope: !5331)
!5342 = !DILocation(line: 149, column: 1, scope: !5331)
!5343 = distinct !DISubprogram(name: "__list_del_entry", scope: !5122, file: !5122, line: 130, type: !5123, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5344 = !DILocalVariable(name: "entry", arg: 1, scope: !5343, file: !5122, line: 130, type: !187)
!5345 = !DILocation(line: 130, column: 55, scope: !5343)
!5346 = !DILocation(line: 132, column: 30, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !5122, line: 132, column: 6)
!5348 = !DILocation(line: 132, column: 7, scope: !5347)
!5349 = !DILocation(line: 132, column: 6, scope: !5343)
!5350 = !DILocation(line: 133, column: 3, scope: !5347)
!5351 = !DILocation(line: 135, column: 13, scope: !5343)
!5352 = !DILocation(line: 135, column: 20, scope: !5343)
!5353 = !DILocation(line: 135, column: 26, scope: !5343)
!5354 = !DILocation(line: 135, column: 33, scope: !5343)
!5355 = !DILocation(line: 135, column: 2, scope: !5343)
!5356 = !DILocation(line: 136, column: 1, scope: !5343)
!5357 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5122, file: !5122, line: 51, type: !5358, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!465, !187}
!5360 = !DILocalVariable(name: "entry", arg: 1, scope: !5357, file: !5122, line: 51, type: !187)
!5361 = !DILocation(line: 51, column: 61, scope: !5357)
!5362 = !DILocation(line: 53, column: 2, scope: !5357)
!5363 = distinct !DISubprogram(name: "__list_del", scope: !5122, file: !5122, line: 110, type: !5140, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5364 = !DILocalVariable(name: "prev", arg: 1, scope: !5363, file: !5122, line: 110, type: !187)
!5365 = !DILocation(line: 110, column: 50, scope: !5363)
!5366 = !DILocalVariable(name: "next", arg: 2, scope: !5363, file: !5122, line: 110, type: !187)
!5367 = !DILocation(line: 110, column: 75, scope: !5363)
!5368 = !DILocation(line: 112, column: 15, scope: !5363)
!5369 = !DILocation(line: 112, column: 2, scope: !5363)
!5370 = !DILocation(line: 112, column: 8, scope: !5363)
!5371 = !DILocation(line: 112, column: 13, scope: !5363)
!5372 = !DILocation(line: 113, column: 2, scope: !5363)
!5373 = !DILocation(line: 113, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5363, file: !5122, line: 113, column: 2)
!5375 = !DILocation(line: 113, column: 2, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5374, file: !5122, line: 113, column: 2)
!5377 = !DILocation(line: 113, column: 2, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5374, file: !5122, line: 113, column: 2)
!5379 = !DILocation(line: 114, column: 1, scope: !5363)
!5380 = distinct !DISubprogram(name: "pcpu_dev_is_visible", scope: !3, file: !3, line: 140, type: !311, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5381 = !DILocalVariable(name: "kobj", arg: 1, scope: !5380, file: !3, line: 140, type: !201)
!5382 = !DILocation(line: 140, column: 52, scope: !5380)
!5383 = !DILocalVariable(name: "attr", arg: 2, scope: !5380, file: !3, line: 141, type: !285)
!5384 = !DILocation(line: 141, column: 26, scope: !5380)
!5385 = !DILocalVariable(name: "idx", arg: 3, scope: !5380, file: !3, line: 141, type: !234)
!5386 = !DILocation(line: 141, column: 36, scope: !5380)
!5387 = !DILocalVariable(name: "dev", scope: !5380, file: !3, line: 143, type: !3211)
!5388 = !DILocation(line: 143, column: 17, scope: !5380)
!5389 = !DILocation(line: 143, column: 35, scope: !5380)
!5390 = !DILocation(line: 143, column: 23, scope: !5380)
!5391 = !DILocation(line: 149, column: 9, scope: !5380)
!5392 = !DILocation(line: 149, column: 14, scope: !5380)
!5393 = !DILocation(line: 149, column: 19, scope: !5380)
!5394 = !DILocation(line: 149, column: 25, scope: !5380)
!5395 = !DILocation(line: 149, column: 2, scope: !5380)
!5396 = distinct !DISubprogram(name: "kobj_to_dev", scope: !93, file: !93, line: 591, type: !5397, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!3211, !201}
!5399 = !DILocalVariable(name: "kobj", arg: 1, scope: !5396, file: !93, line: 591, type: !201)
!5400 = !DILocation(line: 591, column: 58, scope: !5396)
!5401 = !DILocalVariable(name: "__mptr", scope: !5402, file: !93, line: 593, type: !178)
!5402 = distinct !DILexicalBlock(scope: !5396, file: !93, line: 593, column: 9)
!5403 = !DILocation(line: 593, column: 9, scope: !5402)
!5404 = !DILocation(line: 593, column: 9, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5402, file: !93, line: 593, column: 9)
!5406 = !DILocation(line: 593, column: 2, scope: !5396)
!5407 = distinct !DISubprogram(name: "show_online", scope: !3, file: !3, line: 95, type: !4064, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5408 = !DILocalVariable(name: "dev", arg: 1, scope: !5407, file: !3, line: 95, type: !3211)
!5409 = !DILocation(line: 95, column: 43, scope: !5407)
!5410 = !DILocalVariable(name: "attr", arg: 2, scope: !5407, file: !3, line: 96, type: !4066)
!5411 = !DILocation(line: 96, column: 32, scope: !5407)
!5412 = !DILocalVariable(name: "buf", arg: 3, scope: !5407, file: !3, line: 97, type: !250)
!5413 = !DILocation(line: 97, column: 13, scope: !5407)
!5414 = !DILocalVariable(name: "cpu", scope: !5407, file: !3, line: 99, type: !179)
!5415 = !DILocation(line: 99, column: 15, scope: !5407)
!5416 = !DILocalVariable(name: "__mptr", scope: !5417, file: !3, line: 99, type: !178)
!5417 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 99, column: 21)
!5418 = !DILocation(line: 99, column: 21, scope: !5417)
!5419 = !DILocation(line: 99, column: 21, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 99, column: 21)
!5421 = !DILocation(line: 101, column: 17, scope: !5407)
!5422 = !DILocation(line: 101, column: 33, scope: !5407)
!5423 = !DILocation(line: 101, column: 38, scope: !5407)
!5424 = !DILocation(line: 101, column: 44, scope: !5407)
!5425 = !DILocation(line: 101, column: 31, scope: !5407)
!5426 = !DILocation(line: 101, column: 30, scope: !5407)
!5427 = !DILocation(line: 101, column: 9, scope: !5407)
!5428 = !DILocation(line: 101, column: 2, scope: !5407)
!5429 = distinct !DISubprogram(name: "store_online", scope: !3, file: !3, line: 104, type: !4069, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5430 = !DILocalVariable(name: "dev", arg: 1, scope: !5429, file: !3, line: 104, type: !3211)
!5431 = !DILocation(line: 104, column: 50, scope: !5429)
!5432 = !DILocalVariable(name: "attr", arg: 2, scope: !5429, file: !3, line: 105, type: !4066)
!5433 = !DILocation(line: 105, column: 32, scope: !5429)
!5434 = !DILocalVariable(name: "buf", arg: 3, scope: !5429, file: !3, line: 106, type: !196)
!5435 = !DILocation(line: 106, column: 19, scope: !5429)
!5436 = !DILocalVariable(name: "count", arg: 4, scope: !5429, file: !3, line: 106, type: !296)
!5437 = !DILocation(line: 106, column: 31, scope: !5429)
!5438 = !DILocalVariable(name: "pcpu", scope: !5429, file: !3, line: 108, type: !179)
!5439 = !DILocation(line: 108, column: 15, scope: !5429)
!5440 = !DILocalVariable(name: "__mptr", scope: !5441, file: !3, line: 108, type: !178)
!5441 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 108, column: 22)
!5442 = !DILocation(line: 108, column: 22, scope: !5441)
!5443 = !DILocation(line: 108, column: 22, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 108, column: 22)
!5445 = !DILocalVariable(name: "val", scope: !5429, file: !3, line: 109, type: !398)
!5446 = !DILocation(line: 109, column: 21, scope: !5429)
!5447 = !DILocalVariable(name: "ret", scope: !5429, file: !3, line: 110, type: !281)
!5448 = !DILocation(line: 110, column: 10, scope: !5429)
!5449 = !DILocation(line: 112, column: 7, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 112, column: 6)
!5451 = !DILocation(line: 112, column: 6, scope: !5429)
!5452 = !DILocation(line: 113, column: 3, scope: !5450)
!5453 = !DILocation(line: 115, column: 16, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 115, column: 6)
!5455 = !DILocation(line: 115, column: 6, scope: !5454)
!5456 = !DILocation(line: 115, column: 30, scope: !5454)
!5457 = !DILocation(line: 115, column: 6, scope: !5429)
!5458 = !DILocation(line: 116, column: 3, scope: !5454)
!5459 = !DILocation(line: 118, column: 10, scope: !5429)
!5460 = !DILocation(line: 118, column: 2, scope: !5429)
!5461 = !DILocation(line: 120, column: 23, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 118, column: 15)
!5463 = !DILocation(line: 120, column: 29, scope: !5462)
!5464 = !DILocation(line: 120, column: 9, scope: !5462)
!5465 = !DILocation(line: 120, column: 7, scope: !5462)
!5466 = !DILocation(line: 121, column: 3, scope: !5462)
!5467 = !DILocation(line: 123, column: 21, scope: !5462)
!5468 = !DILocation(line: 123, column: 27, scope: !5462)
!5469 = !DILocation(line: 123, column: 9, scope: !5462)
!5470 = !DILocation(line: 123, column: 7, scope: !5462)
!5471 = !DILocation(line: 124, column: 3, scope: !5462)
!5472 = !DILocation(line: 126, column: 7, scope: !5462)
!5473 = !DILocation(line: 127, column: 2, scope: !5462)
!5474 = !DILocation(line: 129, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 129, column: 6)
!5476 = !DILocation(line: 129, column: 10, scope: !5475)
!5477 = !DILocation(line: 129, column: 6, scope: !5429)
!5478 = !DILocation(line: 130, column: 9, scope: !5475)
!5479 = !DILocation(line: 130, column: 7, scope: !5475)
!5480 = !DILocation(line: 130, column: 3, scope: !5475)
!5481 = !DILocation(line: 131, column: 9, scope: !5429)
!5482 = !DILocation(line: 131, column: 2, scope: !5429)
!5483 = !DILocation(line: 132, column: 1, scope: !5429)
!5484 = distinct !DISubprogram(name: "xen_pcpu_down", scope: !3, file: !3, line: 73, type: !4092, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5485 = !DILocalVariable(name: "cpu_id", arg: 1, scope: !5484, file: !3, line: 73, type: !534)
!5486 = !DILocation(line: 73, column: 35, scope: !5484)
!5487 = !DILocalVariable(name: "op", scope: !5484, file: !3, line: 75, type: !4101)
!5488 = !DILocation(line: 75, column: 25, scope: !5484)
!5489 = !DILocation(line: 75, column: 30, scope: !5484)
!5490 = !DILocation(line: 78, column: 5, scope: !5484)
!5491 = !DILocation(line: 78, column: 12, scope: !5484)
!5492 = !DILocation(line: 78, column: 22, scope: !5484)
!5493 = !DILocation(line: 81, column: 9, scope: !5484)
!5494 = !DILocation(line: 81, column: 2, scope: !5484)
!5495 = distinct !DISubprogram(name: "xen_pcpu_up", scope: !3, file: !3, line: 84, type: !4092, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5496 = !DILocalVariable(name: "cpu_id", arg: 1, scope: !5495, file: !3, line: 84, type: !534)
!5497 = !DILocation(line: 84, column: 33, scope: !5495)
!5498 = !DILocalVariable(name: "op", scope: !5495, file: !3, line: 86, type: !4101)
!5499 = !DILocation(line: 86, column: 25, scope: !5495)
!5500 = !DILocation(line: 86, column: 30, scope: !5495)
!5501 = !DILocation(line: 89, column: 5, scope: !5495)
!5502 = !DILocation(line: 89, column: 12, scope: !5495)
!5503 = !DILocation(line: 89, column: 22, scope: !5495)
!5504 = !DILocation(line: 92, column: 9, scope: !5495)
!5505 = !DILocation(line: 92, column: 2, scope: !5495)
!5506 = distinct !DISubprogram(name: "xen_pcpu_online", scope: !3, file: !3, line: 162, type: !5507, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!465, !534}
!5509 = !DILocalVariable(name: "flags", arg: 1, scope: !5506, file: !3, line: 162, type: !534)
!5510 = !DILocation(line: 162, column: 38, scope: !5506)
!5511 = !DILocation(line: 164, column: 12, scope: !5506)
!5512 = !DILocation(line: 164, column: 18, scope: !5506)
!5513 = !DILocation(line: 164, column: 10, scope: !5506)
!5514 = !DILocation(line: 164, column: 9, scope: !5506)
!5515 = !DILocation(line: 164, column: 2, scope: !5506)
!5516 = distinct !DISubprogram(name: "xen_pcpu_interrupt", scope: !3, file: !3, line: 342, type: !3909, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!5517 = !DILocalVariable(name: "irq", arg: 1, scope: !5516, file: !3, line: 342, type: !234)
!5518 = !DILocation(line: 342, column: 43, scope: !5516)
!5519 = !DILocalVariable(name: "dev_id", arg: 2, scope: !5516, file: !3, line: 342, type: !178)
!5520 = !DILocation(line: 342, column: 54, scope: !5516)
!5521 = !DILocation(line: 344, column: 2, scope: !5516)
!5522 = !DILocation(line: 345, column: 2, scope: !5516)
